package v1;

import a2.w0;
import com.hsae.autosdk.core.NoConst;
import j$.util.Objects;
import java.lang.reflect.Array;
import java.math.RoundingMode;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import u7.d0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public abstract class o {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f16386a = {0, 0, 0, 1};

    /* renamed from: b, reason: collision with root package name */
    public static final float[] f16387b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c, reason: collision with root package name */
    public static final Object f16388c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public static int[] f16389d = new int[10];

    public static ArrayList a(byte[] bArr) {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(((((bArr[11] & 255) << 8) | (bArr[10] & 255)) * 1000000000) / 48000).array());
        arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(80000000L).array());
        return arrayList;
    }

    public static void b(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static int c(byte[] bArr, int i10, int i11, boolean[] zArr) {
        int i12 = i11 - i10;
        a9.o.t(i12 >= 0);
        if (i12 == 0) {
            return i11;
        }
        if (zArr[0]) {
            b(zArr);
            return i10 - 3;
        }
        if (i12 > 1 && zArr[1] && bArr[i10] == 1) {
            b(zArr);
            return i10 - 2;
        }
        if (i12 > 2 && zArr[2] && bArr[i10] == 0 && bArr[i10 + 1] == 1) {
            b(zArr);
            return i10 - 1;
        }
        int i13 = i11 - 1;
        int i14 = i10 + 2;
        while (i14 < i13) {
            byte b10 = bArr[i14];
            if ((b10 & NoConst.ESCAPE_0XFE) == 0) {
                int i15 = i14 - 2;
                if (bArr[i15] == 0 && bArr[i14 - 1] == 0 && b10 == 1) {
                    b(zArr);
                    return i15;
                }
                i14 -= 2;
            }
            i14 += 3;
        }
        zArr[0] = i12 <= 2 ? !(i12 != 2 ? !(zArr[1] && bArr[i13] == 1) : !(zArr[2] && bArr[i11 + (-2)] == 0 && bArr[i13] == 1)) : bArr[i11 + (-3)] == 0 && bArr[i11 + (-2)] == 0 && bArr[i13] == 1;
        zArr[1] = i12 <= 1 ? zArr[2] && bArr[i13] == 0 : bArr[i11 + (-2)] == 0 && bArr[i13] == 0;
        zArr[2] = bArr[i13] == 0;
        return i11;
    }

    public static String d(r1.p pVar) {
        String str;
        if (Objects.equals(pVar.f13523o, "video/dolby-vision") && (str = pVar.f13520k) != null) {
            if (str.startsWith("dva1") || str.startsWith("dvav")) {
                return "video/avc";
            }
            if (str.startsWith("dvh1") || str.startsWith("dvhe")) {
                return "video/hevc";
            }
        }
        return pVar.f13523o;
    }

    public static long e(byte b10, byte b11) {
        int i10;
        int i11 = b10 & 255;
        int i12 = b10 & 3;
        if (i12 != 0) {
            i10 = 2;
            if (i12 != 1 && i12 != 2) {
                i10 = b11 & 63;
            }
        } else {
            i10 = 1;
        }
        int i13 = i11 >> 3;
        return i10 * (i13 >= 16 ? 2500 << r6 : i13 >= 12 ? 10000 << (i13 & 1) : (i13 & 3) == 3 ? 60000 : 10000 << r6);
    }

    public static boolean f(byte[] bArr, int i10, r1.p pVar) {
        int i11;
        if (Objects.equals(pVar.f13523o, "video/avc")) {
            byte b10 = bArr[4];
            return (((b10 & 96) >> 5) == 0 && ((i11 = b10 & 31) == 1 || i11 == 9 || i11 == 14)) ? false : true;
        }
        if (!Objects.equals(pVar.f13523o, "video/hevc")) {
            return true;
        }
        androidx.media3.exoplayer.video.k kVarH = h(new t3.e(bArr, 4, i10 + 4));
        int i12 = kVarH.f1915a;
        if (i12 == 35) {
            return false;
        }
        if (i12 <= 14 && i12 % 2 == 0) {
            if (kVarH.f1917c == pVar.F - 1) {
                return false;
            }
        }
        return true;
    }

    public static int g(r1.p pVar) {
        String strD = d(pVar);
        if (Objects.equals(strD, "video/avc")) {
            return 1;
        }
        return (Objects.equals(strD, "video/hevc") || Objects.equals(strD, "video/vvc")) ? 2 : 0;
    }

    public static androidx.media3.exoplayer.video.k h(t3.e eVar) {
        eVar.k();
        return new androidx.media3.exoplayer.video.k(eVar.f(6), eVar.f(6), eVar.f(3) - 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static h i(t3.e eVar, boolean z, int i10, h hVar) {
        int[] iArr;
        int i11;
        int i12;
        int i13;
        boolean z4;
        boolean zE;
        int iF;
        int i14;
        int[] iArr2 = new int[6];
        if (z) {
            int iF2 = eVar.f(2);
            zE = eVar.e();
            iF = eVar.f(5);
            i14 = 0;
            for (int i15 = 0; i15 < 32; i15++) {
                if (eVar.e()) {
                    i14 |= 1 << i15;
                }
            }
            for (int i16 = 0; i16 < 6; i16++) {
                iArr2[i16] = eVar.f(8);
            }
            i11 = iF2;
        } else {
            if (hVar == null) {
                iArr = iArr2;
                i11 = 0;
                i12 = 0;
                i13 = 0;
                z4 = false;
                int iF3 = eVar.f(8);
                int i17 = 0;
                for (int i18 = 0; i18 < i10; i18++) {
                    if (eVar.e()) {
                        i17 += 88;
                    }
                    if (eVar.e()) {
                        i17 += 8;
                    }
                }
                eVar.l(i17);
                if (i10 > 0) {
                    eVar.l((8 - i10) * 2);
                }
                return new h(i11, i12, i13, iArr, z4, iF3);
            }
            int i19 = hVar.f16339a;
            zE = hVar.f16340b;
            iF = hVar.f16341c;
            i14 = hVar.f16342d;
            iArr2 = hVar.f16343e;
            i11 = i19;
        }
        iArr = iArr2;
        z4 = zE;
        i12 = iF;
        i13 = i14;
        int iF32 = eVar.f(8);
        int i172 = 0;
        while (i18 < i10) {
        }
        eVar.l(i172);
        if (i10 > 0) {
        }
        return new h(i11, i12, i13, iArr, z4, iF32);
    }

    public static androidx.leanback.widget.i j(int i10, int i11, byte[] bArr) {
        byte b10;
        int i12 = i10 + 2;
        do {
            i11--;
            b10 = bArr[i11];
            if (b10 != 0) {
                break;
            }
        } while (i11 > i12);
        if (b10 != 0 && i11 > i12) {
            t3.e eVar = new t3.e(bArr, i12, i11 + 1);
            while (eVar.c(16)) {
                int iF = eVar.f(8);
                int i13 = 0;
                while (iF == 255) {
                    i13 += 255;
                    iF = eVar.f(8);
                }
                int i14 = i13 + iF;
                int iF2 = eVar.f(8);
                int i15 = 0;
                while (iF2 == 255) {
                    i15 += 255;
                    iF2 = eVar.f(8);
                }
                int i16 = i15 + iF2;
                if (i16 == 0 || !eVar.c(i16)) {
                    break;
                }
                if (i14 == 176) {
                    int iG = eVar.g();
                    boolean zE = eVar.e();
                    int iG2 = zE ? eVar.g() : 0;
                    int iG3 = eVar.g();
                    int iG4 = -1;
                    for (int i17 = 0; i17 <= iG3; i17++) {
                        iG4 = eVar.g();
                        eVar.g();
                        int iF3 = eVar.f(6);
                        if (iF3 == 63) {
                            return null;
                        }
                        eVar.f(iF3 == 0 ? Math.max(0, iG - 30) : Math.max(0, (iF3 + iG) - 31));
                        if (zE) {
                            int iF4 = eVar.f(6);
                            if (iF4 == 63) {
                                return null;
                            }
                            eVar.f(iF4 == 0 ? Math.max(0, iG2 - 30) : Math.max(0, (iF4 + iG2) - 31));
                        }
                        if (eVar.e()) {
                            eVar.l(10);
                        }
                    }
                    return new androidx.leanback.widget.i(iG4, 8);
                }
                eVar.l(i16 * 8);
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static k k(byte[] bArr, int i10, int i11, w0 w0Var) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int iH;
        int i25;
        i iVar;
        int iG;
        int i26;
        int i27;
        h hVar;
        int i28;
        int i29;
        int i30;
        int[] iArrCopyOf;
        i iVar2;
        androidx.media3.exoplayer.video.k kVarH = h(new t3.e(bArr, i10, i11));
        t3.e eVar = new t3.e(bArr, i10 + 2, i11);
        int i31 = 4;
        eVar.l(4);
        int iF = eVar.f(3);
        int i32 = kVarH.f1916b;
        boolean z = i32 != 0 && iF == 7;
        if (w0Var != null) {
            g0 g0Var = (g0) w0Var.f346b;
            i12 = !g0Var.isEmpty() ? ((g) g0Var.get(Math.min(i32, g0Var.size() - 1))).f16337a : 0;
        }
        h hVarI = null;
        if (!z) {
            eVar.k();
            hVarI = i(eVar, true, iF, null);
        } else if (w0Var != null) {
            i iVar3 = (i) w0Var.f347c;
            int i33 = iVar3.f16346b[i12];
            g0 g0Var2 = iVar3.f16345a;
            if (g0Var2.size() > i33) {
                hVarI = (h) g0Var2.get(i33);
            }
        }
        eVar.i();
        if (z) {
            int iF2 = eVar.e() ? eVar.f(8) : -1;
            if (w0Var == null || (iVar2 = (i) w0Var.f348d) == null) {
                i17 = 0;
                i16 = 0;
                i19 = 0;
                i20 = 0;
                i15 = 0;
                i18 = 0;
            } else {
                if (iF2 == -1) {
                    iF2 = iVar2.f16346b[i12];
                }
                if (iF2 != -1) {
                    g0 g0Var3 = iVar2.f16345a;
                    if (g0Var3.size() > iF2) {
                        j jVar = (j) g0Var3.get(iF2);
                        int i34 = jVar.f16347a;
                        i19 = jVar.f16350d;
                        int i35 = jVar.f16351e;
                        i15 = jVar.f16348b;
                        i17 = jVar.f16349c;
                        i16 = i35;
                        i18 = i16;
                        i20 = i19;
                    }
                }
            }
        } else {
            int i36 = eVar.i();
            if (i36 == 3) {
                eVar.k();
            }
            int i37 = eVar.i();
            int i38 = eVar.i();
            if (eVar.e()) {
                int i39 = eVar.i();
                int i40 = eVar.i();
                int i41 = eVar.i();
                int i42 = eVar.i();
                i13 = i37 - ((i39 + i40) * ((i36 == 1 || i36 == 2) ? 2 : 1));
                i14 = i38 - ((i41 + i42) * (i36 == 1 ? 2 : 1));
            } else {
                i13 = i37;
                i14 = i38;
            }
            i15 = eVar.i();
            i16 = i14;
            i17 = eVar.i();
            i18 = i38;
            i19 = i13;
            i20 = i37;
        }
        int i43 = eVar.i();
        if (z) {
            i21 = -1;
        } else {
            int iMax = -1;
            for (int i44 = eVar.e() ? 0 : iF; i44 <= iF; i44++) {
                eVar.i();
                iMax = Math.max(eVar.i(), iMax);
                eVar.i();
            }
            i21 = iMax;
        }
        eVar.i();
        eVar.i();
        eVar.i();
        eVar.i();
        eVar.i();
        eVar.i();
        if (eVar.e()) {
            boolean zE = z ? eVar.e() : false;
            int i45 = 6;
            if (zE) {
                eVar.l(6);
            } else if (eVar.e()) {
                int i46 = 0;
                while (i46 < i31) {
                    int i47 = 0;
                    while (i47 < i45) {
                        if (eVar.e()) {
                            int iMin = Math.min(64, 1 << ((i46 << 1) + 4));
                            if (i46 > 1) {
                                eVar.h();
                            }
                            for (int i48 = 0; i48 < iMin; i48++) {
                                eVar.h();
                            }
                        } else {
                            eVar.g();
                        }
                        i47 += i46 == 3 ? 3 : 1;
                        i45 = 6;
                    }
                    i46++;
                    i31 = 4;
                    i45 = 6;
                }
            }
        }
        eVar.l(2);
        if (eVar.e()) {
            eVar.l(8);
            eVar.i();
            eVar.i();
            eVar.k();
        }
        int iG2 = eVar.g();
        int i49 = 0;
        int[] iArr = new int[0];
        int[] iArr2 = new int[0];
        int i50 = -1;
        int i51 = -1;
        while (i49 < iG2) {
            if (i49 == 0 || !eVar.e()) {
                i26 = iG2;
                i27 = i21;
                hVar = hVarI;
                i28 = i17;
                i29 = i19;
                i30 = i20;
                int iG3 = eVar.g();
                int iG4 = eVar.g();
                int[] iArr3 = new int[iG3];
                int i52 = 0;
                while (i52 < iG3) {
                    iArr3[i52] = (i52 > 0 ? iArr3[i52 - 1] : 0) - (eVar.g() + 1);
                    eVar.k();
                    i52++;
                }
                iArrCopyOf = new int[iG4];
                int i53 = 0;
                while (i53 < iG4) {
                    iArrCopyOf[i53] = eVar.g() + 1 + (i53 > 0 ? iArrCopyOf[i53 - 1] : 0);
                    eVar.k();
                    i53++;
                }
                iArr = iArr3;
                i51 = iG4;
                i50 = iG3;
            } else {
                i26 = iG2;
                int i54 = i50 + i51;
                int iG5 = (1 - ((eVar.e() ? 1 : 0) * 2)) * (eVar.g() + 1);
                i27 = i21;
                int i55 = i54 + 1;
                i30 = i20;
                boolean[] zArr = new boolean[i55];
                i29 = i19;
                for (int i56 = 0; i56 <= i54; i56++) {
                    if (eVar.e()) {
                        zArr[i56] = true;
                    } else {
                        zArr[i56] = eVar.e();
                    }
                }
                int[] iArr4 = new int[i55];
                int[] iArr5 = new int[i55];
                int i57 = 0;
                for (int i58 = i51 - 1; i58 >= 0; i58--) {
                    int i59 = iArr2[i58] + iG5;
                    if (i59 < 0 && zArr[i50 + i58]) {
                        iArr4[i57] = i59;
                        i57++;
                    }
                }
                if (iG5 < 0 && zArr[i54]) {
                    iArr4[i57] = iG5;
                    i57++;
                }
                i28 = i17;
                int i60 = i57;
                hVar = hVarI;
                for (int i61 = 0; i61 < i50; i61++) {
                    int i62 = iArr[i61] + iG5;
                    if (i62 < 0 && zArr[i61]) {
                        iArr4[i60] = i62;
                        i60++;
                    }
                }
                int[] iArrCopyOf2 = Arrays.copyOf(iArr4, i60);
                int i63 = 0;
                for (int i64 = i50 - 1; i64 >= 0; i64--) {
                    int i65 = iArr[i64] + iG5;
                    if (i65 > 0 && zArr[i64]) {
                        iArr5[i63] = i65;
                        i63++;
                    }
                }
                if (iG5 > 0 && zArr[i54]) {
                    iArr5[i63] = iG5;
                    i63++;
                }
                int i66 = i63;
                for (int i67 = 0; i67 < i51; i67++) {
                    int i68 = iArr2[i67] + iG5;
                    if (i68 > 0 && zArr[i50 + i67]) {
                        iArr5[i66] = i68;
                        i66++;
                    }
                }
                i51 = i66;
                iArrCopyOf = Arrays.copyOf(iArr5, i66);
                iArr = iArrCopyOf2;
                i50 = i60;
            }
            i49++;
            iArr2 = iArrCopyOf;
            iG2 = i26;
            i21 = i27;
            i20 = i30;
            i19 = i29;
            i17 = i28;
            hVarI = hVar;
        }
        int i69 = i21;
        h hVar2 = hVarI;
        int i70 = i17;
        int i71 = i19;
        int i72 = i20;
        if (eVar.e()) {
            int i73 = eVar.i();
            for (int i74 = 0; i74 < i73; i74++) {
                eVar.l(i43 + 5);
            }
        }
        eVar.l(2);
        float f10 = 1.0f;
        if (eVar.e()) {
            if (eVar.e()) {
                int iF3 = eVar.f(8);
                if (iF3 == 255) {
                    int iF4 = eVar.f(16);
                    int iF5 = eVar.f(16);
                    if (iF4 != 0 && iF5 != 0) {
                        f10 = iF4 / iF5;
                    }
                } else if (iF3 < 17) {
                    f10 = f16387b[iF3];
                } else {
                    org.bouncycastle.jcajce.provider.digest.a.o(iF3, "Unexpected aspect_ratio_idc value: ");
                }
            }
            if (eVar.e()) {
                eVar.k();
            }
            if (eVar.e()) {
                eVar.l(3);
                i25 = eVar.e() ? 1 : 2;
                if (eVar.e()) {
                    int iF6 = eVar.f(8);
                    int iF7 = eVar.f(8);
                    eVar.l(8);
                    iG = r1.g.g(iF6);
                    iH = r1.g.h(iF7);
                    if (eVar.e()) {
                        eVar.i();
                        eVar.i();
                    }
                    eVar.k();
                    if (eVar.e()) {
                        i16 *= 2;
                    }
                    i24 = iH;
                    i23 = i25;
                    i22 = iG;
                } else {
                    iH = -1;
                    iG = -1;
                    if (eVar.e()) {
                    }
                    eVar.k();
                    if (eVar.e()) {
                    }
                    i24 = iH;
                    i23 = i25;
                    i22 = iG;
                }
            } else {
                if (w0Var != null && (iVar = (i) w0Var.f349e) != null) {
                    int i75 = iVar.f16346b[i12];
                    g0 g0Var4 = iVar.f16345a;
                    if (g0Var4.size() > i75) {
                        l lVar = (l) g0Var4.get(i75);
                        iG = lVar.f16364a;
                        int i76 = lVar.f16365b;
                        iH = lVar.f16366c;
                        i25 = i76;
                        if (eVar.e()) {
                        }
                        eVar.k();
                        if (eVar.e()) {
                        }
                        i24 = iH;
                        i23 = i25;
                        i22 = iG;
                    }
                }
                iH = -1;
                i25 = -1;
                iG = -1;
                if (eVar.e()) {
                }
                eVar.k();
                if (eVar.e()) {
                }
                i24 = iH;
                i23 = i25;
                i22 = iG;
            }
        } else {
            i22 = -1;
            i23 = -1;
            i24 = -1;
        }
        return new k(iF, hVar2, i15, i70, i71, i16, i72, i18, f10, i69, i22, i23, i24);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0598  */
    /* JADX WARN: Removed duplicated region for block: B:525:0x05af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static w0 l(int i10, int i11, byte[] bArr) {
        int[][] iArr;
        int i12;
        i iVar;
        int iF;
        int iF2;
        int iF3;
        int i13;
        int i14;
        int i15;
        boolean[][] zArr;
        int i16;
        boolean[][] zArr2;
        int[] iArr2;
        boolean z;
        int i17;
        boolean z4;
        boolean zE;
        int i18;
        int i19;
        int i20;
        boolean zE2;
        int i21;
        int iG;
        boolean z10;
        boolean z11;
        t3.e eVar = new t3.e(bArr, i10, i11);
        h(eVar);
        eVar.l(4);
        boolean zE3 = eVar.e();
        boolean zE4 = eVar.e();
        int iF4 = eVar.f(6);
        int i22 = iF4 + 1;
        int iF5 = eVar.f(3);
        eVar.l(17);
        h hVarI = i(eVar, true, iF5, null);
        int i23 = 0;
        for (int i24 = eVar.e() ? 0 : iF5; i24 <= iF5; i24++) {
            eVar.i();
            eVar.i();
            eVar.i();
        }
        int iF6 = eVar.f(6);
        int i25 = eVar.i() + 1;
        i iVar2 = new i(g0.r(hVarI), new int[1], 0);
        boolean z12 = i22 >= 2 && i25 >= 2;
        boolean z13 = zE3 && zE4;
        int i26 = iF6 + 1;
        boolean z14 = i26 >= i22;
        if (!z12 || !z13 || !z14) {
            return new w0((y0) null, iVar2, (i) null, (i) null);
        }
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i25, i26);
        int[] iArr4 = new int[i25];
        int[] iArr5 = new int[i25];
        iArr3[0][0] = 0;
        iArr4[0] = 1;
        iArr5[0] = 0;
        for (int i27 = 1; i27 < i25; i27++) {
            int i28 = 0;
            for (int i29 = 0; i29 <= iF6; i29++) {
                if (eVar.e()) {
                    iArr3[i27][i28] = i29;
                    iArr5[i27] = i29;
                    i28++;
                }
                iArr4[i27] = i28;
            }
        }
        int i30 = 8;
        if (eVar.e()) {
            eVar.l(64);
            if (eVar.e()) {
                eVar.i();
            }
            int i31 = eVar.i();
            while (i23 < i31) {
                eVar.i();
                if (i23 == 0 || eVar.e()) {
                    boolean zE5 = eVar.e();
                    boolean zE6 = eVar.e();
                    z11 = zE5;
                    z10 = zE6;
                    if (zE5 || zE6) {
                        zE = eVar.e();
                        if (zE) {
                            eVar.l(19);
                        }
                        eVar.l(i30);
                        if (zE) {
                            eVar.l(4);
                        }
                        eVar.l(15);
                        i19 = zE5;
                        i18 = zE6;
                    }
                    i20 = 0;
                    while (i20 <= iF5) {
                        boolean zE7 = eVar.e();
                        if (!zE7) {
                            zE7 = eVar.e();
                        }
                        if (zE7) {
                            eVar.g();
                            zE2 = false;
                        } else {
                            zE2 = eVar.e();
                        }
                        if (zE2) {
                            i21 = i31;
                            iG = 0;
                        } else {
                            i21 = i31;
                            iG = eVar.g();
                        }
                        int i32 = i19 + i18;
                        int[] iArr6 = iArr5;
                        int i33 = 0;
                        while (i33 < i32) {
                            int i34 = i32;
                            for (int i35 = 0; i35 <= iG; i35++) {
                                eVar.g();
                                eVar.g();
                                if (zE) {
                                    eVar.g();
                                    eVar.g();
                                }
                                eVar.k();
                            }
                            i33++;
                            i32 = i34;
                        }
                        i20++;
                        i31 = i21;
                        iArr5 = iArr6;
                    }
                    i23++;
                    i30 = 8;
                } else {
                    z11 = false;
                    z10 = false;
                }
                zE = false;
                i19 = z11;
                i18 = z10;
                i20 = 0;
                while (i20 <= iF5) {
                }
                i23++;
                i30 = 8;
            }
        }
        int[] iArr7 = iArr5;
        if (!eVar.e()) {
            return new w0((y0) null, iVar2, (i) null, (i) null);
        }
        eVar.b();
        h hVarI2 = i(eVar, false, iF5, hVarI);
        boolean zE8 = eVar.e();
        boolean[] zArr3 = new boolean[16];
        int i36 = 0;
        for (int i37 = 0; i37 < 16; i37++) {
            boolean zE9 = eVar.e();
            zArr3[i37] = zE9;
            if (zE9) {
                i36++;
            }
        }
        if (i36 == 0 || !zArr3[1]) {
            return new w0((y0) null, iVar2, (i) null, (i) null);
        }
        int[] iArr8 = new int[i36];
        for (int i38 = 0; i38 < i36 - (zE8 ? 1 : 0); i38++) {
            iArr8[i38] = eVar.f(3);
        }
        int[] iArr9 = new int[i36 + 1];
        if (zE8) {
            int i39 = 1;
            while (i39 < i36) {
                int[][] iArr10 = iArr3;
                for (int i40 = 0; i40 < i39; i40++) {
                    iArr9[i39] = iArr8[i40] + 1 + iArr9[i39];
                }
                i39++;
                iArr3 = iArr10;
            }
            iArr = iArr3;
            iArr9[i36] = 6;
        } else {
            iArr = iArr3;
        }
        int[][] iArr11 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i22, i36);
        int[] iArr12 = new int[i22];
        iArr12[0] = 0;
        boolean zE10 = eVar.e();
        int i41 = 1;
        while (i41 < i22) {
            if (zE10) {
                i17 = iF5;
                iArr12[i41] = eVar.f(6);
            } else {
                i17 = iF5;
                iArr12[i41] = i41;
            }
            if (zE8) {
                z4 = zE8 ? 1 : 0;
                for (int i42 = 0; i42 < i36; i42++) {
                    iArr11[i41][i42] = (iArr12[i41] & ((1 << iArr9[r29]) - 1)) >> iArr9[i42];
                }
            } else {
                int i43 = 0;
                while (i43 < i36) {
                    iArr11[i41][i43] = eVar.f(iArr8[i43] + 1);
                    i43++;
                    zE8 = zE8;
                }
                z4 = zE8;
            }
            i41++;
            iF5 = i17;
            zE8 = z4;
        }
        int i44 = iF5;
        int[] iArr13 = new int[i26];
        int i45 = 1;
        for (int i46 = 0; i46 < i22; i46++) {
            iArr13[iArr12[i46]] = -1;
            int i47 = 0;
            for (int i48 = 0; i48 < 16; i48++) {
                if (zArr3[i48]) {
                    if (i48 == 1) {
                        iArr13[iArr12[i46]] = iArr11[i46][i47];
                    }
                    i47++;
                }
            }
            if (i46 > 0) {
                int i49 = 0;
                while (true) {
                    if (i49 >= i46) {
                        z = true;
                        break;
                    }
                    if (iArr13[iArr12[i46]] == iArr13[iArr12[i49]]) {
                        z = false;
                        break;
                    }
                    i49++;
                }
                if (z) {
                    i45++;
                }
            }
        }
        int iF7 = eVar.f(4);
        if (i45 < 2 || iF7 == 0) {
            return new w0((y0) null, iVar2, (i) null, (i) null);
        }
        int[] iArr14 = new int[i45];
        for (int i50 = 0; i50 < i45; i50++) {
            iArr14[i50] = eVar.f(iF7);
        }
        int[] iArr15 = new int[i26];
        for (int i51 = 0; i51 < i22; i51++) {
            iArr15[Math.min(iArr12[i51], iF6)] = i51;
        }
        d0 d0VarJ = g0.j();
        int i52 = 0;
        while (i52 <= iF6) {
            int iMin = Math.min(iArr13[i52], i45 - 1);
            d0VarJ.c(new g(iArr15[i52], iMin >= 0 ? iArr14[iMin] : -1));
            i52++;
            iArr13 = iArr13;
        }
        y0 y0VarG = d0VarJ.g();
        if (((g) y0VarG.get(0)).f16338b == -1) {
            return new w0((y0) null, iVar2, (i) null, (i) null);
        }
        int i53 = 1;
        while (true) {
            if (i53 > iF6) {
                i53 = -1;
                break;
            }
            if (((g) y0VarG.get(i53)).f16338b != -1) {
                break;
            }
            i53++;
        }
        if (i53 == -1) {
            return new w0((y0) null, iVar2, (i) null, (i) null);
        }
        Class cls = Boolean.TYPE;
        boolean[][] zArr4 = (boolean[][]) Array.newInstance((Class<?>) cls, i22, i22);
        boolean[][] zArr5 = (boolean[][]) Array.newInstance((Class<?>) cls, i22, i22);
        for (int i54 = 1; i54 < i22; i54++) {
            for (int i55 = 0; i55 < i54; i55++) {
                boolean[] zArr6 = zArr4[i54];
                boolean[] zArr7 = zArr5[i54];
                boolean zE11 = eVar.e();
                zArr7[i55] = zE11;
                zArr6[i55] = zE11;
            }
        }
        for (int i56 = 1; i56 < i22; i56++) {
            for (int i57 = 0; i57 < iF4; i57++) {
                int i58 = 0;
                while (true) {
                    if (i58 < i56) {
                        boolean[] zArr8 = zArr5[i56];
                        if (zArr8[i58] && zArr5[i58][i57]) {
                            zArr8[i57] = true;
                            break;
                        }
                        i58++;
                    }
                }
            }
        }
        int[] iArr16 = new int[i26];
        for (int i59 = 0; i59 < i22; i59++) {
            int i60 = 0;
            for (int i61 = 0; i61 < i59; i61++) {
                i60 += zArr4[i59][i61] ? 1 : 0;
            }
            iArr16[iArr12[i59]] = i60;
        }
        int i62 = 0;
        for (int i63 = 0; i63 < i22; i63++) {
            if (iArr16[iArr12[i63]] == 0) {
                i62++;
            }
        }
        if (i62 > 1) {
            return new w0((y0) null, iVar2, (i) null, (i) null);
        }
        int[] iArr17 = new int[i22];
        int[] iArr18 = new int[i25];
        if (eVar.e()) {
            for (int i64 = 0; i64 < i22; i64++) {
                iArr17[i64] = eVar.f(3);
            }
            i12 = i44;
        } else {
            i12 = i44;
            Arrays.fill(iArr17, 0, i22, i12);
        }
        int i65 = 0;
        while (i65 < i25) {
            boolean[][] zArr9 = zArr5;
            int[] iArr19 = iArr16;
            int[] iArr20 = iArr12;
            int iMax = 0;
            for (int i66 = 0; i66 < iArr4[i65]; i66++) {
                iMax = Math.max(iMax, iArr17[((g) y0VarG.get(iArr[i65][i66])).f16337a]);
            }
            iArr18[i65] = iMax + 1;
            i65++;
            zArr5 = zArr9;
            iArr12 = iArr20;
            iArr16 = iArr19;
        }
        boolean[][] zArr10 = zArr5;
        int[] iArr21 = iArr16;
        int[] iArr22 = iArr12;
        if (eVar.e()) {
            int i67 = 0;
            while (i67 < iF4) {
                int i68 = i67 + 1;
                for (int i69 = i68; i69 < i22; i69++) {
                    if (zArr4[i69][i67]) {
                        eVar.l(3);
                    }
                }
                i67 = i68;
            }
        }
        eVar.k();
        int i70 = eVar.i() + 1;
        d0 d0VarJ2 = g0.j();
        d0VarJ2.c(hVarI);
        if (i70 > 1) {
            h hVarI3 = hVarI2;
            d0VarJ2.c(hVarI3);
            for (int i71 = 2; i71 < i70; i71++) {
                hVarI3 = i(eVar, eVar.e(), i12, hVarI3);
                d0VarJ2.c(hVarI3);
            }
        }
        y0 y0VarG2 = d0VarJ2.g();
        int i72 = eVar.i() + i25;
        if (i72 > i25) {
            return new w0((y0) null, iVar2, (i) null, (i) null);
        }
        int iF8 = eVar.f(2);
        boolean[][] zArr11 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, i72, i26);
        int[] iArr23 = new int[i72];
        int[] iArr24 = new int[i72];
        int i73 = 0;
        while (i73 < i25) {
            int i74 = i25;
            iArr23[i73] = 0;
            iArr24[i73] = iArr7[i73];
            if (iF8 == 0) {
                zArr2 = zArr4;
                iArr2 = iArr18;
                i16 = i22;
                Arrays.fill(zArr11[i73], 0, iArr4[i73], true);
                iArr23[i73] = iArr4[i73];
            } else {
                i16 = i22;
                zArr2 = zArr4;
                iArr2 = iArr18;
                if (iF8 == 1) {
                    int i75 = iArr7[i73];
                    for (int i76 = 0; i76 < iArr4[i73]; i76++) {
                        zArr11[i73][i76] = iArr[i73][i76] == i75;
                    }
                    iArr23[i73] = 1;
                } else {
                    zArr11[0][0] = true;
                    iArr23[0] = 1;
                }
            }
            i73++;
            i25 = i74;
            zArr4 = zArr2;
            iArr18 = iArr2;
            i22 = i16;
        }
        int i77 = i22;
        boolean[][] zArr12 = zArr4;
        int[] iArr25 = iArr18;
        int i78 = i25;
        int[] iArr26 = new int[i26];
        int i79 = 2;
        boolean[][] zArr13 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, i72, i26);
        int i80 = 0;
        int i81 = 1;
        while (i81 < i72) {
            if (iF8 == i79) {
                for (int i82 = 0; i82 < iArr4[i81]; i82++) {
                    zArr11[i81][i82] = eVar.e();
                    int i83 = iArr23[i81];
                    boolean z15 = zArr11[i81][i82];
                    iArr23[i81] = i83 + (z15 ? 1 : 0);
                    if (z15) {
                        iArr24[i81] = iArr[i81][i82];
                    }
                }
            }
            if (i80 == 0 && iArr[i81][0] == 0 && zArr11[i81][0]) {
                for (int i84 = 1; i84 < iArr4[i81]; i84++) {
                    if (iArr[i81][i84] == i53 && zArr11[i81][i53]) {
                        i80 = i81;
                    }
                }
            }
            int i85 = 0;
            while (i85 < iArr4[i81]) {
                if (i70 > 1) {
                    zArr13[i81][i85] = zArr11[i81][i85];
                    zArr = zArr11;
                    i13 = i53;
                    int iC = w7.b.c(i70, RoundingMode.CEILING);
                    if (zArr13[i81][i85]) {
                        i14 = i70;
                        i15 = iF8;
                        if (zArr13[i81][i85]) {
                        }
                    } else {
                        g gVar = (g) y0VarG.get(iArr[i81][i85]);
                        int i86 = 0;
                        while (i86 < i85) {
                            i14 = i70;
                            i15 = iF8;
                            if (zArr10[gVar.f16337a][((g) y0VarG.get(iArr[i81][i86])).f16337a]) {
                                zArr13[i81][i85] = true;
                                break;
                            }
                            i86++;
                            iF8 = i15;
                            i70 = i14;
                        }
                        i14 = i70;
                        i15 = iF8;
                        if (zArr13[i81][i85]) {
                            if (i80 <= 0 || i81 != i80) {
                                eVar.l(iC);
                            } else {
                                iArr26[i85] = eVar.f(iC);
                            }
                        }
                    }
                } else {
                    i13 = i53;
                    i14 = i70;
                    i15 = iF8;
                    zArr = zArr11;
                }
                i85++;
                zArr11 = zArr;
                i53 = i13;
                iF8 = i15;
                i70 = i14;
            }
            int i87 = i53;
            int i88 = i70;
            int i89 = iF8;
            boolean[][] zArr14 = zArr11;
            if (iArr23[i81] == 1 && iArr21[iArr24[i81]] > 0) {
                eVar.k();
            }
            i81++;
            zArr11 = zArr14;
            i53 = i87;
            iF8 = i89;
            i70 = i88;
            i79 = 2;
        }
        if (i80 == 0) {
            return new w0((y0) null, iVar2, (i) null, (i) null);
        }
        int iG2 = eVar.g();
        int i90 = iG2 + 1;
        d0 d0VarL = g0.l(i90);
        int[] iArr27 = new int[i77];
        for (int i91 = 0; i91 < i90; i91++) {
            int iF9 = eVar.f(16);
            int iF10 = eVar.f(16);
            if (eVar.e()) {
                iF = eVar.f(2);
                if (iF == 3) {
                    eVar.k();
                }
                iF2 = eVar.f(4);
                iF3 = eVar.f(4);
            } else {
                iF = 0;
                iF2 = 0;
                iF3 = 0;
            }
            if (eVar.e()) {
                int iG3 = eVar.g();
                int iG4 = eVar.g();
                int iG5 = eVar.g();
                int iG6 = eVar.g();
                iF9 -= (iG3 + iG4) * ((iF == 1 || iF == 2) ? 2 : 1);
                iF10 -= (iG5 + iG6) * (iF == 1 ? 2 : 1);
            }
            d0VarL.b(new j(iF, iF2, iF3, iF9, iF10));
        }
        if (i90 <= 1 || !eVar.e()) {
            for (int i92 = 1; i92 < i77; i92++) {
                iArr27[i92] = Math.min(i92, iG2);
            }
        } else {
            int iC2 = w7.b.c(i90, RoundingMode.CEILING);
            for (int i93 = 1; i93 < i77; i93++) {
                iArr27[i93] = eVar.f(iC2);
            }
        }
        i iVar3 = new i(d0VarL.g(), iArr27, 1);
        eVar.l(2);
        for (int i94 = 1; i94 < i77; i94++) {
            if (iArr21[iArr22[i94]] == 0) {
                eVar.k();
            }
        }
        for (int i95 = 1; i95 < i72; i95++) {
            boolean zE12 = eVar.e();
            int i96 = 0;
            while (i96 < iArr25[i95]) {
                if ((i96 <= 0 || !zE12) ? i96 == 0 : eVar.e()) {
                    for (int i97 = 0; i97 < iArr4[i95]; i97++) {
                        if (zArr13[i95][i97]) {
                            eVar.g();
                        }
                    }
                    eVar.g();
                    eVar.g();
                }
                i96++;
            }
        }
        int iG7 = eVar.g() + 2;
        if (eVar.e()) {
            eVar.l(iG7);
        } else {
            for (int i98 = 1; i98 < i77; i98++) {
                for (int i99 = 0; i99 < i98; i99++) {
                    if (zArr12[i98][i99]) {
                        eVar.l(iG7);
                    }
                }
            }
        }
        int iG8 = eVar.g();
        for (int i100 = 1; i100 <= iG8; i100++) {
            eVar.l(8);
        }
        if (eVar.e()) {
            eVar.b();
            if (!eVar.e() ? eVar.e() : true) {
                eVar.k();
            }
            boolean zE13 = eVar.e();
            boolean zE14 = eVar.e();
            if (zE13 || zE14) {
                for (int i101 = 0; i101 < i78; i101++) {
                    for (int i102 = 0; i102 < iArr25[i101]; i102++) {
                        boolean zE15 = zE13 ? eVar.e() : false;
                        boolean zE16 = zE14 ? eVar.e() : false;
                        if (zE15) {
                            eVar.l(32);
                        }
                        if (zE16) {
                            eVar.l(18);
                        }
                    }
                }
            }
            boolean zE17 = eVar.e();
            int iF11 = zE17 ? eVar.f(4) + 1 : i77;
            d0 d0VarL2 = g0.l(iF11);
            int[] iArr28 = new int[i77];
            for (int i103 = 0; i103 < iF11; i103++) {
                eVar.l(3);
                int i104 = eVar.e() ? 1 : 2;
                int iG9 = r1.g.g(eVar.f(8));
                int iH = r1.g.h(eVar.f(8));
                eVar.l(8);
                d0VarL2.b(new l(iG9, i104, iH));
            }
            if (zE17 && iF11 > 1) {
                for (int i105 = 0; i105 < i77; i105++) {
                    iArr28[i105] = eVar.f(4);
                }
            }
            iVar = new i(d0VarL2.g(), iArr28, 2);
        } else {
            iVar = null;
        }
        return new w0(y0VarG, new i(y0VarG2, iArr26, 0), iVar3, iVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0188  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static n m(int i10, int i11, byte[] bArr) {
        int iG;
        boolean z;
        int i12;
        int i13;
        int i14;
        int i15;
        int iG2;
        boolean z4;
        boolean zE;
        int i16;
        int i17;
        float f10;
        int i18;
        int i19;
        int i20;
        int iH;
        boolean zE2;
        boolean zE3;
        int i21;
        int i22;
        t3.e eVar = new t3.e(bArr, i10 + 1, i11);
        int iF = eVar.f(8);
        int iF2 = eVar.f(8);
        int iF3 = eVar.f(8);
        int iG3 = eVar.g();
        if (iF == 100 || iF == 110 || iF == 122 || iF == 244 || iF == 44 || iF == 83 || iF == 86 || iF == 118 || iF == 128 || iF == 138) {
            iG = eVar.g();
            boolean zE4 = iG == 3 ? eVar.e() : false;
            int iG4 = eVar.g();
            int iG5 = eVar.g();
            eVar.k();
            if (eVar.e()) {
                int i23 = iG == 3 ? 12 : 8;
                int i24 = 0;
                while (i24 < i23) {
                    if (eVar.e()) {
                        int i25 = i24 < 6 ? 16 : 64;
                        int iH2 = 8;
                        int i26 = 8;
                        for (int i27 = 0; i27 < i25; i27++) {
                            if (iH2 != 0) {
                                iH2 = ((eVar.h() + i26) + 256) % 256;
                            }
                            if (iH2 != 0) {
                                i26 = iH2;
                            }
                        }
                    }
                    i24++;
                }
            }
            z = zE4;
            i12 = iG4;
            i13 = iG5;
        } else {
            i12 = 0;
            i13 = 0;
            z = false;
            iG = 1;
        }
        int iG6 = eVar.g() + 4;
        int iG7 = eVar.g();
        if (iG7 == 0) {
            i14 = iG7;
            i15 = iG;
            iG2 = eVar.g() + 4;
        } else {
            if (iG7 == 1) {
                boolean zE5 = eVar.e();
                eVar.h();
                eVar.h();
                i14 = iG7;
                long jG = eVar.g();
                i15 = iG;
                for (int i28 = 0; i28 < jG; i28++) {
                    eVar.g();
                }
                z4 = zE5;
                iG2 = 0;
                eVar.g();
                eVar.k();
                int iG8 = eVar.g() + 1;
                int iG9 = eVar.g() + 1;
                zE = eVar.e();
                int i29 = 2 - (zE ? 1 : 0);
                int i30 = iG9 * i29;
                if (!zE) {
                    eVar.k();
                }
                eVar.k();
                int i31 = iG8 * 16;
                int i32 = i30 * 16;
                if (!eVar.e()) {
                    int iG10 = eVar.g();
                    int iG11 = eVar.g();
                    int iG12 = eVar.g();
                    int iG13 = eVar.g();
                    if (i15 == 0) {
                        i22 = 1;
                    } else {
                        int i33 = i15;
                        if (i33 == 3) {
                            i21 = 1;
                            i22 = 1;
                        } else {
                            i21 = 1;
                            i22 = 2;
                        }
                        i29 *= i33 == i21 ? 2 : 1;
                    }
                    i31 -= (iG10 + iG11) * i22;
                    i32 -= (iG12 + iG13) * i29;
                }
                int i34 = ((iF != 44 || iF == 86 || iF == 100 || iF == 110 || iF == 122 || iF == 244) && (iF2 & 16) != 0) ? 0 : 16;
                int iG14 = -1;
                float f11 = 1.0f;
                if (eVar.e()) {
                    i16 = i34;
                    i17 = -1;
                    f10 = 1.0f;
                    i18 = -1;
                    i19 = -1;
                } else {
                    if (eVar.e()) {
                        int iF4 = eVar.f(8);
                        if (iF4 == 255) {
                            int iF5 = eVar.f(16);
                            int iF6 = eVar.f(16);
                            if (iF5 != 0 && iF6 != 0) {
                                f11 = iF5 / iF6;
                            }
                        } else if (iF4 < 17) {
                            f11 = f16387b[iF4];
                        } else {
                            org.bouncycastle.jcajce.provider.digest.a.o(iF4, "Unexpected aspect_ratio_idc value: ");
                        }
                    }
                    if (eVar.e()) {
                        eVar.k();
                    }
                    if (eVar.e()) {
                        eVar.l(3);
                        i20 = eVar.e() ? 1 : 2;
                        if (eVar.e()) {
                            int iF7 = eVar.f(8);
                            int iF8 = eVar.f(8);
                            eVar.l(8);
                            iG14 = r1.g.g(iF7);
                            iH = r1.g.h(iF8);
                        }
                        if (eVar.e()) {
                            eVar.g();
                            eVar.g();
                        }
                        int i35 = i20;
                        if (eVar.e()) {
                            eVar.l(65);
                        }
                        zE2 = eVar.e();
                        if (zE2) {
                            n(eVar);
                        }
                        zE3 = eVar.e();
                        if (zE3) {
                            n(eVar);
                        }
                        if (!zE2 || zE3) {
                            eVar.k();
                        }
                        eVar.k();
                        if (eVar.e()) {
                            i17 = i35;
                            i19 = iH;
                            i18 = iG14;
                            i16 = i34;
                            f10 = f11;
                        } else {
                            eVar.k();
                            eVar.g();
                            eVar.g();
                            eVar.g();
                            eVar.g();
                            int iG15 = eVar.g();
                            eVar.g();
                            i16 = iG15;
                            i19 = iH;
                            i18 = iG14;
                            f10 = f11;
                            i17 = i35;
                        }
                    } else {
                        i20 = -1;
                    }
                    iH = -1;
                    if (eVar.e()) {
                    }
                    int i352 = i20;
                    if (eVar.e()) {
                    }
                    zE2 = eVar.e();
                    if (zE2) {
                    }
                    zE3 = eVar.e();
                    if (zE3) {
                    }
                    if (!zE2) {
                        eVar.k();
                        eVar.k();
                        if (eVar.e()) {
                        }
                    }
                }
                return new n(iF, iF2, iF3, iG3, i31, i32, f10, i12, i13, z, zE, iG6, i14, iG2, z4, i18, i17, i19, i16);
            }
            i14 = iG7;
            i15 = iG;
            iG2 = 0;
        }
        z4 = false;
        eVar.g();
        eVar.k();
        int iG82 = eVar.g() + 1;
        int iG92 = eVar.g() + 1;
        zE = eVar.e();
        int i292 = 2 - (zE ? 1 : 0);
        int i302 = iG92 * i292;
        if (!zE) {
        }
        eVar.k();
        int i312 = iG82 * 16;
        int i322 = i302 * 16;
        if (!eVar.e()) {
        }
        if (iF != 44) {
        }
        int iG142 = -1;
        float f112 = 1.0f;
        if (eVar.e()) {
        }
        return new n(iF, iF2, iF3, iG3, i312, i322, f10, i12, i13, z, zE, iG6, i14, iG2, z4, i18, i17, i19, i16);
    }

    public static void n(t3.e eVar) {
        int iG = eVar.g() + 1;
        eVar.l(8);
        for (int i10 = 0; i10 < iG; i10++) {
            eVar.g();
            eVar.g();
            eVar.k();
        }
        eVar.l(20);
    }

    public static ArrayList o(ByteBuffer byteBuffer) {
        int iRemaining;
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        ArrayList arrayList = new ArrayList();
        while (byteBufferAsReadOnlyBuffer.hasRemaining()) {
            try {
                byte b10 = byteBufferAsReadOnlyBuffer.get();
                int i10 = (b10 >> 3) & 15;
                if (((b10 >> 2) & 1) != 0) {
                    byteBufferAsReadOnlyBuffer.get();
                }
                if (((b10 >> 1) & 1) != 0) {
                    iRemaining = 0;
                    for (int i11 = 0; i11 < 8; i11++) {
                        byte b11 = byteBufferAsReadOnlyBuffer.get();
                        iRemaining |= (b11 & Byte.MAX_VALUE) << (i11 * 7);
                        if ((b11 & 128) == 0) {
                            break;
                        }
                    }
                } else {
                    iRemaining = byteBufferAsReadOnlyBuffer.remaining();
                }
                if (byteBufferAsReadOnlyBuffer.position() + iRemaining > byteBufferAsReadOnlyBuffer.limit()) {
                    break;
                }
                ByteBuffer byteBufferDuplicate = byteBufferAsReadOnlyBuffer.duplicate();
                byteBufferDuplicate.limit(byteBufferAsReadOnlyBuffer.position() + iRemaining);
                arrayList.add(new q(byteBufferDuplicate, i10));
                byteBufferAsReadOnlyBuffer.position(byteBufferAsReadOnlyBuffer.position() + iRemaining);
            } catch (BufferUnderflowException unused) {
            }
        }
        return arrayList;
    }

    public static int p(int i10, byte[] bArr) {
        int i11;
        synchronized (f16388c) {
            int i12 = 0;
            int i13 = 0;
            while (i12 < i10) {
                while (true) {
                    if (i12 >= i10 - 2) {
                        i12 = i10;
                        break;
                    }
                    try {
                        if (bArr[i12] == 0 && bArr[i12 + 1] == 0 && bArr[i12 + 2] == 3) {
                            break;
                        }
                        i12++;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (i12 < i10) {
                    int[] iArr = f16389d;
                    if (iArr.length <= i13) {
                        f16389d = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    f16389d[i13] = i12;
                    i12 += 3;
                    i13++;
                }
            }
            i11 = i10 - i13;
            int i14 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < i13; i16++) {
                int i17 = f16389d[i16] - i15;
                System.arraycopy(bArr, i15, bArr, i14, i17);
                int i18 = i14 + i17;
                int i19 = i18 + 1;
                bArr[i18] = 0;
                i14 = i18 + 2;
                bArr[i19] = 0;
                i15 += i17 + 3;
            }
            System.arraycopy(bArr, i15, bArr, i14, i11 - i14);
        }
        return i11;
    }
}
