package n8;

import a0.h;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final int[][] f11316a = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};

    /* renamed from: b, reason: collision with root package name */
    public static final int[][] f11317b = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};

    /* renamed from: c, reason: collision with root package name */
    public static final int[][] f11318c = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, CarSettingID.Recv.GSM_DRIVE_MODE}, new int[]{6, 28, 54, 80, 106, 132, CarSettingID.Recv.BCS_TCS_OFF}, new int[]{6, 32, 58, 84, 110, 136, CarSettingID.Recv.DRIVER_MODE_MUSIC_MODE}, new int[]{6, 26, 54, 82, 110, 138, CarSettingID.Recv.PEPS_POWER_OFF_ENABLE}, new int[]{6, 30, 58, 86, 114, 142, CarSettingID.Recv.BCM_HEAD_LIGHT_DELAY_CFG_ST}};

    /* renamed from: d, reason: collision with root package name */
    public static final int[][] f11319d = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    public static int a(h hVar, boolean z) {
        int i10 = hVar.f28b;
        int i11 = hVar.f29c;
        int i12 = z ? i11 : i10;
        if (!z) {
            i10 = i11;
        }
        int i13 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            byte b10 = -1;
            int i15 = 0;
            for (int i16 = 0; i16 < i10; i16++) {
                byte[][] bArr = (byte[][]) hVar.f30d;
                byte b11 = z ? bArr[i14][i16] : bArr[i16][i14];
                if (b11 == b10) {
                    i15++;
                } else {
                    if (i15 >= 5) {
                        i13 += i15 - 2;
                    }
                    b10 = b11;
                    i15 = 1;
                }
            }
            if (i15 >= 5) {
                i13 = (i15 - 2) + i13;
            }
        }
        return i13;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x025b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b(j8.a aVar, int i10, m8.b bVar, int i11, h hVar) throws i8.b {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int[] iArr;
        byte[][] bArr = (byte[][]) hVar.f30d;
        for (byte[] bArr2 : bArr) {
            Arrays.fill(bArr2, (byte) -1);
        }
        int length = f11316a[0].length;
        e(0, 0, hVar);
        int i20 = hVar.f28b;
        int i21 = i20 - length;
        e(i21, 0, hVar);
        e(0, i21, hVar);
        d(0, 7, hVar);
        int i22 = i20 - 8;
        d(i22, 7, hVar);
        d(0, i22, hVar);
        f(7, 0, hVar);
        int i23 = hVar.f29c;
        int i24 = i23 - 8;
        f(i24, 0, hVar);
        int i25 = i23 - 7;
        f(7, i25, hVar);
        if (hVar.h(8, i24) == 0) {
            throw new i8.b();
        }
        hVar.n(8, i24, 1);
        int i26 = bVar.f10999a;
        if (i26 >= 2) {
            int[] iArr2 = f11318c[i26 - 1];
            int length2 = iArr2.length;
            int i27 = 0;
            while (i27 < length2) {
                int i28 = iArr2[i27];
                if (i28 >= 0) {
                    int length3 = iArr2.length;
                    int i29 = 0;
                    while (i29 < length3) {
                        int i30 = length2;
                        int i31 = iArr2[i29];
                        if (i31 < 0 || !g(hVar.h(i31, i28))) {
                            i19 = i28;
                            iArr = iArr2;
                        } else {
                            int i32 = i31 - 2;
                            int i33 = i28 - 2;
                            i19 = i28;
                            iArr = iArr2;
                            int i34 = 5;
                            int i35 = 0;
                            while (i35 < i34) {
                                int[] iArr3 = f11317b[i35];
                                int i36 = length3;
                                int i37 = 0;
                                while (i37 < i34) {
                                    hVar.n(i32 + i37, i33 + i35, iArr3[i37]);
                                    i37++;
                                    i34 = 5;
                                    i32 = i32;
                                }
                                i35++;
                                i34 = 5;
                                length3 = i36;
                            }
                        }
                        i29++;
                        length2 = i30;
                        i28 = i19;
                        iArr2 = iArr;
                        length3 = length3;
                    }
                }
                i27++;
                length2 = length2;
                iArr2 = iArr2;
            }
        }
        int i38 = 8;
        while (true) {
            i12 = 6;
            if (i38 >= i22) {
                break;
            }
            int i39 = i38 + 1;
            int i40 = i39 % 2;
            if (g(hVar.h(i38, 6))) {
                hVar.n(i38, 6, i40);
            }
            if (g(hVar.h(6, i38))) {
                hVar.n(6, i38, i40);
            }
            i38 = i39;
        }
        j8.a aVar2 = new j8.a();
        if (i11 < 0 || i11 >= 8) {
            throw new i8.b("Invalid mask pattern");
        }
        int i41 = 1;
        if (i10 != 1) {
            i41 = 2;
            if (i10 == 2) {
                i41 = 0;
            } else if (i10 == 3) {
                i41 = 3;
            } else if (i10 != 4) {
                throw null;
            }
        }
        int i42 = (i41 << 3) | i11;
        aVar2.b(i42, 5);
        aVar2.b(c(i42, 1335), 10);
        j8.a aVar3 = new j8.a();
        aVar3.b(21522, 15);
        if (aVar2.f9794b != aVar3.f9794b) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i43 = 0;
        while (true) {
            int[] iArr4 = aVar2.f9793a;
            if (i43 >= iArr4.length) {
                break;
            }
            iArr4[i43] = iArr4[i43] ^ aVar3.f9793a[i43];
            i43++;
        }
        if (aVar2.f9794b != 15) {
            throw new i8.b("should not happen but we got: " + aVar2.f9794b);
        }
        int i44 = 0;
        while (true) {
            int i45 = aVar2.f9794b;
            if (i44 >= i45) {
                break;
            }
            boolean zD = aVar2.d((i45 - 1) - i44);
            int[] iArr5 = f11319d[i44];
            int i46 = iArr5[0];
            byte[] bArr3 = bArr[iArr5[1]];
            byte b10 = zD ? (byte) 1 : (byte) 0;
            bArr3[i46] = b10;
            if (i44 < 8) {
                i18 = (i20 - i44) - 1;
                i17 = 8;
            } else {
                i17 = (i44 - 8) + i25;
                i18 = 8;
            }
            bArr[i17][i18] = b10;
            i44++;
        }
        if (i26 >= 7) {
            j8.a aVar4 = new j8.a();
            aVar4.b(i26, 6);
            aVar4.b(c(i26, 7973), 12);
            if (aVar4.f9794b != 18) {
                throw new i8.b("should not happen but we got: " + aVar4.f9794b);
            }
            int i47 = 17;
            for (int i48 = 0; i48 < 6; i48++) {
                for (int i49 = 0; i49 < 3; i49++) {
                    boolean zD2 = aVar4.d(i47);
                    i47--;
                    int i50 = (i23 - 11) + i49;
                    byte[] bArr4 = bArr[i50];
                    byte b11 = zD2 ? (byte) 1 : (byte) 0;
                    bArr4[i48] = b11;
                    bArr[i48][i50] = b11;
                }
            }
        }
        int i51 = i20 - 1;
        int i52 = i23 - 1;
        int i53 = 0;
        int i54 = -1;
        while (i51 > 0) {
            if (i51 == i12) {
                i51--;
            }
            while (i52 >= 0 && i52 < i23) {
                for (int i55 = 0; i55 < 2; i55++) {
                    int i56 = i51 - i55;
                    if (g(hVar.h(i56, i52))) {
                        if (i53 < aVar.f9794b) {
                            boolean zD3 = aVar.d(i53);
                            i53++;
                            i13 = -1;
                            i14 = zD3;
                        } else {
                            i13 = -1;
                            i14 = 0;
                        }
                        if (i11 != i13) {
                            switch (i11) {
                                case 0:
                                    i15 = i52 + i56;
                                    i16 = i15 & 1;
                                    if (i16 != 0) {
                                        i14 = ~i14;
                                        break;
                                    }
                                    break;
                                case 1:
                                    i16 = i52 & 1;
                                    if (i16 != 0) {
                                    }
                                    break;
                                case 2:
                                    i16 = i56 % 3;
                                    if (i16 != 0) {
                                    }
                                    break;
                                case 3:
                                    i16 = (i52 + i56) % 3;
                                    if (i16 != 0) {
                                    }
                                    break;
                                case 4:
                                    i16 = ((i56 / 3) + (i52 / 2)) & 1;
                                    if (i16 != 0) {
                                    }
                                    break;
                                case 5:
                                    int i57 = i52 * i56;
                                    i16 = (i57 % 3) + (i57 & 1);
                                    if (i16 != 0) {
                                    }
                                    break;
                                case 6:
                                    int i58 = i52 * i56;
                                    i16 = ((i58 % 3) + (i58 & 1)) & 1;
                                    if (i16 != 0) {
                                    }
                                    break;
                                case 7:
                                    i15 = ((i52 * i56) % 3) + ((i52 + i56) & 1);
                                    i16 = i15 & 1;
                                    if (i16 != 0) {
                                    }
                                    break;
                                default:
                                    throw new IllegalArgumentException(da.b.a(i11, "Invalid mask pattern: "));
                            }
                        }
                        bArr[i52][i56] = (byte) i14;
                    }
                }
                i52 += i54;
            }
            i54 = -i54;
            i52 += i54;
            i51 -= 2;
            i12 = 6;
        }
        if (i53 == aVar.f9794b) {
            return;
        }
        throw new i8.b("Not all bits consumed: " + i53 + '/' + aVar.f9794b);
    }

    public static int c(int i10, int i11) {
        if (i11 == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i11);
        int i12 = 32 - iNumberOfLeadingZeros;
        int iNumberOfLeadingZeros2 = i10 << (31 - iNumberOfLeadingZeros);
        while (32 - Integer.numberOfLeadingZeros(iNumberOfLeadingZeros2) >= i12) {
            iNumberOfLeadingZeros2 ^= i11 << ((32 - Integer.numberOfLeadingZeros(iNumberOfLeadingZeros2)) - i12);
        }
        return iNumberOfLeadingZeros2;
    }

    public static void d(int i10, int i11, h hVar) throws i8.b {
        for (int i12 = 0; i12 < 8; i12++) {
            int i13 = i10 + i12;
            if (!g(hVar.h(i13, i11))) {
                throw new i8.b();
            }
            hVar.n(i13, i11, 0);
        }
    }

    public static void e(int i10, int i11, h hVar) {
        for (int i12 = 0; i12 < 7; i12++) {
            int[] iArr = f11316a[i12];
            for (int i13 = 0; i13 < 7; i13++) {
                hVar.n(i10 + i13, i11 + i12, iArr[i13]);
            }
        }
    }

    public static void f(int i10, int i11, h hVar) throws i8.b {
        for (int i12 = 0; i12 < 7; i12++) {
            int i13 = i11 + i12;
            if (!g(hVar.h(i10, i13))) {
                throw new i8.b();
            }
            hVar.n(i10, i13, 0);
        }
    }

    public static boolean g(int i10) {
        return i10 == -1;
    }
}
