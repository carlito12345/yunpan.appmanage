package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.app.Dialog;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.io.IOException;
import java.io.InputStream;

/** The icon ID travels through the original floating-button settings and save path. */
public final class PetIcons {
    private static final int PICKER_TAG = 0x7e434140;
    private static final Icon[] PETS = {
        new Icon(-1001, "小熊", "bear", 800),
        new Icon(-1002, "小棕熊", "brown-bear", 800),
        new Icon(-1003, "小狗", "dog", 800),
        new Icon(-1004, "黑白小熊猫", "panda", 800)
    };
    private static final String[][] GROK_GROUPS = {
        {"睡眠", "唤醒", "待机放空", "好奇", "发呆", "加载苏醒", "休眠", "抖动唤醒"},
        {"开心", "疑惑", "失落", "惊讶", "害羞", "疲惫", "专注", "慌张", "无奈", "满意", "困惑", "生气"},
        {"思考中", "接收任务", "处理中忙碌", "任务完成", "出错", "等待输入", "联网加载", "复述回忆",
            "拒绝／受限", "输出回复", "检索资料", "停止终止"}
    };
    private static final int[] GROK_STARTS = {0, 10, 30};

    private static final class Icon {
        final int id;
        final String label;
        final String path;
        final int frameTime;
        final int frameCount;
        final int columns;

        Icon(int id, String label, String asset, int frameTime) {
            this.id = id;
            this.label = label;
            this.path = "carui/pets/" + asset + ".png";
            this.frameTime = frameTime;
            boolean grok = asset.startsWith("grok/");
            frameCount = grok ? 12 : 5;
            columns = grok ? 4 : 3;
        }
    }

    public interface Selection {
        void selectPet(int iconId);
    }

    private PetIcons() {}

    private static Icon grokIcon(int group, int index) {
        int code = GROK_STARTS[group] + index;
        String asset = "grok/" + (code < 10 ? "0" : "") + code;
        return new Icon(-1100 - code, GROK_GROUPS[group][index], asset, 150);
    }

    private static Icon findIcon(int id) {
        for (Icon icon : PETS) if (icon.id == id) return icon;
        int code = -1100 - id;
        for (int group = 0; group < GROK_STARTS.length; group++) {
            int index = code - GROK_STARTS[group];
            if (index >= 0 && index < GROK_GROUPS[group].length) return grokIcon(group, index);
        }
        return null;
    }

    public static boolean apply(ImageView view, int iconId) {
        Icon icon = findIcon(iconId);
        if (icon == null) {
            updateSelection(view, null);
            return false;
        }
        Drawable current = view.getDrawable();
        if (!(current instanceof Frames) || ((Frames) current).icon.id != iconId) {
            try (InputStream stream = view.getContext().getAssets().open(icon.path)) {
                Bitmap strip = BitmapFactory.decodeStream(stream);
                int rows = (icon.frameCount + icon.columns - 1) / icon.columns;
                if (strip == null || strip.getWidth() % icon.columns != 0
                        || strip.getHeight() != strip.getWidth() / icon.columns * rows) {
                    throw new IOException("Invalid icon strip: " + icon.path);
                }
                view.setImageDrawable(new Frames(view.getContext(), icon, strip));
            } catch (IOException error) {
                Log.w("CarUi", "Could not load pet icon " + icon.path, error);
                updateSelection(view, null);
                return false;
            }
        }
        updateSelection(view, icon);
        return true;
    }

    private static Drawable thumbnail(Context context, Icon icon) {
        try (InputStream stream = context.getAssets().open(icon.path)) {
            BitmapRegionDecoder decoder = BitmapRegionDecoder.newInstance(stream, false);
            try {
                int edge = decoder.getWidth() / icon.columns;
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = edge >= 512 ? 4 : 2;
                Bitmap bitmap = decoder.decodeRegion(new Rect(0, 0, edge, edge), options);
                if (bitmap == null) return null;
                Drawable drawable = new BitmapDrawable(context.getResources(), bitmap);
                int size = CarUi.dp(context, 54);
                drawable.setBounds(0, 0, size, size);
                return drawable;
            } finally {
                decoder.recycle();
            }
        } catch (IOException error) {
            Log.w("CarUi", "Could not load pet thumbnail " + icon.path, error);
            return null;
        }
    }

