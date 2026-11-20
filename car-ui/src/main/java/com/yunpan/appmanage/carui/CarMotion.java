package com.yunpan.appmanage.carui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.view.View;
import android.view.animation.DecelerateInterpolator;

final class CarMotion {
    static final DecelerateInterpolator EASE_OUT = new DecelerateInterpolator(1.7f);

    private CarMotion() {}

    static boolean enabled(Context context) {
        if (Build.VERSION.SDK_INT >= 26) return ValueAnimator.areAnimatorsEnabled();
        return Settings.Global.getFloat(context.getContentResolver(),
                Settings.Global.ANIMATOR_DURATION_SCALE, 1f) > 0f;
    }

    static void reset(View view) {
        view.animate().cancel();
        view.setAlpha(1f);
        view.setTranslationX(0f);
    }

    // Directional entry adapted from Lucian UX/UI Prompt #273 (MIT, Seokwoooo).
    // https://lucianlabs.dev/en/uxui-prompt/#273
    static void enter(View page, int direction) {
        reset(page);
        if (direction == 0 || !page.isShown() || !enabled(page.getContext())) return;
        page.setTranslationX(direction * CarUi.dp(page.getContext(), 16));
        page.setAlpha(.8f);
        page.animate().translationX(0).alpha(1).setDuration(200)
                .setInterpolator(EASE_OUT).start();
    }
}
