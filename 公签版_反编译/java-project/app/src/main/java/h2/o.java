package h2;

import r1.r0;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final r0 f6402a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f6403b;

    public o(r0 r0Var, int[] iArr) {
        if (iArr.length == 0) {
            u1.a.g("Empty tracks are not allowed", new IllegalArgumentException());
        }
        this.f6402a = r0Var;
        this.f6403b = iArr;
    }
}
