package wh;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.source.SourceConst;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public abstract class g implements m {

    /* renamed from: a, reason: collision with root package name */
    public static final d f17918a;

    /* renamed from: b, reason: collision with root package name */
    public static final e f17919b;

    /* renamed from: c, reason: collision with root package name */
    public static final f f17920c;

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f17921d;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ g[] f17922e;

    /* JADX INFO: Fake field, exist only in values array */
    g EF0;

    static {
        g gVar = new g() { // from class: wh.c
            @Override // wh.m
            public final long a(k kVar) {
                if (!kVar.d(this)) {
                    throw new q("Unsupported field: DayOfQuarter");
                }
                int i10 = kVar.i(a.DAY_OF_YEAR);
                int i11 = kVar.i(a.MONTH_OF_YEAR);
                long jB = kVar.b(a.YEAR);
                int[] iArr = g.f17921d;
                int i12 = (i11 - 1) / 3;
                th.e.f15102a.getClass();
                return i10 - iArr[i12 + (th.e.b(jB) ? 4 : 0)];
            }

            @Override // wh.g, wh.m
            public final r c(k kVar) {
                if (!kVar.d(this)) {
                    throw new q("Unsupported field: DayOfQuarter");
                }
                long jB = kVar.b(g.f17918a);
                if (jB != 1) {
                    return jB == 2 ? r.c(1L, 91L) : (jB == 3 || jB == 4) ? r.c(1L, 92L) : d();
                }
                long jB2 = kVar.b(a.YEAR);
                th.e.f15102a.getClass();
                return th.e.b(jB2) ? r.c(1L, 91L) : r.c(1L, 90L);
            }

            @Override // wh.m
            public final r d() {
                return r.d(90L, 92L);
            }

            @Override // wh.m
            public final boolean f(k kVar) {
                return kVar.d(a.DAY_OF_YEAR) && kVar.d(a.MONTH_OF_YEAR) && kVar.d(a.YEAR) && th.d.a(kVar).equals(th.e.f15102a);
            }

            @Override // wh.m
            public final j g(j jVar, long j10) {
                long jA = a(jVar);
                d().b(j10, this);
                a aVar = a.DAY_OF_YEAR;
                return jVar.a((j10 - jA) + jVar.b(aVar), aVar);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }
        };
        d dVar = new d();
        f17918a = dVar;
        e eVar = new e();
        f17919b = eVar;
        f fVar = new f();
        f17920c = fVar;
        f17922e = new g[]{gVar, dVar, eVar, fVar};
        f17921d = new int[]{0, 90, CarSettingID.Recv.PCS_PARK_GEAR_EXIT_SET_ST, SourceConst.IOCTL_AM_VOLUME, 0, 91, CarSettingID.Recv.PCS_LADAR_TRIGGER_SV_MSET_ST, 274};
    }

    public g(String str, int i10) {
    }

    public static int h(sh.e eVar) {
        int iOrdinal = eVar.s().ordinal();
        int i10 = 1;
        int iT = eVar.t() - 1;
        int i11 = (3 - iOrdinal) + iT;
        int i12 = i11 - ((i11 / 7) * 7);
        int i13 = i12 - 3;
        if (i13 < -3) {
            i13 = i12 + 4;
        }
        if (iT < i13) {
            return (int) r.c(1L, j(i(eVar.E(180).A(-1L)))).f17936d;
        }
        int iG = ta.q.g(iT, i13, 7, 1);
        if (iG != 53 || i13 == -3 || (i13 == -2 && eVar.u())) {
            i10 = iG;
        }
        return i10;
    }

    public static int i(sh.e eVar) {
        int i10 = eVar.f14581a;
        int iT = eVar.t();
        if (iT <= 3) {
            return iT - eVar.s().ordinal() < -2 ? i10 - 1 : i10;
        }
        if (iT >= 363) {
            return ((iT - 363) - (eVar.u() ? 1 : 0)) - eVar.s().ordinal() >= 0 ? i10 + 1 : i10;
        }
        return i10;
    }

    public static int j(int i10) {
        sh.e eVarV = sh.e.v(i10, 1, 1);
        if (eVarV.s() != sh.b.THURSDAY) {
            return (eVarV.s() == sh.b.WEDNESDAY && eVarV.u()) ? 53 : 52;
        }
        return 53;
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f17922e.clone();
    }

    @Override // wh.m
    public final boolean b() {
        return true;
    }

    public r c(k kVar) {
        return d();
    }
}