    static void addPicker(Activity activity, Selection selection) {
        View icon = activity.findViewById(ResourceIndex.id("v_ico"));
        if (!(icon instanceof ImageView) || !(icon.getParent() instanceof LinearLayout)
                || icon.getTag(PICKER_TAG) != null) return;
        ImageView preview = (ImageView) icon;
        LinearLayout parent = (LinearLayout) icon.getParent();
        LinearLayout section = new LinearLayout(activity);
        section.setOrientation(LinearLayout.VERTICAL);
        section.setPadding(0, CarUi.dp(activity, 12), 0, CarUi.dp(activity, 12));
        CarUi.Skin skin = CarUi.skin(activity);
        TextView title = CarUi.text(activity, "动态萌宠", 20, skin.ink, true);
        section.addView(title);
        TextView hint = CarUi.text(activity, "点选预览，按下方“确定”应用到悬浮按钮。", 16, skin.muted, false);
        hint.setPadding(0, CarUi.dp(activity, 4), 0, CarUi.dp(activity, 12));
        section.addView(hint);
        WrapLayout choices = new WrapLayout(activity);
        TextView[] buttons = new TextView[PETS.length + 1];
        for (int i = 0; i < PETS.length; i++) {
            Icon pet = PETS[i];
            buttons[i] = tile(activity, pet.label, pet, v -> selection.selectPet(pet.id));
            choices.addView(buttons[i]);
        }
        buttons[PETS.length] = tile(activity, "Grok Bot\n32 款表情", grokIcon(0, 2),
                v -> showGrok(activity, preview, selection));
        choices.addView(buttons[PETS.length]);
        section.addView(choices, new LinearLayout.LayoutParams(-1, -2));
        parent.addView(section, parent.indexOfChild(icon) + 1, new LinearLayout.LayoutParams(-1, -2));
        preview.setTag(PICKER_TAG, buttons);
        Drawable current = preview.getDrawable();
        updateSelection(preview, current instanceof Frames ? ((Frames) current).icon : null);
    }

    private static TextView tile(Context context, String label, Icon icon, View.OnClickListener listener) {
        TextView button = CarUi.text(context, label, 16, CarUi.skin(context).ink, true);
        button.setGravity(Gravity.CENTER);
        button.setMinWidth(CarUi.dp(context, 104));
        button.setMinHeight(CarUi.dp(context, icon == null ? 52 : 92));
        int padding = CarUi.dp(context, 8);
        button.setPadding(padding, padding, padding, padding);
        if (icon != null) button.setCompoundDrawables(null, thumbnail(context, icon), null, null);
        button.setFocusable(true);
        button.setOnClickListener(listener);
        paintChoice(button, false);
        return button;
    }

    private static void showGrok(Activity activity, ImageView preview, Selection selection) {
        Dialog dialog = new GrokDialog(activity);
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
        LinearLayout panel = new LinearLayout(activity);
        panel.setOrientation(LinearLayout.VERTICAL);
        int padding = CarUi.dp(activity, 20);
        panel.setPadding(padding, padding, padding, padding);
        CarUi.Skin skin = CarUi.skin(activity);
        panel.addView(CarUi.text(activity, "Grok Bot 表情", 24, skin.ink, true));
        ScrollView scroll = new ScrollView(activity);
        LinearLayout catalog = new LinearLayout(activity);
        catalog.setOrientation(LinearLayout.VERTICAL);
        String[] headings = {"生命周期", "情绪反应", "工作状态"};
        Drawable current = preview.getDrawable();
        int selected = current instanceof Frames ? ((Frames) current).icon.id : 0;
        for (int group = 0; group < headings.length; group++) {
            TextView heading = CarUi.text(activity, headings[group], 18, skin.ink, true);
            heading.setPadding(0, CarUi.dp(activity, 16), 0, CarUi.dp(activity, 8));
            catalog.addView(heading);
            WrapLayout row = new WrapLayout(activity);
            for (int index = 0; index < GROK_GROUPS[group].length; index++) {
                Icon icon = grokIcon(group, index);
                TextView item = tile(activity, icon.label, icon, v -> {
                    selection.selectPet(icon.id);
                    dialog.dismiss();
                });
                paintChoice(item, icon.id == selected);
                row.addView(item);
            }
            catalog.addView(row, new LinearLayout.LayoutParams(-1, -2));
        }
        scroll.addView(catalog);
        panel.addView(scroll, new LinearLayout.LayoutParams(-1, 0, 1));
        TextView back = tile(activity, "返回", null, v -> dialog.dismiss());
        LinearLayout.LayoutParams footer = new LinearLayout.LayoutParams(-1, -2);
        footer.topMargin = CarUi.dp(activity, 12);
        panel.addView(back, footer);
        dialog.setContentView(panel);
        dialog.show();
        resize(dialog);
        CarUi.decorateDialog(dialog);
    }

