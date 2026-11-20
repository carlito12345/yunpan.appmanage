package com.yunpan.appmanage.carui;

import android.app.Activity;
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
import android.os.SystemClock;
import android.util.Log;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import java.io.IOException;
import java.io.InputStream;
import java.util.Random;

/** The icon ID travels through the original floating-button settings and save path. */
public final class PetIcons {
    private static final int PICKER_TAG = 0x7e434140;
    private static final Icon GROK = new Icon(-1099, "Grok Bot\n随机表情", "grok/02", 150);
    private static final Icon[] PETS = {
        new Icon(-1001, "小熊", "bear", 800),
        new Icon(-1002, "小棕熊", "brown-bear", 800),
        new Icon(-1003, "小狗", "dog", 800),
        new Icon(-1004, "黑白小熊猫", "panda", 800),
        GROK,
        new Icon(-1005, "星语 · 光灵", "starray-light", StarIcon.Style.LIGHT),
        new Icon(-1006, "星语 · 绒星", "starray-plush", StarIcon.Style.PLUSH),
        new Icon(-1007, "星语 · 水晶舱", "starray-crystal", StarIcon.Style.CRYSTAL),
        new Icon(-1008, "星语 · 银翼", "starray-wing", StarIcon.Style.WING),
        new Icon(-1009, "星语 · 星云", "starray-nebula", StarIcon.Style.NEBULA)
    };
    private static final int[] GROK_CODES = {
        0, 1, 2, 3, 4, 5, 6, 7,
        10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21,
        30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41
    };
    private static final int GROK_LOOPS = 4;
    private static final Random RANDOM = new Random();

    private static final class Icon {
        final int id;
        final String label;
        final String path;
        final int frameTime;
        final int frameCount;
        final int columns;
        final StarIcon.Style style;

        Icon(int id, String label, String asset, int frameTime) {
            this(id, label, asset, frameTime, null);
        }

        Icon(int id, String label, String asset, StarIcon.Style style) {
            this(id, label, asset, 0, style);
        }

        private Icon(int id, String label, String asset, int frameTime, StarIcon.Style style) {
            this.id = id;
            this.label = label;
            this.path = "carui/pets/" + asset + ".png";
            this.frameTime = frameTime;
            this.style = style;
            boolean grok = asset.startsWith("grok/");
            frameCount = grok ? 12 : 5;
            columns = grok ? 4 : 3;
        }
    }

    public interface Selection {
        void selectPet(int iconId);
    }

    private PetIcons() {}

    private static Icon findIcon(int id) {
        for (Icon icon : PETS) if (icon.id == id) return icon;
        // R14 persisted a specific expression. Those saved IDs now start random playback.
        for (int code : GROK_CODES) if (id == -1100 - code) return GROK;
        return null;
    }

