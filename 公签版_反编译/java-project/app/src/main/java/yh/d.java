package yh;

import java.lang.ref.SoftReference;

/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f19224a = new Object[512];

    /* renamed from: b, reason: collision with root package name */
    public int f19225b = 0;

    public final synchronized Object a() {
        Object obj;
        Object[] objArr = this.f19224a;
        int i10 = this.f19225b;
        obj = objArr[i10];
        objArr[i10] = null;
        this.f19225b = (i10 - 1) & 511;
        return obj;
    }

    public final synchronized void b(SoftReference softReference) {
        int i10 = (this.f19225b + 1) & 511;
        this.f19225b = i10;
        this.f19224a[i10] = softReference;
    }
}
