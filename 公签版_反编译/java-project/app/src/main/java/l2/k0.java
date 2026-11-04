package l2;

import com.hsae.autosdk.core.NoConst;

/* loaded from: classes.dex */
public final class k0 {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f10489a = new byte[10];

    /* renamed from: b, reason: collision with root package name */
    public boolean f10490b;

    /* renamed from: c, reason: collision with root package name */
    public int f10491c;

    /* renamed from: d, reason: collision with root package name */
    public long f10492d;

    /* renamed from: e, reason: collision with root package name */
    public int f10493e;

    /* renamed from: f, reason: collision with root package name */
    public int f10494f;

    /* renamed from: g, reason: collision with root package name */
    public int f10495g;

    public final void a(j0 j0Var, i0 i0Var) {
        if (this.f10491c > 0) {
            j0Var.b(this.f10492d, this.f10493e, this.f10494f, this.f10495g, i0Var);
            this.f10491c = 0;
        }
    }

    public final void b(j0 j0Var, long j10, int i10, int i11, int i12, i0 i0Var) {
        a9.o.s("TrueHD chunk samples must be contiguous in the sample queue.", this.f10495g <= i11 + i12);
        if (this.f10490b) {
            int i13 = this.f10491c;
            int i14 = i13 + 1;
            this.f10491c = i14;
            if (i13 == 0) {
                this.f10492d = j10;
                this.f10493e = i10;
                this.f10494f = 0;
            }
            this.f10494f += i11;
            this.f10495g = i12;
            if (i14 >= 16) {
                a(j0Var, i0Var);
            }
        }
    }

    public final void c(p pVar) {
        if (this.f10490b) {
            return;
        }
        byte[] bArr = this.f10489a;
        int i10 = 0;
        pVar.a(0, 10, bArr);
        pVar.h();
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b10 = bArr[7];
            if ((b10 & NoConst.ESCAPE_0XFE) == 186) {
                i10 = 40 << ((bArr[(b10 & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        if (i10 == 0) {
            return;
        }
        this.f10490b = true;
    }
}
