package com.yunpan.appmanage.db;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.yunpan.appmanage.util.a0;
import fa.h;
import fa.l;
import fa.m;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import wa.w;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3919a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f3920b;

    public /* synthetic */ a(String str, int i10) {
        this.f3919a = i10;
        this.f3920b = str;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        String str = this.f3920b;
        switch (this.f3919a) {
            case 0:
                MyDb.lambda$deleteDir_thread$2(str);
                return;
            case 1:
                m mVar = l.f5712a;
                if (mVar.isConnected()) {
                    mVar.O(str);
                    return;
                }
                String strK = h.f5683a.k(str);
                if (strK.trim().isEmpty()) {
                    return;
                }
                a0.y(strK.trim());
                return;
            case 2:
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(w.f17762c, true);
                    try {
                        fileOutputStream.write(str.getBytes(HTTP.UTF_8));
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        return;
                    } catch (Throwable th2) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th3) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                            } catch (Exception unused) {
                            }
                        }
                        throw th2;
                    }
                } catch (IOException unused2) {
                    return;
                }
            case 3:
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(w.f17763d, true);
                    try {
                        fileOutputStream2.write(str.getBytes(HTTP.UTF_8));
                        fileOutputStream2.flush();
                        fileOutputStream2.close();
                        return;
                    } catch (Throwable th4) {
                        try {
                            fileOutputStream2.close();
                        } catch (Throwable th5) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                            } catch (Exception unused3) {
                            }
                        }
                        throw th4;
                    }
                } catch (IOException unused4) {
                    return;
                }
            default:
                try {
                    FileOutputStream fileOutputStream3 = new FileOutputStream(w.f17762c, true);
                    try {
                        fileOutputStream3.write(str.getBytes(HTTP.UTF_8));
                        fileOutputStream3.flush();
                        fileOutputStream3.close();
                        return;
                    } catch (Throwable th6) {
                        try {
                            fileOutputStream3.close();
                        } catch (Throwable th7) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th6, th7);
                            } catch (Exception unused5) {
                            }
                        }
                        throw th6;
                    }
                } catch (IOException unused6) {
                    return;
                }
        }
    }
}
