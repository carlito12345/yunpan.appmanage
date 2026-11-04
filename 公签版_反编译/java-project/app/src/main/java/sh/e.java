package sh;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.source.SourceConst;
import java.io.InvalidObjectException;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class e extends th.a implements Serializable {

    /* renamed from: d, reason: collision with root package name */
    public static final e f14579d = v(-999999999, 1, 1);

    /* renamed from: e, reason: collision with root package name */
    public static final e f14580e = v(999999999, 12, 31);

    /* renamed from: a, reason: collision with root package name */
    public final int f14581a;

    /* renamed from: b, reason: collision with root package name */
    public final short f14582b;

    /* renamed from: c, reason: collision with root package name */
    public final short f14583c;

    public e(int i10, int i11, int i12) {
        this.f14581a = i10;
        this.f14582b = (short) i11;
        this.f14583c = (short) i12;
    }

    public static e B(int i10, int i11, int i12) {
        if (i11 == 2) {
            th.e.f15102a.getClass();
            i12 = Math.min(i12, th.e.b((long) i10) ? 29 : 28);
        } else if (i11 == 4 || i11 == 6 || i11 == 9 || i11 == 11) {
            i12 = Math.min(i12, 30);
        }
        return v(i10, i11, i12);
    }

    public static e p(int i10, h hVar, int i11) {
        if (i11 > 28) {
            th.e.f15102a.getClass();
            if (i11 > hVar.o(th.e.b(i10))) {
                if (i11 == 29) {
                    throw new a(g.b.i("Invalid date 'February 29' as '", i10, "' is not a leap year"));
                }
                throw new a("Invalid date '" + hVar.name() + " " + i11 + "'");
            }
        }
        return new e(i10, hVar.n(), i11);
    }

    public static e q(wh.k kVar) {
        e eVar = (e) kVar.c(wh.n.f17931f);
        if (eVar != null) {
            return eVar;
        }
        throw new a("Unable to obtain LocalDate from TemporalAccessor: " + kVar + ", type " + kVar.getClass().getName());
    }

    private Object readResolve() throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static e v(int i10, int i11, int i12) {
        wh.a.YEAR.h(i10);
        wh.a.MONTH_OF_YEAR.h(i11);
        wh.a.DAY_OF_MONTH.h(i12);
        return p(i10, h.q(i11), i12);
    }

    public static e w(long j10) {
        long j11;
        wh.a.EPOCH_DAY.h(j10);
        long j12 = 719468 + j10;
        if (j12 < 0) {
            long j13 = ((j10 + 719469) / 146097) - 1;
            j11 = j13 * 400;
            j12 += (-j13) * 146097;
        } else {
            j11 = 0;
        }
        long j14 = ((j12 * 400) + 591) / 146097;
        long j15 = j12 - ((j14 / 400) + (((j14 / 4) + (j14 * 365)) - (j14 / 100)));
        if (j15 < 0) {
            j14--;
            j15 = j12 - ((j14 / 400) + (((j14 / 4) + (365 * j14)) - (j14 / 100)));
        }
        int i10 = (int) j15;
        int i11 = ((i10 * 5) + 2) / CarSettingID.Recv.EMS_BRK_REGEN_MOD;
        int i12 = ((i11 + 2) % 12) + 1;
        int i13 = (i10 - (((i11 * SourceConst.IOCTL_ANDROID_PHONE_VOLUME) + 5) / 10)) + 1;
        long j16 = j14 + j11 + (i11 / 10);
        wh.a aVar = wh.a.YEAR;
        return new e(aVar.f17909b.a(j16, aVar), i12, i13);
    }

    private Object writeReplace() {
        return new l((byte) 3, this);
    }

    public final e A(long j10) {
        if (j10 == 0) {
            return this;
        }
        wh.a aVar = wh.a.YEAR;
        return B(aVar.f17909b.a(this.f14581a + j10, aVar), this.f14582b, this.f14583c);
    }

    @Override // wh.j
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public final e a(long j10, wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return (e) mVar.g(this, j10);
        }
        wh.a aVar = (wh.a) mVar;
        aVar.h(j10);
        int iOrdinal = aVar.ordinal();
        short s8 = this.f14583c;
        short s10 = this.f14582b;
        int i10 = this.f14581a;
        switch (iOrdinal) {
            case 15:
                return y(j10 - s().m());
            case 16:
                return y(j10 - b(wh.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 17:
                return y(j10 - b(wh.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 18:
                int i11 = (int) j10;
                return s8 == i11 ? this : v(i10, s10, i11);
            case 19:
                return E((int) j10);
            case 20:
                return w(j10);
            case 21:
                return y(p000if.a.v0(7, j10 - b(wh.a.ALIGNED_WEEK_OF_MONTH)));
            case 22:
                return y(p000if.a.v0(7, j10 - b(wh.a.ALIGNED_WEEK_OF_YEAR)));
            case 23:
                int i12 = (int) j10;
                if (s10 == i12) {
                    return this;
                }
                wh.a.MONTH_OF_YEAR.h(i12);
                return B(i10, i12, s8);
            case 24:
                return z(j10 - b(wh.a.PROLEPTIC_MONTH));
            case 25:
                if (i10 < 1) {
                    j10 = 1 - j10;
                }
                return F((int) j10);
            case 26:
                return F((int) j10);
            case 27:
                return b(wh.a.ERA) == j10 ? this : F(1 - i10);
            default:
                throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
        }
    }

    @Override // wh.j
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final e h(wh.l lVar) {
        return lVar instanceof e ? (e) lVar : (e) lVar.g(this);
    }

    public final e E(int i10) {
        if (t() == i10) {
            return this;
        }
        wh.a aVar = wh.a.YEAR;
        int i11 = this.f14581a;
        long j10 = i11;
        aVar.h(j10);
        wh.a.DAY_OF_YEAR.h(i10);
        th.e.f15102a.getClass();
        boolean zB = th.e.b(j10);
        if (i10 == 366 && !zB) {
            throw new a(g.b.i("Invalid date 'DayOfYear 366' as '", i11, "' is not a leap year"));
        }
        h hVarQ = h.q(((i10 - 1) / 31) + 1);
        if (i10 > (hVarQ.o(zB) + hVarQ.m(zB)) - 1) {
            hVarQ = h.f14596b[((((int) 1) + 12) + hVarQ.ordinal()) % 12];
        }
        return p(i11, hVarQ, (i10 - hVarQ.m(zB)) + 1);
    }

    public final e F(int i10) {
        if (this.f14581a == i10) {
            return this;
        }
        wh.a.YEAR.h(i10);
        return B(i10, this.f14582b, this.f14583c);
    }

    @Override // wh.k
    public final long b(wh.m mVar) {
        return mVar instanceof wh.a ? mVar == wh.a.EPOCH_DAY ? m() : mVar == wh.a.PROLEPTIC_MONTH ? (this.f14581a * 12) + (this.f14582b - 1) : r(mVar) : mVar.a(this);
    }

    @Override // th.a, vh.b, wh.k
    public final Object c(wh.o oVar) {
        return oVar == wh.n.f17931f ? this : super.c(oVar);
    }

    @Override // wh.k
    public final boolean d(wh.m mVar) {
        return mVar instanceof wh.a ? ((wh.a) mVar).b() : mVar != null && mVar.f(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && o((e) obj) == 0;
    }

    @Override // vh.b, wh.k
    public final wh.r f(wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return mVar.c(this);
        }
        wh.a aVar = (wh.a) mVar;
        if (!aVar.b()) {
            throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
        }
        int iOrdinal = aVar.ordinal();
        short s8 = this.f14582b;
        if (iOrdinal == 18) {
            return wh.r.c(1L, s8 != 2 ? (s8 == 4 || s8 == 6 || s8 == 9 || s8 == 11) ? 30 : 31 : u() ? 29 : 28);
        }
        if (iOrdinal == 19) {
            return wh.r.c(1L, u() ? 366 : 365);
        }
        if (iOrdinal == 21) {
            return wh.r.c(1L, (h.q(s8) != h.FEBRUARY || u()) ? 5L : 4L);
        }
        if (iOrdinal != 25) {
            return ((wh.a) mVar).f17909b;
        }
        return wh.r.c(1L, this.f14581a <= 0 ? 1000000000L : 999999999L);
    }

    @Override // wh.l
    public final wh.j g(wh.j jVar) {
        return jVar.a(m(), wh.a.EPOCH_DAY);
    }

    public final int hashCode() {
        int i10 = this.f14581a;
        return (((i10 << 11) + (this.f14582b << 6)) + this.f14583c) ^ (i10 & (-2048));
    }

    @Override // vh.b, wh.k
    public final int i(wh.m mVar) {
        return mVar instanceof wh.a ? r(mVar) : super.i(mVar);
    }

    @Override // wh.j
    public final wh.j l(long j10, wh.b bVar) {
        return j10 == Long.MIN_VALUE ? j(Long.MAX_VALUE, bVar).j(1L, bVar) : j(-j10, bVar);
    }

    @Override // th.a
    public final long m() {
        long j10 = this.f14581a;
        long j11 = this.f14582b;
        long j12 = 365 * j10;
        long j13 = (((367 * j11) - 362) / 12) + (j10 >= 0 ? ((j10 + 399) / 400) + (((3 + j10) / 4) - ((99 + j10) / 100)) + j12 : j12 - ((j10 / (-400)) + ((j10 / (-4)) - (j10 / (-100))))) + (this.f14583c - 1);
        if (j11 > 2) {
            j13 = !u() ? j13 - 2 : j13 - 1;
        }
        return j13 - 719528;
    }

    @Override // java.lang.Comparable
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final int compareTo(th.a aVar) {
        if (aVar instanceof e) {
            return o((e) aVar);
        }
        int iM = p000if.a.m(m(), aVar.m());
        if (iM != 0) {
            return iM;
        }
        th.e.f15102a.getClass();
        return 0;
    }

    public final int o(e eVar) {
        int i10 = this.f14581a - eVar.f14581a;
        if (i10 != 0) {
            return i10;
        }
        int i11 = this.f14582b - eVar.f14582b;
        return i11 == 0 ? this.f14583c - eVar.f14583c : i11;
    }

    public final int r(wh.m mVar) {
        int iOrdinal = ((wh.a) mVar).ordinal();
        short s8 = this.f14583c;
        int i10 = this.f14581a;
        switch (iOrdinal) {
            case 15:
                return s().m();
            case 16:
                return ((s8 - 1) % 7) + 1;
            case 17:
                return ((t() - 1) % 7) + 1;
            case 18:
                return s8;
            case 19:
                return t();
            case 20:
                throw new a(org.bouncycastle.jcajce.provider.digest.a.f("Field too large for an int: ", mVar));
            case 21:
                return ta.q.g(s8, 1, 7, 1);
            case 22:
                return ((t() - 1) / 7) + 1;
            case 23:
                return this.f14582b;
            case 24:
                throw new a(org.bouncycastle.jcajce.provider.digest.a.f("Field too large for an int: ", mVar));
            case 25:
                return i10 >= 1 ? i10 : 1 - i10;
            case 26:
                return i10;
            case 27:
                return i10 >= 1 ? 1 : 0;
            default:
                throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
        }
    }

    public final b s() {
        return b.n(p000if.a.D(7, m() + 3) + 1);
    }

    public final int t() {
        return (h.q(this.f14582b).m(u()) + this.f14583c) - 1;
    }

    public final String toString() {
        int i10 = this.f14581a;
        int iAbs = Math.abs(i10);
        StringBuilder sb2 = new StringBuilder(10);
        if (iAbs >= 1000) {
            if (i10 > 9999) {
                sb2.append('+');
            }
            sb2.append(i10);
        } else if (i10 < 0) {
            sb2.append(i10 - 10000);
            sb2.deleteCharAt(1);
        } else {
            sb2.append(i10 + 10000);
            sb2.deleteCharAt(0);
        }
        short s8 = this.f14582b;
        sb2.append(s8 < 10 ? "-0" : "-");
        sb2.append((int) s8);
        short s10 = this.f14583c;
        sb2.append(s10 < 10 ? "-0" : "-");
        sb2.append((int) s10);
        return sb2.toString();
    }

    public final boolean u() {
        th.e eVar = th.e.f15102a;
        long j10 = this.f14581a;
        eVar.getClass();
        return th.e.b(j10);
    }

    @Override // wh.j
    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public final e j(long j10, wh.b bVar) {
        if (!(bVar instanceof wh.b)) {
            bVar.getClass();
            return (e) j(j10, bVar);
        }
        switch (bVar.ordinal()) {
            case 7:
                return y(j10);
            case 8:
                return y(p000if.a.v0(7, j10));
            case 9:
                return z(j10);
            case 10:
                return A(j10);
            case 11:
                return A(p000if.a.v0(10, j10));
            case 12:
                return A(p000if.a.v0(100, j10));
            case 13:
                return A(p000if.a.v0(1000, j10));
            case 14:
                wh.a aVar = wh.a.ERA;
                return a(p000if.a.u0(b(aVar), j10), aVar);
            default:
                throw new wh.q("Unsupported unit: " + bVar);
        }
    }

    public final e y(long j10) {
        return j10 == 0 ? this : w(p000if.a.u0(m(), j10));
    }

    public final e z(long j10) {
        if (j10 == 0) {
            return this;
        }
        long j11 = (this.f14581a * 12) + (this.f14582b - 1) + j10;
        wh.a aVar = wh.a.YEAR;
        return B(aVar.f17909b.a(p000if.a.C(j11, 12L), aVar), p000if.a.D(12, j11) + 1, this.f14583c);
    }
}
