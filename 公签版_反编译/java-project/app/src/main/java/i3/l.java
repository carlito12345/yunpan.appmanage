package i3;

import a9.o;
import ha.j2;
import java.io.EOFException;
import l2.i0;
import l2.j0;
import r1.e0;
import r1.p;
import u1.f0;
import u1.q;

/* loaded from: classes.dex */
public final class l implements j0 {

    /* renamed from: a, reason: collision with root package name */
    public final j0 f8502a;

    /* renamed from: b, reason: collision with root package name */
    public final h f8503b;

    /* renamed from: c, reason: collision with root package name */
    public final q f8504c;

    /* renamed from: d, reason: collision with root package name */
    public int f8505d;

    /* renamed from: e, reason: collision with root package name */
    public int f8506e;

    /* renamed from: f, reason: collision with root package name */
    public byte[] f8507f;

    /* renamed from: g, reason: collision with root package name */
    public j f8508g;

    /* renamed from: h, reason: collision with root package name */
    public p f8509h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f8510i;

    public l(j0 j0Var, h hVar) {
        this.f8502a = j0Var;
        this.f8503b = hVar;
        new j2(10);
        this.f8505d = 0;
        this.f8506e = 0;
        this.f8507f = f0.f15207b;
        this.f8504c = new q();
    }

    @Override // l2.j0
    public final void a(int i10, q qVar) {
        c(qVar, i10, 0);
    }

    @Override // l2.j0
    public final void b(long j10, int i10, int i11, int i12, i0 i0Var) {
        if (this.f8508g == null) {
            this.f8502a.b(j10, i10, i11, i12, i0Var);
            return;
        }
        o.i("DRM on subtitles is not supported", i0Var == null);
        int i13 = (this.f8506e - i12) - i11;
        try {
            this.f8508g.b(this.f8507f, i13, i11, i.f8496c, new k(this, j10, i10));
        } catch (RuntimeException e7) {
            if (!this.f8510i) {
                throw e7;
            }
            u1.a.q("Parsing subtitles failed, ignoring sample.", e7);
        }
        int i14 = i13 + i11;
        this.f8505d = i14;
        if (i14 == this.f8506e) {
            this.f8505d = 0;
            this.f8506e = 0;
        }
    }

    @Override // l2.j0
    public final void c(q qVar, int i10, int i11) {
        if (this.f8508g == null) {
            this.f8502a.c(qVar, i10, i11);
            return;
        }
        h(i10);
        qVar.l(this.f8506e, i10, this.f8507f);
        this.f8506e += i10;
    }

    @Override // l2.j0
    public final /* synthetic */ void d(long j10) {
    }

    @Override // l2.j0
    public final int e(r1.h hVar, int i10, boolean z) {
        return f(hVar, i10, z);
    }

    @Override // l2.j0
    public final int f(r1.h hVar, int i10, boolean z) throws EOFException {
        if (this.f8508g == null) {
            return this.f8502a.f(hVar, i10, z);
        }
        h(i10);
        int i11 = hVar.read(this.f8507f, this.f8506e, i10);
        if (i11 != -1) {
            this.f8506e += i11;
            return i11;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // l2.j0
    public final void g(p pVar) {
        pVar.f13523o.getClass();
        String str = pVar.f13523o;
        o.k(e0.g(str) == 3);
        boolean zEquals = pVar.equals(this.f8509h);
        h hVar = this.f8503b;
        if (!zEquals) {
            this.f8509h = pVar;
            this.f8508g = hVar.m(pVar) ? hVar.k(pVar) : null;
        }
        j jVar = this.f8508g;
        j0 j0Var = this.f8502a;
        if (jVar == null) {
            j0Var.g(pVar);
            return;
        }
        r1.o oVar = new r1.o(pVar);
        oVar.f13492n = e0.l("application/x-media3-cues");
        oVar.f13489j = str;
        oVar.f13496s = Long.MAX_VALUE;
        oVar.L = hVar.x(pVar);
        j0Var.g(new p(oVar));
    }

    public final void h(int i10) {
        int length = this.f8507f.length;
        int i11 = this.f8506e;
        if (length - i11 >= i10) {
            return;
        }
        int i12 = i11 - this.f8505d;
        int iMax = Math.max(i12 * 2, i10 + i12);
        byte[] bArr = this.f8507f;
        byte[] bArr2 = iMax <= bArr.length ? bArr : new byte[iMax];
        System.arraycopy(bArr, this.f8505d, bArr2, 0, i12);
        this.f8505d = 0;
        this.f8506e = i12;
        this.f8507f = bArr2;
    }
}
