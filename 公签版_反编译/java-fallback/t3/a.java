package t3;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import f2.u0;
import java.math.RoundingMode;
import l2.j0;
import l2.l;
import okhttp3.internal.http.StatusLine;
import r1.e0;
import r1.o;
import r1.p;
import u1.f0;
import u1.q;

/* loaded from: classes.dex */
public final class a implements b {

    /* renamed from: m, reason: collision with root package name */
    public static final int[] f14716m = null;

    /* renamed from: n, reason: collision with root package name */
    public static final int[] f14717n = null;

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

    static {
        f14716m = new int[]{-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
        f14717n = new int[]{7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, CarSettingID.Recv.EMS_PEDAL_LEVEL, CarSettingID.Recv.ETC_ICM_DISPLAY_CFGST, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_MONTH, CarSettingID.Recv.IFC_TLR_ACOUSTIC_WARN, CarSettingID.Recv.FRONT_HATCH_SWITCH, 253, 279, StatusLine.HTTP_TEMP_REDIRECT, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    }

    public a(u0 r62, j0 r72, e r82) {
        this.f14718a = r62;
        this.f14719b = r72;
        this.f14720c = r82;
        int r63 = r82.f14746c;
        int r73 = Math.max(1, r63 / 10);
        this.f14724g = r73;
        q r12 = new q(r82.f14744a);
        r12.u();
        int r13 = r12.u();
        this.f14721d = r13;
        int r22 = r82.f14745b;
        int r4 = r82.f14747d;
        int r32 = (((r4 - (r22 * 4)) * 8) / (r82.f14748e * r22)) + 1;
        if (r13 != r32) goto L7;
        int r83 = f0.e(r73, r13);
        this.f14722e = new byte[r83 * r4];
        this.f14723f = new q(((r13 * 2) * r22) * r83);
        int r42 = ((r4 * r63) * 8) / r13;
        o r84 = new o();
        r84.f13492n = e0.l("audio/raw");
        r84.f13487h = r42;
        r84.f13488i = r42;
        r84.f13493o = (r73 * 2) * r22;
        r84.F = r22;
        r84.G = r63;
        r84.H = 2;
        this.f14725h = new p(r84);
        return;
    L7:
        throw r1.f0.a(null, "Expected frames per block: " + r32 + "; got: " + r13);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x003d -> B:4:0x0021). Please report as a decompilation issue!!! */
    @Override // t3.b
    public final boolean a(l r26, long r27) {
        int r32 = this.f14728k;
        e r4 = this.f14720c;
        int r33 = r32 / (r4.f14745b * 2);
        int r5 = this.f14724g;
        int r62 = this.f14721d;
        int r34 = f0.e(r5 - r33, r62);
        int r72 = r4.f14747d;
        int r35 = r34 * r72;
        if (r27 != 0) goto L5;
    L4:
        boolean r92 = true;
    L6:
        byte[] r10 = this.f14722e;
        if (r92 == true) goto L14;
        if (this.f14726i >= r35) goto L14;
        int r102 = r26.read(r10, this.f14726i, (int) Math.min(r35 - r12, r27));
        if (r102 == (-1)) goto L4;
        this.f14726i += r102;
    L14:
        int r12 = this.f14726i / r72;
        if (r12 <= 0) goto L38;
        int r22 = 0;
    L17:
        q r36 = this.f14723f;
        if (r22 >= r12) goto L35;
        int r122 = 0;
    L20:
        int r13 = r4.f14745b;
        if (r122 >= r13) goto L34;
        byte[] r14 = r36.f15266a;
        int r16 = (r122 * 4) + (r22 * r72);
        int r15 = (r13 * 4) + r16;
        int r17 = (r72 / r13) - 4;
        int r82 = (short) ((r10[r16] & 255) | ((r10[r16 + 1] & 255) << 8));
        int r11 = r10[r16 + 2] & 255;
        boolean r162 = r92;
        int r112 = Math.min(r11, 88);
        int[] r19 = f14717n;
        int r20 = r19[r112];
        int r21 = (((r22 * r62) * r13) + r122) * 2;
        r14[r21] = (byte) (r82 & 255);
        r14[r21 + 1] = (byte) (r82 >> 8);
        int r113 = r112;
        int r222 = r5;
        int r93 = 0;
    L24:
        if (r93 >= (r17 * 2)) goto L33;
        byte r52 = r10[((((r93 / 8) * r13) * 4) + r15) + ((r93 / 2) % 4)];
        byte[] r23 = r10;
        int r103 = r52 & 255;
        if ((r93 % 2) != 0) goto L28;
        int r53 = r52 & 15;
    L29:
        int r104 = ((((r53 & 7) * 2) + 1) * r20) >> 3;
        if ((r53 & 8) == 0) goto L32;
        r104 = -r104;
    L32:
        r82 = f0.g(r82 + r104, -32768, 32767);
        r21 = (r13 * 2) + r21;
        r14[r21] = (byte) (r82 & 255);
        r14[r21 + 1] = (byte) (r82 >> 8);
        r113 = f0.g(r113 + f14716m[r53], 0, 88);
        r20 = r19[r113];
        r93 = r93 + 1;
        r15 = r15;
        r10 = r23;
        goto L24
    L28:
        r53 = r103 >> 4;
        goto L29
    L33:
        r122 = r122 + 1;
        r92 = r162;
        r5 = r222;
        goto L20
    L34:
        r22 = r22 + 1;
        goto L17
    L35:
        int r223 = r5;
        boolean r163 = r92;
        int r63 = ((r62 * r12) * 2) * r4.f14745b;
        r36.O(0);
        r36.N(r63);
        this.f14726i -= r12 * r72;
        int r18 = r36.f15268c;
        this.f14719b.a(r18, r36);
        int r24 = this.f14728k + r18;
        this.f14728k = r24;
        if ((r24 / (r4.f14745b * 2)) < r223) goto L39;
        d(r223);
    L39:
        if (r163 == false) goto L43;
        int r110 = this.f14728k / (r4.f14745b * 2);
        if (r110 <= 0) goto L43;
        d(r110);
    L43:
        return r163;
    L38:
        r163 = r92;
        goto L39
    L5:
        r92 = false;
        goto L6
    }

    @Override // t3.b
    public final void b(long r22) {
        this.f14726i = 0;
        this.f14727j = r22;
        this.f14728k = 0;
        this.l = 0;
    }

    @Override // t3.b
    public final void c(int r92, long r10) {
        g r72 = new g(this.f14720c, this.f14721d, r92, r10);
        this.f14718a.s(r72);
        j0 r93 = this.f14719b;
        r93.g(this.f14725h);
        r93.d(r72.f14755e);
    }

    public final void d(int r20) {
        long r22 = this.f14727j;
        long r4 = this.l;
        e r11 = this.f14720c;
        long r82 = r11.f14746c;
        String r62 = f0.f15206a;
        long r13 = r22 + f0.M(r4, 1000000, r82, RoundingMode.DOWN);
        int r23 = (r20 * 2) * r11.f14745b;
        this.f14719b.b(r13, 1, r23, this.f14728k - r23, null);
        this.l += r20;
        this.f14728k -= r23;
    }
}