package com.yunpan.appmanage.carui;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PixelFormat;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.MotionEvent;

/** Original Starray Voice artwork, with the face drawn independently of each body. */
final class StarIcon extends Drawable implements Runnable {
    enum Style {
        LIGHT(0x5BBBF2, 0x799CFA, 0xFF89ECFF, false),
        PLUSH(0xA4ACFE, 0xBCA4F5, 0xFFE0D4FF, false),
        CRYSTAL(0xC399FA, 0x9B94F4, 0xFFF0CCFF, false),
        WING(0x7BBFDF, 0x93A8D8, 0xFFE2F8FF, true),
        NEBULA(0x788FFF, 0x9B69ED, 0xFF99ECFF, true);

        final int glow, edge, sparkle, face, eyeLight;

        Style(int glow, int edge, int sparkle, boolean darkVisor) {
            this.glow = glow;
            this.edge = edge;
            this.sparkle = sparkle;
            face = darkVisor ? 0xFFAEF5FF : 0xFF252A62;
            eyeLight = darkVisor ? 0xFFF1FDFF : 0xFFEEF8FF;
        }
    }

    private static final int FRAME_MS = 33;
    private static final int REACTION_MS = 580;
    final int iconId;
    private final Bitmap body;
    private final Style style;
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
    private final RectF artwork = new RectF(-.95f, -.95f, .95f, .95f);
    private final RectF eye = new RectF();
    private final Path mouth = new Path();
    private final RadialGradient aura;
    private int alpha = 255;
    private long start = -1, downAt = -1, releaseAt = -1;
    private float look;
    private ColorFilter filter;

    StarIcon(Bitmap body, int iconId, Style style) {
        this.body = body;
        this.iconId = iconId;
        this.style = style;
        aura = new RadialGradient(0, 0, 1.16f,
                new int[]{0x5D000000 | style.glow, 0x3C000000 | style.edge, style.edge},
                new float[]{0f, .65f, 1f}, Shader.TileMode.CLAMP);
    }

    void touch(int action, float horizontal) {
        switch (action) {
            case MotionEvent.ACTION_DOWN:
                downAt = SystemClock.uptimeMillis();
                releaseAt = -1;
                // Fall through to update the gaze at the first touch point.
            case MotionEvent.ACTION_MOVE:
                look = Math.max(-1f, Math.min(1f, horizontal));
                break;
            case MotionEvent.ACTION_UP:
                if (downAt >= 0) releaseAt = SystemClock.uptimeMillis();
                downAt = -1;
                break;
            case MotionEvent.ACTION_CANCEL:
                resetReaction();
                break;
            default:
                return;
        }
        invalidateSelf();
    }

    @Override public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        float unit = Math.min(bounds.width(), bounds.height()) / 2.42f;
        if (unit <= 0 || alpha == 0) return;

        unscheduleSelf(this);
        long now = SystemClock.uptimeMillis();
        boolean animated = PetIcons.canPlay(this, alpha);
        if (animated) {
            if (start < 0) start = now;
            scheduleSelf(this, now + FRAME_MS);
        } else {
            start = -1;
            resetReaction();
        }
        float t = animated ? (now - start) / 1000f : 0f;
        boolean held = animated && downAt >= 0;
        float reaction = animated && releaseAt >= 0
                ? Math.min(1f, (now - releaseAt) / (float) REACTION_MS) : 1f;
        float settle = 1f - reaction;
        float squeeze = held ? Math.min(1f, (now - downAt) / 100f) : 0f;

        int saved = canvas.save();
        canvas.translate(bounds.exactCenterX(), bounds.exactCenterY());
        canvas.scale(unit, unit);
        paint.setShader(aura);
        paint.setAlpha(alpha);
        canvas.drawCircle(0, 0, 1.16f, paint);
        paint.setShader(null);

