package androidx.recyclerview.widget;

/* loaded from: classes.dex */
public class h implements l2.p, l2.q {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2142a;

    /* renamed from: b, reason: collision with root package name */
    public long f2143b;

    /* renamed from: c, reason: collision with root package name */
    public Object f2144c;

    public /* synthetic */ h(int i10, long j10, Object obj) {
        this.f2142a = i10;
        this.f2143b = j10;
        this.f2144c = obj;
    }

    @Override // l2.p
    public void a(int i10, int i11, byte[] bArr) {
        ((l2.l) this.f2144c).c(bArr, i10, i11, false);
    }

    @Override // l2.p
    public boolean b(byte[] bArr, int i10, int i11, boolean z) {
        return ((l2.l) this.f2144c).b(bArr, 0, i11, z);
    }

    @Override // l2.p
    public boolean c(byte[] bArr, int i10, int i11, boolean z) {
        return ((l2.l) this.f2144c).c(bArr, i10, i11, z);
    }

    @Override // l2.p
    public long d() {
        return ((l2.l) this.f2144c).d() - this.f2143b;
    }

    @Override // l2.p
    public void e(int i10) {
        ((l2.l) this.f2144c).k(i10, false);
    }

    @Override // l2.p
    public long getLength() {
        return ((l2.l) this.f2144c).f10498c - this.f2143b;
    }

    @Override // l2.p
    public long getPosition() {
        return ((l2.l) this.f2144c).f10499d - this.f2143b;
    }

    @Override // l2.p
    public void h() {
        ((l2.l) this.f2144c).f10501f = 0;
    }

    @Override // l2.p
    public void i(int i10) {
        ((l2.l) this.f2144c).o(i10, false);
    }

    public void k(int i10) {
        if (i10 < 64) {
            this.f2143b &= (1 << i10) ^ (-1);
            return;
        }
        h hVar = (h) this.f2144c;
        if (hVar != null) {
            hVar.k(i10 - 64);
        }
    }

    public int l(int i10) {
        h hVar = (h) this.f2144c;
        if (hVar == null) {
            return i10 >= 64 ? Long.bitCount(this.f2143b) : Long.bitCount(this.f2143b & ((1 << i10) - 1));
        }
        if (i10 < 64) {
            return Long.bitCount(this.f2143b & ((1 << i10) - 1));
        }
        return Long.bitCount(this.f2143b) + hVar.l(i10 - 64);
    }

    public void m() {
        if (((h) this.f2144c) == null) {
            this.f2144c = new h();
        }
    }

    public boolean n(int i10) {
        if (i10 < 64) {
            return (this.f2143b & (1 << i10)) != 0;
        }
        m();
        return ((h) this.f2144c).n(i10 - 64);
    }

    public void o(int i10, boolean z) {
        if (i10 >= 64) {
            m();
            ((h) this.f2144c).o(i10 - 64, z);
            return;
        }
        long j10 = this.f2143b;
        boolean z4 = (Long.MIN_VALUE & j10) != 0;
        long j11 = (1 << i10) - 1;
        this.f2143b = ((j10 & (j11 ^ (-1))) << 1) | (j10 & j11);
        if (z) {
            t(i10);
        } else {
            k(i10);
        }
        if (z4 || ((h) this.f2144c) != null) {
            m();
            ((h) this.f2144c).o(0, z4);
        }
    }

    public boolean p(int i10) {
        if (i10 >= 64) {
            m();
            return ((h) this.f2144c).p(i10 - 64);
        }
        long j10 = 1 << i10;
        long j11 = this.f2143b;
        boolean z = (j11 & j10) != 0;
        long j12 = j11 & (j10 ^ (-1));
        this.f2143b = j12;
        long j13 = j10 - 1;
        this.f2143b = (j12 & j13) | Long.rotateRight((j13 ^ (-1)) & j12, 1);
        h hVar = (h) this.f2144c;
        if (hVar != null) {
            if (hVar.n(0)) {
                t(63);
            }
            ((h) this.f2144c).p(0);
        }
        return z;
    }

    @Override // l2.q
    public void q() {
        ((f2.u0) this.f2144c).q();
    }

    public void r() {
        this.f2143b = 0L;
        h hVar = (h) this.f2144c;
        if (hVar != null) {
            hVar.r();
        }
    }

    @Override // r1.h
    public int read(byte[] bArr, int i10, int i11) {
        return ((l2.l) this.f2144c).read(bArr, i10, i11);
    }

    @Override // l2.p
    public void readFully(byte[] bArr, int i10, int i11) {
        ((l2.l) this.f2144c).b(bArr, i10, i11, false);
    }

    @Override // l2.q
    public void s(l2.c0 c0Var) {
        ((f2.u0) this.f2144c).s(new l2.h0(this, c0Var, c0Var));
    }

    public void t(int i10) {
        if (i10 < 64) {
            this.f2143b |= 1 << i10;
        } else {
            m();
            ((h) this.f2144c).t(i10 - 64);
        }
    }

    public String toString() {
        switch (this.f2142a) {
            case 0:
                if (((h) this.f2144c) == null) {
                    return Long.toBinaryString(this.f2143b);
                }
                return ((h) this.f2144c).toString() + "xx" + Long.toBinaryString(this.f2143b);
            default:
                return super.toString();
        }
    }

    @Override // l2.q
    public l2.j0 z(int i10, int i11) {
        return ((f2.u0) this.f2144c).z(i10, i11);
    }

    public h(l2.l lVar, long j10) {
        this.f2142a = 2;
        this.f2144c = lVar;
        a9.o.k(lVar.f10499d >= j10);
        this.f2143b = j10;
    }

    public h(j5.d dVar, long j10) {
        this.f2142a = 1;
        this.f2143b = j10;
        this.f2144c = dVar;
    }

    public h() {
        this.f2142a = 0;
        this.f2143b = 0L;
    }
}
