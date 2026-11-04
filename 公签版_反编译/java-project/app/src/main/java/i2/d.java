package i2;

import f2.y0;
import java.util.Arrays;
import u1.f0;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: c, reason: collision with root package name */
    public int f8433c;

    /* renamed from: d, reason: collision with root package name */
    public int f8434d;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f8431a = true;

    /* renamed from: b, reason: collision with root package name */
    public final int f8432b = 65536;

    /* renamed from: e, reason: collision with root package name */
    public int f8435e = 0;

    /* renamed from: f, reason: collision with root package name */
    public a[] f8436f = new a[100];

    public final synchronized a a() {
        a aVar;
        try {
            int i10 = this.f8434d + 1;
            this.f8434d = i10;
            int i11 = this.f8435e;
            if (i11 > 0) {
                a[] aVarArr = this.f8436f;
                int i12 = i11 - 1;
                this.f8435e = i12;
                aVar = aVarArr[i12];
                aVar.getClass();
                this.f8436f[this.f8435e] = null;
            } else {
                a aVar2 = new a(new byte[this.f8432b], 0);
                a[] aVarArr2 = this.f8436f;
                if (i10 > aVarArr2.length) {
                    this.f8436f = (a[]) Arrays.copyOf(aVarArr2, aVarArr2.length * 2);
                }
                aVar = aVar2;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return aVar;
    }

    public final synchronized void b(y0 y0Var) {
        while (y0Var != null) {
            a[] aVarArr = this.f8436f;
            int i10 = this.f8435e;
            this.f8435e = i10 + 1;
            a aVar = (a) y0Var.f5445c;
            aVar.getClass();
            aVarArr[i10] = aVar;
            this.f8434d--;
            y0Var = (y0) y0Var.f5446d;
            if (y0Var == null || ((a) y0Var.f5445c) == null) {
                y0Var = null;
            }
        }
    }

    public final synchronized void c(a aVar) {
        a[] aVarArr = this.f8436f;
        int i10 = this.f8435e;
        this.f8435e = i10 + 1;
        aVarArr[i10] = aVar;
        this.f8434d--;
    }

    public final synchronized void d(int i10) {
        boolean z = i10 < this.f8433c;
        this.f8433c = i10;
        if (z) {
            e();
        }
    }

    public final synchronized void e() {
        int iMax = Math.max(0, f0.e(this.f8433c, this.f8432b) - this.f8434d);
        int i10 = this.f8435e;
        if (iMax >= i10) {
            return;
        }
        Arrays.fill(this.f8436f, iMax, i10, (Object) null);
        this.f8435e = iMax;
    }
}
