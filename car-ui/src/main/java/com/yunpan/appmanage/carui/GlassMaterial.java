package com.yunpan.appmanage.carui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.widget.TextClock;
import java.io.IOException;
import java.io.InputStream;
import java.util.WeakHashMap;

/** GD Desktop 240 palettes and optical panels, rendered by Android Views. */
final class GlassMaterial {
    enum Theme {
        MIST("gd-mist", "薄雾", "柔雾 · 青灰色 · 圆润边缘", 1.14f, "gd_manrope.ttf", 500, "'tnum'",
                "#E9E9E3 #E9E9E3 #FDFCF9 #191D20 #383F43 #A4B2AC #295A55 #1F4643 #FFFFFF #EBEFEB #191D20",
                "#13191B #13191B #343D41 #F3F5F3 #D3DAD9 #728985 #B6DACF #A1C5BB #101218 #232F32 #F3F5F3"),
        PRISM("gd-prism", "棱镜", "冷蓝玻璃 · 折射高光 · 利落边缘", .82f, "gd_space_grotesk.ttf", 600, "'tnum', 'zero'",
                "#E0E8EF #E0E8EF #F7FAFF #16222F #384853 #9DB1C1 #235D83 #184968 #FFFFFF #ECF2F7 #16222F",
                "#081521 #081521 #233D53 #F2F8FF #CFDEEB #5B7C95 #A4DDF5 #89C5E2 #101218 #172B3D #F2F8FF"),
        GLOW("gd-glow", "余晖", "暖色烟玻璃 · 大圆角 · 柔和边光", 1.34f, "gd_dm_sans.ttf", 500, null,
                "#F3E1CA #F3E1CA #FFF5E7 #29211D #4B382C #B7A089 #87441B #733612 #FFFFFF #F8E7D4 #29211D",
                "#211819 #211819 #513A2E #FFF5EA #F0DAC7 #9A7764 #FFC589 #F0AB70 #101218 #382923 #FFF5EA");

        final String id, title, detail;
        final float radius;
        private final String[] light, dark;
        private final String font, numericFeatures;
        private final int weight;
        private Typeface clockFace;

        Theme(String id, String title, String detail, float radius, String font, int weight,
              String numericFeatures, String light, String dark) {
            this.id = id;
            this.title = title;
            this.detail = detail;
            this.radius = radius;
            this.font = font;
            this.weight = weight;
            this.numericFeatures = numericFeatures;
            this.light = light.split(" ");
            this.dark = dark.split(" ");
        }

        String[] colors(boolean night) { return night ? dark : light; }

        void styleClock(TextClock clock) {
            if (clockFace == null) {
                try {
                    Typeface face = Typeface.createFromAsset(clock.getContext().getAssets(), "carui/glass/" + font);
                    clockFace = Build.VERSION.SDK_INT >= 28 ? Typeface.create(face, weight, false) : face;
                } catch (RuntimeException missingFont) {
                    clockFace = Typeface.DEFAULT;
                }
            }
            clock.setTypeface(clockFace);
            if (Build.VERSION.SDK_INT >= 21 && numericFeatures != null) clock.setFontFeatureSettings(numericFeatures);
        }
    }

    private static final WeakHashMap<Bitmap, Samples> cache = new WeakHashMap<>();
    private static Bitmap gallery;

    private GlassMaterial() {}

    static Theme theme(String id) {
        for (Theme theme : Theme.values()) if (theme.id.equals(id)) return theme;
        return null;
    }

    static Drawable wallpaper(Context context) {
        if (gallery == null) {
            try (InputStream stream = context.getAssets().open("carui/glass/gd_glass_gallery.webp")) {
                gallery = BitmapFactory.decodeStream(stream);
            } catch (IOException error) {
                Log.w("CarUi", "GD glass wallpaper unavailable", error);
            }
        }
        return gallery == null ? null : new BitmapDrawable(context.getResources(), gallery);
    }