        int character = canvas.save();
        float breathing = animated ? sin(t * 1.85f) : 0f;
        canvas.translate(0f, breathing * .032f - sin(reaction * (float) Math.PI) * .10f);
        canvas.rotate(animated ? sin(t * 1.35f) * 2.2f + 5f * look * (squeeze + settle) : 0f);
        // Compress on contact, then gently settle as the tap reaction completes.
        canvas.scale(1f + breathing * .022f + squeeze * .045f,
                1f + breathing * .022f - squeeze * .085f);
        paint.setColorFilter(filter);
        paint.setAlpha(alpha);
        canvas.drawBitmap(body, null, artwork, paint);
        paint.setColorFilter(null);
        drawFace(canvas, t, squeeze, settle, animated);
        canvas.restoreToCount(character);

        if (animated) drawStars(canvas, t, reaction);
        canvas.restoreToCount(saved);
    }

    private void drawFace(Canvas canvas, float time, float squeeze, float smile, boolean animated) {
        float blink = animated ? Math.min(1f, Math.abs((time % 5.2f) - 3.85f) * 9f) : 1f;
        float gaze = animated ? .018f * sin(time * 1.25f) + look * (squeeze + smile) * .045f : 0f;
        for (int side = -1; side <= 1; side += 2) {
            float open = Math.max(.10f, blink * (1f - squeeze * .78f - (side > 0 ? smile * .72f : 0f)));
            float x = side * .16f + gaze;
            float y = -.12f;
            setColor(style.face, alpha);
            eye.set(x - .046f, y - .061f * open, x + .046f, y + .061f * open);
            canvas.drawOval(eye, paint);
            if (open > .36f) {
                setColor(style.eyeLight, alpha);
                canvas.drawCircle(x - .012f, y - .015f, .012f * open, paint);
            }
        }

        setColor(style.face, alpha);
        float corner = .070f + smile * .025f;
        mouth.reset();
        mouth.moveTo(-corner, .015f);
        mouth.quadTo(0, .053f, corner, .015f);
        mouth.quadTo(0, .116f + smile * .045f, -corner, .015f);
        mouth.close();
        canvas.drawPath(mouth, paint);
    }

    private void drawStars(Canvas canvas, float time, float reaction) {
        setColor(style.sparkle, Math.round(alpha * .5f));
        for (int i = 0; i < 3; i++) {
            float angle = time * .65f + i * 2.09f;
            canvas.drawCircle(cos(angle) * 1.016f, sin(angle) * .81f,
                    .015f + .008f * sin(angle + i), paint);
        }
        if (reaction >= 1f) return;
        float distance = .81f + .33f * reaction;
        for (int i = 0; i < 6; i++) {
            float angle = i * 1.047f - .4f;
            float x = cos(angle) * distance, y = sin(angle) * distance;
            float arm = .042f * (1f - reaction) + .018f;
            setColor(i % 2 == 0 ? style.sparkle : (0xFF000000 | style.edge),
                    Math.round(alpha * (1f - reaction)));
            paint.setStrokeWidth(.012f);
            canvas.drawLine(x - arm, y, x + arm, y, paint);
            canvas.drawLine(x, y - arm, x, y + arm, paint);
        }
    }

    private void setColor(int color, int opacity) {
        paint.setColor(color);
        paint.setAlpha(opacity);
    }

    private void resetReaction() {
        downAt = releaseAt = -1;
        look = 0f;
    }

    private static float sin(float value) { return (float) Math.sin(value); }
    private static float cos(float value) { return (float) Math.cos(value); }

    @Override public void run() {
        invalidateSelf();
    }

    @Override public boolean setVisible(boolean visible, boolean restart) {
        boolean changed = super.setVisible(visible, restart);
        if (!visible || restart) {
            unscheduleSelf(this);
            start = -1;
            resetReaction();
        }
        if (visible && (changed || restart)) invalidateSelf();
        return changed;
    }

    @Override public int getIntrinsicWidth() { return body.getWidth(); }
    @Override public int getIntrinsicHeight() { return body.getHeight(); }
    @Override public int getOpacity() { return PixelFormat.TRANSLUCENT; }
    @Override public void setAlpha(int alpha) { this.alpha = alpha; invalidateSelf(); }
    @Override public void setColorFilter(ColorFilter filter) { this.filter = filter; invalidateSelf(); }
}
