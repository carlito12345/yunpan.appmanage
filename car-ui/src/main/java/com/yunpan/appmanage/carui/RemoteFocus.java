package com.yunpan.appmanage.carui;

import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.EditText;

/** Restores directional focus within a visible screen or panel. */
final class RemoteFocus {
    private RemoteFocus() {}

    static boolean contains(View scope, View view) {
        return scope != null && (scope == view || item(scope, view) != null);
    }

    static boolean focusable(View view) {
        return view != null && view.isShown() && view.isEnabled() && view.isFocusable();
    }

    static View first(View scope) {
        View fallback = null;
        for (View child : scope.getFocusables(View.FOCUS_FORWARD)) {
            if (!focusable(child)) continue;
            if (child.isClickable() || child instanceof EditText) return child;
            if (fallback == null) fallback = child;
        }
        return fallback;
    }

    static boolean restore(View scope, View previous) {
        if (scope == null || !scope.isShown() || scope.isInTouchMode()) return false;
        if (contains(scope, previous) && focusable(previous) && previous.requestFocus()) return true;
        if (focusable(scope.findFocus())) return true;
        View target = first(scope);
        return target != null && target.requestFocus();
    }

    static void afterLayout(View scope, Runnable action) {
        if (scope == null || scope.isInTouchMode()) return;
        ViewTreeObserver observer = scope.getViewTreeObserver();
        observer.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override public void onGlobalLayout() {
                if (observer.isAlive()) observer.removeOnGlobalLayoutListener(this);
                if (scope.isShown() && !scope.isInTouchMode()) action.run();
            }
        });
    }

    // Lists can focus a nested label. Walk up to the actual adapter item.
    static View item(View list, View focused) {
        if (list == null) return null;
        while (focused != null && focused != list) {
            ViewParent parent = focused.getParent();
            if (parent == list) return focused;
            focused = parent instanceof View ? (View) parent : null;
        }
        return null;
    }
}
