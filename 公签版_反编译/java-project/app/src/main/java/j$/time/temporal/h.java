package j$.time.temporal;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.source.SourceConst;
import j$.time.chrono.AbstractC0011a;
import j$.time.chrono.AbstractC0019i;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
abstract class h implements r {
    public static final h DAY_OF_QUARTER;
    public static final h QUARTER_OF_YEAR;
    public static final h WEEK_BASED_YEAR;
    public static final h WEEK_OF_WEEK_BASED_YEAR;

    /* renamed from: a, reason: collision with root package name */
    private static final int[] f8924a;

    /* renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ h[] f8925b;

    @Override // j$.time.temporal.r
    public final boolean v() {
        return true;
    }

    h(String str, int i10) {
    }

    public static h valueOf(String str) {
        return (h) Enum.valueOf(h.class, str);
    }

    public static h[] values() {
        return (h[]) f8925b.clone();
    }

    static {
        h hVar = new h() { // from class: j$.time.temporal.d
            @Override // j$.time.temporal.r
            public final w j() {
                return w.k(90L, 92L);
            }

            @Override // j$.time.temporal.r
            public final boolean m(o oVar) {
                if (oVar.f(a.DAY_OF_YEAR) && oVar.f(a.MONTH_OF_YEAR) && oVar.f(a.YEAR)) {
                    r rVar = j.f8928a;
                    if (((AbstractC0011a) AbstractC0019i.p(oVar)).equals(j$.time.chrono.u.f8817d)) {
                        return true;
                    }
                }
                return false;
            }

            @Override // j$.time.temporal.r
            public final w s(o oVar) {
                if (!m(oVar)) {
                    throw new v("Unsupported field: DayOfQuarter");
                }
                long jS = oVar.s(h.QUARTER_OF_YEAR);
                if (jS == 1) {
                    long jS2 = oVar.s(a.YEAR);
                    j$.time.chrono.u.f8817d.getClass();
                    return j$.time.chrono.u.m(jS2) ? w.j(1L, 91L) : w.j(1L, 90L);
                }
                if (jS == 2) {
                    return w.j(1L, 91L);
                }
                if (jS == 3 || jS == 4) {
                    return w.j(1L, 92L);
                }
                return j();
            }

            @Override // j$.time.temporal.r
            public final long k(o oVar) {
                if (!m(oVar)) {
                    throw new v("Unsupported field: DayOfQuarter");
                }
                int iK = oVar.k(a.DAY_OF_YEAR);
                int iK2 = oVar.k(a.MONTH_OF_YEAR);
                long jS = oVar.s(a.YEAR);
                int[] iArr = h.f8924a;
                int i10 = (iK2 - 1) / 3;
                j$.time.chrono.u.f8817d.getClass();
                return iK - iArr[i10 + (j$.time.chrono.u.m(jS) ? 4 : 0)];
            }

            @Override // j$.time.temporal.r
            public final m n(m mVar, long j10) {
                long jK = k(mVar);
                j().b(j10, this);
                a aVar = a.DAY_OF_YEAR;
                return mVar.d((j10 - jK) + mVar.s(aVar), aVar);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }
        };
        DAY_OF_QUARTER = hVar;
        h hVar2 = new h() { // from class: j$.time.temporal.e
            @Override // j$.time.temporal.r
            public final w j() {
                return w.j(1L, 4L);
            }

            @Override // j$.time.temporal.r
            public final boolean m(o oVar) {
                if (oVar.f(a.MONTH_OF_YEAR)) {
                    r rVar = j.f8928a;
                    if (((AbstractC0011a) AbstractC0019i.p(oVar)).equals(j$.time.chrono.u.f8817d)) {
                        return true;
                    }
                }
                return false;
            }

            @Override // j$.time.temporal.r
            public final long k(o oVar) {
                if (!m(oVar)) {
                    throw new v("Unsupported field: QuarterOfYear");
                }
                return (oVar.s(a.MONTH_OF_YEAR) + 2) / 3;
            }

            @Override // j$.time.temporal.r
            public final w s(o oVar) {
                if (!m(oVar)) {
                    throw new v("Unsupported field: QuarterOfYear");
                }
                return j();
            }

            @Override // j$.time.temporal.r
            public final m n(m mVar, long j10) {
                long jK = k(mVar);
                j().b(j10, this);
                a aVar = a.MONTH_OF_YEAR;
                return mVar.d(((j10 - jK) * 3) + mVar.s(aVar), aVar);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }
        };
        QUARTER_OF_YEAR = hVar2;
        h hVar3 = new h() { // from class: j$.time.temporal.f
            @Override // j$.time.temporal.r
            public final w j() {
                return w.k(52L, 53L);
            }

            @Override // j$.time.temporal.r
            public final boolean m(o oVar) {
                if (oVar.f(a.EPOCH_DAY)) {
                    r rVar = j.f8928a;
                    if (((AbstractC0011a) AbstractC0019i.p(oVar)).equals(j$.time.chrono.u.f8817d)) {
                        return true;
                    }
                }
                return false;
            }

            @Override // j$.time.temporal.r
            public final w s(o oVar) {
                if (!m(oVar)) {
                    throw new v("Unsupported field: WeekOfWeekBasedYear");
                }
                return h.F(j$.time.e.E(oVar));
            }

            @Override // j$.time.temporal.r
            public final long k(o oVar) {
                if (!m(oVar)) {
                    throw new v("Unsupported field: WeekOfWeekBasedYear");
                }
                return h.C(j$.time.e.E(oVar));
            }

            @Override // j$.time.temporal.r
            public final m n(m mVar, long j10) {
                j().b(j10, this);
                return mVar.e(j$.com.android.tools.r8.a.k(j10, k(mVar)), b.WEEKS);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = hVar3;
        h hVar4 = new h() { // from class: j$.time.temporal.g
            @Override // j$.time.temporal.r
            public final w j() {
                return a.YEAR.j();
            }

            @Override // j$.time.temporal.r
            public final boolean m(o oVar) {
                if (oVar.f(a.EPOCH_DAY)) {
                    r rVar = j.f8928a;
                    if (((AbstractC0011a) AbstractC0019i.p(oVar)).equals(j$.time.chrono.u.f8817d)) {
                        return true;
                    }
                }
                return false;
            }

            @Override // j$.time.temporal.r
            public final long k(o oVar) {
                if (!m(oVar)) {
                    throw new v("Unsupported field: WeekBasedYear");
                }
                return h.G(j$.time.e.E(oVar));
            }

            @Override // j$.time.temporal.r
            public final w s(o oVar) {
                if (!m(oVar)) {
                    throw new v("Unsupported field: WeekBasedYear");
                }
                return j();
            }

            @Override // j$.time.temporal.r
            public final m n(m mVar, long j10) {
                if (!m(mVar)) {
                    throw new v("Unsupported field: WeekBasedYear");
                }
                int iA = a.YEAR.j().a(j10, h.WEEK_BASED_YEAR);
                j$.time.e eVarE = j$.time.e.E(mVar);
                int iK = eVarE.k(a.DAY_OF_WEEK);
                int iC = h.C(eVarE);
                if (iC == 53 && h.H(iA) == 52) {
                    iC = 52;
                }
                return mVar.m(j$.time.e.N(iA, 1, 4).R(((iC - 1) * 7) + (iK - r6.k(r0))));
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }
        };
        WEEK_BASED_YEAR = hVar4;
        f8925b = new h[]{hVar, hVar2, hVar3, hVar4};
        f8924a = new int[]{0, 90, CarSettingID.Recv.PCS_PARK_GEAR_EXIT_SET_ST, SourceConst.IOCTL_AM_VOLUME, 0, 91, CarSettingID.Recv.PCS_LADAR_TRIGGER_SV_MSET_ST, 274};
    }

    static w F(j$.time.e eVar) {
        return w.j(1L, H(G(eVar)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int H(int i10) {
        j$.time.e eVarN = j$.time.e.N(i10, 1, 1);
        if (eVarN.G() != j$.time.b.THURSDAY) {
            return (eVarN.G() == j$.time.b.WEDNESDAY && eVarN.L()) ? 53 : 52;
        }
        return 53;
    }

    static int C(j$.time.e eVar) {
        int iOrdinal = eVar.G().ordinal();
        int i10 = 1;
        int iH = eVar.H() - 1;
        int i11 = (3 - iOrdinal) + iH;
        int i12 = i11 - ((i11 / 7) * 7);
        int i13 = i12 - 3;
        if (i13 < -3) {
            i13 = i12 + 4;
        }
        if (iH < i13) {
            return (int) w.j(1L, H(G(eVar.X(180).T(-1L)))).d();
        }
        int i14 = ((iH - i13) / 7) + 1;
        if (i14 != 53 || i13 == -3 || (i13 == -2 && eVar.L())) {
            i10 = i14;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int G(j$.time.e eVar) {
        int iJ = eVar.J();
        int iH = eVar.H();
        if (iH <= 3) {
            return iH - eVar.G().ordinal() < -2 ? iJ - 1 : iJ;
        }
        if (iH >= 363) {
            return ((iH - 363) - (eVar.L() ? 1 : 0)) - eVar.G().ordinal() >= 0 ? iJ + 1 : iJ;
        }
        return iJ;
    }
}
