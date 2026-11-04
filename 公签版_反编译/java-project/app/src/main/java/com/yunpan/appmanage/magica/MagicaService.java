package com.yunpan.appmanage.magica;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.yunpan.appmanage.base.AppStart;
import java.io.IOException;
import java.io.PrintStream;
import oa.e;

/* loaded from: classes.dex */
public final class MagicaService extends Service {

    /* renamed from: a, reason: collision with root package name */
    public Process f3923a;

    /* renamed from: b, reason: collision with root package name */
    public final e f3924b = new e(this);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        try {
            PrintStream printStream = System.out;
            AppStart.f3772h.c();
            printStream.getClass();
            MagicaNative.root();
            this.f3923a = Runtime.getRuntime().exec("sh");
            return this.f3924b;
        } catch (IOException e7) {
            Log.getStackTraceString(e7);
            return null;
        }
    }
}
