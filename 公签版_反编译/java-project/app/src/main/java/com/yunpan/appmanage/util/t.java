package com.yunpan.appmanage.util;

import java.io.File;
import java.util.ArrayList;
import x9.w3;

/* loaded from: classes.dex */
public final class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final File f4098a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f4099b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f4100c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f4101d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ u f4102e;

    public t(u uVar, File file, ArrayList arrayList, ArrayList arrayList2, boolean z) {
        this.f4102e = uVar;
        this.f4098a = file;
        this.f4099b = arrayList;
        this.f4100c = arrayList2;
        this.f4101d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f4101d && (this.f4098a.isHidden() || this.f4098a.getName().startsWith("."))) {
            this.f4102e.f4105b.decrementAndGet();
            return;
        }
        w3 w3Var = new w3(this.f4098a);
        if (w3Var.f18366c) {
            synchronized (this.f4099b) {
                this.f4099b.add(w3Var);
            }
        } else {
            ArrayList arrayList = this.f4100c;
            if (arrayList != null) {
                synchronized (arrayList) {
                    this.f4100c.add(w3Var);
                }
            }
        }
        this.f4102e.f4105b.decrementAndGet();
    }
}
