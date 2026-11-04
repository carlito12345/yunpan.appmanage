package com.yunpan.appmanage.magica;

import android.app.ZygotePreload;
import android.content.pm.ApplicationInfo;

/* loaded from: classes.dex */
public final class MagicaAppZygote implements ZygotePreload {
    @Override // android.app.ZygotePreload
    public final void doPreload(ApplicationInfo applicationInfo) {
        try {
            System.out.getClass();
            System.loadLibrary("magica");
        } catch (Exception unused) {
            System.out.getClass();
        }
    }
}
