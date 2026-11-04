package com.hjq.toast;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.Toast;

/* loaded from: classes.dex */
final class ToastImpl {
    private static final Handler HANDLER = new Handler(Looper.getMainLooper());
    private static final String WINDOW_TITLE = "Toast";
    private final String mPackageName;
    private boolean mShow;
    private final CustomToast mToast;
    private final WindowLifecycle mWindowLifecycle;
    private final Runnable mShowRunnable = new AnonymousClass1();
    private final Runnable mCancelRunnable = new Runnable() { // from class: com.hjq.toast.ToastImpl.2
        @Override // java.lang.Runnable
        public void run() {
            WindowManager windowManager;
            View view = ToastImpl.this.mToast.getView();
            if (view == null || (windowManager = ToastImpl.this.mWindowLifecycle.getWindowManager()) == null) {
                return;
            }
            try {
                try {
                    windowManager.removeViewImmediate(view);
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            } finally {
                ToastImpl.this.mWindowLifecycle.unregister();
                ToastImpl.this.setShow(false);
            }
        }
    };
    private boolean mGlobalShow = false;

    /* renamed from: com.hjq.toast.ToastImpl$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0() {
            ToastImpl.this.cancel();
        }

        @Override // java.lang.Runnable
        @SuppressLint({"WrongConstant"})
        public void run() {
            WindowManager windowManager;
            View view = ToastImpl.this.mToast.getView();
            if (view == null || (windowManager = ToastImpl.this.mWindowLifecycle.getWindowManager()) == null) {
                return;
            }
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.height = -2;
            layoutParams.width = -2;
            layoutParams.format = -3;
            layoutParams.flags = 152;
            layoutParams.packageName = ToastImpl.this.mPackageName;
            layoutParams.gravity = ToastImpl.this.mToast.getGravity();
            layoutParams.x = ToastImpl.this.mToast.getXOffset();
            layoutParams.y = ToastImpl.this.mToast.getYOffset();
            layoutParams.verticalMargin = ToastImpl.this.mToast.getVerticalMargin();
            layoutParams.horizontalMargin = ToastImpl.this.mToast.getHorizontalMargin();
            layoutParams.windowAnimations = ToastImpl.this.mToast.getAnimationsId();
            layoutParams.setTitle(ToastImpl.WINDOW_TITLE);
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 28) {
                layoutParams.layoutInDisplayCutoutMode = 1;
            }
            if (ToastImpl.this.mGlobalShow) {
                if (i10 >= 26) {
                    layoutParams.type = 2038;
                    layoutParams.flags &= -17;
                } else {
                    layoutParams.type = 2003;
                }
            }
            try {
                windowManager.addView(view, layoutParams);
                ToastImpl.HANDLER.postDelayed(new Runnable() { // from class: com.hjq.toast.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f3766a.lambda$run$0();
                    }
                }, ToastImpl.this.mToast.getDuration() == 1 ? ToastImpl.this.mToast.getLongDuration() : ToastImpl.this.mToast.getShortDuration());
                ToastImpl.this.mWindowLifecycle.register(ToastImpl.this);
                ToastImpl.this.setShow(true);
                ToastImpl.this.sendAccessibilityEvent(view);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
    }

    public ToastImpl(Activity activity, CustomToast customToast) {
        this.mToast = customToast;
        this.mPackageName = activity.getPackageName();
        this.mWindowLifecycle = new WindowLifecycle(activity);
    }

    private boolean isMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAccessibilityEvent(View view) {
        AccessibilityEvent accessibilityEventObtain;
        Context context = view.getContext();
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            if (Build.VERSION.SDK_INT >= 30) {
                accessibilityEventObtain = new AccessibilityEvent();
                accessibilityEventObtain.setEventType(64);
            } else {
                accessibilityEventObtain = AccessibilityEvent.obtain(64);
            }
            accessibilityEventObtain.setClassName(Toast.class.getName());
            accessibilityEventObtain.setPackageName(context.getPackageName());
            view.dispatchPopulateAccessibilityEvent(accessibilityEventObtain);
            accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain);
        }
    }

    public void cancel() {
        if (isShow()) {
            Handler handler = HANDLER;
            handler.removeCallbacks(this.mShowRunnable);
            if (isMainThread()) {
                this.mCancelRunnable.run();
            } else {
                handler.removeCallbacks(this.mCancelRunnable);
                handler.post(this.mCancelRunnable);
            }
        }
    }

    public boolean isShow() {
        return this.mShow;
    }

    public void setShow(boolean z) {
        this.mShow = z;
    }

    public void show() {
        if (isShow()) {
            return;
        }
        if (isMainThread()) {
            this.mShowRunnable.run();
            return;
        }
        Handler handler = HANDLER;
        handler.removeCallbacks(this.mShowRunnable);
        handler.post(this.mShowRunnable);
    }

    public ToastImpl(Application application, CustomToast customToast) {
        this.mToast = customToast;
        this.mPackageName = application.getPackageName();
        this.mWindowLifecycle = new WindowLifecycle(application);
    }
}