    static Samples sample(Drawable wallpaper) {
        if (!(wallpaper instanceof BitmapDrawable)) return null;
        Bitmap source = ((BitmapDrawable) wallpaper).getBitmap();
        Samples result = cache.get(source);
        if (result != null || source == null) return result;
        float scale = 192f / Math.max(source.getWidth(), source.getHeight());
        Bitmap soft = Bitmap.createBitmap(Math.max(1, Math.round(source.getWidth() * scale)),
                Math.max(1, Math.round(source.getHeight() * scale)), Bitmap.Config.ARGB_8888);
        new Canvas(soft).drawBitmap(source, null, new Rect(0, 0, soft.getWidth(), soft.getHeight()),
                new Paint(Paint.FILTER_BITMAP_FLAG));
        FrostedDialogs.blur(soft, 4);
        Bitmap dense = soft.copy(Bitmap.Config.ARGB_8888, true);
        FrostedDialogs.blur(dense, 9);
        result = new Samples(soft, dense);
        cache.put(source, result);
        return result;
    }

    static final class Samples {
        final Bitmap soft, dense;

        Samples(Bitmap soft, Bitmap dense) {
            this.soft = soft;
            this.dense = dense;
        }
    }

    static final class Panel {
        private static final float[] PROBE_POINTS = {.15f, .5f, .85f};
        private final CarUi.Skin skin;
        private final int base;
        private final float radius;
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        private final Path clip = new Path();
        private final RectF area = new RectF(), photo = new RectF(), inset = new RectF();
        private final int[] targetPosition = new int[2], wallpaperPosition = new int[2];
        private final int[] probe = new int[9];
        private final RectF previousPhoto = new RectF();
        private final Matrix reflection = new Matrix();
        private final double readout;
        private Bitmap previousSample;
        private BitmapShader reflectionShader;
        private float calculatedTint;
        private LinearGradient tint, rim;
        private RadialGradient glint;

        Panel(CarUi.Skin skin, int base, float radius) {
            this.skin = skin;
            this.base = base;
            this.radius = radius;
            this.readout = luminance(Color.red(skin.muted), Color.green(skin.muted), Color.blue(skin.muted));
        }

        void bounds(Rect bounds) {
            area.set(bounds);
            previousPhoto.setEmpty();
            clip.reset();
            if (area.isEmpty()) return;
            clip.addRoundRect(area, radius, radius, Path.Direction.CW);
            tint = new LinearGradient(area.left, area.top, area.left, area.bottom,
                    skin.soft, base, Shader.TileMode.CLAMP);
            int light = skin.glass == Theme.PRISM ? 0x33D5EDFF
                    : skin.glass == Theme.GLOW ? 0x38FFD5A5 : 0x29FFFFFF;
            glint = new RadialGradient(area.left + area.width() * (skin.glass == Theme.PRISM ? .82f : .18f),
                    area.top, Math.max(1f, Math.min(area.width(), area.height()) * 1.18f),
                    light, light & 0xFFFFFF, Shader.TileMode.CLAMP);
            rim = new LinearGradient(area.left, area.top, area.right, area.bottom,
                    new int[]{0xCBFFFFFF, 0x33FFFFFF, withAlpha(skin.accent, 58), 0x55FFFFFF},
                    new float[]{0f, .35f, .73f, 1f}, Shader.TileMode.CLAMP);
        }