    public static void bindSizePreview(SeekBar size, ImageView preview) {
        size.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override public void onProgressChanged(SeekBar bar, int progress, boolean fromUser) {
                // The themed layout can reparent the image and replace its layout parameters.
                ViewGroup.LayoutParams params = preview.getLayoutParams();
                params.width = params.height = progress * 5;
                preview.setLayoutParams(params);
            }
            @Override public void onStartTrackingTouch(SeekBar bar) {}
            @Override public void onStopTrackingTouch(SeekBar bar) {}
        });
    }

    public static boolean apply(ImageView view, int iconId) {
        Icon icon = findIcon(iconId);
        if (icon == null) {
            updateSelection(view, null);
            return false;
        }
        Drawable current = view.getDrawable();
        if (iconOf(current) != icon) {
            int expression = icon == GROK ? RANDOM.nextInt(GROK_CODES.length) : -1;
            try {
                if (icon.style != null) view.setImageDrawable(loadStar(view.getContext(), icon, 1));
                else view.setImageDrawable(new Frames(view.getContext(), icon,
                        loadStrip(view.getContext(), icon, expression), expression));
            } catch (IOException error) {
                Log.w("CarUi", "Could not load pet icon " + icon.path, error);
                updateSelection(view, null);
                return false;
            }
        }
        updateSelection(view, icon);
        return true;
    }

    private static Icon iconOf(Drawable drawable) {
        if (drawable instanceof StarIcon) return findIcon(((StarIcon) drawable).iconId);
        return drawable instanceof Frames ? ((Frames) drawable).icon : null;
    }

    private static StarIcon loadStar(Context context, Icon icon, int sample) throws IOException {
        try (InputStream stream = context.getAssets().open(icon.path)) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = sample;
            Bitmap bitmap = BitmapFactory.decodeStream(stream, null, options);
            if (bitmap == null || bitmap.getWidth() != bitmap.getHeight()) {
                throw new IOException("Invalid Starray Voice avatar: " + icon.path);
            }
            return new StarIcon(bitmap, icon.id, icon.style);
        }
    }

    /** Observe the real overlay touches while leaving drag and action dispatch to its listener. */
    public static View.OnTouchListener withFeedback(View.OnTouchListener original) {
        return (view, event) -> {
            if (view instanceof ImageView) {
                Drawable drawable = ((ImageView) view).getDrawable();
                if (drawable instanceof StarIcon) {
                    float horizontal = 2f * event.getX() / Math.max(1, view.getWidth()) - 1f;
                    ((StarIcon) drawable).touch(event.getActionMasked(), horizontal);
                }
            }
            return original.onTouch(view, event);
        };
    }

    static boolean canPlay(Drawable drawable, int alpha) {
        Drawable.Callback callback = drawable.getCallback();
        if (!(callback instanceof ImageView) || !drawable.isVisible() || alpha == 0) return false;
        ImageView image = (ImageView) callback;
        return image.getWindowToken() != null && image.getWindowVisibility() == View.VISIBLE
                && image.isShown() && CarMotion.enabled(image.getContext());
    }

    private static Bitmap loadStrip(Context context, Icon icon, int expression) throws IOException {
        String path = icon.path;
        if (expression >= 0) {
            int code = GROK_CODES[expression];
            path = "carui/pets/grok/" + (code < 10 ? "0" : "") + code + ".png";
        }
        try (InputStream stream = context.getAssets().open(path)) {
            Bitmap strip = BitmapFactory.decodeStream(stream);
            int rows = (icon.frameCount + icon.columns - 1) / icon.columns;
            if (strip == null || strip.getWidth() % icon.columns != 0
                    || strip.getHeight() != strip.getWidth() / icon.columns * rows) {
                throw new IOException("Invalid icon strip: " + path);
            }
            return strip;
        }
    }

    private static Drawable thumbnail(Context context, Icon icon) {
        if (icon.style != null) {
            try {
                Drawable drawable = loadStar(context, icon, 4);
                int size = CarUi.dp(context, 54);
                drawable.setBounds(0, 0, size, size);
                return drawable;
            } catch (IOException error) {
                Log.w("CarUi", "Could not load Starray Voice thumbnail " + icon.path, error);
                return null;
            }
        }
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
        TextView[] buttons = new TextView[PETS.length];
        for (int i = 0; i < PETS.length; i++) {
            Icon pet = PETS[i];
            buttons[i] = tile(activity, pet.label, pet, v -> selection.selectPet(pet.id));
            choices.addView(buttons[i]);
        }
        section.addView(choices, new LinearLayout.LayoutParams(-1, -2));
        parent.addView(section, parent.indexOfChild(icon) + 1, new LinearLayout.LayoutParams(-1, -2));
        preview.setTag(PICKER_TAG, buttons);
        updateSelection(preview, iconOf(preview.getDrawable()));
    }

    private static TextView tile(Context context, String label, Icon icon, View.OnClickListener listener) {
        TextView button = CarUi.text(context, label, 16, CarUi.skin(context).ink, true);
        button.setGravity(Gravity.CENTER);
        button.setMinWidth(CarUi.dp(context, 104));
        button.setMinHeight(CarUi.dp(context, 92));
        int padding = CarUi.dp(context, 8);
        button.setPadding(padding, padding, padding, padding);
        button.setCompoundDrawables(null, thumbnail(context, icon), null, null);
        button.setFocusable(true);
        button.setOnClickListener(listener);
        paintChoice(button, false);
        return button;
    }

    private static void updateSelection(ImageView preview, Icon selected) {
        Object tag = preview.getTag(PICKER_TAG);
        if (!(tag instanceof TextView[])) return;
        TextView[] choices = (TextView[]) tag;
        for (int i = 0; i < PETS.length; i++) {
            paintChoice(choices[i], PETS[i] == selected);
        }
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
        private Bitmap strip;
        private final int edge;
        private final Paint paint = new Paint(Paint.FILTER_BITMAP_FLAG);
        private final Rect source = new Rect();
        private int frame;
        private int expression;
        private int loops;
        private long nextFrame;

        Frames(Context context, Icon icon, Bitmap strip, int expression) {
            this.context = context;
            this.icon = icon;
            this.strip = strip;
            this.expression = expression;
            edge = strip.getWidth() / icon.columns;
        }

        private void nextExpression() {
            int next = RANDOM.nextInt(GROK_CODES.length - 1);
            if (next >= expression) next++;
            try {
                Bitmap nextStrip = loadStrip(context, icon, next);
                if (nextStrip.getWidth() == strip.getWidth()) {
                    strip = nextStrip;
                    expression = next;
                }
            } catch (IOException error) {
                Log.w("CarUi", "Could not rotate Grok expression", error);
            }
        }

        private boolean canPlay() {
            return PetIcons.canPlay(this, paint.getAlpha());
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
                if (frame == 0 && expression >= 0 && ++loops == GROK_LOOPS) {
                    loops = 0;
                    nextExpression();
                }
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
