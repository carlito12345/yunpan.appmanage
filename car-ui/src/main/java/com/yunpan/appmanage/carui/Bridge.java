package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/** Keeps navigation in the original app, including its permission checks and tool handlers. */
public class Bridge {
    protected final Activity activity;
    protected final View legacy;
    private Object toolAdapter;
    private View toolGrid;
    public interface PageHost { void page(int index); }
    PageHost host;
    public Bridge(Activity activity, View legacy) { this.activity = activity; this.legacy = legacy; }
    int id(String name) { return activity.getResources().getIdentifier(name,"id",activity.getPackageName()); }
    View original(String name) { return legacy == null ? null : legacy.findViewById(id(name)); }
    public void settings() { View button = original("v_btn_set"); if (button != null) button.performClick(); }
    public void page(int index) {
        View pager = original("v_Pager");
        try {
            if (pager != null) pager.getClass().getMethod("m",int.class,boolean.class,boolean.class).invoke(pager,index,false,false);
            Object menu=field(activity,"E");menu.getClass().getMethod("G",int.class).invoke(menu,index);
        }
        catch (Exception error) { CarUi.message(activity,"页面暂时无法打开，请从全部功能重试"); }
    }
    public boolean hasNestedBack(int page){
        try{
            List<?> fragments=(List<?>)field(field(activity,"G"),"h");Object fragment=fragments.get(page);
            if(page==1)return !((Boolean)field(fragment,"p"))&&((List<?>)field(field(fragment,"l"),"d")).size()>1;
            if(page==2)return ((List<?>)field(field(fragment,"x"),"d")).size()>1||((List<?>)field(field(fragment,"n"),"d")).size()>1;
        }catch(Exception ignored){}
        return false;
    }
    public static Intent parseTarget(Activity activity, String target) throws Exception {
        target = target.trim();
        if (target.isEmpty()) throw new IllegalArgumentException("请输入跳转地址");
        Intent intent;
        if (target.startsWith("intent:")) intent = Intent.parseUri(target,Intent.URI_INTENT_SCHEME);
        else if (Uri.parse(target).getScheme()!=null) intent = new Intent(Intent.ACTION_VIEW,Uri.parse(target));
        else if (target.contains("/")) {
            ComponentName component = ComponentName.unflattenFromString(target);
            if (component == null) throw new IllegalArgumentException("组件格式应为：包名/Activity");
            intent = new Intent().setComponent(component);
        } else {
            intent = activity.getPackageManager().getLaunchIntentForPackage(target);
            if (intent == null) throw new IllegalArgumentException("没有找到可打开的应用");
        }
        intent.setFlags(intent.getFlags() & ~Intent.FLAG_ACTIVITY_NEW_TASK);
        return intent;
    }
    public boolean available(Favorites.Item item) {
        try {
            if ("app".equals(item.type)) return activity.getPackageManager().getLaunchIntentForPackage(item.target) != null;
            if ("link".equals(item.type)) return parseTarget(activity,item.target).resolveActivity(activity.getPackageManager()) != null;
            return true;
        } catch (Exception error) { return false; }
    }
    public void open(final Favorites.Item item) {
        try {
            if ("page".equals(item.type)) { if (host != null) host.page(Integer.parseInt(item.target)); return; }
            if ("tool".equals(item.type)) {
                page(0);
                activity.getWindow().getDecorView().postDelayed(new Runnable() { @Override public void run() { triggerTool(item.target); } },120);
                return;
            }
            Intent intent;
            if ("internal".equals(item.type)) intent = new Intent().setClassName(activity,"com.yunpan.appmanage.ui."+item.target);
            else if ("app".equals(item.type)) intent = activity.getPackageManager().getLaunchIntentForPackage(item.target);
            else intent = parseTarget(activity,item.target);
            if (intent == null || intent.resolveActivity(activity.getPackageManager()) == null) {
                CarUi.message(activity,"目标暂不可用，可编辑或重新添加此入口"); return;
            }
            activity.startActivity(intent);
        } catch (SecurityException error) { CarUi.message(activity,"目标页面未开放访问，请选择应用主入口"); }
        catch (Exception error) { CarUi.message(activity,"无法打开此入口，请检查地址或应用是否已安装"); }
    }
    public Drawable icon(Favorites.Item item) {
        if ("app".equals(item.type)) try { return activity.getPackageManager().getApplicationIcon(item.target); } catch (Exception ignored) { }
        return null;
    }
    private static Object field(Object value, String name) throws Exception {
        for (Class<?> cls = value.getClass(); cls != null; cls = cls.getSuperclass()) try {
            Field field = cls.getDeclaredField(name); field.setAccessible(true); return field.get(value);
        } catch (NoSuchFieldException ignored) { }
        throw new NoSuchFieldException(name);
    }
    private boolean findTools(View view) {
        if (view == null) return false;
        if (view.getClass().getName().contains("RecyclerView")) try {
            Object adapter = view.getClass().getMethod("getAdapter").invoke(view);
            if (adapter != null && adapter.getClass().getName().equals("x9.b1")) {
                toolAdapter = adapter; toolGrid = view; return true;
            }
        } catch (Exception ignored) { }
        if (view instanceof ViewGroup) { ViewGroup group = (ViewGroup)view; for(int i=0;i<group.getChildCount();i++) if(findTools(group.getChildAt(i))) return true; }
        return false;
    }
    public List<Favorites.Item> tools() {
        ArrayList<Favorites.Item> result = new ArrayList<Favorites.Item>();
        String[][] defaults = {
            {"应用管理","internal","ActivityApps","apps"},{"文件管理","page","1","files"},
            {"网络存储","page","2","network"},{"内存清理","internal","ActivityRunMemory","memory"},
            {"开机任务","internal","ActivityBootStartTask","automation"},{"自动化","internal","ActivityAutomation","automation"},
            {"下载管理","internal","ActivityDownload","download"},{"存储分析","internal","ActivityAppStorage","files"},
            {"应用使用记录","internal","ActivityAppHistoryLog","apps"},{"脚本终端","internal","ActivityShell","tools"},
            {"权限管理","internal","ActivityAccessibility","settings"},{"全部功能","page","0","tools"}
        };
        for (String[] row : defaults) result.add(new Favorites.Item(row[0],row[1],row[2],row[3]));
        findTools(legacy);
        if (toolAdapter != null) try {
            List<?> list = (List<?>)field(toolAdapter,"d");
            for (Object bean : list) {
                String name = String.valueOf(field(bean,"name"));
                boolean duplicate = false;
                for (Favorites.Item existing : result) if (existing.name.equals(name)) { duplicate = true; break; }
                if (!duplicate && !name.trim().isEmpty()) result.add(new Favorites.Item(name,"tool",name,"tools"));
            }
        } catch (Exception ignored) { }
        return result;
    }
    private void triggerTool(String target) {
        findTools(legacy);
        if (toolAdapter != null) try {
            List<?> list = (List<?>)field(toolAdapter,"d"); Object callback = field(toolAdapter,"e");
            for (int i=0;i<list.size();i++) if (target.equals(String.valueOf(field(list.get(i),"name")))) {
                Method click = callback.getClass().getMethod("x",Class.forName("c6.g"),View.class,int.class);
                click.invoke(callback,toolAdapter,toolGrid,i); return;
            }
        } catch (Exception ignored) { }
        if(host != null) host.page(0);
        CarUi.message(activity,"请从全部功能选择“"+target+"”");
    }
}
