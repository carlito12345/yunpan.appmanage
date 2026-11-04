package com.hjq.toast;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* loaded from: classes.dex */
final class ActivityStack implements Application.ActivityLifecycleCallbacks {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile ActivityStack sInstance;
    private long mActivityResumedTime;
    private Activity mFocusActivity;
    private Activity mVisibleActivity;

    private ActivityStack() {
    }

    public static ActivityStack getInstance() {
        if (sInstance == null) {
            synchronized (ActivityStack.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new ActivityStack();
                    }
                } finally {
                }
            }
        }
        return sInstance;
    }

    public long getActivityResumedTime() {
        return this.mActivityResumedTime;
    }

    public Activity getFocusActivity() {
        return this.mFocusActivity;
    }

    public Activity getVisibleActivity() {
        return this.mVisibleActivity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (this.mFocusActivity != activity) {
            return;
        }
        this.mFocusActivity = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.mVisibleActivity = activity;
        this.mActivityResumedTime = System.currentTimeMillis();
        if (this.mFocusActivity != null) {
            return;
        }
        this.mFocusActivity = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.mFocusActivity = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (this.mVisibleActivity != activity) {
            return;
        }
        this.mVisibleActivity = null;
        this.mActivityResumedTime = 0L;
    }

    public void register(Application application) {
        application.registerActivityLifecycleCallbacks(this);
    }
}
