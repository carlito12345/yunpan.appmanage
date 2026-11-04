package v1;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f16392a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f16393b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f16394c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f16395d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f16396e;

    /* renamed from: f, reason: collision with root package name */
    public final int f16397f;

    /* renamed from: g, reason: collision with root package name */
    public final int f16398g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f16399h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f16400i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f16401j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f16402k;
    public final boolean l;

    /* renamed from: m, reason: collision with root package name */
    public final byte f16403m;

    /* renamed from: n, reason: collision with root package name */
    public final byte f16404n;

    /* renamed from: o, reason: collision with root package name */
    public final byte f16405o;

    public r(q qVar) {
        a9.o.k(qVar.f16390a == 1);
        ByteBuffer byteBuffer = qVar.f16391b;
        int iRemaining = byteBuffer.remaining();
        byte[] bArr = new byte[iRemaining];
        byteBuffer.asReadOnlyBuffer().get(bArr);
        j3.f fVar = new j3.f(bArr, iRemaining);
        this.f16398g = fVar.g(3);
        fVar.n();
        boolean zF = fVar.f();
        this.f16392a = zF;
        if (zF) {
            fVar.g(5);
            this.f16393b = false;
            this.f16399h = false;
        } else {
            if (fVar.f()) {
                fVar.o(64);
                if (fVar.f()) {
                    int i10 = 0;
                    while (!fVar.f()) {
                        i10++;
                    }
                    if (i10 < 32) {
                        fVar.o(i10);
                    }
                }
                boolean zF2 = fVar.f();
                this.f16393b = zF2;
                if (zF2) {
                    fVar.o(47);
                }
            } else {
                this.f16393b = false;
            }
            this.f16399h = fVar.f();
            int iG = fVar.g(5);
            for (int i11 = 0; i11 <= iG; i11++) {
                fVar.o(12);
                if (i11 == 0) {
                    if (fVar.g(5) > 7) {
                        fVar.f();
                    }
                } else if (fVar.g(5) > 7) {
                    fVar.n();
                }
                if (this.f16393b) {
                    fVar.n();
                }
                if (this.f16399h && fVar.f()) {
                    if (i11 == 0) {
                        fVar.g(4);
                    } else {
                        fVar.o(4);
                    }
                }
            }
        }
        int iG2 = fVar.g(4);
        int iG3 = fVar.g(4);
        fVar.o(iG2 + 1);
        fVar.o(iG3 + 1);
        if (this.f16392a) {
            this.f16394c = false;
        } else {
            this.f16394c = fVar.f();
        }
        if (this.f16394c) {
            fVar.o(4);
            fVar.o(3);
        }
        fVar.o(3);
        if (this.f16392a) {
            this.f16396e = true;
            this.f16395d = true;
            this.f16397f = 0;
        } else {
            fVar.o(4);
            boolean zF3 = fVar.f();
            if (zF3) {
                fVar.o(2);
            }
            if (fVar.f()) {
                this.f16395d = true;
            } else {
                this.f16395d = fVar.f();
            }
            if (!this.f16395d || fVar.f()) {
                this.f16396e = true;
            } else {
                this.f16396e = fVar.f();
            }
            if (zF3) {
                this.f16397f = fVar.g(3) + 1;
            } else {
                this.f16397f = 0;
            }
        }
        fVar.o(3);
        boolean zF4 = fVar.f();
        if (this.f16398g == 2 && zF4) {
            this.f16400i = fVar.f();
        } else {
            this.f16400i = false;
        }
        if (this.f16398g != 1) {
            this.f16401j = fVar.f();
        } else {
            this.f16401j = false;
        }
        if (fVar.f()) {
            this.f16403m = (byte) fVar.g(8);
            this.f16404n = (byte) fVar.g(8);
            this.f16405o = (byte) fVar.g(8);
        } else {
            this.f16403m = (byte) 0;
            this.f16404n = (byte) 0;
            this.f16405o = (byte) 0;
        }
        if (this.f16401j) {
            fVar.n();
            this.f16402k = false;
            this.l = false;
        } else if (this.f16403m == 1 && this.f16404n == 13 && this.f16405o == 0) {
            this.f16402k = false;
            this.l = false;
        } else {
            fVar.n();
            int i12 = this.f16398g;
            if (i12 == 0) {
                this.f16402k = true;
                this.l = true;
            } else if (i12 == 1) {
                this.f16402k = false;
                this.l = false;
            } else if (this.f16400i) {
                boolean zF5 = fVar.f();
                this.f16402k = zF5;
                if (zF5) {
                    this.l = fVar.f();
                } else {
                    this.l = false;
                }
            } else {
                this.f16402k = true;
                this.l = false;
            }
            if (this.f16402k && this.l) {
                fVar.g(2);
            }
        }
        fVar.n();
    }
}
