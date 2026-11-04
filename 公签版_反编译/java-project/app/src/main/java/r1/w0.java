package r1;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class w0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f13619a;

    /* renamed from: b, reason: collision with root package name */
    public final r0 f13620b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f13621c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f13622d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean[] f13623e;

    static {
        u1.f0.B(0);
        u1.f0.B(1);
        u1.f0.B(3);
        u1.f0.B(4);
    }

    public w0(r0 r0Var, boolean z, int[] iArr, boolean[] zArr) {
        int i10 = r0Var.f13553a;
        this.f13619a = i10;
        boolean z4 = false;
        a9.o.k(i10 == iArr.length && i10 == zArr.length);
        this.f13620b = r0Var;
        if (z && i10 > 1) {
            z4 = true;
        }
        this.f13621c = z4;
        this.f13622d = (int[]) iArr.clone();
        this.f13623e = (boolean[]) zArr.clone();
    }

    public final int a() {
        return this.f13620b.f13555c;
    }

    public final boolean b(int i10) {
        return this.f13622d[i10] == 4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || w0.class != obj.getClass()) {
            return false;
        }
        w0 w0Var = (w0) obj;
        return this.f13621c == w0Var.f13621c && this.f13620b.equals(w0Var.f13620b) && Arrays.equals(this.f13622d, w0Var.f13622d) && Arrays.equals(this.f13623e, w0Var.f13623e);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f13623e) + ((Arrays.hashCode(this.f13622d) + (((this.f13620b.hashCode() * 31) + (this.f13621c ? 1 : 0)) * 31)) * 31);
    }
}
