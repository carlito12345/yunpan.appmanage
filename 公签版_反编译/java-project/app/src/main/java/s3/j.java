package s3;

import l2.j0;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final j0 f14101a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f14102b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14103c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f14104d;

    /* renamed from: e, reason: collision with root package name */
    public int f14105e;

    /* renamed from: f, reason: collision with root package name */
    public int f14106f;

    /* renamed from: g, reason: collision with root package name */
    public long f14107g;

    /* renamed from: h, reason: collision with root package name */
    public long f14108h;

    public j(j0 j0Var) {
        this.f14101a = j0Var;
    }

    public final void a(int i10, int i11, byte[] bArr) {
        if (this.f14103c) {
            int i12 = this.f14106f;
            int i13 = (i10 + 1) - i12;
            if (i13 >= i11) {
                this.f14106f = (i11 - i10) + i12;
            } else {
                this.f14104d = ((bArr[i13] & 192) >> 6) == 0;
                this.f14103c = false;
            }
        }
    }

    public final void b(int i10, long j10, boolean z) {
        a9.o.t(this.f14108h != -9223372036854775807L);
        if (this.f14105e == 182 && z && this.f14102b) {
            this.f14101a.b(this.f14108h, this.f14104d ? 1 : 0, (int) (j10 - this.f14107g), i10, null);
        }
        if (this.f14105e != 179) {
            this.f14107g = j10;
        }
    }
}
