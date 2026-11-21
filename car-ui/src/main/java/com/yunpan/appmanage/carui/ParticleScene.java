package com.yunpan.appmanage.carui;

import android.graphics.Canvas;
import android.graphics.Paint;
import java.util.Random;

/** Live particles shared by the wallpaper preview and every wallpaper window. */
final class ParticleScene {
    private static final int MAX_PARTICLES = 104;
    private static final float TAU = (float) (2 * Math.PI);
    private final Particle[] particles = new Particle[MAX_PARTICLES];
    private final Random random = new Random();
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private int style = -1, count;

    ParticleScene() {
        for (int i = 0; i < particles.length; i++) particles[i] = new Particle();
    }

    void configure(Wallpapers.Config config) {
        int limit = config.style == 1 ? 64 : MAX_PARTICLES;
        count = 24 + config.density * (limit - 24) / 100;
        if (style == config.style) return;
        style = config.style;
        random.setSeed(947L + style);
        float speed = pace(config);
        for (Particle particle : particles) spawn(particle, true, speed);
    }

    void advance(Wallpapers.Config config, float seconds) {
        if (seconds <= 0f) return;
        float speed = pace(config);
        float blend = 1f - (float) Math.exp(-2.2f * seconds);
        for (int i = 0; i < count; i++) {
            Particle p = particles[i];
            p.age += seconds * speed;
            p.breath += seconds * p.breathRate;
            float gust = (float) Math.sin(p.phase + p.age * .95f);
            if (style == 4) {
                p.vx += ((p.driftX + gust * .045f) * speed - p.vx) * blend;
                float next = p.angle + p.vx * seconds;
                p.x += ((float) Math.cos(next) - (float) Math.cos(p.angle)) * p.orbit;
                p.y += ((float) Math.sin(next) - (float) Math.sin(p.angle)) * p.orbit;
                p.angle = next;
            } else {
                float targetX = (p.driftX + gust * (style == 3 ? .024f : .012f)) * speed;
                float targetY = (p.driftY + (style == 2 ? gust * .045f : 0f)) * speed;
                p.vx += (targetX - p.vx) * blend;
                p.vy += (targetY - p.vy) * blend;
                p.x += p.vx * seconds;
                p.y += p.vy * seconds;
            }
            if (p.age >= p.life || p.x < -.15f || p.x > 1.15f || p.y < -.15f || p.y > 1.15f) {
                spawn(p, false, speed);
            }
        }
    }

    private static float pace(Wallpapers.Config config) { return .24f + config.speed * .017f; }

    void draw(Canvas canvas, int width, int height, Wallpapers.Config config) {
        if (width <= 0 || height <= 0) return;
        canvas.drawColor(Wallpapers.BACKGROUNDS[config.background]);
        float edge = Math.min(width, height);
        float scale = Math.max(1f, edge / 720f);
        paint.setColor(Wallpapers.COLORS[config.color]);
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeWidth(scale);
        if (style == 1) drawLinks(canvas, width, height, edge);
        for (int i = 0; i < count; i++) {
            Particle p = particles[i];
            float x = screenX(p, width, edge), y = screenY(p, height, edge);
            float envelope = Math.min(1f, Math.min(p.age * 2f, (p.life - p.age) * 1.1f));
            float breath = .5f + .5f * (float) Math.sin(p.breath);
            int alpha = Math.max(0, Math.round(envelope * (.58f + .42f * breath) * p.opacity));
            float radius = p.size * scale * (.88f + .24f * breath);
            paint.setAlpha(alpha);
            if (style == 5) {
                paint.setAlpha(alpha / 2);
                canvas.drawLine(x, y, x - p.vx * width * .15f, y - p.vy * height * .15f, paint);
                paint.setAlpha(alpha);
            } else if (style == 3) {
                canvas.drawLine(x - radius * 1.6f, y, x + radius * 1.6f, y, paint);
                canvas.drawLine(x, y - radius * 1.6f, x, y + radius * 1.6f, paint);
            } else if (style == 2) {
                paint.setAlpha(alpha / 6);
                canvas.drawCircle(x, y, radius * 2.6f, paint);
                paint.setAlpha(alpha);
            }
            canvas.drawCircle(x, y, radius, paint);
        }
        paint.setAlpha(255);
    }

    // Mesh based on Lucian UX/UI Prompt #341 (MIT, Seokwoooo).
    // https://lucianlabs.dev/en/uxui-prompt/#341
    private void drawLinks(Canvas canvas, int width, int height, float edge) {
        float reach = edge * .17f;
        float reachSquared = reach * reach;
        for (int i = 0; i < count; i++) {
            Particle a = particles[i];
            float x = a.x * width, y = a.y * height;
            for (int j = i + 1, linked = 0; j < count && linked < 3; j++) {
                Particle b = particles[j];
                float bx = b.x * width, by = b.y * height;
                float dx = x - bx, dy = y - by;
                float distance = dx * dx + dy * dy;
                if (distance >= reachSquared) continue;
                paint.setAlpha((int) (66f * (1f - distance / reachSquared)));
                canvas.drawLine(x, y, bx, by, paint);
                linked++;
            }
        }
    }

    private float screenX(Particle p, int width, float edge) {
        return style == 4 ? width * .5f + (p.x - .5f) * edge : p.x * width;
    }

    private float screenY(Particle p, int height, float edge) {
        return style == 4 ? height * .5f + (p.y - .5f) * edge : p.y * height;
    }

    private void spawn(Particle p, boolean initial, float speed) {
        p.x = random.nextFloat();
        p.y = random.nextFloat();
        p.size = between(1.2f, 3.1f);
        p.phase = between(0f, TAU);
        p.breath = p.phase;
        p.breathRate = between(.62f, 1.15f);
        p.opacity = between(140f, 252f);
        p.life = between(9f, 25f);
        p.driftX = between(-.045f, .06f);
        p.driftY = between(-.032f, .052f);
        if (style == 2) {
            p.life = between(5f, 14f);
        } else if (style == 3) {
            p.driftY = between(.06f, .2f);
            if (!initial) p.y = -.03f;
        } else if (style == 4) {
            p.angle = p.phase;
            p.orbit = between(.1f, .46f);
            p.driftX = between(.12f, .58f);
            p.x = .5f + (float) Math.cos(p.angle) * p.orbit;
            p.y = .5f + (float) Math.sin(p.angle) * p.orbit;
        } else if (style == 5) {
            p.driftY = between(.24f, .55f);
            p.driftX = p.driftY * between(.37f, .66f);
            p.life = between(2f, 6f);
            if (!initial) {
                if (random.nextBoolean()) p.x = -.04f;
                else p.y = -.04f;
            }
        }
        p.vx = p.driftX * speed;
        p.vy = p.driftY * speed;
        p.age = initial ? between(.5f, p.life * .65f) : 0f;
    }

    private float between(float low, float high) { return low + (high - low) * random.nextFloat(); }

    private static final class Particle {
        float x, y, vx, vy, driftX, driftY, age, life, size, opacity, phase, breath, breathRate, angle, orbit;
    }
}