        void draw(Canvas canvas, Drawable.Callback callback, int opacity, boolean nativeRim, float line) {
            if (opacity == 0 || area.isEmpty()) return;
            View target = target(callback);
            WallpaperView wallpaper = backdrop(target);
            int saved = canvas.save();
            canvas.clipPath(clip);
            paint.setStyle(Paint.Style.FILL);
            paint.setShader(null);
            float material = skin.dark ? .78f : .84f;
            Bitmap bitmap = null;
            if (wallpaper != null && wallpaper.glassPhoto != null && target != null
                    && wallpaper.getWidth() > 0 && wallpaper.getHeight() > 0) {
                wallpaper.sampledBy(target);
                wallpaper.getLocationInWindow(wallpaperPosition);
                target.getLocationInWindow(targetPosition);
                Samples samples = wallpaper.glassPhoto;
                bitmap = skin.glass == Theme.PRISM ? samples.soft : samples.dense;
                wallpaper.photoBounds(bitmap, photo);
                photo.offset(wallpaperPosition[0] - targetPosition[0], wallpaperPosition[1] - targetPosition[1]);
                material = tintOver(bitmap);
                float tintCoverage = material * opacity / 255f;
                if (tintCoverage < 1f) {
                    paint.setAlpha(Math.round(opacity * (1f - material) / (1f - tintCoverage)));
                    canvas.drawBitmap(bitmap, null, photo, paint);
                }
            }
            paint.setShader(tint);
            paint.setAlpha(Math.round(opacity * material));
            canvas.drawRoundRect(area, radius, radius, paint);
            paint.setShader(glint);
            paint.setAlpha(opacity);
            canvas.drawRoundRect(area, radius, radius, paint);
            canvas.restoreToCount(saved);
            if (nativeRim) {
                inset.set(area);
                inset.inset(line / 2f, line / 2f);
                if (!inset.isEmpty()) {
                    paint.setStyle(Paint.Style.STROKE);
                    paint.setStrokeWidth(line);
                    if (bitmap != null && skin.glass != Theme.MIST) {
                        float shift = line * (skin.glass == Theme.PRISM ? 2.6f : 1.4f);
                        reflection.setScale(photo.width() / bitmap.getWidth(), photo.height() / bitmap.getHeight());
                        reflection.postTranslate(photo.left - shift, photo.top + shift);
                        reflectionShader.setLocalMatrix(reflection);
                        paint.setShader(reflectionShader);
                        paint.setAlpha(Math.round(opacity * .42f));
                        canvas.drawRoundRect(inset, radius, radius, paint);
                    }
                    paint.setShader(rim);
                    paint.setAlpha(opacity);
                    canvas.drawRoundRect(inset, radius, radius, paint);
                }
            }
            paint.setShader(null);
            paint.setStyle(Paint.Style.FILL);
        }

        // Same contrast check as GD: cached sample locations in panel space.
        private float tintOver(Bitmap bitmap) {
            if (previousSample == bitmap && previousPhoto.equals(photo)) return calculatedTint;
            if (previousSample != bitmap) reflectionShader = new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
            previousSample = bitmap;
            previousPhoto.set(photo);
            int index = 0;
            for (float y : PROBE_POINTS) for (float x : PROBE_POINTS) {
                int px = Math.round((area.left + x * area.width() - photo.left) / photo.width() * bitmap.getWidth());
                int py = Math.round((area.top + y * area.height() - photo.top) / photo.height() * bitmap.getHeight());
                probe[index++] = bitmap.getPixel(Wallpapers.clamp(px, bitmap.getWidth() - 1),
                        Wallpapers.clamp(py, bitmap.getHeight() - 1));
            }
            float lower = .46f, upper = 1f;
            if (canRead(lower)) upper = lower;
            else for (int step = 0; step < 5; step++) {
                float middle = (lower + upper) / 2f;
                if (canRead(middle)) upper = middle;
                else lower = middle;
            }
            calculatedTint = upper;
            return upper;
        }

        private boolean canRead(float opacity) {
            for (int i = 0; i < probe.length; i++) {
                int pixel = probe[i], shade = i < 3 ? skin.soft : base;
                double backdrop = luminance(mix(Color.red(pixel), Color.red(shade), opacity),
                        mix(Color.green(pixel), Color.green(shade), opacity),
                        mix(Color.blue(pixel), Color.blue(shade), opacity));
                double contrast = skin.dark ? (readout + .05) / (backdrop + .05) : (backdrop + .05) / (readout + .05);
                if (contrast < 4.8) return false;
            }
            return true;
        }

        private static int mix(int from, int to, float alpha) { return Math.round(from + (to - from) * alpha); }

        private static double luminance(int red, int green, int blue) {
            return .2126 * linear(red) + .7152 * linear(green) + .0722 * linear(blue);
        }

        private static double linear(int channel) {
            double value = channel / 255.0;
            return value <= .04045 ? value / 12.92 : Math.pow((value + .055) / 1.055, 2.4);
        }
    }

    private static View target(Drawable.Callback callback) {
        while (callback instanceof Drawable) callback = ((Drawable) callback).getCallback();
        return callback instanceof View ? (View) callback : null;
    }

    private static WallpaperView backdrop(View target) {
        if (target == null) return null;
        ViewParent parent = target.getParent();
        while (parent instanceof View) {
            if (parent instanceof CarHome) return ((CarHome) parent).wallpaper();
            if (((View) parent).getId() == android.R.id.content) return Wallpapers.mounted((View) parent);
            parent = parent.getParent();
        }
        return null;
    }

    private static int withAlpha(int color, int alpha) { return (color & 0xFFFFFF) | (alpha << 24); }
}
