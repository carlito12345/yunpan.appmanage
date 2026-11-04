package s1;

import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import u1.f0;

/* loaded from: classes.dex */
public final class r implements l {

    /* renamed from: b, reason: collision with root package name */
    public int f13951b;

    /* renamed from: c, reason: collision with root package name */
    public float f13952c = 1.0f;

    /* renamed from: d, reason: collision with root package name */
    public float f13953d = 1.0f;

    /* renamed from: e, reason: collision with root package name */
    public i f13954e;

    /* renamed from: f, reason: collision with root package name */
    public i f13955f;

    /* renamed from: g, reason: collision with root package name */
    public i f13956g;

    /* renamed from: h, reason: collision with root package name */
    public i f13957h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f13958i;

    /* renamed from: j, reason: collision with root package name */
    public q f13959j;

    /* renamed from: k, reason: collision with root package name */
    public ByteBuffer f13960k;
    public ByteBuffer l;

    /* renamed from: m, reason: collision with root package name */
    public long f13961m;

    /* renamed from: n, reason: collision with root package name */
    public long f13962n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f13963o;

    public r() {
        i iVar = i.f13904e;
        this.f13954e = iVar;
        this.f13955f = iVar;
        this.f13956g = iVar;
        this.f13957h = iVar;
        ByteBuffer byteBuffer = l.f13911a;
        this.f13960k = byteBuffer;
        this.l = byteBuffer;
        this.f13951b = -1;
    }

    @Override // s1.l
    public final ByteBuffer a() {
        q qVar = this.f13959j;
        if (qVar != null) {
            a9.o.t(qVar.f13945k >= 0);
            int i10 = qVar.f13945k;
            int i11 = qVar.f13936b;
            o oVar = qVar.f13943i;
            int iN = oVar.n() * i10 * i11;
            if (iN > 0) {
                if (this.f13960k.capacity() < iN) {
                    this.f13960k = ByteBuffer.allocateDirect(iN).order(ByteOrder.nativeOrder());
                } else {
                    this.f13960k.clear();
                }
                ByteBuffer byteBuffer = this.f13960k;
                a9.o.t(qVar.f13945k >= 0);
                int iMin = Math.min(byteBuffer.remaining() / (oVar.n() * i11), qVar.f13945k);
                oVar.p(byteBuffer, iMin);
                qVar.f13945k -= iMin;
                System.arraycopy(oVar.g(), iMin * i11, oVar.g(), 0, qVar.f13945k * i11);
                this.f13960k.flip();
                this.f13962n += iN;
                this.l = this.f13960k;
            }
        }
        ByteBuffer byteBuffer2 = this.l;
        this.l = l.f13911a;
        return byteBuffer2;
    }

