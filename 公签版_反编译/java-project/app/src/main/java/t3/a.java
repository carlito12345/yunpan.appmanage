package t3;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import f2.u0;
import java.math.RoundingMode;
import l2.j0;
import okhttp3.internal.http.StatusLine;
import r1.e0;
import r1.f0;
import r1.o;
import r1.p;
import u1.q;

/* loaded from: classes.dex */
public final class a implements b {

    /* renamed from: m, reason: collision with root package name */
    public static final int[] f14716m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

    /* renamed from: n, reason: collision with root package name */
    public static final int[] f14717n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, CarSettingID.Recv.EMS_PEDAL_LEVEL, CarSettingID.Recv.ETC_ICM_DISPLAY_CFGST, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_MONTH, CarSettingID.Recv.IFC_TLR_ACOUSTIC_WARN, CarSettingID.Recv.FRONT_HATCH_SWITCH, 253, 279, StatusLine.HTTP_TEMP_REDIRECT, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

    /* renamed from: a, reason: collision with root package name */
    public final u0 f14718a;

    /* renamed from: b, reason: collision with root package name */
    public final j0 f14719b;

    /* renamed from: c, reason: collision with root package name */
    public final e f14720c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14721d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f14722e;

    /* renamed from: f, reason: collision with root package name */
    public final q f14723f;

    /* renamed from: g, reason: collision with root package name */
    public final int f14724g;

    /* renamed from: h, reason: collision with root package name */
    public final p f14725h;

    /* renamed from: i, reason: collision with root package name */
    public int f14726i;

    /* renamed from: j, reason: collision with root package name */
    public long f14727j;

    /* renamed from: k, reason: collision with root package name */
    public int f14728k;
    public long l;

    public a(u0 u0Var, j0 j0Var, e eVar) throws f0 {
        this.f14718a = u0Var;
        this.f14719b = j0Var;
        this.f14720c = eVar;
        int i10 = eVar.f14746c;
        int iMax = Math.max(1, i10 / 10);
        this.f14724g = iMax;
        q qVar = new q(eVar.f14744a);
        qVar.u();
        int iU = qVar.u();
        this.f14721d = iU;
        int i11 = eVar.f14745b;
        int i12 = eVar.f14747d;
        int i13 = (((i12 - (i11 * 4)) * 8) / (eVar.f14748e * i11)) + 1;
        if (iU != i13) {
            throw f0.a(null, "Expected frames per block: " + i13 + "; got: " + iU);
        }
        int iE = u1.f0.e(iMax, iU);
        this.f14722e = new byte[iE * i12];
        this.f14723f = new q(iU * 2 * i11 * iE);
        int i14 = ((i12 * i10) * 8) / iU;
        o oVar = new o();
        oVar.f13492n = e0.l("audio/raw");
        oVar.f13487h = i14;
        oVar.f13488i = i14;
        oVar.f13493o = iMax * 2 * i11;
        oVar.F = i11;
        oVar.G = i10;
        oVar.H = 2;
        this.f14725h = new p(oVar);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0046 A[ADDED_TO_REGION, EDGE_INSN: B:44:0x0046->B:14:0x0046 BREAK  A[LOOP:0: B:6:0x0024->B:13:0x0040], REMOVE, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x003d -> B:4:0x0021). Please report as a decompilation issue!!! */
    @Override // t3.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(l2.l r26, long r27) {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: t3.a.a(l2.l, long):boolean");
    }

    @Override // t3.b
    public final void b(long j10) {
        this.f14726i = 0;
        this.f14727j = j10;
        this.f14728k = 0;
        this.l = 0L;
    }

    @Override // t3.b
    public final void c(int i10, long j10) {
        g gVar = new g(this.f14720c, this.f14721d, i10, j10);
        this.f14718a.s(gVar);
        j0 j0Var = this.f14719b;
        j0Var.g(this.f14725h);
        j0Var.d(gVar.f14755e);
    }

    public final void d(int i10) {
        long j10 = this.f14727j;
        long j11 = this.l;
        e eVar = this.f14720c;
        long j12 = eVar.f14746c;
        String str = u1.f0.f15206a;
        long jM = j10 + u1.f0.M(j11, 1000000L, j12, RoundingMode.DOWN);
        int i11 = i10 * 2 * eVar.f14745b;
        this.f14719b.b(jM, 1, i11, this.f14728k - i11, null);
        this.l += i10;
        this.f14728k -= i11;
    }
}
