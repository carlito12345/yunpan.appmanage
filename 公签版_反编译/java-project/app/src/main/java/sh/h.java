package sh;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;

/* loaded from: classes3.dex */
public enum h implements wh.k, wh.l {
    /* JADX INFO: Fake field, exist only in values array */
    JANUARY,
    FEBRUARY,
    /* JADX INFO: Fake field, exist only in values array */
    MARCH,
    /* JADX INFO: Fake field, exist only in values array */
    APRIL,
    /* JADX INFO: Fake field, exist only in values array */
    MAY,
    /* JADX INFO: Fake field, exist only in values array */
    JUNE,
    /* JADX INFO: Fake field, exist only in values array */
    JULY,
    /* JADX INFO: Fake field, exist only in values array */
    AUGUST,
    /* JADX INFO: Fake field, exist only in values array */
    SEPTEMBER,
    /* JADX INFO: Fake field, exist only in values array */
    OCTOBER,
    /* JADX INFO: Fake field, exist only in values array */
    NOVEMBER,
    /* JADX INFO: Fake field, exist only in values array */
    DECEMBER;


    /* renamed from: b, reason: collision with root package name */
    public static final h[] f14596b = values();

    public static h q(int i10) {
        if (i10 < 1 || i10 > 12) {
            throw new a(da.b.a(i10, "Invalid value for MonthOfYear: "));
        }
        return f14596b[i10 - 1];
    }

    @Override // wh.k
    public final long b(wh.m mVar) {
        if (mVar == wh.a.MONTH_OF_YEAR) {
            return n();
        }
        if (mVar instanceof wh.a) {
            throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
        }
        return mVar.a(this);
    }

    @Override // wh.k
    public final Object c(wh.o oVar) {
        if (oVar == wh.n.f17927b) {
            return th.e.f15102a;
        }
        if (oVar == wh.n.f17928c) {
            return wh.b.MONTHS;
        }
        if (oVar == wh.n.f17931f || oVar == wh.n.f17932g || oVar == wh.n.f17929d || oVar == wh.n.f17926a || oVar == wh.n.f17930e) {
            return null;
        }
        return oVar.b(this);
    }

    @Override // wh.k
    public final boolean d(wh.m mVar) {
        return mVar instanceof wh.a ? mVar == wh.a.MONTH_OF_YEAR : mVar != null && mVar.f(this);
    }

    @Override // wh.k
    public final wh.r f(wh.m mVar) {
        if (mVar == wh.a.MONTH_OF_YEAR) {
            return mVar.d();
        }
        if (mVar instanceof wh.a) {
            throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
        }
        return mVar.c(this);
    }

    @Override // wh.l
    public final wh.j g(wh.j jVar) {
        if (!th.d.a(jVar).equals(th.e.f15102a)) {
            throw new a("Adjustment only supported on ISO date-time");
        }
        return jVar.a(n(), wh.a.MONTH_OF_YEAR);
    }

    @Override // wh.k
    public final int i(wh.m mVar) {
        return mVar == wh.a.MONTH_OF_YEAR ? n() : f(mVar).a(b(mVar), mVar);
    }

    public final int m(boolean z) {
        switch (this) {
            case JANUARY:
                return 1;
            case FEBRUARY:
                return 32;
            case MARCH:
                return (z ? 1 : 0) + 60;
            case APRIL:
                return (z ? 1 : 0) + 91;
            case MAY:
                return (z ? 1 : 0) + 121;
            case JUNE:
                return (z ? 1 : 0) + 152;
            case JULY:
                return (z ? 1 : 0) + CarSettingID.Recv.PCS_LADAR_TRIGGER_SV_MSET_ST;
            case AUGUST:
                return (z ? 1 : 0) + CarSettingID.Recv.IFC_TCP_AVAIL;
            case SEPTEMBER:
                return (z ? 1 : 0) + 244;
            case OCTOBER:
                return (z ? 1 : 0) + 274;
            case NOVEMBER:
                return (z ? 1 : 0) + 305;
            default:
                return (z ? 1 : 0) + 335;
        }
    }

    public final int n() {
        return ordinal() + 1;
    }

    public final int o(boolean z) {
        int iOrdinal = ordinal();
        return iOrdinal != 1 ? (iOrdinal == 3 || iOrdinal == 5 || iOrdinal == 8 || iOrdinal == 10) ? 30 : 31 : z ? 29 : 28;
    }

    public final int p() {
        int iOrdinal = ordinal();
        if (iOrdinal != 1) {
            return (iOrdinal == 3 || iOrdinal == 5 || iOrdinal == 8 || iOrdinal == 10) ? 30 : 31;
        }
        return 29;
    }
}
