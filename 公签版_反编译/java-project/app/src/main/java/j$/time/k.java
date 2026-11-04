package j$.time;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import j$.time.chrono.AbstractC0011a;
import j$.time.chrono.AbstractC0019i;

/* loaded from: classes2.dex */
public enum k implements j$.time.temporal.o, j$.time.temporal.p {
    JANUARY,
    FEBRUARY,
    MARCH,
    APRIL,
    MAY,
    JUNE,
    JULY,
    AUGUST,
    SEPTEMBER,
    OCTOBER,
    NOVEMBER,
    DECEMBER;


    /* renamed from: a, reason: collision with root package name */
    private static final k[] f8898a = values();

    public static k F(int i10) {
        if (i10 < 1 || i10 > 12) {
            throw new DateTimeException("Invalid value for MonthOfYear: " + i10);
        }
        return f8898a[i10 - 1];
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.o
    public final boolean f(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.MONTH_OF_YEAR : rVar != null && rVar.m(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return rVar.j();
        }
        return j$.time.temporal.n.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final int k(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return getValue();
        }
        return j$.time.temporal.n.a(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return getValue();
        }
        if (rVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
        }
        return rVar.k(this);
    }

    public final k G() {
        return f8898a[((((int) 1) + 12) + ordinal()) % 12];
    }

    public final int D(boolean z) {
        int i10 = j.f8897a[ordinal()];
        return i10 != 1 ? (i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public final int E() {
        int i10 = j.f8897a[ordinal()];
        if (i10 != 1) {
            return (i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5) ? 30 : 31;
        }
        return 29;
    }

    public final int C(boolean z) {
        switch (j.f8897a[ordinal()]) {
            case 1:
                return 32;
            case 2:
                return (z ? 1 : 0) + 91;
            case 3:
                return (z ? 1 : 0) + 152;
            case 4:
                return (z ? 1 : 0) + 244;
            case 5:
                return (z ? 1 : 0) + 305;
            case 6:
                return 1;
            case 7:
                return (z ? 1 : 0) + 60;
            case 8:
                return (z ? 1 : 0) + 121;
            case 9:
                return (z ? 1 : 0) + CarSettingID.Recv.PCS_LADAR_TRIGGER_SV_MSET_ST;
            case 10:
                return (z ? 1 : 0) + CarSettingID.Recv.IFC_TCP_AVAIL;
            case 11:
                return (z ? 1 : 0) + 274;
            default:
                return (z ? 1 : 0) + 335;
        }
    }

    @Override // j$.time.temporal.o
    public final Object v(j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.n.e()) {
            return j$.time.chrono.u.f8817d;
        }
        if (tVar == j$.time.temporal.n.i()) {
            return j$.time.temporal.b.MONTHS;
        }
        return j$.time.temporal.n.c(this, tVar);
    }

    @Override // j$.time.temporal.p
    public final j$.time.temporal.m w(j$.time.temporal.m mVar) {
        if (!((AbstractC0011a) AbstractC0019i.p(mVar)).equals(j$.time.chrono.u.f8817d)) {
            throw new DateTimeException("Adjustment only supported on ISO date-time");
        }
        return mVar.d(getValue(), j$.time.temporal.a.MONTH_OF_YEAR);
    }
}
