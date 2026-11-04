package com.gj.openfile;

import android.app.Application;
import f.a;

/* loaded from: classes.dex */
public class AppStart extends Application {

    /* renamed from: a, reason: collision with root package name */
    public int f56a = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f57b = true;

    @Override // android.app.Application
    public final void onCreate() {
        super.onCreate();
        registerActivityLifecycleCallbacks(new a(this));
    }
}
