package sh;

import java.io.InvalidObjectException;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class i extends vh.b implements wh.l, Comparable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f14598c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final int f14599a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14600b;

    static {
        uh.m mVar = new uh.m();
        mVar.d("--");
        mVar.g(wh.a.MONTH_OF_YEAR, 2);
        mVar.c('-');
        mVar.g(wh.a.DAY_OF_MONTH, 2);
        mVar.k();
    }

    public i(int i10, int i11) {
        this.f14599a = i10;
        this.f14600b = i11;
    }

    private Object readResolve() throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new l((byte) 64, this);
    }

    @Override // wh.k
    public final long b(wh.m mVar) {
        int i10;
        if (!(mVar instanceof wh.a)) {
            return mVar.a(this);
        }
        int iOrdinal = ((wh.a) mVar).ordinal();
        if (iOrdinal == 18) {
            i10 = this.f14600b;
        } else {
            if (iOrdinal != 23) {
                throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
            }
            i10 = this.f14599a;
        }
        return i10;
    }

    @Override // vh.b, wh.k
    public final Object c(wh.o oVar) {
        return oVar == wh.n.f17927b ? th.e.f15102a : super.c(oVar);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        i iVar = (i) obj;
        int i10 = this.f14599a - iVar.f14599a;
        return i10 == 0 ? this.f14600b - iVar.f14600b : i10;
    }

    @Override // wh.k
    public final boolean d(wh.m mVar) {
        return mVar instanceof wh.a ? mVar == wh.a.MONTH_OF_YEAR || mVar == wh.a.DAY_OF_MONTH : mVar != null && mVar.f(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f14599a == iVar.f14599a && this.f14600b == iVar.f14600b;
    }

    @Override // vh.b, wh.k
    public final wh.r f(wh.m mVar) {
        if (mVar == wh.a.MONTH_OF_YEAR) {
            return mVar.d();
        }
        if (mVar != wh.a.DAY_OF_MONTH) {
            return super.f(mVar);
        }
        int iOrdinal = h.q(this.f14599a).ordinal();
        return wh.r.d(iOrdinal != 1 ? (iOrdinal == 3 || iOrdinal == 5 || iOrdinal == 8 || iOrdinal == 10) ? 30 : 31 : 28, h.q(r5).p());
    }

    @Override // wh.l
    public final wh.j g(wh.j jVar) {
        if (!th.d.a(jVar).equals(th.e.f15102a)) {
            throw new a("Adjustment only supported on ISO date-time");
        }
        wh.j jVarA = jVar.a(this.f14599a, wh.a.MONTH_OF_YEAR);
        wh.a aVar = wh.a.DAY_OF_MONTH;
        return jVarA.a(Math.min(jVarA.f(aVar).f17936d, this.f14600b), aVar);
    }

    public final int hashCode() {
        return (this.f14599a << 6) + this.f14600b;
    }

    @Override // vh.b, wh.k
    public final int i(wh.m mVar) {
        return f(mVar).a(b(mVar), mVar);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(10);
        sb2.append("--");
        int i10 = this.f14599a;
        sb2.append(i10 < 10 ? "0" : "");
        sb2.append(i10);
        int i11 = this.f14600b;
        sb2.append(i11 < 10 ? "-0" : "-");
        sb2.append(i11);
        return sb2.toString();
    }
}
