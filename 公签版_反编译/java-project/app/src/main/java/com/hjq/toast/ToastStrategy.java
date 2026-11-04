package com.hjq.toast;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AppOpsManager;
import android.app.Application;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import com.hjq.toast.config.IToast;
import com.hjq.toast.config.IToastStrategy;
import com.hjq.toast.config.IToastStyle;
import com.hsae.autosdk.core.NoConst;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import m0.h;

/* loaded from: classes.dex */
public class ToastStrategy implements IToastStrategy {
    private static final Handler HANDLER = new Handler(Looper.getMainLooper());
    public static final int SHOW_STRATEGY_TYPE_IMMEDIATELY = 0;
    public static final int SHOW_STRATEGY_TYPE_QUEUE = 1;
    private final Application mApplication;
    private volatile long mLastShowToastMillis;
    private final int mShowStrategyType;
    private WeakReference<IToast> mToastReference;

    public class CancelRunnable implements Runnable {
        private CancelRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IToast iToast = ToastStrategy.this.mToastReference != null ? (IToast) ToastStrategy.this.mToastReference.get() : null;
            if (iToast == null) {
                return;
            }
            iToast.cancel();
        }
    }

    public class ShowRunnable implements Runnable {
        private final ToastParams mToastParams;

        @Override // java.lang.Runnable
        public void run() {
            int i10 = ToastStrategy.this.mShowStrategyType;
            if (i10 == 0) {
                ToastStrategy.HANDLER.postAtTime(new ShowToastRunnable(this.mToastParams), SystemClock.uptimeMillis() + this.mToastParams.delayMillis + ToastStrategy.this.getBestShowDelayDuration(r0));
                return;
            }
            if (i10 != 1) {
                return;
            }
            long jUptimeMillis = SystemClock.uptimeMillis() + this.mToastParams.delayMillis + ToastStrategy.this.getBestShowDelayDuration(r0);
            long jGenerateToastWaitMillis = ToastStrategy.this.generateToastWaitMillis(this.mToastParams);
            if (jUptimeMillis < ToastStrategy.this.mLastShowToastMillis + jGenerateToastWaitMillis) {
                jUptimeMillis = ToastStrategy.this.mLastShowToastMillis + jGenerateToastWaitMillis;
            }
            ToastStrategy.HANDLER.postAtTime(new ShowToastRunnable(this.mToastParams), jUptimeMillis);
            ToastStrategy.this.mLastShowToastMillis = jUptimeMillis;
        }

        private ShowRunnable(ToastParams toastParams) {
            this.mToastParams = toastParams;
        }
    }

    public class ShowToastRunnable implements Runnable {
        private final ToastParams mToastParams;

        @Override // java.lang.Runnable
        public void run() {
            IToast iToast = ToastStrategy.this.mToastReference != null ? (IToast) ToastStrategy.this.mToastReference.get() : null;
            if (iToast != null) {
                iToast.cancel();
            }
            IToast iToastCreateToast = ToastStrategy.this.createToast(this.mToastParams);
            ToastStrategy.this.mToastReference = new WeakReference(iToastCreateToast);
            iToastCreateToast.setDuration(this.mToastParams.duration);
            iToastCreateToast.setText(this.mToastParams.text);
            iToastCreateToast.show();
        }

        private ShowToastRunnable(ToastParams toastParams) {
            this.mToastParams = toastParams;
        }
    }

    public ToastStrategy(Application application) {
        this(application, 0);
    }

    public static Handler getHandler() {
        return HANDLER;
    }

    @SuppressLint({"PrivateApi"})
    public boolean areNotificationsEnabled(Context context) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 24) {
            return ((NotificationManager) context.getSystemService(NotificationManager.class)).areNotificationsEnabled();
        }
        if (i10 >= 19) {
            AppOpsManager appOpsManagerG = h.g(context.getSystemService("appops"));
            try {
                Class<?> cls = appOpsManagerG.getClass();
                Class<?> cls2 = Integer.TYPE;
                return ((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManagerG, Integer.valueOf(appOpsManagerG.getClass().getDeclaredField("OP_POST_NOTIFICATION").getInt(null)), Integer.valueOf(context.getApplicationInfo().uid), context.getPackageName())).intValue() == 0;
            } catch (IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException e7) {
                e7.printStackTrace();
            }
        }
        return true;
    }

    public boolean areSupportCustomToastStyle(IToast iToast) {
        return (iToast instanceof CustomToast) || Build.VERSION.SDK_INT < 30;
    }

    @Override // com.hjq.toast.config.IToastStrategy
    public void cancelToast() {
        HANDLER.postAtTime(new CancelRunnable(), SystemClock.uptimeMillis());
    }

    @Override // com.hjq.toast.config.IToastStrategy
    public int computeShowDuration(CharSequence charSequence) {
        return charSequence.length() > 20 ? 1 : 0;
    }

    @Override // com.hjq.toast.config.IToastStrategy
    public IToast createToast(ToastParams toastParams) {
        IToast globalToast;
        int i10;
        Application application = getApplication();
        Activity toastActivity = getToastActivity();
        int i11 = toastParams.priorityType;
        if ((i11 == 0 || i11 == 1) && Build.VERSION.SDK_INT >= 23 && Settings.canDrawOverlays(application)) {
            globalToast = new GlobalToast(application);
        } else if (toastActivity == null || !((i10 = toastParams.priorityType) == 0 || i10 == 2)) {
            int i12 = Build.VERSION.SDK_INT;
            globalToast = i12 == 25 ? new SafeToast(application) : (i12 >= 29 || areNotificationsEnabled(application)) ? new SystemToast(application) : new NotificationToast(application);
        } else {
            globalToast = new ActivityToast(toastActivity);
        }
        if (areSupportCustomToastStyle(globalToast) || !onlyShowSystemToastStyle()) {
            diyToastStyle(globalToast, toastParams.style);
        }
        return globalToast;
    }

    public void diyToastStyle(IToast iToast, IToastStyle<?> iToastStyle) {
        iToast.setView(iToastStyle.createView(iToast.getContext()));
        iToast.setGravity(iToastStyle.getGravity(), iToastStyle.getXOffset(), iToastStyle.getYOffset());
        iToast.setMargin(iToastStyle.getHorizontalMargin(), iToastStyle.getVerticalMargin());
    }

    public int generateToastWaitMillis(ToastParams toastParams) {
        int i10 = toastParams.duration;
        if (i10 == 0) {
            return 1000;
        }
        return i10 == 1 ? 1500 : 0;
    }

    public Application getApplication() {
        return this.mApplication;
    }

    public int getBestShowDelayDuration(ToastParams toastParams) {
        if (toastParams.priorityType == 1 || getToastActivity() != null) {
            return 0;
        }
        return NoConst.RECORDING_TIME_INTERVAL;
    }

    public int getMustShowDelayDuration(ToastParams toastParams) {
        return toastParams.priorityType != 1 ? 100 : 0;
    }

    public Activity getToastActivity() {
        Activity visibleActivity = ActivityStack.getInstance().getVisibleActivity();
        Activity focusActivity = ActivityStack.getInstance().getFocusActivity();
        if (focusActivity == null || visibleActivity == null || focusActivity != visibleActivity || visibleActivity.isFinishing()) {
            return null;
        }
        int i10 = Build.VERSION.SDK_INT;
        if (visibleActivity.isDestroyed()) {
            return null;
        }
        long activityResumedTime = ActivityStack.getInstance().getActivityResumedTime();
        if (i10 < 36 || System.currentTimeMillis() - activityResumedTime >= 200) {
            return visibleActivity;
        }
        return null;
    }

    @SuppressLint({"PrivateApi"})
    public boolean isChangeEnabledCompat(long j10) throws NoSuchMethodException, SecurityException {
        if (Build.VERSION.SDK_INT < 30) {
            return false;
        }
        try {
            Method method = Class.forName("android.app.compat.CompatChanges").getMethod("isChangeEnabled", Long.TYPE);
            method.setAccessible(true);
            return Boolean.parseBoolean(String.valueOf(method.invoke(null, Long.valueOf(j10))));
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public boolean onlyShowSystemToastStyle() {
        return isChangeEnabledCompat(147798919L);
    }

    @Override // com.hjq.toast.config.IToastStrategy
    public void showToast(ToastParams toastParams) {
        HANDLER.postDelayed(new ShowRunnable(toastParams), getMustShowDelayDuration(toastParams));
    }

    public ToastStrategy(Application application, int i10) {
        this.mApplication = application;
        this.mShowStrategyType = i10;
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("Please don't pass non-existent toast show strategy");
        }
    }
}
