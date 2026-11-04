package com.yunpan.appmanage.carui;

import android.content.Context;
import android.content.SharedPreferences;
import org.json.JSONArray;
import org.json.JSONObject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/** User-owned shortcut data. No changes to the original app's preferences. */
public final class Favorites {
    public static final class Item {
        public final String id;
        public String name, type, target, icon;
        public Item(String name, String type, String target, String icon) {
            this(UUID.randomUUID().toString(), name, type, target, icon);
        }
        Item(String id, String name, String type, String target, String icon) {
            this.id = id; this.name = name; this.type = type; this.target = target; this.icon = icon;
        }
        JSONObject json() throws Exception {
            return new JSONObject().put("id", id).put("name", name).put("type", type)
                .put("target", target).put("icon", icon);
        }
    }
    private final SharedPreferences preferences;
    private final ArrayList<Item> items = new ArrayList<Item>();
    public Favorites(Context context) {
        preferences = context.getSharedPreferences("car_ui_v1", Context.MODE_PRIVATE);
        String raw = preferences.getString("favorites", null);
        if (raw == null) {
            items.add(new Item("应用管理", "internal", "ActivityApps", "apps"));
            items.add(new Item("文件管理", "page", "1", "files"));
            items.add(new Item("内存清理", "internal", "ActivityRunMemory", "memory"));
            items.add(new Item("开机任务", "internal", "ActivityBootStartTask", "automation"));
            items.add(new Item("自动化", "internal", "ActivityAutomation", "automation"));
            items.add(new Item("下载管理", "internal", "ActivityDownload", "download"));
            save();
        } else {
            try {
                JSONArray array = new JSONArray(raw);
                for (int i = 0; i < array.length(); i++) {
                    JSONObject object = array.getJSONObject(i);
                    String type = object.getString("type"), target = object.getString("target");
                    String name = object.getString("name");
                    if (name.trim().isEmpty() || target.trim().isEmpty()) continue;
                    items.add(new Item(object.getString("id"), name, type, target, object.optString("icon", "link")));
                }
            } catch (Exception error) {
                preferences.edit().putString("favorites_recovery", raw).apply();
                items.clear(); // Retain the damaged data for recovery, never silently overwrite it.
            }
        }
    }
    public List<Item> all() { return Collections.unmodifiableList(items); }
    public boolean add(Item item) {
        for (Item existing : items) if (existing.type.equals(item.type) && existing.target.equals(item.target)) return false;
        items.add(item); save(); return true;
    }
    public void remove(String id) { int index = index(id); if (index >= 0) { items.remove(index); save(); } }
    public void rename(String id, String name) { int index = index(id); if (index >= 0 && !name.trim().isEmpty()) { items.get(index).name = name.trim(); save(); } }
    public void move(String id, int destination) {
        int from = index(id);
        if (from < 0 || destination < 0 || destination >= items.size()) return;
        Item item = items.remove(from); items.add(destination, item); save();
    }
    public int index(String id) { for (int i = 0; i < items.size(); i++) if (items.get(i).id.equals(id)) return i; return -1; }
    public boolean dark() { return preferences.getBoolean("dark", false); }
    public void dark(boolean value) { preferences.edit().putBoolean("dark", value).apply(); }
    private void save() {
        try {
            JSONArray array = new JSONArray();
            for (Item item : items) array.put(item.json());
            preferences.edit().putString("favorites", array.toString()).apply();
        } catch (Exception error) { throw new IllegalStateException("Cannot save favorites", error); }
    }
}