    @Override // s1.l
    public final boolean b() {
        if (!this.f13963o) {
            return false;
        }
        q qVar = this.f13959j;
        if (qVar != null) {
            a9.o.t(qVar.f13945k >= 0);
            if (qVar.f13943i.n() * qVar.f13945k * qVar.f13936b != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // s1.l
    public final i c(i iVar) throws k {
        int i10 = iVar.f13907c;
        if (i10 != 2 && i10 != 4) {
            throw new k(iVar);
        }
        int i11 = this.f13951b;
        if (i11 == -1) {
            i11 = iVar.f13905a;
        }
        this.f13954e = iVar;
        i iVar2 = new i(i11, iVar.f13906b, i10);
        this.f13955f = iVar2;
        this.f13958i = true;
        return iVar2;
    }

    @Override // s1.l
    public final void d(j jVar) {
        if (g()) {
            i iVar = this.f13954e;
            this.f13956g = iVar;
            i iVar2 = this.f13955f;
            this.f13957h = iVar2;
            if (this.f13958i) {
                this.f13959j = new q(iVar.f13905a, iVar.f13906b, this.f13952c, this.f13953d, iVar2.f13905a, iVar.f13907c == 4);
            } else {
                q qVar = this.f13959j;
                if (qVar != null) {
                    qVar.f13944j = 0;
                    qVar.f13945k = 0;
                    qVar.l = 0;
                    qVar.f13946m = 0;
                    qVar.f13947n = 0;
                    qVar.f13948o = 0;
                    qVar.f13949p = 0;
                    qVar.f13950q = 0.0d;
                    qVar.f13943i.flush();
                }
            }
        }
        this.l = l.f13911a;
        this.f13961m = 0L;
        this.f13962n = 0L;
        this.f13963o = false;
    }

    @Override // s1.l
    public final void e(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            q qVar = this.f13959j;
            qVar.getClass();
            this.f13961m += byteBuffer.remaining();
            int iRemaining = byteBuffer.remaining();
            o oVar = qVar.f13943i;
            int iN = iRemaining / (oVar.n() * qVar.f13936b);
            oVar.o(iN);
            oVar.l(byteBuffer, iRemaining);
            qVar.f13944j += iN;
            qVar.b();
        }
    }

    @Override // s1.l
    public final void f() {
        q qVar = this.f13959j;
        if (qVar != null) {
            int i10 = qVar.f13944j;
            float f10 = qVar.f13937c;
            float f11 = qVar.f13938d;
            double d10 = f10 / f11;
            double d11 = qVar.f13939e * f11;
            int i11 = qVar.f13948o;
            int i12 = qVar.f13945k;
            double d12 = i10 - i11;
            Double.isNaN(d12);
            Double.isNaN(d10);
            double d13 = d12 / d10;
            double d14 = i11;
            Double.isNaN(d14);
            double d15 = d13 + d14 + qVar.f13950q;
            double d16 = qVar.l;
            Double.isNaN(d16);
            Double.isNaN(d11);
            int i13 = i12 + ((int) (((d15 + d16) / d11) + 0.5d));
            qVar.f13950q = 0.0d;
            int i14 = qVar.f13942h * 2;
            o oVar = qVar.f13943i;
            oVar.o(i14 + i10);
            oVar.b(i10 * qVar.f13936b, i14);
            qVar.f13944j = i14 + qVar.f13944j;
            qVar.b();
            if (qVar.f13945k > i13) {
                qVar.f13945k = Math.max(i13, 0);
            }
            qVar.f13944j = 0;
            qVar.f13948o = 0;
            qVar.l = 0;
        }
        this.f13963o = true;
    }

    @Override // s1.l
    public final boolean g() {
        return this.f13955f.f13905a != -1 && (Math.abs(this.f13952c - 1.0f) >= 1.0E-4f || Math.abs(this.f13953d - 1.0f) >= 1.0E-4f || this.f13955f.f13905a != this.f13954e.f13905a);
    }

    @Override // s1.l
    public final long h(long j10) {
        if (this.f13962n < 1024) {
            double d10 = j10;
            double d11 = this.f13952c;
            Double.isNaN(d10);
            Double.isNaN(d11);
            return (long) (d10 / d11);
        }
        long j11 = this.f13961m;
        this.f13959j.getClass();
        long jN = j11 - (r3.f13943i.n() * (r3.f13944j * r3.f13936b));
        int i10 = this.f13957h.f13905a;
        int i11 = this.f13956g.f13905a;
        return i10 == i11 ? f0.M(j10, this.f13962n, jN, RoundingMode.DOWN) : f0.M(j10, this.f13962n * i11, jN * i10, RoundingMode.DOWN);
    }

    @Override // s1.l
    public final void reset() {
        this.f13952c = 1.0f;
        this.f13953d = 1.0f;
        i iVar = i.f13904e;
        this.f13954e = iVar;
        this.f13955f = iVar;
        this.f13956g = iVar;
        this.f13957h = iVar;
        ByteBuffer byteBuffer = l.f13911a;
        this.f13960k = byteBuffer;
        this.l = byteBuffer;
        this.f13951b = -1;
        this.f13958i = false;
        this.f13959j = null;
        this.f13961m = 0L;
        this.f13962n = 0L;
        this.f13963o = false;
    }
}
