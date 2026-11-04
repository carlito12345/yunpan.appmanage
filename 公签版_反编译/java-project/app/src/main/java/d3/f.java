package d3;

import a1.i;
import android.util.Pair;
import android.util.SparseArray;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.p001os.SocConst;
import j$.nio.charset.StandardCharsets;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import l2.i0;
import l2.j0;
import l2.k0;
import l2.l;
import l2.o;
import l2.p;
import l2.w;
import org.mozilla.universalchardet.prober.HebrewProber;
import r1.d0;
import r1.e0;
import r1.k;
import u1.f0;
import u1.q;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class f implements o {

    /* renamed from: k0, reason: collision with root package name */
    public static final byte[] f4396k0 = {SocConst.Upgrade.CUPID_CMD, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, HebrewProber.SPACE, 45, 45, 62, HebrewProber.SPACE, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: l0, reason: collision with root package name */
    public static final byte[] f4397l0;

    /* renamed from: m0, reason: collision with root package name */
    public static final byte[] f4398m0;

    /* renamed from: n0, reason: collision with root package name */
    public static final byte[] f4399n0;

    /* renamed from: o0, reason: collision with root package name */
    public static final UUID f4400o0;

    /* renamed from: p0, reason: collision with root package name */
    public static final Map f4401p0;
    public int A;
    public long B;
    public final SparseArray C;
    public boolean D;
    public long E;
    public int F;
    public long G;
    public long H;
    public int I;
    public boolean J;
    public long K;
    public long L;
    public long M;
    public boolean N;
    public int O;
    public long P;
    public long Q;
    public int R;
    public int S;
    public int[] T;
    public int U;
    public int V;
    public int W;
    public int X;
    public boolean Y;
    public long Z;

    /* renamed from: a, reason: collision with root package name */
    public final b f4402a;

    /* renamed from: a0, reason: collision with root package name */
    public int f4403a0;

    /* renamed from: b, reason: collision with root package name */
    public final h f4404b;

    /* renamed from: b0, reason: collision with root package name */
    public int f4405b0;

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray f4406c;

    /* renamed from: c0, reason: collision with root package name */
    public int f4407c0;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f4408d;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f4409d0;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f4410e;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f4411e0;

    /* renamed from: f, reason: collision with root package name */
    public final i3.h f4412f;

    /* renamed from: f0, reason: collision with root package name */
    public boolean f4413f0;

    /* renamed from: g, reason: collision with root package name */
    public final q f4414g;

    /* renamed from: g0, reason: collision with root package name */
    public int f4415g0;

    /* renamed from: h, reason: collision with root package name */
    public final q f4416h;

    /* renamed from: h0, reason: collision with root package name */
    public byte f4417h0;

    /* renamed from: i, reason: collision with root package name */
    public final q f4418i;

    /* renamed from: i0, reason: collision with root package name */
    public boolean f4419i0;

    /* renamed from: j, reason: collision with root package name */
    public final q f4420j;

    /* renamed from: j0, reason: collision with root package name */
    public l2.q f4421j0;

    /* renamed from: k, reason: collision with root package name */
    public final q f4422k;
    public final q l;

    /* renamed from: m, reason: collision with root package name */
    public final q f4423m;

    /* renamed from: n, reason: collision with root package name */
    public final q f4424n;

    /* renamed from: o, reason: collision with root package name */
    public final q f4425o;

    /* renamed from: p, reason: collision with root package name */
    public final q f4426p;

    /* renamed from: q, reason: collision with root package name */
    public ByteBuffer f4427q;
    public long r;

    /* renamed from: s, reason: collision with root package name */
    public long f4428s;

    /* renamed from: t, reason: collision with root package name */
    public long f4429t;

    /* renamed from: u, reason: collision with root package name */
    public long f4430u;

    /* renamed from: v, reason: collision with root package name */
    public long f4431v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f4432w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f4433x;

    /* renamed from: y, reason: collision with root package name */
    public e f4434y;
    public boolean z;

    static {
        String str = f0.f15206a;
        f4397l0 = "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text".getBytes(StandardCharsets.UTF_8);
        f4398m0 = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, HebrewProber.SPACE, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        f4399n0 = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, HebrewProber.SPACE, 45, 45, 62, HebrewProber.SPACE, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        f4400o0 = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap map = new HashMap();
        g.b.q(0, map, "htc_video_rotA-000", 90, "htc_video_rotA-090");
        g.b.q(180, map, "htc_video_rotA-180", SubsamplingScaleImageView.ORIENTATION_270, "htc_video_rotA-270");
        f4401p0 = Collections.unmodifiableMap(map);
    }

    public f(i3.h hVar, int i10) {
        b bVar = new b();
        this.f4428s = -1L;
        this.f4429t = -9223372036854775807L;
        this.f4430u = -9223372036854775807L;
        this.f4431v = -9223372036854775807L;
        this.E = -9223372036854775807L;
        this.F = -1;
        this.G = -1L;
        this.H = -1L;
        this.I = -1;
        this.K = -1L;
        this.L = -1L;
        this.M = -9223372036854775807L;
        this.f4402a = bVar;
        bVar.f4359d = new i(16, this);
        this.f4412f = hVar;
        this.C = new SparseArray();
        this.f4408d = (i10 & 1) == 0;
        this.f4410e = (i10 & 2) == 0;
        this.f4404b = new h();
        this.f4406c = new SparseArray();
        this.f4418i = new q(4);
        this.f4420j = new q(ByteBuffer.allocate(4).putInt(-1).array());
        this.f4422k = new q(4);
        this.f4414g = new q(v1.o.f16386a);
        this.f4416h = new q(4);
        this.l = new q();
        this.f4423m = new q();
        this.f4424n = new q(8);
        this.f4425o = new q();
        this.f4426p = new q();
        this.T = new int[1];
        this.f4433x = true;
    }

    public static byte[] k(long j10, long j11, String str) {
        a9.o.k(j10 != -9223372036854775807L);
        int i10 = (int) (j10 / 3600000000L);
        long j12 = j10 - (i10 * 3600000000L);
        int i11 = (int) (j12 / 60000000);
        long j13 = j12 - (i11 * 60000000);
        int i12 = (int) (j13 / 1000000);
        String str2 = String.format(Locale.US, str, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf((int) ((j13 - (i12 * 1000000)) / j11)));
        String str3 = f0.f15206a;
        return str2.getBytes(StandardCharsets.UTF_8);
    }

    @Override // l2.o
    public final o b() {
        return this;
    }

    @Override // l2.o
    public final void c(l2.q qVar) {
        if (this.f4410e) {
            qVar = new androidx.room.i(qVar, this.f4412f);
        }
        this.f4421j0 = qVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b4, code lost:
    
        r37 = r6;
        r38 = r7;
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00fc, code lost:
    
        r8.f4421j0.s(new l2.s(r8.f4431v));
     */
    /* JADX WARN: Code restructure failed: missing block: B:773:0x1242, code lost:
    
        r21 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:859:0x1430, code lost:
    
        if (r21 == false) goto L870;
     */
    /* JADX WARN: Code restructure failed: missing block: B:860:0x1432, code lost:
    
        r4 = ((l2.l) r50).getPosition();
        r11 = r49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:861:0x143e, code lost:
    
        if (r11.J == false) goto L864;
     */
    /* JADX WARN: Code restructure failed: missing block: B:862:0x1440, code lost:
    
        r11.L = r4;
        r51.f4591b = r11.K;
        r11.J = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:863:0x144a, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:864:0x144c, code lost:
    
        r4 = r51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:865:0x1450, code lost:
    
        if (r11.z == false) goto L920;
     */
    /* JADX WARN: Code restructure failed: missing block: B:866:0x1452, code lost:
    
        r13 = r11.L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:867:0x1458, code lost:
    
        if (r13 == (-1)) goto L921;
     */
    /* JADX WARN: Code restructure failed: missing block: B:868:0x145a, code lost:
    
        r4.f4591b = r13;
        r11.L = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:870:0x1460, code lost:
    
        r11 = r49;
        r4 = r51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:871:0x1464, code lost:
    
        r6 = r9;
        r7 = r10;
        r0 = r11;
        r4 = r22;
        r5 = r35;
        r2 = r40;
        r9 = r3;
        r3 = r39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:920:0x1464, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:957:?, code lost:
    
        return 1;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0895 A[PHI: r33
  0x0895: PHI (r33v38 java.lang.String) = 
  (r33v3 java.lang.String)
  (r33v4 java.lang.String)
  (r33v5 java.lang.String)
  (r33v6 java.lang.String)
  (r33v7 java.lang.String)
  (r33v8 java.lang.String)
  (r33v9 java.lang.String)
  (r33v10 java.lang.String)
  (r33v11 java.lang.String)
  (r33v12 java.lang.String)
  (r33v13 java.lang.String)
  (r33v14 java.lang.String)
  (r33v15 java.lang.String)
  (r33v16 java.lang.String)
  (r33v17 java.lang.String)
  (r33v18 java.lang.String)
  (r33v19 java.lang.String)
  (r33v20 java.lang.String)
  (r33v21 java.lang.String)
  (r33v22 java.lang.String)
  (r33v23 java.lang.String)
  (r33v24 java.lang.String)
  (r33v25 java.lang.String)
  (r33v26 java.lang.String)
  (r33v27 java.lang.String)
  (r33v28 java.lang.String)
  (r33v29 java.lang.String)
  (r33v30 java.lang.String)
  (r33v31 java.lang.String)
  (r33v32 java.lang.String)
  (r33v33 java.lang.String)
  (r33v34 java.lang.String)
  (r33v35 java.lang.String)
  (r33v39 java.lang.String)
 binds: [B:468:0x0a8e, B:464:0x0a83, B:460:0x0a78, B:456:0x0a6d, B:452:0x0a62, B:448:0x0a57, B:444:0x0a4c, B:440:0x0a3f, B:436:0x0a2f, B:432:0x0a1f, B:428:0x0a0f, B:424:0x09ff, B:420:0x09ef, B:416:0x09df, B:412:0x09cf, B:408:0x09bf, B:404:0x09af, B:400:0x099f, B:396:0x098f, B:392:0x097f, B:388:0x096f, B:384:0x095f, B:380:0x094f, B:376:0x093f, B:372:0x092f, B:368:0x091f, B:364:0x090f, B:360:0x08ff, B:356:0x08ef, B:352:0x08df, B:348:0x08cf, B:344:0x08bf, B:340:0x08af, B:333:0x0893] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:637:0x0f2f  */
    /* JADX WARN: Removed duplicated region for block: B:642:0x0f46  */
    /* JADX WARN: Removed duplicated region for block: B:643:0x0f48  */
    /* JADX WARN: Removed duplicated region for block: B:646:0x0f59  */
    /* JADX WARN: Removed duplicated region for block: B:648:0x0f67  */
    /* JADX WARN: Removed duplicated region for block: B:738:0x1146  */
    /* JADX WARN: Removed duplicated region for block: B:744:0x115b  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x025f  */
    /* JADX WARN: Type inference failed for: r0v57, types: [l2.l, l2.p] */
    /* JADX WARN: Type inference failed for: r0v73, types: [d3.e, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v80 */
    /* JADX WARN: Type inference failed for: r0v81, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r1v27, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r4v3, types: [d3.h] */
    @Override // l2.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int d(p pVar, dd.c cVar) throws r1.f0 {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        boolean z;
        int i10;
        boolean z4;
        int i11;
        String str8;
        int iB;
        int iA;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        char c7;
        char c10;
        List listSingletonList;
        int iT;
        int i12;
        String str15;
        RuntimeException runtimeException;
        Pair pair;
        String str16;
        List listR;
        List listR2;
        boolean zH;
        int i13;
        r1.g gVar;
        byte[] bArr;
        int i14;
        String str17;
        e eVar;
        bd.c cVarE;
        List list;
        String str18;
        String str19;
        String str20;
        String str21;
        String str22;
        int i15;
        boolean z10;
        List list2;
        String str23;
        String str24;
        int i16;
        e eVar2;
        f fVar;
        String str25;
        List list3;
        SparseArray sparseArray;
        SparseArray sparseArray2;
        long j10;
        int i17;
        e eVar3;
        int i18;
        List list4;
        long j11;
        long j12;
        e eVar4;
        f fVar2 = this;
        String str26 = "A_MPEG/L2";
        String str27 = "A_VORBIS";
        String str28 = "A_TRUEHD";
        String str29 = "A_MS/ACM";
        String str30 = "V_MPEG4/ISO/SP";
        String str31 = "V_MPEG4/ISO/AP";
        String str32 = "A_OPUS";
        fVar2.N = false;
        boolean z11 = true;
        while (z11 && !fVar2.N) {
            b bVar = fVar2.f4402a;
            bVar.f4359d.getClass();
            while (true) {
                ArrayDeque arrayDeque = bVar.f4357b;
                a aVar = (a) arrayDeque.peek();
                if (aVar == null || ((l) pVar).getPosition() < aVar.f4355b) {
                    str = str26;
                    str2 = str27;
                    str3 = str28;
                    str4 = str29;
                    str5 = str31;
                    str6 = str32;
                    ?? r12 = 0;
                    str7 = str30;
                    int i19 = bVar.f4360e;
                    ?? r4 = bVar.f4358c;
                    if (i19 == 0) {
                        ?? r02 = (l) pVar;
                        int i20 = 4;
                        long jC = r4.c(r02, true, false, 4);
                        if (jC == -2) {
                            r02.h();
                            while (true) {
                                byte[] bArr2 = bVar.f4356a;
                                r02.a(r12, i20, bArr2);
                                iB = h.b(bArr2[r12]);
                                if (iB != -1 && iB <= i20) {
                                    iA = (int) h.a(iB, bArr2, r12);
                                    ((f) bVar.f4359d.f76b).getClass();
                                    if (iA == 357149030 || iA == 524531317 || iA == 475249515 || iA == 374648427) {
                                    }
                                }
                                r02.i(1);
                                r12 = 0;
                                i20 = 4;
                            }
                            r02.i(iB);
                            jC = iA;
                        }
                        z = true;
                        if (jC == -1) {
                            z4 = false;
                            z11 = false;
                        } else {
                            bVar.f4361f = (int) jC;
                            bVar.f4360e = 1;
                        }
                    } else {
                        z = true;
                    }
                    if (bVar.f4360e == z) {
                        bVar.f4362g = r4.c((l) pVar, false, z, 8);
                        bVar.f4360e = 2;
                    }
                    i iVar = bVar.f4359d;
                    int i21 = bVar.f4361f;
                    ((f) iVar.f76b).getClass();
                    switch (i21) {
                        case 131:
                        case 136:
                        case 155:
                        case 159:
                        case 176:
                        case 179:
                        case CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_TIMES /* 186 */:
                        case CarSettingID.Recv.IFC_TSR_AVAIL /* 215 */:
                        case CarSettingID.Recv.SUNROOF_STATUS /* 231 */:
                        case 238:
                        case 240:
                        case 241:
                        case 247:
                        case 251:
                        case 16871:
                        case 16980:
                        case 17029:
                        case 17143:
                        case 18401:
                        case 18408:
                        case 20529:
                        case 20530:
                        case 21420:
                        case 21432:
                        case 21680:
                        case 21682:
                        case 21690:
                        case 21930:
                        case 21938:
                        case 21945:
                        case 21946:
                        case 21947:
                        case 21948:
                        case 21949:
                        case 21998:
                        case 22186:
                        case 22203:
                        case 25188:
                        case 30114:
                        case 30321:
                        case 2352003:
                        case 2807729:
                            i10 = 2;
                            break;
                        case 134:
                        case 17026:
                        case 21358:
                        case 2274716:
                            i10 = 3;
                            break;
                        case CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ /* 160 */:
                        case CarSettingID.Recv.PEPS_POWER_OFF_ENABLE /* 166 */:
                        case CarSettingID.Recv.ETC_BL_EENABLE_CFGST /* 174 */:
                        case CarSettingID.Recv.PCS_TURN_FOLLOW_SET_ST /* 183 */:
                        case CarSettingID.Recv.GW_TRANSPORTATION_MODE /* 187 */:
                        case 224:
                        case 225:
                        case 16868:
                        case 18407:
                        case 19899:
                        case 20532:
                        case 20533:
                        case 21936:
                        case 21968:
                        case 25152:
                        case 28032:
                        case 30113:
                        case 30320:
                        case 290298740:
                        case 357149030:
                        case 374648427:
                        case 408125543:
                        case 440786851:
                        case 475249515:
                        case 524531317:
                            i10 = 1;
                            break;
                        case 161:
                        case CarSettingID.Recv.DRIVER_MODE_LAMP_COLOR /* 163 */:
                        case CarSettingID.Recv.BCM_AUTO_SRWIN_CLOSE_CFGST /* 165 */:
                        case 16877:
                        case 16981:
                        case 18402:
                        case 21419:
                        case 25506:
                        case 30322:
                            i10 = 4;
                            break;
                        case CarSettingID.Recv.PCS_PARK_GEAR_EXIT_SET_ST /* 181 */:
                        case 17545:
                        case 21969:
                        case 21970:
                        case 21971:
                        case 21972:
                        case 21973:
                        case 21974:
                        case 21975:
                        case 21976:
                        case 21977:
                        case 21978:
                        case 30323:
                        case 30324:
                        case 30325:
                            i10 = 5;
                            break;
                        default:
                            i10 = 0;
                            break;
                    }
                    if (i10 == 0) {
                        ((l) pVar).i((int) bVar.f4362g);
                        bVar.f4360e = 0;
                        str30 = str7;
                        str31 = str5;
                        str28 = str3;
                        str29 = str4;
                        str26 = str;
                        str32 = str6;
                        str27 = str2;
                    } else if (i10 == 1) {
                        long position = ((l) pVar).getPosition();
                        arrayDeque.push(new a(bVar.f4361f, position + bVar.f4362g));
                        bVar.f4359d.G(bVar.f4361f, position, bVar.f4362g);
                        z4 = false;
                        bVar.f4360e = 0;
                    } else if (i10 == 2) {
                        long j13 = bVar.f4362g;
                        if (j13 > 8) {
                            throw r1.f0.a(null, "Invalid integer size: " + bVar.f4362g);
                        }
                        bVar.f4359d.u(bVar.f4361f, bVar.a((l) pVar, (int) j13));
                        z4 = false;
                        bVar.f4360e = 0;
                    } else if (i10 == 3) {
                        long j14 = bVar.f4362g;
                        if (j14 > 2147483647L) {
                            throw r1.f0.a(null, "String element size: " + bVar.f4362g);
                        }
                        i iVar2 = bVar.f4359d;
                        int i22 = bVar.f4361f;
                        int i23 = (int) j14;
                        if (i23 == 0) {
                            str8 = "";
                            i11 = 0;
                        } else {
                            byte[] bArr3 = new byte[i23];
                            i11 = 0;
                            ((l) pVar).readFully(bArr3, 0, i23);
                            while (i23 > 0 && bArr3[i23 - 1] == 0) {
                                i23--;
                            }
                            str8 = new String(bArr3, 0, i23);
                        }
                        iVar2.H(i22, str8);
                        bVar.f4360e = i11;
                        z4 = false;
                    } else if (i10 == 4) {
                        bVar.f4359d.l(bVar.f4361f, (int) bVar.f4362g, (l) pVar);
                        z4 = false;
                        bVar.f4360e = 0;
                    } else {
                        if (i10 != 5) {
                            throw r1.f0.a(null, "Invalid element type " + i10);
                        }
                        long j15 = bVar.f4362g;
                        if (j15 != 4 && j15 != 8) {
                            throw r1.f0.a(null, "Invalid float size: " + bVar.f4362g);
                        }
                        int i24 = (int) j15;
                        bVar.f4359d.m(bVar.f4361f, i24 == 4 ? Float.intBitsToFloat((int) r13) : Double.longBitsToDouble(bVar.a((l) pVar, i24)));
                        z4 = false;
                        bVar.f4360e = 0;
                    }
                } else {
                    i iVar3 = bVar.f4359d;
                    int i25 = ((a) arrayDeque.pop()).f4354a;
                    f fVar3 = (f) iVar3.f76b;
                    fVar3.f4421j0.getClass();
                    SparseArray sparseArray3 = fVar3.f4406c;
                    if (i25 == 160) {
                        str = str26;
                        str2 = str27;
                        str3 = str28;
                        str4 = str29;
                        str5 = str31;
                        str9 = str32;
                        str7 = str30;
                        if (fVar3.O != 2) {
                            str6 = str9;
                        } else {
                            e eVar5 = (e) sparseArray3.get(fVar3.U);
                            eVar5.f4371a0.getClass();
                            if (fVar3.Z > 0) {
                                str6 = str9;
                                if (str6.equals(eVar5.f4374c)) {
                                    byte[] bArrArray = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(fVar3.Z).array();
                                    q qVar = fVar3.f4426p;
                                    qVar.getClass();
                                    qVar.M(bArrArray.length, bArrArray);
                                }
                            } else {
                                str6 = str9;
                            }
                            int i26 = 0;
                            for (int i27 = 0; i27 < fVar3.S; i27++) {
                                i26 += fVar3.T[i27];
                            }
                            for (int i28 = 0; i28 < fVar3.S; i28++) {
                                long j16 = fVar3.P + ((eVar5.f4378f * i28) / 1000);
                                int i29 = fVar3.W;
                                if (i28 == 0 && !fVar3.Y) {
                                    i29 |= 1;
                                }
                                int i30 = fVar3.T[i28];
                                i26 -= i30;
                                fVar3.j(eVar5, j16, i29, i30, i26);
                            }
                            fVar3.O = 0;
                        }
                        z4 = false;
                    } else if (i25 != 174) {
                        SparseArray sparseArray4 = fVar3.C;
                        if (i25 == 183) {
                            str = str26;
                            str2 = str27;
                            str18 = str28;
                            str19 = str29;
                            str20 = str30;
                            str21 = str31;
                            str22 = str32;
                            if (!fVar3.z) {
                                fVar3.h(i25);
                                if (fVar3.E != -9223372036854775807L && (i15 = fVar3.F) != -1 && fVar3.G != -1) {
                                    List arrayList = (List) sparseArray4.get(i15);
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                        sparseArray4.put(fVar3.F, arrayList);
                                    }
                                    arrayList.add(new c(fVar3.E, fVar3.f4428s + fVar3.G, fVar3.H));
                                }
                            }
                        } else {
                            if (i25 == 19899) {
                                str = str26;
                                str2 = str27;
                                str18 = str28;
                                str19 = str29;
                                str20 = str30;
                                str21 = str31;
                                str22 = str32;
                                int i31 = fVar3.A;
                                if (i31 != -1) {
                                    long j17 = fVar3.B;
                                    if (j17 != -1) {
                                        if (i31 == 475249515) {
                                            fVar3.K = j17;
                                        }
                                    }
                                }
                                throw r1.f0.a(null, "Mandatory element SeekID or SeekPosition not found");
                            }
                            if (i25 == 25152) {
                                str = str26;
                                str2 = str27;
                                str18 = str28;
                                str19 = str29;
                                str20 = str30;
                                str21 = str31;
                                str22 = str32;
                                fVar3.i(i25);
                                e eVar6 = fVar3.f4434y;
                                if (eVar6.f4381i) {
                                    i0 i0Var = eVar6.f4383k;
                                    if (i0Var == null) {
                                        throw r1.f0.a(null, "Encrypted Track found but ContentEncKeyID was not found");
                                    }
                                    eVar6.f4384m = new r1.l(null, true, new k(r1.f.f13434a, null, "video/webm", i0Var.f10472b));
                                }
                            } else if (i25 == 28032) {
                                str = str26;
                                str2 = str27;
                                str18 = str28;
                                str19 = str29;
                                str20 = str30;
                                str21 = str31;
                                str22 = str32;
                                fVar3.i(i25);
                                e eVar7 = fVar3.f4434y;
                                if (eVar7.f4381i && eVar7.f4382j != null) {
                                    throw r1.f0.a(null, "Combining encryption and compression is not supported");
                                }
                            } else if (i25 == 357149030) {
                                str = str26;
                                str2 = str27;
                                str18 = str28;
                                str19 = str29;
                                str20 = str30;
                                str21 = str31;
                                str22 = str32;
                                if (fVar3.f4429t == -9223372036854775807L) {
                                    fVar3.f4429t = 1000000L;
                                }
                                long j18 = fVar3.f4430u;
                                if (j18 != -9223372036854775807L) {
                                    fVar3.f4431v = fVar3.o(j18);
                                }
                            } else if (i25 == 374648427) {
                                str = str26;
                                str2 = str27;
                                str18 = str28;
                                str19 = str29;
                                str20 = str30;
                                str21 = str31;
                                str22 = str32;
                                SparseArray sparseArray5 = sparseArray3;
                                if (sparseArray5.size() == 0) {
                                    throw r1.f0.a(null, "No valid tracks were found");
                                }
                                boolean z12 = !fVar3.f4408d || fVar3.K == -1;
                                int i32 = -1;
                                int i33 = -1;
                                int i34 = -1;
                                int i35 = -1;
                                int i36 = 0;
                                while (i36 < sparseArray5.size()) {
                                    SparseArray sparseArray6 = sparseArray5;
                                    e eVar8 = (e) sparseArray6.valueAt(i36);
                                    int i37 = eVar8.f4377e;
                                    if (i37 == 2) {
                                        if (eVar8.Y) {
                                            i32 = eVar8.f4376d;
                                        }
                                        if (i33 == -1) {
                                            i33 = eVar8.f4376d;
                                        }
                                    } else if (i37 == 1) {
                                        if (eVar8.Y) {
                                            i34 = eVar8.f4376d;
                                        }
                                        if (i35 == -1) {
                                            i35 = eVar8.f4376d;
                                        }
                                    }
                                    if (z12) {
                                        eVar8.f4371a0.getClass();
                                        if (!eVar8.W) {
                                            j0 j0Var = eVar8.f4371a0;
                                            r1.p pVar2 = eVar8.f4373b0;
                                            pVar2.getClass();
                                            j0Var.g(pVar2);
                                        }
                                    }
                                    i36++;
                                    sparseArray5 = sparseArray6;
                                }
                                SparseArray sparseArray7 = sparseArray5;
                                if (i32 != -1) {
                                    fVar3.I = i32;
                                } else if (i33 != -1) {
                                    fVar3.I = i33;
                                } else if (i34 != -1) {
                                    fVar3.I = i34;
                                } else if (i35 != -1) {
                                    fVar3.I = i35;
                                } else {
                                    fVar3.I = sparseArray7.size() > 0 ? ((e) sparseArray7.valueAt(0)).f4376d : -1;
                                }
                                if (z12) {
                                    fVar3.l();
                                }
                            } else if (i25 == 475249515 && !fVar3.z) {
                                int i38 = 0;
                                while (true) {
                                    if (i38 < sparseArray4.size()) {
                                        if (((List) sparseArray4.valueAt(i38)).isEmpty()) {
                                            i38++;
                                        } else if (fVar3.f4431v != -9223372036854775807L) {
                                            for (int i39 = 0; i39 < sparseArray4.size(); i39++) {
                                                Collections.sort((List) sparseArray4.valueAt(i39));
                                            }
                                            str20 = str30;
                                            str21 = str31;
                                            fVar3.f4421j0.s(new d(sparseArray4, fVar3.f4431v, fVar3.I, fVar3.f4428s, fVar3.r));
                                            z10 = true;
                                        }
                                    }
                                }
                                fVar3.z = z10;
                                fVar3.D = false;
                                int i40 = 0;
                                while (i40 < sparseArray3.size()) {
                                    e eVar9 = (e) sparseArray3.valueAt(i40);
                                    long j19 = fVar3.f4431v;
                                    long j20 = fVar3.f4428s;
                                    String str33 = str28;
                                    String str34 = str29;
                                    long j21 = fVar3.r;
                                    if (eVar9.f4377e != 2 || (list2 = (List) sparseArray4.get(eVar9.f4376d)) == null || list2.isEmpty()) {
                                        i16 = i40;
                                        str24 = str26;
                                        str23 = str27;
                                        fVar = fVar3;
                                        str25 = str32;
                                        sparseArray = sparseArray3;
                                        sparseArray2 = sparseArray4;
                                        eVar4 = eVar9;
                                    } else {
                                        if (list2.isEmpty()) {
                                            i16 = i40;
                                            eVar2 = eVar9;
                                            str24 = str26;
                                            str23 = str27;
                                            fVar = fVar3;
                                            str25 = str32;
                                            sparseArray = sparseArray3;
                                            sparseArray2 = sparseArray4;
                                        } else {
                                            str23 = str27;
                                            int iMin = Math.min(list2.size(), 20);
                                            double d10 = 0.0d;
                                            str24 = str26;
                                            int i41 = 0;
                                            int i42 = -1;
                                            while (true) {
                                                if (i41 < iMin) {
                                                    int i43 = iMin;
                                                    c cVar2 = (c) list2.get(i41);
                                                    sparseArray = sparseArray3;
                                                    sparseArray2 = sparseArray4;
                                                    if (cVar2.f4363a > 10000000) {
                                                        i16 = i40;
                                                        eVar2 = eVar9;
                                                        fVar = fVar3;
                                                        str25 = str32;
                                                        list3 = list2;
                                                    } else {
                                                        int size = list2.size() - 1;
                                                        long j22 = j20;
                                                        long j23 = cVar2.f4363a;
                                                        f fVar4 = fVar3;
                                                        String str35 = str32;
                                                        long j24 = cVar2.f4365c;
                                                        long j25 = cVar2.f4364b;
                                                        if (i41 < size) {
                                                            i17 = i40;
                                                            c cVar3 = (c) list2.get(i41 + 1);
                                                            list4 = list2;
                                                            eVar3 = eVar9;
                                                            i18 = i41;
                                                            j11 = (cVar3.f4364b + cVar3.f4365c) - (j25 + j24);
                                                            j12 = cVar3.f4363a - j23;
                                                        } else {
                                                            i17 = i40;
                                                            eVar3 = eVar9;
                                                            i18 = i41;
                                                            list4 = list2;
                                                            j11 = (j22 + j21) - (j25 + j24);
                                                            j12 = j19 - j23;
                                                        }
                                                        if (j12 > 0) {
                                                            double d11 = j11;
                                                            double d12 = j12;
                                                            Double.isNaN(d11);
                                                            Double.isNaN(d12);
                                                            double d13 = d11 / d12;
                                                            if (d13 > d10) {
                                                                d10 = d13;
                                                                i42 = i18;
                                                            }
                                                        }
                                                        i41 = i18 + 1;
                                                        sparseArray3 = sparseArray;
                                                        iMin = i43;
                                                        sparseArray4 = sparseArray2;
                                                        j20 = j22;
                                                        str32 = str35;
                                                        i40 = i17;
                                                        fVar3 = fVar4;
                                                        list2 = list4;
                                                        eVar9 = eVar3;
                                                    }
                                                } else {
                                                    i16 = i40;
                                                    eVar2 = eVar9;
                                                    fVar = fVar3;
                                                    str25 = str32;
                                                    list3 = list2;
                                                    sparseArray = sparseArray3;
                                                    sparseArray2 = sparseArray4;
                                                }
                                            }
                                            if (i42 != -1) {
                                                j10 = ((c) list3.get(i42)).f4363a;
                                            }
                                            if (j10 == -9223372036854775807L) {
                                                eVar4 = eVar2;
                                                r1.p pVar3 = eVar4.f4373b0;
                                                pVar3.getClass();
                                                u2.c cVar4 = new u2.c(j10);
                                                d0 d0Var = pVar3.l;
                                                d0 d0Var2 = d0Var == null ? new d0(cVar4) : d0Var.a(cVar4);
                                                r1.o oVarA = eVar4.f4373b0.a();
                                                oVarA.f13490k = d0Var2;
                                                eVar4.f4373b0 = oVarA.a();
                                            } else {
                                                eVar4 = eVar2;
                                            }
                                        }
                                        j10 = -9223372036854775807L;
                                        if (j10 == -9223372036854775807L) {
                                        }
                                    }
                                    if (!eVar4.W) {
                                        eVar4.f4371a0.getClass();
                                        j0 j0Var2 = eVar4.f4371a0;
                                        r1.p pVar4 = eVar4.f4373b0;
                                        pVar4.getClass();
                                        j0Var2.g(pVar4);
                                    }
                                    i40 = i16 + 1;
                                    sparseArray3 = sparseArray;
                                    sparseArray4 = sparseArray2;
                                    str32 = str25;
                                    str28 = str33;
                                    str29 = str34;
                                    str27 = str23;
                                    str26 = str24;
                                    fVar3 = fVar;
                                }
                                str = str26;
                                str2 = str27;
                                str18 = str28;
                                str19 = str29;
                                str22 = str32;
                                fVar3.l();
                            } else {
                                str = str26;
                                str2 = str27;
                                str3 = str28;
                                str4 = str29;
                                str5 = str31;
                                str6 = str32;
                                str7 = str30;
                                z4 = false;
                            }
                        }
                        str6 = str22;
                        str3 = str18;
                        str4 = str19;
                        str7 = str20;
                        str5 = str21;
                        z4 = false;
                    } else {
                        String str36 = str26;
                        String str37 = str27;
                        String str38 = str28;
                        String str39 = str29;
                        String str40 = str30;
                        String str41 = str31;
                        String str42 = str32;
                        ?? r03 = fVar3.f4434y;
                        r03.getClass();
                        String str43 = r03.f4374c;
                        if (str43 == null) {
                            throw r1.f0.a(null, "CodecId is missing in TrackEntry element");
                        }
                        switch (str43.hashCode()) {
                            case -2095576542:
                                str10 = str42;
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                if (str43.equals(str5)) {
                                    c7 = 0;
                                    break;
                                } else {
                                    c7 = 65535;
                                    break;
                                }
                            case -2095575984:
                                str10 = str42;
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str13 = str37;
                                str14 = str36;
                                if (str43.equals(str7)) {
                                    str5 = str41;
                                    c7 = 1;
                                    break;
                                }
                                str5 = str41;
                                c7 = 65535;
                                break;
                            case -1985379776:
                                str10 = str42;
                                str11 = str38;
                                str12 = str39;
                                str13 = str37;
                                str14 = str36;
                                if (str43.equals(str12)) {
                                    str7 = str40;
                                    str5 = str41;
                                    c7 = 2;
                                    break;
                                }
                                str7 = str40;
                                str5 = str41;
                                c7 = 65535;
                                break;
                            case -1784763192:
                                str10 = str42;
                                str11 = str38;
                                str13 = str37;
                                str14 = str36;
                                if (str43.equals(str11)) {
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    c7 = 3;
                                    break;
                                }
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                c7 = 65535;
                                break;
                            case -1730367663:
                                str10 = str42;
                                str13 = str37;
                                str14 = str36;
                                if (str43.equals(str13)) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    c7 = 4;
                                    break;
                                } else {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    c7 = 65535;
                                    break;
                                }
                            case -1482641358:
                                str10 = str42;
                                str14 = str36;
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                if (str43.equals(str14)) {
                                    str13 = str37;
                                    c7 = 5;
                                    break;
                                } else {
                                    str13 = str37;
                                    c7 = 65535;
                                    break;
                                }
                            case -1482641357:
                                str10 = str42;
                                if (str43.equals("A_MPEG/L3")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 6;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case -1373388978:
                                str10 = str42;
                                if (str43.equals("V_MS/VFW/FOURCC")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 7;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case -933872740:
                                str10 = str42;
                                if (str43.equals("S_DVBSUB")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = '\b';
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case -538363189:
                                str10 = str42;
                                if (str43.equals("V_MPEG4/ISO/ASP")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = '\t';
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case -538363109:
                                str10 = str42;
                                if (str43.equals("V_MPEG4/ISO/AVC")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = '\n';
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case -425012669:
                                str10 = str42;
                                if (str43.equals("S_VOBSUB")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 11;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case -356037306:
                                str10 = str42;
                                if (str43.equals("A_DTS/LOSSLESS")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = '\f';
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 62923557:
                                str10 = str42;
                                if (str43.equals("A_AAC")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = '\r';
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 62923603:
                                str10 = str42;
                                if (str43.equals("A_AC3")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 14;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 62927045:
                                str10 = str42;
                                if (str43.equals("A_DTS")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 15;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 82318131:
                                str10 = str42;
                                if (str43.equals("V_AV1")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 16;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 82338133:
                                str10 = str42;
                                if (str43.equals("V_VP8")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 17;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 82338134:
                                str10 = str42;
                                if (str43.equals("V_VP9")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 18;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 99146302:
                                str10 = str42;
                                if (str43.equals("S_HDMV/PGS")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 19;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 444813526:
                                str10 = str42;
                                if (str43.equals("V_THEORA")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 20;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 542569478:
                                str10 = str42;
                                if (str43.equals("A_DTS/EXPRESS")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 21;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 635596514:
                                str10 = str42;
                                if (str43.equals("A_PCM/FLOAT/IEEE")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 22;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 725948237:
                                str10 = str42;
                                if (str43.equals("A_PCM/INT/BIG")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 23;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 725957860:
                                str10 = str42;
                                if (str43.equals("A_PCM/INT/LIT")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 24;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 738597099:
                                str10 = str42;
                                if (str43.equals("S_TEXT/ASS")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 25;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 738614379:
                                str10 = str42;
                                if (str43.equals("S_TEXT/SSA")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 26;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 855502857:
                                str10 = str42;
                                if (str43.equals("V_MPEGH/ISO/HEVC")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 27;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 1045209816:
                                str10 = str42;
                                if (str43.equals("S_TEXT/WEBVTT")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 28;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 1422270023:
                                str10 = str42;
                                if (str43.equals("S_TEXT/UTF8")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 29;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 1809237540:
                                str10 = str42;
                                if (str43.equals("V_MPEG2")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 30;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 1950749482:
                                str10 = str42;
                                if (str43.equals("A_EAC3")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = 31;
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 1950789798:
                                str10 = str42;
                                if (str43.equals("A_FLAC")) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = ' ';
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            case 1951062397:
                                str10 = str42;
                                if (str43.equals(str10)) {
                                    str11 = str38;
                                    str12 = str39;
                                    str7 = str40;
                                    str5 = str41;
                                    str13 = str37;
                                    str14 = str36;
                                    c7 = '!';
                                    break;
                                }
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                            default:
                                str10 = str42;
                                str11 = str38;
                                str12 = str39;
                                str7 = str40;
                                str5 = str41;
                                str13 = str37;
                                str14 = str36;
                                c7 = 65535;
                                break;
                        }
                        switch (c7) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case '\b':
                            case '\t':
                            case '\n':
                            case 11:
                            case '\f':
                            case '\r':
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case ' ':
                            case '!':
                                int i44 = r03.f4376d;
                                String str44 = "video/x-unknown";
                                switch (str43.hashCode()) {
                                    case -2095576542:
                                        str9 = str10;
                                        if (str43.equals(str5)) {
                                            c10 = 0;
                                            break;
                                        } else {
                                            c10 = 65535;
                                            break;
                                        }
                                    case -2095575984:
                                        str9 = str10;
                                        if (str43.equals(str7)) {
                                            c10 = 1;
                                            break;
                                        }
                                        break;
                                    case -1985379776:
                                        str9 = str10;
                                        if (str43.equals(str12)) {
                                            c10 = 2;
                                            break;
                                        }
                                        break;
                                    case -1784763192:
                                        str9 = str10;
                                        if (str43.equals(str11)) {
                                            c10 = 3;
                                            break;
                                        }
                                        break;
                                    case -1730367663:
                                        str9 = str10;
                                        if (str43.equals(str13)) {
                                            c10 = 4;
                                            break;
                                        }
                                        break;
                                    case -1482641358:
                                        str9 = str10;
                                        if (str43.equals(str14)) {
                                            c10 = 5;
                                            break;
                                        }
                                        break;
                                    case -1482641357:
                                        str9 = str10;
                                        if (str43.equals("A_MPEG/L3")) {
                                            c10 = 6;
                                            break;
                                        }
                                        break;
                                    case -1373388978:
                                        str9 = str10;
                                        if (str43.equals("V_MS/VFW/FOURCC")) {
                                            c10 = 7;
                                            break;
                                        }
                                        break;
                                    case -933872740:
                                        str9 = str10;
                                        if (str43.equals("S_DVBSUB")) {
                                            c10 = '\b';
                                            break;
                                        }
                                        break;
                                    case -538363189:
                                        str9 = str10;
                                        if (str43.equals("V_MPEG4/ISO/ASP")) {
                                            c10 = '\t';
                                            break;
                                        }
                                        break;
                                    case -538363109:
                                        str9 = str10;
                                        if (str43.equals("V_MPEG4/ISO/AVC")) {
                                            c10 = '\n';
                                            break;
                                        }
                                        break;
                                    case -425012669:
                                        str9 = str10;
                                        if (str43.equals("S_VOBSUB")) {
                                            c10 = 11;
                                            break;
                                        }
                                        break;
                                    case -356037306:
                                        str9 = str10;
                                        if (str43.equals("A_DTS/LOSSLESS")) {
                                            c10 = '\f';
                                            break;
                                        }
                                        break;
                                    case 62923557:
                                        str9 = str10;
                                        if (str43.equals("A_AAC")) {
                                            c10 = '\r';
                                            break;
                                        }
                                        break;
                                    case 62923603:
                                        str9 = str10;
                                        if (str43.equals("A_AC3")) {
                                            c10 = 14;
                                            break;
                                        }
                                        break;
                                    case 62927045:
                                        str9 = str10;
                                        if (str43.equals("A_DTS")) {
                                            c10 = 15;
                                            break;
                                        }
                                        break;
                                    case 82318131:
                                        str9 = str10;
                                        if (str43.equals("V_AV1")) {
                                            c10 = 16;
                                            break;
                                        }
                                        break;
                                    case 82338133:
                                        str9 = str10;
                                        if (str43.equals("V_VP8")) {
                                            c10 = 17;
                                            break;
                                        }
                                        break;
                                    case 82338134:
                                        str9 = str10;
                                        if (str43.equals("V_VP9")) {
                                            c10 = 18;
                                            break;
                                        }
                                        break;
                                    case 99146302:
                                        str9 = str10;
                                        if (str43.equals("S_HDMV/PGS")) {
                                            c10 = 19;
                                            break;
                                        }
                                        break;
                                    case 444813526:
                                        str9 = str10;
                                        if (str43.equals("V_THEORA")) {
                                            c10 = 20;
                                            break;
                                        }
                                        break;
                                    case 542569478:
                                        str9 = str10;
                                        if (str43.equals("A_DTS/EXPRESS")) {
                                            c10 = 21;
                                            break;
                                        }
                                        break;
                                    case 635596514:
                                        str9 = str10;
                                        if (str43.equals("A_PCM/FLOAT/IEEE")) {
                                            c10 = 22;
                                            break;
                                        }
                                        break;
                                    case 725948237:
                                        str9 = str10;
                                        if (str43.equals("A_PCM/INT/BIG")) {
                                            c10 = 23;
                                            break;
                                        }
                                        break;
                                    case 725957860:
                                        str9 = str10;
                                        if (str43.equals("A_PCM/INT/LIT")) {
                                            c10 = 24;
                                            break;
                                        }
                                        break;
                                    case 738597099:
                                        str9 = str10;
                                        if (str43.equals("S_TEXT/ASS")) {
                                            c10 = 25;
                                            break;
                                        }
                                        break;
                                    case 738614379:
                                        str9 = str10;
                                        if (str43.equals("S_TEXT/SSA")) {
                                            c10 = 26;
                                            break;
                                        }
                                        break;
                                    case 855502857:
                                        str9 = str10;
                                        if (str43.equals("V_MPEGH/ISO/HEVC")) {
                                            c10 = 27;
                                            break;
                                        }
                                        break;
                                    case 1045209816:
                                        str9 = str10;
                                        if (str43.equals("S_TEXT/WEBVTT")) {
                                            c10 = 28;
                                            break;
                                        }
                                        break;
                                    case 1422270023:
                                        str9 = str10;
                                        if (str43.equals("S_TEXT/UTF8")) {
                                            c10 = 29;
                                            break;
                                        }
                                        break;
                                    case 1809237540:
                                        str9 = str10;
                                        if (str43.equals("V_MPEG2")) {
                                            c10 = 30;
                                            break;
                                        }
                                        break;
                                    case 1950749482:
                                        str9 = str10;
                                        if (str43.equals("A_EAC3")) {
                                            c10 = 31;
                                            break;
                                        }
                                        break;
                                    case 1950789798:
                                        str9 = str10;
                                        if (str43.equals("A_FLAC")) {
                                            c10 = ' ';
                                            break;
                                        }
                                        break;
                                    case 1951062397:
                                        if (str43.equals(str10)) {
                                            str9 = str10;
                                            c10 = '!';
                                            break;
                                        }
                                    default:
                                        str9 = str10;
                                        c10 = 65535;
                                        break;
                                }
                                switch (c10) {
                                    case 0:
                                    case 1:
                                    case '\t':
                                        str = str14;
                                        str2 = str13;
                                        str3 = str11;
                                        byte[] bArr4 = r03.l;
                                        str44 = "video/mp4v-es";
                                        listSingletonList = bArr4 == null ? null : Collections.singletonList(bArr4);
                                        iT = -1;
                                        i12 = -1;
                                        str15 = null;
                                        if (r03.P != null && (cVarE = bd.c.e(new q(r03.P))) != null) {
                                            str15 = cVarE.f2779b;
                                            str44 = "video/dolby-vision";
                                        }
                                        int i45 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map = f4401p0;
                                        if (zH) {
                                            oVar.F = r03.Q;
                                            oVar.G = r03.S;
                                            oVar.H = iT;
                                        } else if (!e0.k(str44)) {
                                            if (!"application/x-subrip".equals(str44) && !"text/x-ssa".equals(str44) && !"text/vtt".equals(str44) && !"application/vobsub".equals(str44) && !"application/pgs".equals(str44) && !"application/dvbsubs".equals(str44)) {
                                                throw r1.f0.a(null, "Unexpected MIME type.");
                                            }
                                            str17 = r03.f4372b;
                                            if (str17 != null && !map.containsKey(str17)) {
                                                oVar.f13481b = r03.f4372b;
                                            }
                                            oVar.f13480a = Integer.toString(i44);
                                            oVar.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                            oVar.f13492n = e0.l(str44);
                                            oVar.f13493o = i12;
                                            oVar.f13483d = r03.Z;
                                            oVar.f13484e = i45;
                                            oVar.f13495q = listSingletonList;
                                            oVar.f13489j = str15;
                                            oVar.r = r03.f4384m;
                                            r03.f4373b0 = oVar.a();
                                            fVar3 = fVar3;
                                            r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                            sparseArray3.put(r03.f4376d, r03);
                                            eVar = null;
                                            break;
                                        } else {
                                            if (r03.f4389s == 0) {
                                                int i46 = r03.f4388q;
                                                i13 = -1;
                                                if (i46 == -1) {
                                                    i46 = r03.f4385n;
                                                }
                                                r03.f4388q = i46;
                                                int i47 = r03.r;
                                                if (i47 == -1) {
                                                    i47 = r03.f4386o;
                                                }
                                                r03.r = i47;
                                            } else {
                                                i13 = -1;
                                            }
                                            float f10 = (r03.f4388q == i13 || (i14 = r03.r) == i13) ? -1.0f : (r03.f4386o * r2) / (r03.f4385n * i14);
                                            if (r03.z) {
                                                if (r03.F == -1.0f || r03.G == -1.0f || r03.H == -1.0f || r03.I == -1.0f || r03.J == -1.0f || r03.K == -1.0f || r03.L == -1.0f || r03.M == -1.0f || r03.N == -1.0f || r03.O == -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    byte[] bArr5 = new byte[25];
                                                    ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr5).order(ByteOrder.LITTLE_ENDIAN);
                                                    byteBufferOrder.put((byte) 0);
                                                    byteBufferOrder.putShort((short) ((r03.F * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) ((r03.G * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) ((r03.H * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) ((r03.I * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) ((r03.J * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) ((r03.K * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) ((r03.L * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) ((r03.M * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) (r03.N + 0.5f));
                                                    byteBufferOrder.putShort((short) (r03.O + 0.5f));
                                                    byteBufferOrder.putShort((short) r03.D);
                                                    byteBufferOrder.putShort((short) r03.E);
                                                    bArr = bArr5;
                                                }
                                                int i48 = r03.A;
                                                int i49 = r03.C;
                                                int i50 = r03.B;
                                                int i51 = r03.f4387p;
                                                gVar = new r1.g(i48, i49, i50, bArr, i51, i51);
                                            } else {
                                                gVar = null;
                                            }
                                            String str45 = r03.f4372b;
                                            int iIntValue = (str45 == null || !map.containsKey(str45)) ? -1 : ((Integer) map.get(r03.f4372b)).intValue();
                                            if (r03.f4390t == 0 && Float.compare(r03.f4391u, 0.0f) == 0 && Float.compare(r03.f4392v, 0.0f) == 0) {
                                                if (Float.compare(r03.f4393w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(r03.f4393w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(r03.f4393w, -180.0f) == 0 || Float.compare(r03.f4393w, 180.0f) == 0) {
                                                    iIntValue = 180;
                                                } else if (Float.compare(r03.f4393w, -90.0f) == 0) {
                                                    iIntValue = SubsamplingScaleImageView.ORIENTATION_270;
                                                }
                                            }
                                            oVar.f13498u = r03.f4385n;
                                            oVar.f13499v = r03.f4386o;
                                            oVar.A = f10;
                                            oVar.z = iIntValue;
                                            oVar.B = r03.f4394x;
                                            oVar.C = r03.f4395y;
                                            oVar.D = gVar;
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                            oVar.f13481b = r03.f4372b;
                                        }
                                        oVar.f13480a = Integer.toString(i44);
                                        oVar.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar.f13492n = e0.l(str44);
                                        oVar.f13493o = i12;
                                        oVar.f13483d = r03.Z;
                                        oVar.f13484e = i45;
                                        oVar.f13495q = listSingletonList;
                                        oVar.f13489j = str15;
                                        oVar.r = r03.f4384m;
                                        r03.f4373b0 = oVar.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 2:
                                        str = str14;
                                        str2 = str13;
                                        str3 = str11;
                                        q qVar2 = new q(r03.a(r03.f4374c));
                                        try {
                                            int iU = qVar2.u();
                                            if (iU != 1) {
                                                if (iU == 65534) {
                                                    qVar2.O(24);
                                                    long jV = qVar2.v();
                                                    UUID uuid = f4400o0;
                                                    if (jV != uuid.getMostSignificantBits() || qVar2.v() != uuid.getLeastSignificantBits()) {
                                                    }
                                                    str44 = "audio/x-unknown";
                                                    iT = -1;
                                                    i12 = -1;
                                                    listSingletonList = null;
                                                    str15 = null;
                                                    if (r03.P != null) {
                                                        str15 = cVarE.f2779b;
                                                        str44 = "video/dolby-vision";
                                                        break;
                                                    }
                                                    int i452 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                                    r1.o oVar2 = new r1.o();
                                                    zH = e0.h(str44);
                                                    str4 = str12;
                                                    Map map2 = f4401p0;
                                                    if (zH) {
                                                    }
                                                    str17 = r03.f4372b;
                                                    if (str17 != null) {
                                                    }
                                                    oVar2.f13480a = Integer.toString(i44);
                                                    oVar2.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                                    oVar2.f13492n = e0.l(str44);
                                                    oVar2.f13493o = i12;
                                                    oVar2.f13483d = r03.Z;
                                                    oVar2.f13484e = i452;
                                                    oVar2.f13495q = listSingletonList;
                                                    oVar2.f13489j = str15;
                                                    oVar2.r = r03.f4384m;
                                                    r03.f4373b0 = oVar2.a();
                                                    fVar3 = fVar3;
                                                    r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                                    sparseArray3.put(r03.f4376d, r03);
                                                    eVar = null;
                                                    break;
                                                }
                                                u1.a.p("Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                                                str44 = "audio/x-unknown";
                                                iT = -1;
                                                i12 = -1;
                                                listSingletonList = null;
                                                str15 = null;
                                                if (r03.P != null) {
                                                }
                                                int i4522 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                                r1.o oVar22 = new r1.o();
                                                zH = e0.h(str44);
                                                str4 = str12;
                                                Map map22 = f4401p0;
                                                if (zH) {
                                                }
                                                str17 = r03.f4372b;
                                                if (str17 != null) {
                                                }
                                                oVar22.f13480a = Integer.toString(i44);
                                                oVar22.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                                oVar22.f13492n = e0.l(str44);
                                                oVar22.f13493o = i12;
                                                oVar22.f13483d = r03.Z;
                                                oVar22.f13484e = i4522;
                                                oVar22.f13495q = listSingletonList;
                                                oVar22.f13489j = str15;
                                                oVar22.r = r03.f4384m;
                                                r03.f4373b0 = oVar22.a();
                                                fVar3 = fVar3;
                                                r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                                sparseArray3.put(r03.f4376d, r03);
                                                eVar = null;
                                            }
                                            int i52 = r03.R;
                                            String str46 = f0.f15206a;
                                            iT = f0.t(i52, ByteOrder.LITTLE_ENDIAN);
                                            if (iT == 0) {
                                                u1.a.p("Unsupported PCM bit depth: " + r03.R + ". Setting mimeType to audio/x-unknown");
                                                str44 = "audio/x-unknown";
                                                iT = -1;
                                                i12 = -1;
                                                listSingletonList = null;
                                                str15 = null;
                                                if (r03.P != null) {
                                                }
                                                int i45222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                                r1.o oVar222 = new r1.o();
                                                zH = e0.h(str44);
                                                str4 = str12;
                                                Map map222 = f4401p0;
                                                if (zH) {
                                                }
                                                str17 = r03.f4372b;
                                                if (str17 != null) {
                                                }
                                                oVar222.f13480a = Integer.toString(i44);
                                                oVar222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                                oVar222.f13492n = e0.l(str44);
                                                oVar222.f13493o = i12;
                                                oVar222.f13483d = r03.Z;
                                                oVar222.f13484e = i45222;
                                                oVar222.f13495q = listSingletonList;
                                                oVar222.f13489j = str15;
                                                oVar222.r = r03.f4384m;
                                                r03.f4373b0 = oVar222.a();
                                                fVar3 = fVar3;
                                                r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                                sparseArray3.put(r03.f4376d, r03);
                                                eVar = null;
                                            } else {
                                                str44 = "audio/raw";
                                                i12 = -1;
                                                listSingletonList = null;
                                                str15 = null;
                                                if (r03.P != null) {
                                                }
                                                int i452222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                                r1.o oVar2222 = new r1.o();
                                                zH = e0.h(str44);
                                                str4 = str12;
                                                Map map2222 = f4401p0;
                                                if (zH) {
                                                }
                                                str17 = r03.f4372b;
                                                if (str17 != null) {
                                                }
                                                oVar2222.f13480a = Integer.toString(i44);
                                                oVar2222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                                oVar2222.f13492n = e0.l(str44);
                                                oVar2222.f13493o = i12;
                                                oVar2222.f13483d = r03.Z;
                                                oVar2222.f13484e = i452222;
                                                oVar2222.f13495q = listSingletonList;
                                                oVar2222.f13489j = str15;
                                                oVar2222.r = r03.f4384m;
                                                r03.f4373b0 = oVar2222.a();
                                                fVar3 = fVar3;
                                                r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                                sparseArray3.put(r03.f4376d, r03);
                                                eVar = null;
                                            }
                                        } catch (ArrayIndexOutOfBoundsException unused) {
                                            throw r1.f0.a(null, "Error parsing MS/ACM codec private");
                                        }
                                        break;
                                    case 3:
                                        str = str14;
                                        str2 = str13;
                                        str3 = str11;
                                        r03.V = new k0();
                                        str44 = "audio/true-hd";
                                        iT = -1;
                                        i12 = -1;
                                        listSingletonList = null;
                                        str15 = null;
                                        if (r03.P != null) {
                                        }
                                        int i4522222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar22222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map22222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar22222.f13480a = Integer.toString(i44);
                                        oVar22222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar22222.f13492n = e0.l(str44);
                                        oVar22222.f13493o = i12;
                                        oVar22222.f13483d = r03.Z;
                                        oVar22222.f13484e = i4522222;
                                        oVar22222.f13495q = listSingletonList;
                                        oVar22222.f13489j = str15;
                                        oVar22222.r = r03.f4384m;
                                        r03.f4373b0 = oVar22222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 4:
                                        str = str14;
                                        byte[] bArrA = r03.a(str43);
                                        try {
                                            try {
                                                if (bArrA[0] != 2) {
                                                    throw r1.f0.a(null, "Error parsing vorbis codec private");
                                                }
                                                int i53 = 0;
                                                int i54 = 1;
                                                while (true) {
                                                    str2 = str13;
                                                    int i55 = bArrA[i54] & 255;
                                                    if (i55 != 255) {
                                                        int i56 = i54 + 1;
                                                        int i57 = i53 + i55;
                                                        int i58 = 0;
                                                        while (true) {
                                                            str3 = str11;
                                                            int i59 = bArrA[i56] & 255;
                                                            if (i59 != 255) {
                                                                int i60 = i56 + 1;
                                                                int i61 = i58 + i59;
                                                                if (bArrA[i60] != 1) {
                                                                    throw r1.f0.a(null, "Error parsing vorbis codec private");
                                                                }
                                                                byte[] bArr6 = new byte[i57];
                                                                System.arraycopy(bArrA, i60, bArr6, 0, i57);
                                                                int i62 = i60 + i57;
                                                                if (bArrA[i62] != 3) {
                                                                    throw r1.f0.a(null, "Error parsing vorbis codec private");
                                                                }
                                                                int i63 = i62 + i61;
                                                                if (bArrA[i63] != 5) {
                                                                    throw r1.f0.a(null, "Error parsing vorbis codec private");
                                                                }
                                                                byte[] bArr7 = new byte[bArrA.length - i63];
                                                                System.arraycopy(bArrA, i63, bArr7, 0, bArrA.length - i63);
                                                                ArrayList arrayList2 = new ArrayList(2);
                                                                arrayList2.add(bArr6);
                                                                arrayList2.add(bArr7);
                                                                str44 = "audio/vorbis";
                                                                listSingletonList = arrayList2;
                                                                iT = -1;
                                                                i12 = 8192;
                                                                str15 = null;
                                                                if (r03.P != null) {
                                                                }
                                                                int i45222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                                                r1.o oVar222222 = new r1.o();
                                                                zH = e0.h(str44);
                                                                str4 = str12;
                                                                Map map222222 = f4401p0;
                                                                if (zH) {
                                                                }
                                                                str17 = r03.f4372b;
                                                                if (str17 != null) {
                                                                }
                                                                oVar222222.f13480a = Integer.toString(i44);
                                                                oVar222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                                                oVar222222.f13492n = e0.l(str44);
                                                                oVar222222.f13493o = i12;
                                                                oVar222222.f13483d = r03.Z;
                                                                oVar222222.f13484e = i45222222;
                                                                oVar222222.f13495q = listSingletonList;
                                                                oVar222222.f13489j = str15;
                                                                oVar222222.r = r03.f4384m;
                                                                r03.f4373b0 = oVar222222.a();
                                                                fVar3 = fVar3;
                                                                r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                                                sparseArray3.put(r03.f4376d, r03);
                                                                eVar = null;
                                                                break;
                                                            } else {
                                                                i58 += 255;
                                                                i56++;
                                                                str11 = str3;
                                                            }
                                                        }
                                                    } else {
                                                        i53 += 255;
                                                        i54++;
                                                        str13 = str2;
                                                    }
                                                }
                                            } catch (ArrayIndexOutOfBoundsException unused2) {
                                                throw r1.f0.a(r03, "Error parsing vorbis codec private");
                                            }
                                        } catch (ArrayIndexOutOfBoundsException unused3) {
                                            r03 = 0;
                                        }
                                        break;
                                    case 5:
                                        str = str14;
                                        str44 = "audio/mpeg-L2";
                                        str2 = str13;
                                        str3 = str11;
                                        iT = -1;
                                        i12 = 4096;
                                        listSingletonList = null;
                                        str15 = null;
                                        if (r03.P != null) {
                                        }
                                        int i452222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar2222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map2222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar2222222.f13480a = Integer.toString(i44);
                                        oVar2222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar2222222.f13492n = e0.l(str44);
                                        oVar2222222.f13493o = i12;
                                        oVar2222222.f13483d = r03.Z;
                                        oVar2222222.f13484e = i452222222;
                                        oVar2222222.f13495q = listSingletonList;
                                        oVar2222222.f13489j = str15;
                                        oVar2222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar2222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 6:
                                        str = str14;
                                        str44 = "audio/mpeg";
                                        str2 = str13;
                                        str3 = str11;
                                        iT = -1;
                                        i12 = 4096;
                                        listSingletonList = null;
                                        str15 = null;
                                        if (r03.P != null) {
                                        }
                                        int i4522222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar22222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map22222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar22222222.f13480a = Integer.toString(i44);
                                        oVar22222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar22222222.f13492n = e0.l(str44);
                                        oVar22222222.f13493o = i12;
                                        oVar22222222.f13483d = r03.Z;
                                        oVar22222222.f13484e = i4522222222;
                                        oVar22222222.f13495q = listSingletonList;
                                        oVar22222222.f13489j = str15;
                                        oVar22222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar22222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 7:
                                        str = str14;
                                        q qVar3 = new q(r03.a(r03.f4374c));
                                        try {
                                            qVar3.P(16);
                                            long jS = qVar3.s();
                                            if (jS == 1482049860) {
                                                try {
                                                    pair = new Pair("video/divx", null);
                                                    str16 = null;
                                                } catch (ArrayIndexOutOfBoundsException unused4) {
                                                    runtimeException = null;
                                                    throw r1.f0.a(runtimeException, "Error parsing FourCC private data");
                                                }
                                            } else if (jS == 859189832) {
                                                pair = new Pair("video/3gpp", null);
                                                str16 = null;
                                            } else {
                                                if (jS == 826496599) {
                                                    byte[] bArr8 = qVar3.f15266a;
                                                    for (int i64 = qVar3.f15267b + 20; i64 < bArr8.length - 4; i64++) {
                                                        if (bArr8[i64] == 0 && bArr8[i64 + 1] == 0 && bArr8[i64 + 2] == 1) {
                                                            if (bArr8[i64 + 3] == 15) {
                                                                pair = new Pair("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArr8, i64, bArr8.length)));
                                                                str16 = null;
                                                            }
                                                        }
                                                    }
                                                    try {
                                                        throw r1.f0.a(null, "Failed to find FourCC VC1 initialization data");
                                                    } catch (ArrayIndexOutOfBoundsException unused5) {
                                                        runtimeException = null;
                                                        throw r1.f0.a(runtimeException, "Error parsing FourCC private data");
                                                    }
                                                }
                                                u1.a.p("Unknown FourCC. Setting mimeType to video/x-unknown");
                                                str16 = null;
                                                pair = new Pair("video/x-unknown", null);
                                            }
                                            str44 = (String) pair.first;
                                            str15 = str16;
                                            str2 = str13;
                                            str3 = str11;
                                            listSingletonList = (List) pair.second;
                                            iT = -1;
                                            i12 = -1;
                                            if (r03.P != null) {
                                            }
                                            int i45222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                            r1.o oVar222222222 = new r1.o();
                                            zH = e0.h(str44);
                                            str4 = str12;
                                            Map map222222222 = f4401p0;
                                            if (zH) {
                                            }
                                            str17 = r03.f4372b;
                                            if (str17 != null) {
                                            }
                                            oVar222222222.f13480a = Integer.toString(i44);
                                            oVar222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                            oVar222222222.f13492n = e0.l(str44);
                                            oVar222222222.f13493o = i12;
                                            oVar222222222.f13483d = r03.Z;
                                            oVar222222222.f13484e = i45222222222;
                                            oVar222222222.f13495q = listSingletonList;
                                            oVar222222222.f13489j = str15;
                                            oVar222222222.r = r03.f4384m;
                                            r03.f4373b0 = oVar222222222.a();
                                            fVar3 = fVar3;
                                            r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                            sparseArray3.put(r03.f4376d, r03);
                                            eVar = null;
                                            break;
                                        } catch (ArrayIndexOutOfBoundsException unused6) {
                                            runtimeException = null;
                                        }
                                        break;
                                    case '\b':
                                        str = str14;
                                        byte[] bArr9 = new byte[4];
                                        System.arraycopy(r03.a(str43), 0, bArr9, 0, 4);
                                        y0 y0VarR = g0.r(bArr9);
                                        str2 = str13;
                                        str3 = str11;
                                        str44 = "application/dvbsubs";
                                        listR = y0VarR;
                                        iT = -1;
                                        i12 = -1;
                                        list = listR;
                                        str15 = null;
                                        listSingletonList = list;
                                        if (r03.P != null) {
                                        }
                                        int i452222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar2222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map2222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar2222222222.f13480a = Integer.toString(i44);
                                        oVar2222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar2222222222.f13492n = e0.l(str44);
                                        oVar2222222222.f13493o = i12;
                                        oVar2222222222.f13483d = r03.Z;
                                        oVar2222222222.f13484e = i452222222222;
                                        oVar2222222222.f13495q = listSingletonList;
                                        oVar2222222222.f13489j = str15;
                                        oVar2222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar2222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case '\n':
                                        str = str14;
                                        l2.d dVarA = l2.d.a(new q(r03.a(r03.f4374c)));
                                        r03.f4375c0 = dVarA.f10431b;
                                        ArrayList arrayList3 = dVarA.f10430a;
                                        str44 = "video/avc";
                                        str15 = dVarA.l;
                                        str2 = str13;
                                        str3 = str11;
                                        iT = -1;
                                        i12 = -1;
                                        listSingletonList = arrayList3;
                                        if (r03.P != null) {
                                        }
                                        int i4522222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar22222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map22222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar22222222222.f13480a = Integer.toString(i44);
                                        oVar22222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar22222222222.f13492n = e0.l(str44);
                                        oVar22222222222.f13493o = i12;
                                        oVar22222222222.f13483d = r03.Z;
                                        oVar22222222222.f13484e = i4522222222222;
                                        oVar22222222222.f13495q = listSingletonList;
                                        oVar22222222222.f13489j = str15;
                                        oVar22222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar22222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 11:
                                        str = str14;
                                        str2 = str13;
                                        str3 = str11;
                                        str44 = "application/vobsub";
                                        listR = g0.r(r03.a(str43));
                                        iT = -1;
                                        i12 = -1;
                                        list = listR;
                                        str15 = null;
                                        listSingletonList = list;
                                        if (r03.P != null) {
                                        }
                                        int i45222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar222222222222.f13480a = Integer.toString(i44);
                                        oVar222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar222222222222.f13492n = e0.l(str44);
                                        oVar222222222222.f13493o = i12;
                                        oVar222222222222.f13483d = r03.Z;
                                        oVar222222222222.f13484e = i45222222222222;
                                        oVar222222222222.f13495q = listSingletonList;
                                        oVar222222222222.f13489j = str15;
                                        oVar222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case '\f':
                                        str = str14;
                                        str44 = "audio/vnd.dts.hd";
                                        str2 = str13;
                                        str3 = str11;
                                        iT = -1;
                                        i12 = -1;
                                        listSingletonList = null;
                                        str15 = null;
                                        if (r03.P != null) {
                                        }
                                        int i452222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar2222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map2222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar2222222222222.f13480a = Integer.toString(i44);
                                        oVar2222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar2222222222222.f13492n = e0.l(str44);
                                        oVar2222222222222.f13493o = i12;
                                        oVar2222222222222.f13483d = r03.Z;
                                        oVar2222222222222.f13484e = i452222222222222;
                                        oVar2222222222222.f13495q = listSingletonList;
                                        oVar2222222222222.f13489j = str15;
                                        oVar2222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar2222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case '\r':
                                        str = str14;
                                        List listSingletonList2 = Collections.singletonList(r03.a(str43));
                                        byte[] bArr10 = r03.l;
                                        l2.a aVarO = l2.b.o(new j3.f(bArr10, bArr10.length), false);
                                        r03.S = aVarO.f10389b;
                                        r03.Q = aVarO.f10390c;
                                        str2 = str13;
                                        str3 = str11;
                                        str15 = aVarO.f10388a;
                                        iT = -1;
                                        i12 = -1;
                                        listSingletonList = listSingletonList2;
                                        str44 = "audio/mp4a-latm";
                                        if (r03.P != null) {
                                        }
                                        int i4522222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar22222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map22222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar22222222222222.f13480a = Integer.toString(i44);
                                        oVar22222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar22222222222222.f13492n = e0.l(str44);
                                        oVar22222222222222.f13493o = i12;
                                        oVar22222222222222.f13483d = r03.Z;
                                        oVar22222222222222.f13484e = i4522222222222222;
                                        oVar22222222222222.f13495q = listSingletonList;
                                        oVar22222222222222.f13489j = str15;
                                        oVar22222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar22222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 14:
                                        str = str14;
                                        str44 = "audio/ac3";
                                        str2 = str13;
                                        str3 = str11;
                                        iT = -1;
                                        i12 = -1;
                                        listSingletonList = null;
                                        str15 = null;
                                        if (r03.P != null) {
                                        }
                                        int i45222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar222222222222222.f13480a = Integer.toString(i44);
                                        oVar222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar222222222222222.f13492n = e0.l(str44);
                                        oVar222222222222222.f13493o = i12;
                                        oVar222222222222222.f13483d = r03.Z;
                                        oVar222222222222222.f13484e = i45222222222222222;
                                        oVar222222222222222.f13495q = listSingletonList;
                                        oVar222222222222222.f13489j = str15;
                                        oVar222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 15:
                                    case 21:
                                        str = str14;
                                        r03.W = true;
                                        str44 = "audio/vnd.dts";
                                        str2 = str13;
                                        str3 = str11;
                                        iT = -1;
                                        i12 = -1;
                                        listSingletonList = null;
                                        str15 = null;
                                        if (r03.P != null) {
                                        }
                                        int i452222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar2222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map2222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar2222222222222222.f13480a = Integer.toString(i44);
                                        oVar2222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar2222222222222222.f13492n = e0.l(str44);
                                        oVar2222222222222222.f13493o = i12;
                                        oVar2222222222222222.f13483d = r03.Z;
                                        oVar2222222222222222.f13484e = i452222222222222222;
                                        oVar2222222222222222.f13495q = listSingletonList;
                                        oVar2222222222222222.f13489j = str15;
                                        oVar2222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar2222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 16:
                                        str = str14;
                                        byte[] bArr11 = r03.l;
                                        str44 = "video/av01";
                                        listR2 = bArr11 == null ? null : g0.r(bArr11);
                                        str2 = str13;
                                        str3 = str11;
                                        listR = listR2;
                                        iT = -1;
                                        i12 = -1;
                                        list = listR;
                                        str15 = null;
                                        listSingletonList = list;
                                        if (r03.P != null) {
                                        }
                                        int i4522222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar22222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map22222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar22222222222222222.f13480a = Integer.toString(i44);
                                        oVar22222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar22222222222222222.f13492n = e0.l(str44);
                                        oVar22222222222222222.f13493o = i12;
                                        oVar22222222222222222.f13483d = r03.Z;
                                        oVar22222222222222222.f13484e = i4522222222222222222;
                                        oVar22222222222222222.f13495q = listSingletonList;
                                        oVar22222222222222222.f13489j = str15;
                                        oVar22222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar22222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 17:
                                        str = str14;
                                        str44 = "video/x-vnd.on2.vp8";
                                        str2 = str13;
                                        str3 = str11;
                                        iT = -1;
                                        i12 = -1;
                                        listSingletonList = null;
                                        str15 = null;
                                        if (r03.P != null) {
                                        }
                                        int i45222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar222222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map222222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar222222222222222222.f13480a = Integer.toString(i44);
                                        oVar222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar222222222222222222.f13492n = e0.l(str44);
                                        oVar222222222222222222.f13493o = i12;
                                        oVar222222222222222222.f13483d = r03.Z;
                                        oVar222222222222222222.f13484e = i45222222222222222222;
                                        oVar222222222222222222.f13495q = listSingletonList;
                                        oVar222222222222222222.f13489j = str15;
                                        oVar222222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar222222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 18:
                                        str = str14;
                                        byte[] bArr12 = r03.l;
                                        str44 = "video/x-vnd.on2.vp9";
                                        listR2 = bArr12 == null ? null : g0.r(bArr12);
                                        str2 = str13;
                                        str3 = str11;
                                        listR = listR2;
                                        iT = -1;
                                        i12 = -1;
                                        list = listR;
                                        str15 = null;
                                        listSingletonList = list;
                                        if (r03.P != null) {
                                        }
                                        int i452222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar2222222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map2222222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar2222222222222222222.f13480a = Integer.toString(i44);
                                        oVar2222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar2222222222222222222.f13492n = e0.l(str44);
                                        oVar2222222222222222222.f13493o = i12;
                                        oVar2222222222222222222.f13483d = r03.Z;
                                        oVar2222222222222222222.f13484e = i452222222222222222222;
                                        oVar2222222222222222222.f13495q = listSingletonList;
                                        oVar2222222222222222222.f13489j = str15;
                                        oVar2222222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar2222222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 19:
                                        str = str14;
                                        str2 = str13;
                                        str3 = str11;
                                        str44 = "application/pgs";
                                        iT = -1;
                                        i12 = -1;
                                        listSingletonList = null;
                                        str15 = null;
                                        if (r03.P != null) {
                                        }
                                        int i4522222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar22222222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map22222222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar22222222222222222222.f13480a = Integer.toString(i44);
                                        oVar22222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar22222222222222222222.f13492n = e0.l(str44);
                                        oVar22222222222222222222.f13493o = i12;
                                        oVar22222222222222222222.f13483d = r03.Z;
                                        oVar22222222222222222222.f13484e = i4522222222222222222222;
                                        oVar22222222222222222222.f13495q = listSingletonList;
                                        oVar22222222222222222222.f13489j = str15;
                                        oVar22222222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar22222222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 20:
                                        str = str14;
                                        str2 = str13;
                                        str3 = str11;
                                        iT = -1;
                                        i12 = -1;
                                        listSingletonList = null;
                                        str15 = null;
                                        if (r03.P != null) {
                                        }
                                        int i45222222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar222222222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map222222222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar222222222222222222222.f13480a = Integer.toString(i44);
                                        oVar222222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar222222222222222222222.f13492n = e0.l(str44);
                                        oVar222222222222222222222.f13493o = i12;
                                        oVar222222222222222222222.f13483d = r03.Z;
                                        oVar222222222222222222222.f13484e = i45222222222222222222222;
                                        oVar222222222222222222222.f13495q = listSingletonList;
                                        oVar222222222222222222222.f13489j = str15;
                                        oVar222222222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar222222222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 22:
                                        str = str14;
                                        if (r03.R == 32) {
                                            str2 = str13;
                                            str3 = str11;
                                            str44 = "audio/raw";
                                            iT = 4;
                                            i12 = -1;
                                            listSingletonList = null;
                                            str15 = null;
                                            if (r03.P != null) {
                                            }
                                            int i452222222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                            r1.o oVar2222222222222222222222 = new r1.o();
                                            zH = e0.h(str44);
                                            str4 = str12;
                                            Map map2222222222222222222222 = f4401p0;
                                            if (zH) {
                                            }
                                            str17 = r03.f4372b;
                                            if (str17 != null) {
                                            }
                                            oVar2222222222222222222222.f13480a = Integer.toString(i44);
                                            oVar2222222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                            oVar2222222222222222222222.f13492n = e0.l(str44);
                                            oVar2222222222222222222222.f13493o = i12;
                                            oVar2222222222222222222222.f13483d = r03.Z;
                                            oVar2222222222222222222222.f13484e = i452222222222222222222222;
                                            oVar2222222222222222222222.f13495q = listSingletonList;
                                            oVar2222222222222222222222.f13489j = str15;
                                            oVar2222222222222222222222.r = r03.f4384m;
                                            r03.f4373b0 = oVar2222222222222222222222.a();
                                            fVar3 = fVar3;
                                            r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                            sparseArray3.put(r03.f4376d, r03);
                                            eVar = null;
                                            break;
                                        } else {
                                            u1.a.p("Unsupported floating point PCM bit depth: " + r03.R + ". Setting mimeType to audio/x-unknown");
                                            str2 = str13;
                                            str3 = str11;
                                            str44 = "audio/x-unknown";
                                            iT = -1;
                                            i12 = -1;
                                            listSingletonList = null;
                                            str15 = null;
                                            if (r03.P != null) {
                                            }
                                            int i4522222222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                            r1.o oVar22222222222222222222222 = new r1.o();
                                            zH = e0.h(str44);
                                            str4 = str12;
                                            Map map22222222222222222222222 = f4401p0;
                                            if (zH) {
                                            }
                                            str17 = r03.f4372b;
                                            if (str17 != null) {
                                            }
                                            oVar22222222222222222222222.f13480a = Integer.toString(i44);
                                            oVar22222222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                            oVar22222222222222222222222.f13492n = e0.l(str44);
                                            oVar22222222222222222222222.f13493o = i12;
                                            oVar22222222222222222222222.f13483d = r03.Z;
                                            oVar22222222222222222222222.f13484e = i4522222222222222222222222;
                                            oVar22222222222222222222222.f13495q = listSingletonList;
                                            oVar22222222222222222222222.f13489j = str15;
                                            oVar22222222222222222222222.r = r03.f4384m;
                                            r03.f4373b0 = oVar22222222222222222222222.a();
                                            fVar3 = fVar3;
                                            r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                            sparseArray3.put(r03.f4376d, r03);
                                            eVar = null;
                                        }
                                        break;
                                    case 23:
                                        str = str14;
                                        int i65 = r03.R;
                                        if (i65 == 8) {
                                            str2 = str13;
                                            str3 = str11;
                                            str44 = "audio/raw";
                                            iT = 3;
                                        } else if (i65 == 16) {
                                            str2 = str13;
                                            str3 = str11;
                                            str44 = "audio/raw";
                                            iT = 268435456;
                                        } else if (i65 == 24) {
                                            str2 = str13;
                                            str3 = str11;
                                            str44 = "audio/raw";
                                            iT = 1342177280;
                                        } else if (i65 == 32) {
                                            str2 = str13;
                                            str3 = str11;
                                            str44 = "audio/raw";
                                            iT = 1610612736;
                                        } else {
                                            u1.a.p("Unsupported big endian PCM bit depth: " + r03.R + ". Setting mimeType to audio/x-unknown");
                                            str2 = str13;
                                            str3 = str11;
                                            str44 = "audio/x-unknown";
                                            iT = -1;
                                        }
                                        i12 = -1;
                                        listSingletonList = null;
                                        str15 = null;
                                        if (r03.P != null) {
                                        }
                                        int i45222222222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar222222222222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map222222222222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar222222222222222222222222.f13480a = Integer.toString(i44);
                                        oVar222222222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar222222222222222222222222.f13492n = e0.l(str44);
                                        oVar222222222222222222222222.f13493o = i12;
                                        oVar222222222222222222222222.f13483d = r03.Z;
                                        oVar222222222222222222222222.f13484e = i45222222222222222222222222;
                                        oVar222222222222222222222222.f13495q = listSingletonList;
                                        oVar222222222222222222222222.f13489j = str15;
                                        oVar222222222222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar222222222222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 24:
                                        str = str14;
                                        int i66 = r03.R;
                                        String str47 = f0.f15206a;
                                        int iT2 = f0.t(i66, ByteOrder.LITTLE_ENDIAN);
                                        if (iT2 == 0) {
                                            u1.a.p("Unsupported little endian PCM bit depth: " + r03.R + ". Setting mimeType to audio/x-unknown");
                                            str2 = str13;
                                            str3 = str11;
                                            str44 = "audio/x-unknown";
                                            iT = -1;
                                            i12 = -1;
                                            listSingletonList = null;
                                            str15 = null;
                                            if (r03.P != null) {
                                            }
                                            int i452222222222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                            r1.o oVar2222222222222222222222222 = new r1.o();
                                            zH = e0.h(str44);
                                            str4 = str12;
                                            Map map2222222222222222222222222 = f4401p0;
                                            if (zH) {
                                            }
                                            str17 = r03.f4372b;
                                            if (str17 != null) {
                                            }
                                            oVar2222222222222222222222222.f13480a = Integer.toString(i44);
                                            oVar2222222222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                            oVar2222222222222222222222222.f13492n = e0.l(str44);
                                            oVar2222222222222222222222222.f13493o = i12;
                                            oVar2222222222222222222222222.f13483d = r03.Z;
                                            oVar2222222222222222222222222.f13484e = i452222222222222222222222222;
                                            oVar2222222222222222222222222.f13495q = listSingletonList;
                                            oVar2222222222222222222222222.f13489j = str15;
                                            oVar2222222222222222222222222.r = r03.f4384m;
                                            r03.f4373b0 = oVar2222222222222222222222222.a();
                                            fVar3 = fVar3;
                                            r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                            sparseArray3.put(r03.f4376d, r03);
                                            eVar = null;
                                            break;
                                        } else {
                                            iT = iT2;
                                            str2 = str13;
                                            str3 = str11;
                                            str44 = "audio/raw";
                                            i12 = -1;
                                            listSingletonList = null;
                                            str15 = null;
                                            if (r03.P != null) {
                                            }
                                            int i4522222222222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                            r1.o oVar22222222222222222222222222 = new r1.o();
                                            zH = e0.h(str44);
                                            str4 = str12;
                                            Map map22222222222222222222222222 = f4401p0;
                                            if (zH) {
                                            }
                                            str17 = r03.f4372b;
                                            if (str17 != null) {
                                            }
                                            oVar22222222222222222222222222.f13480a = Integer.toString(i44);
                                            oVar22222222222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                            oVar22222222222222222222222222.f13492n = e0.l(str44);
                                            oVar22222222222222222222222222.f13493o = i12;
                                            oVar22222222222222222222222222.f13483d = r03.Z;
                                            oVar22222222222222222222222222.f13484e = i4522222222222222222222222222;
                                            oVar22222222222222222222222222.f13495q = listSingletonList;
                                            oVar22222222222222222222222222.f13489j = str15;
                                            oVar22222222222222222222222222.r = r03.f4384m;
                                            r03.f4373b0 = oVar22222222222222222222222222.a();
                                            fVar3 = fVar3;
                                            r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                            sparseArray3.put(r03.f4376d, r03);
                                            eVar = null;
                                        }
                                        break;
                                    case 25:
                                    case 26:
                                        str = str14;
                                        str2 = str13;
                                        str3 = str11;
                                        str44 = "text/x-ssa";
                                        listR = g0.s(f4397l0, r03.a(str43));
                                        iT = -1;
                                        i12 = -1;
                                        list = listR;
                                        str15 = null;
                                        listSingletonList = list;
                                        if (r03.P != null) {
                                        }
                                        int i45222222222222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar222222222222222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map222222222222222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar222222222222222222222222222.f13480a = Integer.toString(i44);
                                        oVar222222222222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar222222222222222222222222222.f13492n = e0.l(str44);
                                        oVar222222222222222222222222222.f13493o = i12;
                                        oVar222222222222222222222222222.f13483d = r03.Z;
                                        oVar222222222222222222222222222.f13484e = i45222222222222222222222222222;
                                        oVar222222222222222222222222222.f13495q = listSingletonList;
                                        oVar222222222222222222222222222.f13489j = str15;
                                        oVar222222222222222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar222222222222222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 27:
                                        str = str14;
                                        w wVarA = w.a(new q(r03.a(r03.f4374c)), false, null);
                                        r03.f4375c0 = wVarA.f10533b;
                                        str44 = "video/hevc";
                                        List list5 = wVarA.f10532a;
                                        str15 = wVarA.f10544n;
                                        str2 = str13;
                                        str3 = str11;
                                        i12 = -1;
                                        listSingletonList = list5;
                                        iT = -1;
                                        if (r03.P != null) {
                                        }
                                        int i452222222222222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar2222222222222222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map2222222222222222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar2222222222222222222222222222.f13480a = Integer.toString(i44);
                                        oVar2222222222222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar2222222222222222222222222222.f13492n = e0.l(str44);
                                        oVar2222222222222222222222222222.f13493o = i12;
                                        oVar2222222222222222222222222222.f13483d = r03.Z;
                                        oVar2222222222222222222222222222.f13484e = i452222222222222222222222222222;
                                        oVar2222222222222222222222222222.f13495q = listSingletonList;
                                        oVar2222222222222222222222222222.f13489j = str15;
                                        oVar2222222222222222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar2222222222222222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 28:
                                        str = str14;
                                        str2 = str13;
                                        str3 = str11;
                                        str44 = "text/vtt";
                                        iT = -1;
                                        i12 = -1;
                                        listSingletonList = null;
                                        str15 = null;
                                        if (r03.P != null) {
                                        }
                                        int i4522222222222222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar22222222222222222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map22222222222222222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar22222222222222222222222222222.f13480a = Integer.toString(i44);
                                        oVar22222222222222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar22222222222222222222222222222.f13492n = e0.l(str44);
                                        oVar22222222222222222222222222222.f13493o = i12;
                                        oVar22222222222222222222222222222.f13483d = r03.Z;
                                        oVar22222222222222222222222222222.f13484e = i4522222222222222222222222222222;
                                        oVar22222222222222222222222222222.f13495q = listSingletonList;
                                        oVar22222222222222222222222222222.f13489j = str15;
                                        oVar22222222222222222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar22222222222222222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 29:
                                        str = str14;
                                        str2 = str13;
                                        str3 = str11;
                                        str44 = "application/x-subrip";
                                        iT = -1;
                                        i12 = -1;
                                        listSingletonList = null;
                                        str15 = null;
                                        if (r03.P != null) {
                                        }
                                        int i45222222222222222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar222222222222222222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map222222222222222222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar222222222222222222222222222222.f13480a = Integer.toString(i44);
                                        oVar222222222222222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar222222222222222222222222222222.f13492n = e0.l(str44);
                                        oVar222222222222222222222222222222.f13493o = i12;
                                        oVar222222222222222222222222222222.f13483d = r03.Z;
                                        oVar222222222222222222222222222222.f13484e = i45222222222222222222222222222222;
                                        oVar222222222222222222222222222222.f13495q = listSingletonList;
                                        oVar222222222222222222222222222222.f13489j = str15;
                                        oVar222222222222222222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar222222222222222222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 30:
                                        str = str14;
                                        str44 = "video/mpeg2";
                                        str2 = str13;
                                        str3 = str11;
                                        iT = -1;
                                        i12 = -1;
                                        listSingletonList = null;
                                        str15 = null;
                                        if (r03.P != null) {
                                        }
                                        int i452222222222222222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar2222222222222222222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map2222222222222222222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar2222222222222222222222222222222.f13480a = Integer.toString(i44);
                                        oVar2222222222222222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar2222222222222222222222222222222.f13492n = e0.l(str44);
                                        oVar2222222222222222222222222222222.f13493o = i12;
                                        oVar2222222222222222222222222222222.f13483d = r03.Z;
                                        oVar2222222222222222222222222222222.f13484e = i452222222222222222222222222222222;
                                        oVar2222222222222222222222222222222.f13495q = listSingletonList;
                                        oVar2222222222222222222222222222222.f13489j = str15;
                                        oVar2222222222222222222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar2222222222222222222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case 31:
                                        str = str14;
                                        str44 = "audio/eac3";
                                        str2 = str13;
                                        str3 = str11;
                                        iT = -1;
                                        i12 = -1;
                                        listSingletonList = null;
                                        str15 = null;
                                        if (r03.P != null) {
                                        }
                                        int i4522222222222222222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar22222222222222222222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map22222222222222222222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar22222222222222222222222222222222.f13480a = Integer.toString(i44);
                                        oVar22222222222222222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar22222222222222222222222222222222.f13492n = e0.l(str44);
                                        oVar22222222222222222222222222222222.f13493o = i12;
                                        oVar22222222222222222222222222222222.f13483d = r03.Z;
                                        oVar22222222222222222222222222222222.f13484e = i4522222222222222222222222222222222;
                                        oVar22222222222222222222222222222222.f13495q = listSingletonList;
                                        oVar22222222222222222222222222222222.f13489j = str15;
                                        oVar22222222222222222222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar22222222222222222222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case ' ':
                                        str = str14;
                                        str44 = "audio/flac";
                                        listR2 = Collections.singletonList(r03.a(str43));
                                        str2 = str13;
                                        str3 = str11;
                                        listR = listR2;
                                        iT = -1;
                                        i12 = -1;
                                        list = listR;
                                        str15 = null;
                                        listSingletonList = list;
                                        if (r03.P != null) {
                                        }
                                        int i45222222222222222222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar222222222222222222222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map222222222222222222222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar222222222222222222222222222222222.f13480a = Integer.toString(i44);
                                        oVar222222222222222222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar222222222222222222222222222222222.f13492n = e0.l(str44);
                                        oVar222222222222222222222222222222222.f13493o = i12;
                                        oVar222222222222222222222222222222222.f13483d = r03.Z;
                                        oVar222222222222222222222222222222222.f13484e = i45222222222222222222222222222222222;
                                        oVar222222222222222222222222222222222.f13495q = listSingletonList;
                                        oVar222222222222222222222222222222222.f13489j = str15;
                                        oVar222222222222222222222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar222222222222222222222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    case '!':
                                        ArrayList arrayList4 = new ArrayList(3);
                                        arrayList4.add(r03.a(r03.f4374c));
                                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                                        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                                        str = str14;
                                        arrayList4.add(byteBufferAllocate.order(byteOrder).putLong(r03.T).array());
                                        arrayList4.add(ByteBuffer.allocate(8).order(byteOrder).putLong(r03.U).array());
                                        str44 = "audio/opus";
                                        str2 = str13;
                                        str3 = str11;
                                        iT = -1;
                                        i12 = 5760;
                                        list = arrayList4;
                                        str15 = null;
                                        listSingletonList = list;
                                        if (r03.P != null) {
                                        }
                                        int i452222222222222222222222222222222222 = (r03.Y ? 1 : 0) | (r03.X ? 2 : 0);
                                        r1.o oVar2222222222222222222222222222222222 = new r1.o();
                                        zH = e0.h(str44);
                                        str4 = str12;
                                        Map map2222222222222222222222222222222222 = f4401p0;
                                        if (zH) {
                                        }
                                        str17 = r03.f4372b;
                                        if (str17 != null) {
                                        }
                                        oVar2222222222222222222222222222222222.f13480a = Integer.toString(i44);
                                        oVar2222222222222222222222222222222222.f13491m = e0.l(r03.f4370a ? "video/webm" : "video/x-matroska");
                                        oVar2222222222222222222222222222222222.f13492n = e0.l(str44);
                                        oVar2222222222222222222222222222222222.f13493o = i12;
                                        oVar2222222222222222222222222222222222.f13483d = r03.Z;
                                        oVar2222222222222222222222222222222222.f13484e = i452222222222222222222222222222222222;
                                        oVar2222222222222222222222222222222222.f13495q = listSingletonList;
                                        oVar2222222222222222222222222222222222.f13489j = str15;
                                        oVar2222222222222222222222222222222222.r = r03.f4384m;
                                        r03.f4373b0 = oVar2222222222222222222222222222222222.a();
                                        fVar3 = fVar3;
                                        r03.f4371a0 = fVar3.f4421j0.z(r03.f4376d, r03.f4377e);
                                        sparseArray3.put(r03.f4376d, r03);
                                        eVar = null;
                                        break;
                                    default:
                                        throw r1.f0.a(null, "Unrecognized codec identifier.");
                                }
                            default:
                                str9 = str10;
                                str = str14;
                                str2 = str13;
                                str3 = str11;
                                str4 = str12;
                                eVar = null;
                                break;
                        }
                        fVar3.f4434y = eVar;
                        str6 = str9;
                        z4 = false;
                    }
                }
            }
        }
        f fVar5 = fVar2;
        if (z11) {
            return 0;
        }
        int i67 = 0;
        while (true) {
            SparseArray sparseArray8 = fVar5.f4406c;
            if (i67 >= sparseArray8.size()) {
                return -1;
            }
            e eVar10 = (e) sparseArray8.valueAt(i67);
            eVar10.f4371a0.getClass();
            k0 k0Var = eVar10.V;
            if (k0Var != null) {
                k0Var.a(eVar10.f4371a0, eVar10.f4383k);
            }
            i67++;
        }
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        this.M = -9223372036854775807L;
        this.O = 0;
        b bVar = this.f4402a;
        bVar.f4360e = 0;
        bVar.f4357b.clear();
        h hVar = bVar.f4358c;
        hVar.f4440b = 0;
        hVar.f4441c = 0;
        h hVar2 = this.f4404b;
        hVar2.f4440b = 0;
        hVar2.f4441c = 0;
        n();
        this.D = false;
        this.E = -9223372036854775807L;
        this.F = -1;
        this.G = -1L;
        this.H = -1L;
        if (!this.z) {
            this.C.clear();
        }
        int i10 = 0;
        while (true) {
            SparseArray sparseArray = this.f4406c;
            if (i10 >= sparseArray.size()) {
                return;
            }
            k0 k0Var = ((e) sparseArray.valueAt(i10)).V;
            if (k0Var != null) {
                k0Var.f10490b = false;
                k0Var.f10491c = 0;
            }
            i10++;
        }
    }

    @Override // l2.o
    public final List f() {
        u7.e0 e0Var = g0.f15471b;
        return y0.f15549e;
    }

    @Override // l2.o
    public final boolean g(p pVar) {
        g gVar = new g((byte) 0, 0);
        l lVar = (l) pVar;
        long j10 = lVar.f10498c;
        long j11 = 1024;
        if (j10 != -1 && j10 <= 1024) {
            j11 = j10;
        }
        int i10 = (int) j11;
        q qVar = (q) gVar.f4437c;
        lVar.c(qVar.f15266a, 0, 4, false);
        gVar.f4436b = 4;
        for (long jD = qVar.D(); jD != 440786851; jD = ((jD << 8) & (-256)) | (qVar.f15266a[0] & 255)) {
            int i11 = gVar.f4436b + 1;
            gVar.f4436b = i11;
            if (i11 == i10) {
                return false;
            }
            lVar.c(qVar.f15266a, 0, 1, false);
        }
        long jO = gVar.o(lVar);
        long j12 = gVar.f4436b;
        if (jO == Long.MIN_VALUE) {
            return false;
        }
        if (j10 != -1 && j12 + jO >= j10) {
            return false;
        }
        while (true) {
            long j13 = gVar.f4436b;
            long j14 = j12 + jO;
            if (j13 >= j14) {
                return j13 == j14;
            }
            if (gVar.o(lVar) == Long.MIN_VALUE) {
                return false;
            }
            long jO2 = gVar.o(lVar);
            if (jO2 < 0 || jO2 > 2147483647L) {
                return false;
            }
            if (jO2 != 0) {
                int i12 = (int) jO2;
                lVar.k(i12, false);
                gVar.f4436b += i12;
            }
        }
    }

    public final void h(int i10) {
        if (this.D) {
            return;
        }
        throw r1.f0.a(null, "Element " + i10 + " must be in a Cues");
    }

    public final void i(int i10) {
        if (this.f4434y != null) {
            return;
        }
        throw r1.f0.a(null, "Element " + i10 + " must be in a TrackEntry");
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(e eVar, long j10, int i10, int i11, int i12) {
        boolean z;
        byte[] bArrK;
        int i13;
        int i14;
        k0 k0Var = eVar.V;
        if (k0Var != null) {
            k0Var.b(eVar.f4371a0, j10, i10, i11, i12, eVar.f4383k);
            z = true;
        } else {
            z = true;
            if ("S_TEXT/UTF8".equals(eVar.f4374c) || "S_TEXT/ASS".equals(eVar.f4374c) || "S_TEXT/SSA".equals(eVar.f4374c) || "S_TEXT/WEBVTT".equals(eVar.f4374c)) {
                if (this.S > 1) {
                    u1.a.p("Skipping subtitle sample in laced block.");
                } else {
                    long j11 = this.Q;
                    if (j11 == -9223372036854775807L) {
                        u1.a.p("Skipping subtitle sample with no duration.");
                    } else {
                        String str = eVar.f4374c;
                        q qVar = this.f4423m;
                        byte[] bArr = qVar.f15266a;
                        str.getClass();
                        switch (str) {
                            case "S_TEXT/ASS":
                            case "S_TEXT/SSA":
                                bArrK = k(j11, 10000L, "%01d:%02d:%02d:%02d");
                                i13 = 21;
                                break;
                            case "S_TEXT/WEBVTT":
                                bArrK = k(j11, 1000L, "%02d:%02d:%02d.%03d");
                                i13 = 25;
                                break;
                            case "S_TEXT/UTF8":
                                bArrK = k(j11, 1000L, "%02d:%02d:%02d,%03d");
                                i13 = 19;
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                        System.arraycopy(bArrK, 0, bArr, i13, bArrK.length);
                        int i15 = qVar.f15267b;
                        while (true) {
                            if (i15 < qVar.f15268c) {
                                if (qVar.f15266a[i15] == 0) {
                                    qVar.N(i15);
                                } else {
                                    i15++;
                                }
                            }
                        }
                        eVar.f4371a0.a(qVar.f15268c, qVar);
                        i14 = i11 + qVar.f15268c;
                        if ((i10 & 268435456) != 0) {
                            int i16 = this.S;
                            q qVar2 = this.f4426p;
                            if (i16 > 1) {
                                qVar2.L(0);
                            } else {
                                int i17 = qVar2.f15268c;
                                eVar.f4371a0.c(qVar2, i17, 2);
                                i14 += i17;
                            }
                        }
                        eVar.f4371a0.b(j10, i10, i14, i12, eVar.f4383k);
                    }
                }
                i14 = i11;
                if ((i10 & 268435456) != 0) {
                }
                eVar.f4371a0.b(j10, i10, i14, i12, eVar.f4383k);
            } else {
                i14 = i11;
                if ((i10 & 268435456) != 0) {
                }
                eVar.f4371a0.b(j10, i10, i14, i12, eVar.f4383k);
            }
        }
        this.N = z;
    }

    public final void l() {
        if (!this.f4433x) {
            return;
        }
        int i10 = 0;
        while (true) {
            SparseArray sparseArray = this.f4406c;
            if (i10 >= sparseArray.size()) {
                l2.q qVar = this.f4421j0;
                qVar.getClass();
                qVar.q();
                this.f4433x = false;
                return;
            }
            if (((e) sparseArray.valueAt(i10)).W) {
                return;
            } else {
                i10++;
            }
        }
    }

    public final void m(l lVar, int i10) {
        q qVar = this.f4418i;
        if (qVar.f15268c >= i10) {
            return;
        }
        byte[] bArr = qVar.f15266a;
        if (bArr.length < i10) {
            qVar.c(Math.max(bArr.length * 2, i10));
        }
        byte[] bArr2 = qVar.f15266a;
        int i11 = qVar.f15268c;
        lVar.b(bArr2, i11, i10 - i11, false);
        qVar.N(i10);
    }

    public final void n() {
        this.f4403a0 = 0;
        this.f4405b0 = 0;
        this.f4407c0 = 0;
        this.f4409d0 = false;
        this.f4411e0 = false;
        this.f4413f0 = false;
        this.f4415g0 = 0;
        this.f4417h0 = (byte) 0;
        this.f4419i0 = false;
        this.l.L(0);
    }

    public final long o(long j10) throws r1.f0 {
        long j11 = this.f4429t;
        if (j11 == -9223372036854775807L) {
            throw r1.f0.a(null, "Can't scale timecode prior to timecodeScale being set.");
        }
        String str = f0.f15206a;
        return f0.M(j10, j11, 1000L, RoundingMode.DOWN);
    }

    public final int p(l lVar, e eVar, int i10, boolean z) {
        int iE;
        int iE2;
        int i11;
        if ("S_TEXT/UTF8".equals(eVar.f4374c)) {
            q(lVar, f4396k0, i10);
            int i12 = this.f4405b0;
            n();
            return i12;
        }
        if ("S_TEXT/ASS".equals(eVar.f4374c) || "S_TEXT/SSA".equals(eVar.f4374c)) {
            q(lVar, f4398m0, i10);
            int i13 = this.f4405b0;
            n();
            return i13;
        }
        if ("S_TEXT/WEBVTT".equals(eVar.f4374c)) {
            q(lVar, f4399n0, i10);
            int i14 = this.f4405b0;
            n();
            return i14;
        }
        if (eVar.W) {
            eVar.f4373b0.getClass();
            q qVar = new q(i10);
            if (lVar.c(qVar.f15266a, 0, i10, true)) {
                lVar.f10501f = 0;
                if (l2.b.i(qVar.j()) == 1 && qVar.a() >= 10) {
                    byte[] bArr = new byte[10];
                    qVar.l(0, 10, bArr);
                    qVar.O(0);
                    int iG = l2.b.g(bArr);
                    if (iG > 0 && qVar.a() >= iG + 4) {
                        qVar.P(iG);
                        if (l2.b.i(qVar.o()) == 2) {
                            r1.p pVar = eVar.f4373b0;
                            pVar.getClass();
                            r1.o oVar = new r1.o(pVar);
                            oVar.f13492n = e0.l("audio/vnd.dts.hd");
                            eVar.f4373b0 = new r1.p(oVar);
                        }
                    }
                }
            }
            eVar.f4371a0.g(eVar.f4373b0);
            eVar.W = false;
            l();
        }
        j0 j0Var = eVar.f4371a0;
        boolean z4 = this.f4409d0;
        q qVar2 = this.l;
        if (!z4) {
            boolean z10 = eVar.f4381i;
            q qVar3 = this.f4418i;
            if (z10) {
                this.W &= -1073741825;
                if (!this.f4411e0) {
                    lVar.b(qVar3.f15266a, 0, 1, false);
                    this.f4403a0++;
                    byte b10 = qVar3.f15266a[0];
                    if ((b10 & 128) == 128) {
                        throw r1.f0.a(null, "Extension bit is set in signal byte");
                    }
                    this.f4417h0 = b10;
                    this.f4411e0 = true;
                }
                byte b11 = this.f4417h0;
                if ((b11 & 1) == 1) {
                    boolean z11 = (b11 & 2) == 2;
                    this.W |= 1073741824;
                    if (!this.f4419i0) {
                        q qVar4 = this.f4424n;
                        lVar.b(qVar4.f15266a, 0, 8, false);
                        this.f4403a0 += 8;
                        this.f4419i0 = true;
                        qVar3.f15266a[0] = (byte) ((z11 ? 128 : 0) | 8);
                        qVar3.O(0);
                        j0Var.c(qVar3, 1, 1);
                        this.f4405b0++;
                        qVar4.O(0);
                        j0Var.c(qVar4, 8, 1);
                        this.f4405b0 += 8;
                    }
                    if (z11) {
                        if (!this.f4413f0) {
                            lVar.b(qVar3.f15266a, 0, 1, false);
                            this.f4403a0++;
                            qVar3.O(0);
                            this.f4415g0 = qVar3.B();
                            this.f4413f0 = true;
                        }
                        int i15 = this.f4415g0 * 4;
                        qVar3.L(i15);
                        lVar.b(qVar3.f15266a, 0, i15, false);
                        this.f4403a0 += i15;
                        short s8 = (short) ((this.f4415g0 / 2) + 1);
                        int i16 = (s8 * 6) + 2;
                        ByteBuffer byteBuffer = this.f4427q;
                        if (byteBuffer == null || byteBuffer.capacity() < i16) {
                            this.f4427q = ByteBuffer.allocate(i16);
                        }
                        this.f4427q.position(0);
                        this.f4427q.putShort(s8);
                        int i17 = 0;
                        int i18 = 0;
                        while (true) {
                            i11 = this.f4415g0;
                            if (i17 >= i11) {
                                break;
                            }
                            int iF = qVar3.F();
                            if (i17 % 2 == 0) {
                                this.f4427q.putShort((short) (iF - i18));
                            } else {
                                this.f4427q.putInt(iF - i18);
                            }
                            i17++;
                            i18 = iF;
                        }
                        int i19 = (i10 - this.f4403a0) - i18;
                        if (i11 % 2 == 1) {
                            this.f4427q.putInt(i19);
                        } else {
                            this.f4427q.putShort((short) i19);
                            this.f4427q.putInt(0);
                        }
                        byte[] bArrArray = this.f4427q.array();
                        q qVar5 = this.f4425o;
                        qVar5.M(i16, bArrArray);
                        j0Var.c(qVar5, i16, 1);
                        this.f4405b0 += i16;
                    }
                }
            } else {
                byte[] bArr2 = eVar.f4382j;
                if (bArr2 != null) {
                    qVar2.M(bArr2.length, bArr2);
                }
            }
            if ("A_OPUS".equals(eVar.f4374c) ? z : eVar.f4379g > 0) {
                this.W |= 268435456;
                this.f4426p.L(0);
                int i20 = (qVar2.f15268c + i10) - this.f4403a0;
                qVar3.L(4);
                byte[] bArr3 = qVar3.f15266a;
                bArr3[0] = (byte) ((i20 >> 24) & 255);
                bArr3[1] = (byte) ((i20 >> 16) & 255);
                bArr3[2] = (byte) ((i20 >> 8) & 255);
                bArr3[3] = (byte) (i20 & 255);
                j0Var.c(qVar3, 4, 2);
                this.f4405b0 += 4;
            }
            this.f4409d0 = true;
        }
        int i21 = i10 + qVar2.f15268c;
        if (!"V_MPEG4/ISO/AVC".equals(eVar.f4374c) && !"V_MPEGH/ISO/HEVC".equals(eVar.f4374c)) {
            if (eVar.V != null) {
                a9.o.t(qVar2.f15268c == 0);
                eVar.V.c(lVar);
            }
            while (true) {
                int i22 = this.f4403a0;
                if (i22 >= i21) {
                    break;
                }
                int i23 = i21 - i22;
                int iA = qVar2.a();
                if (iA > 0) {
                    iE2 = Math.min(i23, iA);
                    j0Var.a(iE2, qVar2);
                } else {
                    iE2 = j0Var.e(lVar, i23, false);
                }
                this.f4403a0 += iE2;
                this.f4405b0 += iE2;
            }
        } else {
            q qVar6 = this.f4416h;
            byte[] bArr4 = qVar6.f15266a;
            bArr4[0] = 0;
            bArr4[1] = 0;
            bArr4[2] = 0;
            int i24 = eVar.f4375c0;
            int i25 = 4 - i24;
            while (this.f4403a0 < i21) {
                int i26 = this.f4407c0;
                if (i26 == 0) {
                    int iMin = Math.min(i24, qVar2.a());
                    lVar.b(bArr4, i25 + iMin, i24 - iMin, false);
                    if (iMin > 0) {
                        qVar2.l(i25, iMin, bArr4);
                    }
                    this.f4403a0 += i24;
                    qVar6.O(0);
                    this.f4407c0 = qVar6.F();
                    q qVar7 = this.f4414g;
                    qVar7.O(0);
                    j0Var.a(4, qVar7);
                    this.f4405b0 += 4;
                } else {
                    int iA2 = qVar2.a();
                    if (iA2 > 0) {
                        iE = Math.min(i26, iA2);
                        j0Var.a(iE, qVar2);
                    } else {
                        iE = j0Var.e(lVar, i26, false);
                    }
                    this.f4403a0 += iE;
                    this.f4405b0 += iE;
                    this.f4407c0 -= iE;
                }
            }
        }
        if ("A_VORBIS".equals(eVar.f4374c)) {
            q qVar8 = this.f4420j;
            qVar8.O(0);
            j0Var.a(4, qVar8);
            this.f4405b0 += 4;
        }
        int i27 = this.f4405b0;
        n();
        return i27;
    }

    public final void q(l lVar, byte[] bArr, int i10) {
        int length = bArr.length + i10;
        q qVar = this.f4423m;
        byte[] bArr2 = qVar.f15266a;
        if (bArr2.length < length) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, length + i10);
            qVar.M(bArrCopyOf.length, bArrCopyOf);
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        }
        lVar.b(qVar.f15266a, bArr.length, i10, false);
        qVar.O(0);
        qVar.N(length);
    }

    @Override // l2.o
    public final void a() {
    }
}