    private static final class GrokDialog extends Dialog {
        GrokDialog(Activity owner) {
            super(owner);
            setOwnerActivity(owner);
        }
    }

    static boolean resize(Dialog dialog) {
        if (!(dialog instanceof GrokDialog)) return false;
        Activity owner = dialog.getOwnerActivity();
        int[] bounds = CarUi.windowBounds(owner);
        dialog.getWindow().setLayout(Math.min(bounds[0] - CarUi.dp(owner, 36), CarUi.dp(owner, 660)),
                Math.min(bounds[1] - CarUi.dp(owner, 44), CarUi.dp(owner, 720)));
        return true;
    }

    private static void updateSelection(ImageView preview, Icon selected) {
        Object tag = preview.getTag(PICKER_TAG);
        if (!(tag instanceof TextView[])) return;
        TextView[] choices = (TextView[]) tag;
        for (int i = 0; i < PETS.length; i++) {
            paintChoice(choices[i], selected != null && PETS[i].id == selected.id);
        }
        boolean grok = selected != null && selected.id <= -1100;
        TextView grokTile = choices[PETS.length];
        grokTile.setText(grok ? "Grok Bot\n" + selected.label : "Grok Bot\n32 款表情");
        paintChoice(grokTile, grok);
    }

    private static void paintChoice(TextView choice, boolean selected) {
        Context context = choice.getContext();
        CarUi.Skin skin = CarUi.skin(context);
        choice.setSelected(selected);
        choice.setTextColor(selected ? skin.onAccent : skin.ink);
        choice.setBackground(CarUi.buttonBackground(context,
                selected ? skin.accent : skin.surface,
                selected ? skin.pressedAccent : skin.soft, skin.ink, 22, !selected));
    }

    private static final class Frames extends Drawable implements Runnable {
        private final Context context;
        private final Icon icon;
        private final Bitmap strip;
        private final int edge;
        private final Paint paint = new Paint(Paint.FILTER_BITMAP_FLAG);
        private final Rect source = new Rect();
        private int frame;
        private long nextFrame;

        Frames(Context context, Icon icon, Bitmap strip) {
            this.context = context;
            this.icon = icon;
            this.strip = strip;
            edge = strip.getWidth() / icon.columns;
        }

        private boolean canPlay() {
            Callback callback = getCallback();
            if (!(callback instanceof ImageView) || !isVisible() || paint.getAlpha() == 0) return false;
            ImageView view = (ImageView) callback;
            if (view.getWindowToken() == null || view.getWindowVisibility() != View.VISIBLE || !view.isShown()) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 26) return ValueAnimator.areAnimatorsEnabled();
            return Settings.Global.getFloat(context.getContentResolver(),
                    Settings.Global.ANIMATOR_DURATION_SCALE, 1) > 0;
        }

        @Override public void draw(Canvas canvas) {
            unscheduleSelf(this);
            if (canPlay()) {
                if (nextFrame == 0) nextFrame = SystemClock.uptimeMillis() + icon.frameTime;
                scheduleSelf(this, nextFrame);
            } else {
                frame = 0;
                nextFrame = 0;
            }
            int left = frame % icon.columns * edge;
            int top = frame / icon.columns * edge;
            source.set(left, top, left + edge, top + edge);
            canvas.drawBitmap(strip, source, getBounds(), paint);
        }

        @Override public void run() {
            if (canPlay()) {
                frame = (frame + 1) % icon.frameCount;
                nextFrame = SystemClock.uptimeMillis() + icon.frameTime;
            } else {
                frame = 0;
                nextFrame = 0;
            }
            invalidateSelf();
        }

        @Override public boolean setVisible(boolean visible, boolean restart) {
            boolean changed = super.setVisible(visible, restart);
            if (!visible || restart) {
                unscheduleSelf(this);
                frame = 0;
                nextFrame = 0;
            }
            if (visible && (changed || restart)) invalidateSelf();
            return changed;
        }

        @Override public int getIntrinsicWidth() { return edge; }
        @Override public int getIntrinsicHeight() { return edge; }
        @Override public int getOpacity() { return PixelFormat.TRANSLUCENT; }
        @Override public void setAlpha(int alpha) { paint.setAlpha(alpha); invalidateSelf(); }
        @Override public void setColorFilter(ColorFilter filter) { paint.setColorFilter(filter); invalidateSelf(); }
    }
}
