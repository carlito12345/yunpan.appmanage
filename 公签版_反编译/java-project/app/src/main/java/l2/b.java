package l2;

import android.util.Base64;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.core.NoConst;
import j$.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f10398a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f10399b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f10400c = {1, 2, 3, 6};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f10401d = {48000, 44100, 32000};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f10402e = {24000, 22050, 16000};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f10403f = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f10404g = {32, 40, 48, 56, 64, 80, 96, 112, 128, CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ, 192, 224, 256, 320, 384, 448, 512, 576, 640};

    /* renamed from: h, reason: collision with root package name */
    public static final int[] f10405h = {69, 87, 104, 121, 139, CarSettingID.Recv.ETC_BL_EENABLE_CFGST, CarSettingID.Recv.IFC_TLR_ST, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f10406i = {2002, NoConst.MIN_HEARTBEAT_INTERVAL, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    /* renamed from: j, reason: collision with root package name */
    public static final int[] f10407j = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: k, reason: collision with root package name */
    public static final int[] f10408k = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};
    public static final int[] l = {64, 112, 128, 192, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* renamed from: m, reason: collision with root package name */
    public static final int[] f10409m = {8000, 16000, 32000, 64000, 128000, 22050, 44100, 88200, 176400, 352800, 12000, 24000, 48000, 96000, 192000, 384000};

    /* renamed from: n, reason: collision with root package name */
    public static final int[] f10410n = {5, 8, 10, 12};

    /* renamed from: o, reason: collision with root package name */
    public static final int[] f10411o = {6, 9, 12, 15};

    /* renamed from: p, reason: collision with root package name */
    public static final int[] f10412p = {2, 4, 6, 8};

    /* renamed from: q, reason: collision with root package name */
    public static final int[] f10413q = {9, 11, 13, 16};
    public static final int[] r = {5, 8, 10, 12};

    /* renamed from: s, reason: collision with root package name */
    public static final String[] f10414s = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: t, reason: collision with root package name */
    public static final int[] f10415t = {44100, 48000, 32000};

    /* renamed from: u, reason: collision with root package name */
    public static final int[] f10416u = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: v, reason: collision with root package name */
    public static final int[] f10417v = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: w, reason: collision with root package name */
    public static final int[] f10418w = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: x, reason: collision with root package name */
    public static final int[] f10419x = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: y, reason: collision with root package name */
    public static final int[] f10420y = {8000, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* JADX WARN: Removed duplicated region for block: B:67:0x00c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(u1.q qVar, t tVar, int i10, dd.c cVar) {
        long jD = qVar.D();
        long j10 = jD >>> 16;
        if (j10 != i10) {
            return false;
        }
        boolean z = (j10 & 1) == 1;
        int i11 = (int) ((jD >> 12) & 15);
        int i12 = (int) ((jD >> 8) & 15);
        int i13 = (int) ((jD >> 4) & 15);
        int i14 = (int) ((jD >> 1) & 7);
        boolean z4 = (jD & 1) == 1;
        if (i13 > 7 ? !(i13 > 10 || tVar.f10523g != 2) : i13 == tVar.f10523g - 1) {
            if ((i14 == 0 || i14 == tVar.f10525i) && !z4) {
                try {
                    long J = qVar.J();
                    if (!z) {
                        J *= tVar.f10518b;
                    }
                    long j11 = tVar.f10526j;
                    if (j11 == 0 || J <= j11) {
                        cVar.f4591b = J;
                        int iT = t(i11, qVar);
                        long j12 = tVar.f10526j;
                        boolean z10 = j12 == 0 || J + ((long) iT) >= j12;
                        if (iT != -1 && ((z10 || iT >= tVar.f10517a) && iT <= tVar.f10518b)) {
                            if (i12 != 0) {
                                if (i12 > 11) {
                                    int i15 = tVar.f10521e;
                                    if (i12 == 12) {
                                        if (qVar.B() * 1000 == i15) {
                                        }
                                    } else if (i12 <= 14) {
                                        int I = qVar.I();
                                        if (i12 == 14) {
                                            I *= 10;
                                        }
                                        if (I == i15) {
                                        }
                                    }
                                } else if (i12 == tVar.f10522f) {
                                    int iB = qVar.B();
                                    int i16 = qVar.f15267b;
                                    byte[] bArr = qVar.f15266a;
                                    int i17 = i16 - 1;
                                    String str = u1.f0.f15206a;
                                    int i18 = 0;
                                    for (int i19 = qVar.f15267b; i19 < i17; i19++) {
                                        i18 = u1.f0.f15214i[i18 ^ (bArr[i19] & 255)];
                                    }
                                    if (iB == i18) {
                                        if (qVar.a() == 0) {
                                            return true;
                                        }
                                        int iK = qVar.k();
                                        if ((iK & 128) == 0) {
                                            int i20 = (iK & 126) >> 1;
                                            if ((i20 < 2 || i20 > 7) && (i20 < 13 || i20 > 31)) {
                                                return true;
                                            }
                                            u1.a.j("Ignoring frame where first subframe has a reserved type: " + i20);
                                        }
                                    }
                                }
                            }
                        }
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        return false;
    }

    public static void b(String str, boolean z) throws r1.f0 {
        if (!z) {
            throw r1.f0.a(null, str);
        }
    }

    public static void c(long j10, u1.q qVar, j0[] j0VarArr) {
        int i10;
        while (true) {
            if (qVar.a() <= 1) {
                return;
            }
            int i11 = 0;
            while (true) {
                if (qVar.a() == 0) {
                    i10 = -1;
                    break;
                }
                int iB = qVar.B();
                i11 += iB;
                if (iB != 255) {
                    i10 = i11;
                    break;
                }
            }
            int i12 = 0;
            while (true) {
                if (qVar.a() == 0) {
                    i12 = -1;
                    break;
                }
                int iB2 = qVar.B();
                i12 += iB2;
                if (iB2 != 255) {
                    break;
                }
            }
            int i13 = qVar.f15267b + i12;
            if (i12 == -1 || i12 > qVar.a()) {
                u1.a.p("Skipping remainder of malformed SEI NAL unit.");
                i13 = qVar.f15268c;
            } else if (i10 == 4 && i12 >= 8) {
                int iB3 = qVar.B();
                int I = qVar.I();
                int iO = I == 49 ? qVar.o() : 0;
                int iB4 = qVar.B();
                if (I == 47) {
                    qVar.P(1);
                }
                boolean z = iB3 == 181 && (I == 49 || I == 47) && iB4 == 3;
                if (I == 49) {
                    z &= iO == 1195456820;
                }
                if (z) {
                    d(j10, qVar, j0VarArr);
                }
            }
            qVar.O(i13);
        }
    }

    public static void d(long j10, u1.q qVar, j0[] j0VarArr) {
        int iB = qVar.B();
        if ((iB & 64) != 0) {
            qVar.P(1);
            int i10 = (iB & 31) * 3;
            int i11 = qVar.f15267b;
            for (j0 j0Var : j0VarArr) {
                qVar.O(i11);
                j0Var.a(i10, qVar);
                a9.o.t(j10 != -9223372036854775807L);
                j0Var.b(j10, 1, i10, 0, null);
            }
        }
    }

    public static int e(int i10, int i11) {
        int i12 = i11 / 2;
        if (i10 < 0 || i10 >= 3 || i11 < 0 || i12 >= 19) {
            return -1;
        }
        int i13 = f10401d[i10];
        if (i13 == 44100) {
            return ((i11 % 2) + f10405h[i12]) * 2;
        }
        int i14 = f10404g[i12];
        return i13 == 32000 ? i14 * 6 : i14 * 4;
    }

    public static void f(int i10, u1.q qVar) {
        qVar.L(7);
        byte[] bArr = qVar.f15266a;
        bArr[0] = -84;
        bArr[1] = 64;
        bArr[2] = -1;
        bArr[3] = -1;
        bArr[4] = (byte) ((i10 >> 16) & 255);
        bArr[5] = (byte) ((i10 >> 8) & 255);
        bArr[6] = (byte) (i10 & 255);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int g(byte[] bArr) {
        int i10;
        byte b10;
        int i11;
        int i12;
        byte b11;
        boolean z = false;
        byte b12 = bArr[0];
        if (b12 != -2) {
            if (b12 == -1) {
                i12 = ((bArr[7] & 3) << 12) | ((bArr[6] & 255) << 4);
                b11 = bArr[9];
            } else if (b12 != 31) {
                i10 = ((bArr[5] & 3) << 12) | ((bArr[6] & 255) << 4);
                b10 = bArr[7];
            } else {
                i12 = ((bArr[6] & 3) << 12) | ((bArr[7] & 255) << 4);
                b11 = bArr[8];
            }
            i11 = (((b11 & 60) >> 2) | i12) + 1;
            z = true;
            return !z ? (i11 * 16) / 14 : i11;
        }
        i10 = ((bArr[4] & 3) << 12) | ((bArr[7] & 255) << 4);
        b10 = bArr[6];
        i11 = (((b10 & 240) >> 4) | i10) + 1;
        if (!z) {
        }
    }

    public static int h(int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        if (!((i10 & (-2097152)) == -2097152) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0 || (i13 = (i10 >>> 12) & 15) == 0 || i13 == 15 || (i14 = (i10 >>> 10) & 3) == 3) {
            return -1;
        }
        int i15 = f10415t[i14];
        if (i11 == 2) {
            i15 /= 2;
        } else if (i11 == 0) {
            i15 /= 4;
        }
        int i16 = (i10 >>> 9) & 1;
        if (i12 == 3) {
            return ((((i11 == 3 ? f10416u[i13 - 1] : f10417v[i13 - 1]) * 12) / i15) + i16) * 4;
        }
        int i17 = i11 == 3 ? i12 == 2 ? f10418w[i13 - 1] : f10419x[i13 - 1] : f10420y[i13 - 1];
        if (i11 == 3) {
            return z.a(i17, 144, i15, i16);
        }
        return z.a(i12 == 1 ? 72 : 144, i17, i15, i16);
    }

    public static int i(int i10) {
        if (i10 == 2147385345 || i10 == -25230976 || i10 == 536864768 || i10 == -14745368) {
            return 1;
        }
        if (i10 == 1683496997 || i10 == 622876772) {
            return 2;
        }
        if (i10 == 1078008818 || i10 == -233094848) {
            return 3;
        }
        return (i10 == 1908687592 || i10 == -398277519) ? 4 : 0;
    }

    public static int j(int i10) {
        if (i10 == 20) {
            return 63750;
        }
        if (i10 == 30) {
            return 2250000;
        }
        switch (i10) {
            case 5:
                return 80000;
            case 6:
                return 768000;
            case 7:
                return 192000;
            case 8:
                return 2250000;
            case 9:
                return 40000;
            case 10:
                return 100000;
            case 11:
                return 16000;
            case 12:
                return 7000;
            default:
                switch (i10) {
                    case 14:
                        return 3062500;
                    case 15:
                        return 8000;
                    case 16:
                        return 256000;
                    case 17:
                        return 336000;
                    case 18:
                        return 768000;
                    default:
                        return -2147483647;
                }
        }
    }

    public static j3.f k(byte[] bArr) {
        byte b10 = bArr[0];
        if (b10 == Byte.MAX_VALUE || b10 == 100 || b10 == 64 || b10 == 113) {
            return new j3.f(bArr, bArr.length);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        byte b11 = bArrCopyOf[0];
        if (b11 == -2 || b11 == -1 || b11 == 37 || b11 == -14 || b11 == -24) {
            for (int i10 = 0; i10 < bArrCopyOf.length - 1; i10 += 2) {
                byte b12 = bArrCopyOf[i10];
                int i11 = i10 + 1;
                bArrCopyOf[i10] = bArrCopyOf[i11];
                bArrCopyOf[i11] = b12;
            }
        }
        j3.f fVar = new j3.f(bArrCopyOf, bArrCopyOf.length);
        if (bArrCopyOf[0] == 31) {
            j3.f fVar2 = new j3.f(bArrCopyOf, bArrCopyOf.length);
            while (fVar2.b() >= 16) {
                fVar2.o(2);
                int iG = fVar2.g(14) & 16383;
                int iMin = Math.min(8 - fVar.f9722d, 14);
                int i12 = fVar.f9722d;
                int i13 = (8 - i12) - iMin;
                byte[] bArr2 = fVar.f9720b;
                int i14 = fVar.f9721c;
                byte b13 = (byte) (((65280 >> i12) | ((1 << i13) - 1)) & bArr2[i14]);
                bArr2[i14] = b13;
                int i15 = 14 - iMin;
                bArr2[i14] = (byte) (b13 | ((iG >>> i15) << i13));
                int i16 = i14 + 1;
                while (i15 > 8) {
                    fVar.f9720b[i16] = (byte) (iG >>> (i15 - 8));
                    i15 -= 8;
                    i16++;
                }
                int i17 = 8 - i15;
                byte[] bArr3 = fVar.f9720b;
                byte b14 = (byte) (bArr3[i16] & ((1 << i17) - 1));
                bArr3[i16] = b14;
                bArr3[i16] = (byte) (((iG & ((1 << i15) - 1)) << i17) | b14);
                fVar.o(14);
                fVar.a();
            }
        }
        fVar.k(bArrCopyOf.length, bArrCopyOf);
        return fVar;
    }

    public static int l(j3.f fVar) throws r1.f0 {
        int iG = fVar.g(4);
        if (iG == 15) {
            if (fVar.b() >= 24) {
                return fVar.g(24);
            }
            throw r1.f0.a(null, "AAC header insufficient data");
        }
        if (iG < 13) {
            return f10398a[iG];
        }
        throw r1.f0.a(null, "AAC header wrong Sampling Frequency Index");
    }

    public static int m(int i10) {
        int i11 = 0;
        while (i10 > 0) {
            i11++;
            i10 >>>= 1;
        }
        return i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static androidx.media3.exoplayer.video.k n(j3.f fVar) {
        int i10;
        int i11;
        int iG = fVar.g(16);
        int iG2 = fVar.g(16);
        if (iG2 == 65535) {
            iG2 = fVar.g(24);
            i10 = 7;
        } else {
            i10 = 4;
        }
        int i12 = iG2 + i10;
        if (iG == 44097) {
            i12 += 2;
        }
        if (fVar.g(2) == 3) {
            do {
                fVar.g(2);
            } while (fVar.f());
        }
        int iG3 = fVar.g(10);
        if (fVar.f() && fVar.g(3) > 0) {
            fVar.o(2);
        }
        int i13 = fVar.f() ? 48000 : 44100;
        int iG4 = fVar.g(4);
        int[] iArr = f10406i;
        if (i13 == 44100 && iG4 == 13) {
            i11 = iArr[iG4];
        } else if (i13 != 48000 || iG4 >= 14) {
            i11 = 0;
        } else {
            int i14 = iArr[iG4];
            int i15 = iG3 % 5;
            if (i15 == 1) {
                i11 = (iG4 == 3 || iG4 == 8) ? i14 + 1 : i14;
            } else if (i15 != 2) {
                if (i15 != 3) {
                    if (i15 == 4 && (iG4 == 3 || iG4 == 8 || iG4 == 11)) {
                    }
                }
            } else if (iG4 == 8 || iG4 == 11) {
            }
        }
        return new androidx.media3.exoplayer.video.k(i13, i12, i11);
    }

    public static a o(j3.f fVar, boolean z) throws r1.f0 {
        int iG = fVar.g(5);
        if (iG == 31) {
            iG = fVar.g(6) + 32;
        }
        int iL = l(fVar);
        int iG2 = fVar.g(4);
        String strA = da.b.a(iG, "mp4a.40.");
        if (iG == 5 || iG == 29) {
            iL = l(fVar);
            int iG3 = fVar.g(5);
            if (iG3 == 31) {
                iG3 = fVar.g(6) + 32;
            }
            iG = iG3;
            if (iG == 22) {
                iG2 = fVar.g(4);
            }
        }
        if (z) {
            if (iG != 1 && iG != 2 && iG != 3 && iG != 4 && iG != 6 && iG != 7 && iG != 17) {
                switch (iG) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw r1.f0.b("Unsupported audio object type: " + iG);
                }
            }
            if (fVar.f()) {
                u1.a.p("Unexpected frameLengthFlag = 1");
            }
            if (fVar.f()) {
                fVar.o(14);
            }
            boolean zF = fVar.f();
            if (iG2 == 0) {
                throw new UnsupportedOperationException();
            }
            if (iG == 6 || iG == 20) {
                fVar.o(3);
            }
            if (zF) {
                if (iG == 22) {
                    fVar.o(16);
                }
                if (iG == 17 || iG == 19 || iG == 20 || iG == 23) {
                    fVar.o(3);
                }
                fVar.o(1);
            }
            switch (iG) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int iG4 = fVar.g(2);
                    if (iG4 == 2 || iG4 == 3) {
                        throw r1.f0.b("Unsupported epConfig: " + iG4);
                    }
            }
        }
        int i10 = f10399b[iG2];
        if (i10 != -1) {
            return new a(iL, i10, strA);
        }
        throw r1.f0.a(null, null);
    }

    public static void p(j3.f fVar, c cVar) throws r1.f0 {
        int iG = fVar.g(5);
        fVar.o(2);
        if (fVar.f()) {
            fVar.o(5);
        }
        if (iG >= 7 && iG <= 10) {
            fVar.n();
        }
        if (fVar.f()) {
            int iG2 = fVar.g(3);
            if (cVar.f10424b == -1 && iG >= 0 && iG <= 15 && (iG2 == 0 || iG2 == 1)) {
                cVar.f10424b = iG;
            }
            if (fVar.f()) {
                w(fVar);
            }
        }
    }

    public static void q(j3.f fVar, c cVar) throws r1.f0 {
        fVar.o(2);
        boolean zF = fVar.f();
        int iG = fVar.g(8);
        for (int i10 = 0; i10 < iG; i10++) {
            fVar.o(2);
            if (fVar.f()) {
                fVar.o(5);
            }
            if (zF) {
                fVar.o(24);
            } else {
                if (fVar.f()) {
                    if (!fVar.f()) {
                        fVar.o(4);
                    }
                    cVar.f10425c = fVar.g(6) + 1;
                }
                fVar.o(4);
            }
        }
        if (fVar.f()) {
            fVar.o(3);
            if (fVar.f()) {
                w(fVar);
            }
        }
    }

    public static int r(j3.f fVar, int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 3 && fVar.f(); i11++) {
            i10++;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            i12 += 1 << iArr[i13];
        }
        return fVar.g(iArr[i10]) + i12;
    }

    public static r1.d0 s(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = (String) list.get(i10);
            String str2 = u1.f0.f15206a;
            String[] strArrSplit = str.split("=", 2);
            if (strArrSplit.length != 2) {
                u1.a.p("Failed to parse Vorbis comment: ".concat(str));
            } else if (strArrSplit[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(x2.a.d(new u1.q(Base64.decode(strArrSplit[1], 0))));
                } catch (RuntimeException e7) {
                    u1.a.q("Failed to parse vorbis picture", e7);
                }
            } else {
                arrayList.add(new c3.a(strArrSplit[0], strArrSplit[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new r1.d0(arrayList);
    }

    public static int t(int i10, u1.q qVar) {
        switch (i10) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i10 - 2);
            case 6:
                return qVar.B() + 1;
            case 7:
                return qVar.I() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i10 - 8);
            default:
                return -1;
        }
    }

    public static kf.d u(u1.q qVar) {
        qVar.P(1);
        int iE = qVar.E();
        long j10 = qVar.f15267b + iE;
        int i10 = iE / 18;
        long[] jArrCopyOf = new long[i10];
        long[] jArrCopyOf2 = new long[i10];
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                break;
            }
            long jV = qVar.v();
            if (jV == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i11);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i11);
                break;
            }
            jArrCopyOf[i11] = jV;
            jArrCopyOf2[i11] = qVar.v();
            qVar.P(2);
            i11++;
        }
        qVar.P((int) (j10 - qVar.f15267b));
        return new kf.d(jArrCopyOf, 3, jArrCopyOf2);
    }

    public static l0 v(u1.q qVar, boolean z, boolean z4) throws r1.f0 {
        if (z) {
            x(3, qVar, false);
        }
        qVar.z(StandardCharsets.UTF_8, (int) qVar.s());
        long jS = qVar.s();
        String[] strArr = new String[(int) jS];
        for (int i10 = 0; i10 < jS; i10++) {
            strArr[i10] = qVar.z(StandardCharsets.UTF_8, (int) qVar.s());
        }
        if (z4 && (qVar.B() & 1) == 0) {
            throw r1.f0.a(null, "framing bit expected to be set");
        }
        return new l0(strArr);
    }

    public static void w(j3.f fVar) throws r1.f0 {
        int iG = fVar.g(6);
        if (iG < 2 || iG > 42) {
            throw r1.f0.b(String.format("Invalid language tag bytes number: %d. Must be between 2 and 42.", Integer.valueOf(iG)));
        }
        fVar.o(iG * 8);
    }

    public static boolean x(int i10, u1.q qVar, boolean z) throws r1.f0 {
        if (qVar.a() < 7) {
            if (z) {
                return false;
            }
            throw r1.f0.a(null, "too short header: " + qVar.a());
        }
        if (qVar.B() != i10) {
            if (z) {
                return false;
            }
            throw r1.f0.a(null, "expected header type " + Integer.toHexString(i10));
        }
        if (qVar.B() == 118 && qVar.B() == 111 && qVar.B() == 114 && qVar.B() == 98 && qVar.B() == 105 && qVar.B() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw r1.f0.a(null, "expected characters 'vorbis'");
    }
}
