package ng;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import ta.q;

/* loaded from: classes.dex */
public final class d extends FilterOutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f11411a;

    /* renamed from: b, reason: collision with root package name */
    public int f11412b;

    /* renamed from: c, reason: collision with root package name */
    public int f11413c;

    /* renamed from: d, reason: collision with root package name */
    public int f11414d;

    /* renamed from: e, reason: collision with root package name */
    public final f f11415e;

    /* renamed from: f, reason: collision with root package name */
    public int f11416f;

    /* renamed from: g, reason: collision with root package name */
    public int f11417g;

    /* renamed from: h, reason: collision with root package name */
    public int f11418h;

    /* renamed from: i, reason: collision with root package name */
    public int f11419i;

    /* renamed from: j, reason: collision with root package name */
    public int f11420j;

    /* renamed from: k, reason: collision with root package name */
    public final int f11421k;
    public c l;

    /* renamed from: m, reason: collision with root package name */
    public e f11422m;

    public d(OutputStream outputStream, int i10) throws IOException {
        super(outputStream);
        this.f11411a = new AtomicBoolean();
        f fVar = new f();
        this.f11415e = fVar;
        this.f11418h = -1;
        if (i10 < 1) {
            throw new IllegalArgumentException(g.b.i("blockSize(", i10, ") < 1"));
        }
        if (i10 > 9) {
            throw new IllegalArgumentException(g.b.i("blockSize(", i10, ") > 9"));
        }
        this.f11421k = (100000 * i10) - 20;
        A(66);
        A(90);
        this.l = new c(i10);
        this.f11422m = new e(this.l);
        A(104);
        A(i10 + 48);
        this.f11420j = 0;
        fVar.f11437a = -1;
        this.f11412b = -1;
        boolean[] zArr = this.l.f11393a;
        int i11 = 256;
        while (true) {
            i11--;
            if (i11 < 0) {
                return;
            } else {
                zArr[i11] = false;
            }
        }
    }

    public final void A(int i10) throws IOException {
        J(8, i10);
    }

    public final void J(int i10, int i11) throws IOException {
        OutputStream outputStream = ((FilterOutputStream) this).out;
        int i12 = this.f11414d;
        int i13 = this.f11413c;
        while (i12 >= 8) {
            outputStream.write(i13 >> 24);
            i13 <<= 8;
            i12 -= 8;
        }
        this.f11413c = (i11 << ((32 - i12) - i10)) | i13;
        this.f11414d = i12 + i10;
    }

    public final void K() throws IOException {
        if (this.f11411a.compareAndSet(false, true)) {
            super.close();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:170:0x03be, code lost:
    
        r7 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x03c0, code lost:
    
        r7 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x041b, code lost:
    
        r3 = r45;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x01e1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0217 A[EDGE_INSN: B:312:0x0217->B:91:0x0217 BREAK  A[LOOP:13: B:73:0x01b9->B:313:0x01b9], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0211 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0221  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void L() throws IOException {
        char[] cArr;
        int[] iArr;
        int[] iArr2;
        boolean[] zArr;
        int i10;
        int i11;
        c cVar;
        int i12;
        c cVar2;
        int[] iArr3;
        int i13;
        boolean[] zArr2;
        int i14;
        int i15;
        int i16;
        byte[] bArr;
        int[] iArr4;
        int i17;
        char[] cArr2;
        int i18;
        int i19;
        int[] iArr5;
        int[] iArr6;
        int[] iArr7;
        int[] iArr8;
        int[] iArr9;
        int i20;
        int[] iArr10;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35 = this.f11415e.f11437a ^ (-1);
        int i36 = this.f11420j;
        this.f11420j = ((i36 >>> 31) | (i36 << 1)) ^ i35;
        int i37 = this.f11412b;
        if (i37 == -1) {
            return;
        }
        e eVar = this.f11422m;
        c cVar3 = this.l;
        int i38 = i37 * 30;
        eVar.f11426b = i38;
        eVar.f11425a = 0;
        eVar.f11427c = true;
        int i39 = i37 + 1;
        if (i39 < 10000) {
            eVar.a(cVar3, i37);
            i10 = i35;
            i12 = i37;
            cVar2 = cVar3;
        } else {
            byte[] bArr2 = cVar3.f11408q;
            int[] iArr11 = eVar.f11434j;
            Arrays.fill(iArr11, 0);
            for (int i40 = 0; i40 < 20; i40++) {
                bArr2[i37 + i40 + 2] = bArr2[(i40 % i39) + 1];
            }
            int i41 = i37 + 21;
            while (true) {
                i41--;
                cArr = eVar.f11435k;
                if (i41 < 0) {
                    break;
                } else {
                    cArr[i41] = 0;
                }
            }
            byte b10 = bArr2[i39];
            bArr2[0] = b10;
            int i42 = 255;
            int i43 = b10 & 255;
            int i44 = 0;
            while (i44 <= i37) {
                i44++;
                int i45 = bArr2[i44] & 255;
                int i46 = (i43 << 8) + i45;
                iArr11[i46] = iArr11[i46] + 1;
                i43 = i45;
            }
            for (int i47 = 1; i47 <= 65536; i47++) {
                iArr11[i47] = iArr11[i47] + iArr11[i47 - 1];
            }
            int i48 = bArr2[1] & 255;
            int i49 = 0;
            while (true) {
                iArr = cVar3.r;
                if (i49 >= i37) {
                    break;
                }
                int i50 = bArr2[i49 + 2] & 255;
                int i51 = (i48 << 8) + i50;
                int i52 = iArr11[i51] - 1;
                iArr11[i51] = i52;
                iArr[i52] = i49;
                i49++;
                i48 = i50;
            }
            int i53 = ((bArr2[i39] & 255) << 8) + (bArr2[1] & 255);
            int i54 = iArr11[i53] - 1;
            iArr11[i53] = i54;
            iArr[i54] = i37;
            int i55 = -1;
            int i56 = 256;
            while (true) {
                i56 += i55;
                iArr2 = eVar.f11431g;
                zArr = eVar.f11433i;
                if (i56 < 0) {
                    break;
                }
                zArr[i56] = false;
                iArr2[i56] = i56;
                i55 = -1;
            }
            int i57 = 364;
            for (int i58 = 1; i57 != i58; i58 = 1) {
                i57 /= 3;
                int i59 = i57;
                while (i59 <= i42) {
                    int i60 = iArr2[i59];
                    int i61 = iArr11[(i60 + 1) << 8] - iArr11[i60 << 8];
                    int i62 = i35;
                    int i63 = i57 - 1;
                    int i64 = iArr2[i59 - i57];
                    int i65 = i59;
                    while (true) {
                        if (iArr11[(i64 + 1) << 8] - iArr11[i64 << 8] > i61) {
                            iArr2[i65] = i64;
                            int i66 = i65 - i57;
                            if (i66 <= i63) {
                                i65 = i66;
                                break;
                            } else {
                                i64 = iArr2[i66 - i57];
                                i65 = i66;
                            }
                        }
                    }
                    iArr2[i65] = i60;
                    i59++;
                    i42 = 255;
                    i35 = i62;
                }
            }
            i10 = i35;
            int i67 = 0;
            int i68 = 255;
            loop10: while (true) {
                if (i67 > i68) {
                    i11 = i37;
                    cVar = cVar3;
                    break;
                }
                int i69 = iArr2[i67];
                int i70 = 0;
                while (i70 <= i68) {
                    int i71 = (i69 << 8) + i70;
                    int i72 = iArr11[i71];
                    int[] iArr12 = iArr2;
                    if ((i72 & PKIFailureInfo.badSenderNonce) != 2097152) {
                        int i73 = i72 & (-2097153);
                        int i74 = (iArr11[i71 + 1] & (-2097153)) - 1;
                        if (i74 > i73) {
                            i11 = i37;
                            int[] iArr13 = eVar.f11428d;
                            iArr13[0] = i73;
                            int[] iArr14 = eVar.f11429e;
                            iArr14[0] = i74;
                            int[] iArr15 = eVar.f11430f;
                            iArr15[0] = 2;
                            int i75 = 1;
                            while (true) {
                                int i76 = i75 - 1;
                                if (i76 < 0) {
                                    i13 = i67;
                                    i18 = i71;
                                    zArr2 = zArr;
                                    cVar = cVar3;
                                    i19 = i38;
                                    i15 = i69;
                                    i16 = i39;
                                    bArr = bArr2;
                                    iArr4 = iArr11;
                                    i17 = i70;
                                    cArr2 = cArr;
                                    break;
                                }
                                int i77 = iArr13[i76];
                                i13 = i67;
                                int i78 = iArr14[i76];
                                zArr2 = zArr;
                                int i79 = iArr15[i76];
                                bArr = bArr2;
                                int i80 = i78 - i77;
                                i15 = i69;
                                byte[] bArr3 = cVar3.f11408q;
                                cVar = cVar3;
                                if (i80 < 20 || i79 > 10) {
                                    i18 = i71;
                                    i19 = i38;
                                    int i81 = i39;
                                    iArr4 = iArr11;
                                    i17 = i70;
                                    cArr2 = cArr;
                                    int i82 = i80 + 1;
                                    if (i82 >= 2) {
                                        int i83 = 0;
                                        while (true) {
                                            iArr5 = e.f11424n;
                                            if (iArr5[i83] >= i82) {
                                                break;
                                            } else {
                                                i83++;
                                            }
                                        }
                                        boolean z = eVar.f11427c;
                                        int i84 = eVar.f11426b;
                                        int i85 = eVar.f11425a;
                                        while (true) {
                                            i83--;
                                            if (i83 < 0) {
                                                iArr6 = iArr13;
                                                iArr7 = iArr14;
                                                i16 = i81;
                                                break;
                                            }
                                            int i86 = iArr5[i83];
                                            int i87 = i77 + i86;
                                            int i88 = i87 - 1;
                                            int i89 = i87;
                                            while (i89 <= i78) {
                                                int i90 = 3;
                                                while (i89 <= i78) {
                                                    i90--;
                                                    if (i90 < 0) {
                                                        break;
                                                    }
                                                    int i91 = iArr[i89];
                                                    int i92 = i91 + i79;
                                                    int i93 = i89;
                                                    boolean z4 = false;
                                                    int i94 = 0;
                                                    while (true) {
                                                        if (z4) {
                                                            iArr[i93] = i94;
                                                            iArr8 = iArr13;
                                                            i24 = i93 - i86;
                                                            if (i24 <= i88) {
                                                                i22 = i88;
                                                                i21 = i79;
                                                                i20 = i83;
                                                                iArr9 = iArr5;
                                                                iArr10 = iArr14;
                                                                i23 = i81;
                                                                break;
                                                            }
                                                            i93 = i24;
                                                        } else {
                                                            iArr8 = iArr13;
                                                            z4 = true;
                                                        }
                                                        int i95 = iArr[i93 - i86];
                                                        int i96 = i95 + i79;
                                                        i22 = i88;
                                                        byte b11 = bArr3[i96 + 1];
                                                        i21 = i79;
                                                        byte b12 = bArr3[i92 + 1];
                                                        if (b11 != b12) {
                                                            i25 = i95;
                                                            i20 = i83;
                                                            iArr9 = iArr5;
                                                            iArr10 = iArr14;
                                                            i23 = i81;
                                                            if ((b11 & 255) <= (b12 & 255)) {
                                                                break;
                                                            }
                                                            i81 = i23;
                                                            iArr13 = iArr8;
                                                            i94 = i25;
                                                            i88 = i22;
                                                            i79 = i21;
                                                            iArr14 = iArr10;
                                                            i83 = i20;
                                                            iArr5 = iArr9;
                                                        } else {
                                                            byte b13 = bArr3[i96 + 2];
                                                            byte b14 = bArr3[i92 + 2];
                                                            if (b13 != b14) {
                                                                i25 = i95;
                                                                i20 = i83;
                                                                iArr9 = iArr5;
                                                                iArr10 = iArr14;
                                                                i23 = i81;
                                                                if ((b13 & 255) <= (b14 & 255)) {
                                                                    break;
                                                                }
                                                                i81 = i23;
                                                                iArr13 = iArr8;
                                                                i94 = i25;
                                                                i88 = i22;
                                                                i79 = i21;
                                                                iArr14 = iArr10;
                                                                i83 = i20;
                                                                iArr5 = iArr9;
                                                            } else {
                                                                byte b15 = bArr3[i96 + 3];
                                                                byte b16 = bArr3[i92 + 3];
                                                                if (b15 != b16) {
                                                                    i25 = i95;
                                                                    i20 = i83;
                                                                    iArr9 = iArr5;
                                                                    iArr10 = iArr14;
                                                                    i23 = i81;
                                                                    if ((b15 & 255) <= (b16 & 255)) {
                                                                        break;
                                                                    }
                                                                    i81 = i23;
                                                                    iArr13 = iArr8;
                                                                    i94 = i25;
                                                                    i88 = i22;
                                                                    i79 = i21;
                                                                    iArr14 = iArr10;
                                                                    i83 = i20;
                                                                    iArr5 = iArr9;
                                                                } else {
                                                                    byte b17 = bArr3[i96 + 4];
                                                                    byte b18 = bArr3[i92 + 4];
                                                                    if (b17 != b18) {
                                                                        i25 = i95;
                                                                        i20 = i83;
                                                                        iArr9 = iArr5;
                                                                        iArr10 = iArr14;
                                                                        i23 = i81;
                                                                        if ((b17 & 255) <= (b18 & 255)) {
                                                                            break;
                                                                        }
                                                                        i81 = i23;
                                                                        iArr13 = iArr8;
                                                                        i94 = i25;
                                                                        i88 = i22;
                                                                        i79 = i21;
                                                                        iArr14 = iArr10;
                                                                        i83 = i20;
                                                                        iArr5 = iArr9;
                                                                    } else {
                                                                        byte b19 = bArr3[i96 + 5];
                                                                        byte b20 = bArr3[i92 + 5];
                                                                        if (b19 != b20) {
                                                                            i25 = i95;
                                                                            i20 = i83;
                                                                            iArr9 = iArr5;
                                                                            iArr10 = iArr14;
                                                                            i23 = i81;
                                                                            if ((b19 & 255) <= (b20 & 255)) {
                                                                                break;
                                                                            }
                                                                            i81 = i23;
                                                                            iArr13 = iArr8;
                                                                            i94 = i25;
                                                                            i88 = i22;
                                                                            i79 = i21;
                                                                            iArr14 = iArr10;
                                                                            i83 = i20;
                                                                            iArr5 = iArr9;
                                                                        } else {
                                                                            int i97 = i96 + 6;
                                                                            byte b21 = bArr3[i97];
                                                                            int i98 = i92 + 6;
                                                                            i25 = i95;
                                                                            byte b22 = bArr3[i98];
                                                                            if (b21 != b22) {
                                                                                i20 = i83;
                                                                                iArr9 = iArr5;
                                                                                iArr10 = iArr14;
                                                                                i23 = i81;
                                                                                if ((b21 & 255) <= (b22 & 255)) {
                                                                                    break;
                                                                                }
                                                                                i81 = i23;
                                                                                iArr13 = iArr8;
                                                                                i94 = i25;
                                                                                i88 = i22;
                                                                                i79 = i21;
                                                                                iArr14 = iArr10;
                                                                                i83 = i20;
                                                                                iArr5 = iArr9;
                                                                            } else {
                                                                                int i99 = i11;
                                                                                while (true) {
                                                                                    if (i99 <= 0) {
                                                                                        i20 = i83;
                                                                                        iArr9 = iArr5;
                                                                                        iArr10 = iArr14;
                                                                                        i23 = i81;
                                                                                        break;
                                                                                    }
                                                                                    int i100 = i99 - 4;
                                                                                    int i101 = i97 + 1;
                                                                                    byte b23 = bArr3[i101];
                                                                                    int i102 = i98 + 1;
                                                                                    i20 = i83;
                                                                                    byte b24 = bArr3[i102];
                                                                                    if (b23 != b24) {
                                                                                        iArr9 = iArr5;
                                                                                        iArr10 = iArr14;
                                                                                        i23 = i81;
                                                                                        if ((b23 & 255) <= (b24 & 255)) {
                                                                                            break;
                                                                                        }
                                                                                    } else {
                                                                                        char c7 = cArr2[i97];
                                                                                        char c10 = cArr2[i98];
                                                                                        if (c7 != c10) {
                                                                                            iArr9 = iArr5;
                                                                                            iArr10 = iArr14;
                                                                                            i23 = i81;
                                                                                            if (c7 <= c10) {
                                                                                                break;
                                                                                            }
                                                                                        } else {
                                                                                            int i103 = i97 + 2;
                                                                                            byte b25 = bArr3[i103];
                                                                                            int i104 = i98 + 2;
                                                                                            iArr9 = iArr5;
                                                                                            byte b26 = bArr3[i104];
                                                                                            if (b25 != b26) {
                                                                                                iArr10 = iArr14;
                                                                                                i23 = i81;
                                                                                                if ((b25 & 255) <= (b26 & 255)) {
                                                                                                    break;
                                                                                                }
                                                                                            } else {
                                                                                                char c11 = cArr2[i101];
                                                                                                char c12 = cArr2[i102];
                                                                                                if (c11 != c12) {
                                                                                                    iArr10 = iArr14;
                                                                                                    i26 = i81;
                                                                                                    if (c11 <= c12) {
                                                                                                        break;
                                                                                                    }
                                                                                                } else {
                                                                                                    int i105 = i97 + 3;
                                                                                                    byte b27 = bArr3[i105];
                                                                                                    int i106 = i98 + 3;
                                                                                                    iArr10 = iArr14;
                                                                                                    byte b28 = bArr3[i106];
                                                                                                    if (b27 != b28) {
                                                                                                        i26 = i81;
                                                                                                        if ((b27 & 255) <= (b28 & 255)) {
                                                                                                            break;
                                                                                                        }
                                                                                                    } else {
                                                                                                        char c13 = cArr2[i103];
                                                                                                        char c14 = cArr2[i104];
                                                                                                        if (c13 != c14) {
                                                                                                            i26 = i81;
                                                                                                            if (c13 <= c14) {
                                                                                                                break;
                                                                                                            }
                                                                                                        } else {
                                                                                                            int i107 = i97 + 4;
                                                                                                            byte b29 = bArr3[i107];
                                                                                                            i98 += 4;
                                                                                                            byte b30 = bArr3[i98];
                                                                                                            if (b29 != b30) {
                                                                                                                i26 = i81;
                                                                                                                if ((b29 & 255) <= (b30 & 255)) {
                                                                                                                    break;
                                                                                                                }
                                                                                                            } else {
                                                                                                                char c15 = cArr2[i105];
                                                                                                                char c16 = cArr2[i106];
                                                                                                                if (c15 != c16) {
                                                                                                                    i26 = i81;
                                                                                                                    if (c15 <= c16) {
                                                                                                                        break;
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    int i108 = i81;
                                                                                                                    if (i107 >= i108) {
                                                                                                                        i107 -= i108;
                                                                                                                    }
                                                                                                                    i97 = i107;
                                                                                                                    if (i98 >= i108) {
                                                                                                                        i98 -= i108;
                                                                                                                    }
                                                                                                                    i85++;
                                                                                                                    i81 = i108;
                                                                                                                    i99 = i100;
                                                                                                                    iArr14 = iArr10;
                                                                                                                    i83 = i20;
                                                                                                                    iArr5 = iArr9;
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                    iArr[i24] = i91;
                                                    i89++;
                                                    i81 = i23;
                                                    iArr13 = iArr8;
                                                    i88 = i22;
                                                    i79 = i21;
                                                    iArr14 = iArr10;
                                                    i83 = i20;
                                                    iArr5 = iArr9;
                                                }
                                                int i109 = i88;
                                                int i110 = i79;
                                                iArr6 = iArr13;
                                                int i111 = i83;
                                                int[] iArr16 = iArr5;
                                                iArr7 = iArr14;
                                                i16 = i81;
                                                if (z && i89 <= i78 && i85 > i84) {
                                                    break;
                                                }
                                                i81 = i16;
                                                iArr13 = iArr6;
                                                i88 = i109;
                                                i79 = i110;
                                                iArr14 = iArr7;
                                                i83 = i111;
                                                iArr5 = iArr16;
                                            }
                                        }
                                        eVar.f11425a = i85;
                                        if (z && i85 > i84) {
                                            break;
                                        }
                                        i75 = i76;
                                    } else {
                                        if (eVar.f11427c && eVar.f11425a > eVar.f11426b) {
                                            i16 = i81;
                                            break;
                                        }
                                        iArr6 = iArr13;
                                        iArr7 = iArr14;
                                        i16 = i81;
                                        i75 = i76;
                                    }
                                } else {
                                    int i112 = i79 + 1;
                                    i17 = i70;
                                    int i113 = bArr3[iArr[i77] + i112] & 255;
                                    i18 = i71;
                                    int i114 = bArr3[iArr[i78] + i112] & 255;
                                    iArr4 = iArr11;
                                    int i115 = bArr3[iArr[(i77 + i78) >>> 1] + i112] & 255;
                                    if (i113 < i114) {
                                        if (i114 >= i115) {
                                            i114 = i113 < i115 ? i115 : i113;
                                        }
                                        i27 = i78;
                                        i28 = i27;
                                        i29 = i77;
                                        i30 = i29;
                                        while (true) {
                                            if (i29 > i27) {
                                                int i116 = iArr[i29];
                                                i31 = i27;
                                                i19 = i38;
                                                int i117 = (bArr3[i116 + i112] & 255) - i114;
                                                if (i117 == 0) {
                                                    iArr[i29] = iArr[i30];
                                                    iArr[i30] = i116;
                                                    i30++;
                                                    i29++;
                                                } else if (i117 < 0) {
                                                    i29++;
                                                }
                                                i38 = i19;
                                                i27 = i31;
                                            } else {
                                                i19 = i38;
                                                i31 = i27;
                                            }
                                            i32 = i28;
                                            i33 = i31;
                                            while (true) {
                                                if (i29 <= i33) {
                                                    i34 = i39;
                                                    cArr2 = cArr;
                                                    break;
                                                }
                                                int i118 = iArr[i33];
                                                i34 = i39;
                                                cArr2 = cArr;
                                                int i119 = (bArr3[i118 + i112] & 255) - i114;
                                                if (i119 == 0) {
                                                    iArr[i33] = iArr[i32];
                                                    iArr[i32] = i118;
                                                    i32--;
                                                    i33--;
                                                } else if (i119 <= 0) {
                                                    break;
                                                } else {
                                                    i33--;
                                                }
                                                cArr = cArr2;
                                                i39 = i34;
                                            }
                                            if (i29 <= i33) {
                                                break;
                                            }
                                            int i120 = iArr[i29];
                                            iArr[i29] = iArr[i33];
                                            iArr[i33] = i120;
                                            i28 = i32;
                                            i27 = i33 - 1;
                                            i29++;
                                            cArr = cArr2;
                                            i38 = i19;
                                            i39 = i34;
                                        }
                                        if (i32 >= i30) {
                                            iArr13[i76] = i77;
                                            iArr14[i76] = i78;
                                            iArr15[i76] = i112;
                                        } else {
                                            int iMin = Math.min(i30 - i77, i29 - i30);
                                            int i121 = i29 - iMin;
                                            int i122 = iMin + i77;
                                            for (int i123 = i77; i123 < i122; i123++) {
                                                int i124 = iArr[i123];
                                                iArr[i123] = iArr[i121];
                                                iArr[i121] = i124;
                                                i121++;
                                            }
                                            int i125 = i78 - i32;
                                            int i126 = i32 - i33;
                                            int iMin2 = Math.min(i125, i126);
                                            int i127 = (i78 - iMin2) + 1;
                                            int i128 = iMin2 + i29;
                                            for (int i129 = i29; i129 < i128; i129++) {
                                                int i130 = iArr[i129];
                                                iArr[i129] = iArr[i127];
                                                iArr[i127] = i130;
                                                i127++;
                                            }
                                            int i131 = (i77 + i29) - i30;
                                            int i132 = i78 - i126;
                                            iArr13[i76] = i77;
                                            iArr14[i76] = i131 - 1;
                                            iArr15[i76] = i79;
                                            iArr13[i75] = i131;
                                            iArr14[i75] = i132;
                                            iArr15[i75] = i112;
                                            i76 = i75 + 1;
                                            iArr13[i76] = i132 + 1;
                                            iArr14[i76] = i78;
                                            iArr15[i76] = i79;
                                        }
                                        iArr6 = iArr13;
                                        iArr7 = iArr14;
                                        i75 = i76 + 1;
                                        i16 = i34;
                                    } else {
                                        if (i114 <= i115) {
                                            if (i113 > i115) {
                                            }
                                        }
                                        i27 = i78;
                                        i28 = i27;
                                        i29 = i77;
                                        i30 = i29;
                                        while (true) {
                                            if (i29 > i27) {
                                            }
                                            i32 = i28;
                                            i33 = i31;
                                            while (true) {
                                                if (i29 <= i33) {
                                                }
                                                cArr = cArr2;
                                                i39 = i34;
                                            }
                                            if (i29 <= i33) {
                                            }
                                        }
                                        if (i32 >= i30) {
                                        }
                                        iArr6 = iArr13;
                                        iArr7 = iArr14;
                                        i75 = i76 + 1;
                                        i16 = i34;
                                    }
                                }
                                i39 = i16;
                                i67 = i13;
                                zArr = zArr2;
                                bArr2 = bArr;
                                i69 = i15;
                                cVar3 = cVar;
                                i70 = i17;
                                i71 = i18;
                                iArr11 = iArr4;
                                cArr = cArr2;
                                i38 = i19;
                                iArr13 = iArr6;
                                iArr14 = iArr7;
                            }
                            i14 = i19;
                            if (eVar.f11425a > i14) {
                                break loop10;
                            }
                        } else {
                            i13 = i67;
                            i18 = i71;
                            zArr2 = zArr;
                            i11 = i37;
                            cVar = cVar3;
                            i14 = i38;
                            i15 = i69;
                            i16 = i39;
                            bArr = bArr2;
                            iArr4 = iArr11;
                            i17 = i70;
                            cArr2 = cArr;
                        }
                        iArr4[i18] = i72 | PKIFailureInfo.badSenderNonce;
                    } else {
                        i13 = i67;
                        zArr2 = zArr;
                        i11 = i37;
                        cVar = cVar3;
                        i14 = i38;
                        i15 = i69;
                        i16 = i39;
                        bArr = bArr2;
                        iArr4 = iArr11;
                        i17 = i70;
                        cArr2 = cArr;
                    }
                    i70 = i17 + 1;
                    i38 = i14;
                    i39 = i16;
                    iArr2 = iArr12;
                    i37 = i11;
                    i67 = i13;
                    zArr = zArr2;
                    bArr2 = bArr;
                    i69 = i15;
                    cVar3 = cVar;
                    iArr11 = iArr4;
                    cArr = cArr2;
                    i68 = 255;
                }
                int i133 = i67;
                boolean[] zArr3 = zArr;
                int i134 = i37;
                c cVar4 = cVar3;
                int i135 = i38;
                int[] iArr17 = iArr2;
                int i136 = i69;
                int i137 = i39;
                byte[] bArr4 = bArr2;
                int[] iArr18 = iArr11;
                char[] cArr3 = cArr;
                int i138 = 0;
                while (true) {
                    iArr3 = eVar.f11432h;
                    if (i138 > 255) {
                        break;
                    }
                    iArr3[i138] = iArr18[(i138 << 8) + i136] & (-2097153);
                    i138++;
                }
                int i139 = i136 << 8;
                int i140 = (i136 + 1) << 8;
                int i141 = iArr18[i140] & (-2097153);
                for (int i142 = iArr18[i139] & (-2097153); i142 < i141; i142++) {
                    int i143 = iArr[i142];
                    int i144 = bArr4[i143] & 255;
                    if (!zArr3[i144]) {
                        iArr[iArr3[i144]] = i143 == 0 ? i134 : i143 - 1;
                        iArr3[i144] = iArr3[i144] + 1;
                    }
                }
                int i145 = -1;
                int i146 = 256;
                while (true) {
                    i146 += i145;
                    if (i146 < 0) {
                        break;
                    }
                    int i147 = (i146 << 8) + i136;
                    iArr18[i147] = iArr18[i147] | PKIFailureInfo.badSenderNonce;
                    i145 = -1;
                }
                zArr3[i136] = true;
                i68 = 255;
                if (i133 < 255) {
                    int i148 = iArr18[i139] & (-2097153);
                    int i149 = (iArr18[i140] & (-2097153)) - i148;
                    int i150 = 0;
                    while ((i149 >> i150) > 65534) {
                        i150++;
                    }
                    for (int i151 = 0; i151 < i149; i151++) {
                        int i152 = iArr[i148 + i151];
                        char c17 = (char) (i151 >> i150);
                        cArr3[i152] = c17;
                        if (i152 < 20) {
                            cArr3[i152 + i134 + 1] = c17;
                        }
                    }
                }
                i67 = i133 + 1;
                i38 = i135;
                i39 = i137;
                iArr2 = iArr17;
                i37 = i134;
                zArr = zArr3;
                bArr2 = bArr4;
                cVar3 = cVar4;
                iArr11 = iArr18;
                cArr = cArr3;
            }
            if (!eVar.f11427c || eVar.f11425a <= eVar.f11426b) {
                i12 = i11;
                cVar2 = cVar;
            } else {
                i12 = i11;
                cVar2 = cVar;
                eVar.a(cVar2, i12);
            }
        }
        int[] iArr19 = cVar2.r;
        cVar2.f11410t = -1;
        int i153 = 0;
        while (true) {
            if (i153 > i12) {
                break;
            }
            if (iArr19[i153] == 0) {
                cVar2.f11410t = i153;
                break;
            }
            i153++;
        }
        A(49);
        A(65);
        A(89);
        A(38);
        A(83);
        A(89);
        r(i10);
        J(1, 0);
        N();
    }

    public final void M() throws IOException {
        A(23);
        A(114);
        A(69);
        A(56);
        A(80);
        A(144);
        r(this.f11420j);
        while (this.f11414d > 0) {
            ((FilterOutputStream) this).out.write(this.f11413c >> 24);
            this.f11413c <<= 8;
            this.f11414d -= 8;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:175:0x039e A[LOOP:28: B:159:0x0335->B:175:0x039e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x03a7 A[LOOP:27: B:147:0x02fb->B:176:0x03a7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0329 A[EDGE_INSN: B:346:0x0329->B:158:0x0329 BREAK  A[LOOP:27: B:147:0x02fb->B:176:0x03a7], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:348:0x035f A[EDGE_INSN: B:348:0x035f->B:170:0x035f BREAK  A[LOOP:28: B:159:0x0335->B:175:0x039e], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void N() throws IOException {
        byte[] bArr;
        byte[] bArr2;
        char[] cArr;
        boolean[] zArr;
        int[] iArr;
        c cVar;
        int[] iArr2;
        c cVar2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        byte[] bArr6;
        int[] iArr3;
        d dVar = this;
        dVar.J(24, dVar.l.f11410t);
        int i19 = dVar.f11412b;
        c cVar3 = dVar.l;
        boolean[] zArr2 = cVar3.f11393a;
        int i20 = 0;
        int i21 = 0;
        while (true) {
            bArr = cVar3.f11394b;
            if (i20 >= 256) {
                break;
            }
            if (zArr2[i20]) {
                bArr[i20] = (byte) i21;
                i21++;
            }
            i20++;
        }
        dVar.f11416f = i21;
        int i22 = i21 + 1;
        int[] iArr4 = cVar3.f11395c;
        Arrays.fill(iArr4, 0, i21 + 2, 0);
        while (true) {
            i21--;
            bArr2 = cVar3.f11398f;
            if (i21 < 0) {
                break;
            } else {
                bArr2[i21] = (byte) i21;
            }
        }
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        while (true) {
            cArr = cVar3.f11409s;
            if (i23 > i19) {
                break;
            }
            byte b10 = bArr[cVar3.f11408q[cVar3.r[i23]] & 255];
            byte b11 = bArr2[0];
            int i26 = 0;
            while (b10 != b11) {
                i26++;
                byte b12 = bArr2[i26];
                bArr2[i26] = b11;
                b11 = b12;
            }
            bArr2[0] = b11;
            if (i26 == 0) {
                i24++;
            } else {
                if (i24 > 0) {
                    int i27 = i24 - 1;
                    while (true) {
                        if ((i27 & 1) == 0) {
                            cArr[i25] = 0;
                            i25++;
                            iArr4[0] = iArr4[0] + 1;
                        } else {
                            cArr[i25] = 1;
                            i25++;
                            iArr4[1] = iArr4[1] + 1;
                        }
                        if (i27 < 2) {
                            break;
                        } else {
                            i27 = (i27 - 2) >> 1;
                        }
                    }
                    i24 = 0;
                }
                int i28 = i26 + 1;
                cArr[i25] = (char) i28;
                i25++;
                iArr4[i28] = iArr4[i28] + 1;
            }
            i23++;
        }
        if (i24 > 0) {
            int i29 = i24 - 1;
            while (true) {
                if ((i29 & 1) == 0) {
                    cArr[i25] = 0;
                    i25++;
                    iArr4[0] = iArr4[0] + 1;
                } else {
                    cArr[i25] = 1;
                    i25++;
                    iArr4[1] = iArr4[1] + 1;
                }
                if (i29 < 2) {
                    break;
                } else {
                    i29 = (i29 - 2) >> 1;
                }
            }
        }
        cArr[i25] = (char) i22;
        iArr4[i22] = iArr4[i22] + 1;
        dVar.f11417g = i25 + 1;
        byte[][] bArr7 = dVar.l.f11399g;
        int i30 = dVar.f11416f;
        int i31 = i30 + 2;
        int i32 = -1;
        int i33 = 6;
        while (true) {
            i33 += i32;
            if (i33 < 0) {
                break;
            }
            byte[] bArr8 = bArr7[i33];
            int i34 = i31;
            while (true) {
                i34 += i32;
                if (i34 >= 0) {
                    bArr8[i34] = 15;
                    i32 = -1;
                }
            }
            i32 = -1;
        }
        int i35 = dVar.f11417g;
        int i36 = i35 < 200 ? 2 : i35 < 600 ? 3 : i35 < 1200 ? 4 : i35 < 2400 ? 5 : 6;
        c cVar4 = dVar.l;
        byte[][] bArr9 = cVar4.f11399g;
        int i37 = 0;
        for (int i38 = i36; i38 > 0; i38--) {
            int i39 = i35 / i38;
            int i40 = i30 + 1;
            int i41 = i37 - 1;
            int i42 = 0;
            while (true) {
                iArr3 = cVar4.f11395c;
                if (i42 >= i39 || i41 >= i40) {
                    break;
                }
                i41++;
                i42 += iArr3[i41];
            }
            if (i41 > i37 && i38 != i36 && i38 != 1 && ((i36 - i38) & 1) != 0) {
                i42 -= iArr3[i41];
                i41--;
            }
            byte[] bArr10 = bArr9[i38 - 1];
            int i43 = i31;
            while (true) {
                i43--;
                if (i43 >= 0) {
                    if (i43 < i37 || i43 > i41) {
                        bArr10[i43] = 15;
                    } else {
                        bArr10[i43] = 0;
                    }
                }
            }
            i37 = i41 + 1;
            i35 -= i42;
        }
        c cVar5 = dVar.l;
        int[][] iArr5 = cVar5.f11400h;
        byte[][] bArr11 = cVar5.f11399g;
        byte[] bArr12 = bArr11[0];
        byte[] bArr13 = bArr11[1];
        byte[] bArr14 = bArr11[2];
        byte[] bArr15 = bArr11[3];
        byte[] bArr16 = bArr11[4];
        byte[] bArr17 = bArr11[5];
        int i44 = dVar.f11417g;
        int i45 = 0;
        int i46 = 0;
        for (int i47 = 4; i45 < i47; i47 = 4) {
            int i48 = i36;
            while (true) {
                int i49 = i48 - 1;
                iArr = cVar5.f11401i;
                if (i49 < 0) {
                    break;
                }
                int i50 = 0;
                iArr[i49] = 0;
                int[] iArr6 = iArr5[i49];
                int i51 = i31;
                while (true) {
                    int i52 = i51 - 1;
                    if (i52 >= 0) {
                        iArr6[i52] = i50;
                        i51 = i52;
                        i50 = 0;
                    }
                }
                i48 = i49;
            }
            int i53 = i45;
            int i54 = 0;
            i46 = 0;
            while (i54 < dVar.f11417g) {
                int i55 = i54;
                int iMin = Math.min(i54 + 49, i44 - 1);
                short[] sArr = cVar5.f11402j;
                int i56 = i44;
                char[] cArr2 = cVar5.f11409s;
                int i57 = i31;
                if (i36 == 6) {
                    int i58 = i55;
                    short s8 = 0;
                    short s10 = 0;
                    short s11 = 0;
                    short s12 = 0;
                    short s13 = 0;
                    short s14 = 0;
                    while (i58 <= iMin) {
                        char c7 = cArr2[i58];
                        s8 = (short) (s8 + bArr12[c7]);
                        s10 = (short) (s10 + bArr13[c7]);
                        s11 = (short) (s11 + bArr14[c7]);
                        s12 = (short) (s12 + bArr15[c7]);
                        s13 = (short) (s13 + bArr16[c7]);
                        i58++;
                        s14 = (short) (s14 + bArr17[c7]);
                    }
                    sArr[0] = s8;
                    sArr[1] = s10;
                    sArr[2] = s11;
                    sArr[3] = s12;
                    sArr[4] = s13;
                    sArr[5] = s14;
                } else {
                    int i59 = i36;
                    while (true) {
                        i59--;
                        if (i59 < 0) {
                            break;
                        } else {
                            sArr[i59] = 0;
                        }
                    }
                    for (int i60 = i55; i60 <= iMin; i60++) {
                        char c10 = cArr2[i60];
                        int i61 = i36;
                        while (true) {
                            i61--;
                            if (i61 >= 0) {
                                sArr[i61] = (short) (sArr[i61] + bArr11[i61][c10]);
                            }
                        }
                    }
                }
                short s15 = 999999999;
                int i62 = i36;
                int i63 = -1;
                while (true) {
                    i62--;
                    if (i62 < 0) {
                        break;
                    }
                    byte[] bArr18 = bArr12;
                    short s16 = sArr[i62];
                    if (s16 < s15) {
                        s15 = s16;
                        i63 = i62;
                    }
                    bArr12 = bArr18;
                }
                byte[] bArr19 = bArr12;
                iArr[i63] = iArr[i63] + 1;
                cVar5.f11396d[i46] = (byte) i63;
                i46++;
                int[] iArr7 = iArr5[i63];
                for (int i64 = i55; i64 <= iMin; i64++) {
                    char c11 = cArr2[i64];
                    iArr7[c11] = iArr7[c11] + 1;
                }
                i54 = iMin + 1;
                dVar = this;
                bArr12 = bArr19;
                i44 = i56;
                i31 = i57;
            }
            int i65 = i31;
            byte[] bArr20 = bArr12;
            int i66 = i44;
            int i67 = 0;
            while (i67 < i36) {
                byte[] bArr21 = bArr11[i67];
                int[] iArr8 = iArr5[i67];
                c cVar6 = this.l;
                int[] iArr9 = cVar6.f11405n;
                int i68 = i65;
                while (true) {
                    int i69 = i68 - 1;
                    cVar = cVar5;
                    iArr2 = cVar6.f11406o;
                    if (i69 < 0) {
                        break;
                    }
                    int i70 = iArr8[i69];
                    if (i70 == 0) {
                        i70 = 1;
                    }
                    iArr2[i68] = i70 << 8;
                    i68 = i69;
                    cVar5 = cVar;
                }
                boolean z = true;
                while (z) {
                    iArr9[0] = 0;
                    iArr2[0] = 0;
                    int[] iArr10 = cVar6.f11407p;
                    iArr10[0] = -2;
                    int i71 = 1;
                    int i72 = 0;
                    int i73 = i65;
                    int[][] iArr11 = iArr5;
                    while (i71 <= i73) {
                        iArr10[i71] = -1;
                        i72++;
                        iArr9[i72] = i71;
                        byte[][] bArr22 = bArr11;
                        int i74 = i72;
                        while (true) {
                            int i75 = iArr2[i71];
                            int i76 = i74 >> 1;
                            int i77 = iArr9[i76];
                            bArr6 = bArr13;
                            if (i75 < iArr2[i77]) {
                                iArr9[i74] = i77;
                                i74 = i76;
                                bArr13 = bArr6;
                            }
                        }
                        iArr9[i74] = i71;
                        i71++;
                        bArr11 = bArr22;
                        bArr13 = bArr6;
                    }
                    byte[][] bArr23 = bArr11;
                    byte[] bArr24 = bArr13;
                    int i78 = i73;
                    int i79 = i72;
                    while (i79 > 1) {
                        int i80 = iArr9[1];
                        int i81 = iArr9[i79];
                        iArr9[1] = i81;
                        int i82 = i79 - 1;
                        int i83 = 1;
                        while (true) {
                            cVar2 = cVar6;
                            int i84 = i83 << 1;
                            if (i84 > i82) {
                                bArr3 = bArr14;
                                bArr4 = bArr15;
                                break;
                            }
                            if (i84 < i82) {
                                i16 = i84 + 1;
                                bArr3 = bArr14;
                                i15 = i84;
                                if (iArr2[iArr9[i16]] >= iArr2[iArr9[i84]]) {
                                }
                                i17 = iArr2[i81];
                                i18 = iArr9[i16];
                                bArr4 = bArr15;
                                if (i17 >= iArr2[i18]) {
                                    break;
                                }
                                iArr9[i83] = i18;
                                cVar6 = cVar2;
                                i83 = i16;
                                bArr15 = bArr4;
                                bArr14 = bArr3;
                            } else {
                                i15 = i84;
                                bArr3 = bArr14;
                            }
                            i16 = i15;
                            i17 = iArr2[i81];
                            i18 = iArr9[i16];
                            bArr4 = bArr15;
                            if (i17 >= iArr2[i18]) {
                            }
                        }
                        iArr9[i83] = i81;
                        int i85 = iArr9[1];
                        int i86 = iArr9[i82];
                        iArr9[1] = i86;
                        int i87 = i79 - 2;
                        int i88 = 1;
                        while (true) {
                            int i89 = i88 << 1;
                            if (i89 > i87) {
                                bArr5 = bArr16;
                                break;
                            }
                            if (i89 < i87) {
                                i12 = i89 + 1;
                                i10 = i87;
                                i11 = i89;
                                if (iArr2[iArr9[i12]] >= iArr2[iArr9[i89]]) {
                                }
                                i13 = iArr2[i86];
                                i14 = iArr9[i12];
                                bArr5 = bArr16;
                                if (i13 >= iArr2[i14]) {
                                    break;
                                }
                                iArr9[i88] = i14;
                                i88 = i12;
                                i87 = i10;
                                bArr16 = bArr5;
                            } else {
                                i10 = i87;
                                i11 = i89;
                            }
                            i12 = i11;
                            i13 = iArr2[i86];
                            i14 = iArr9[i12];
                            bArr5 = bArr16;
                            if (i13 >= iArr2[i14]) {
                            }
                        }
                        iArr9[i88] = i86;
                        i78++;
                        iArr10[i85] = i78;
                        iArr10[i80] = i78;
                        int i90 = iArr2[i80];
                        int i91 = iArr2[i85];
                        iArr2[i78] = (Math.max(i90 & 255, i91 & 255) + 1) | ((i90 & (-256)) + (i91 & (-256)));
                        iArr10[i78] = -1;
                        iArr9[i82] = i78;
                        int i92 = iArr2[i78];
                        int i93 = i82;
                        while (true) {
                            int i94 = i93 >> 1;
                            int i95 = iArr9[i94];
                            if (i92 < iArr2[i95]) {
                                iArr9[i93] = i95;
                                i93 = i94;
                            }
                        }
                        iArr9[i93] = i78;
                        i79 = i82;
                        cVar6 = cVar2;
                        bArr15 = bArr4;
                        bArr14 = bArr3;
                        bArr16 = bArr5;
                    }
                    c cVar7 = cVar6;
                    byte[] bArr25 = bArr14;
                    byte[] bArr26 = bArr15;
                    byte[] bArr27 = bArr16;
                    z = false;
                    for (int i96 = 1; i96 <= i73; i96++) {
                        int i97 = i96;
                        int i98 = 0;
                        while (true) {
                            i97 = iArr10[i97];
                            if (i97 < 0) {
                                break;
                            } else {
                                i98++;
                            }
                        }
                        bArr21[i96 - 1] = (byte) i98;
                        if (i98 > 20) {
                            z = true;
                        }
                    }
                    if (z) {
                        for (int i99 = 1; i99 < i73; i99++) {
                            iArr2[i99] = ((iArr2[i99] >> 9) + 1) << 8;
                        }
                    }
                    bArr11 = bArr23;
                    cVar6 = cVar7;
                    bArr13 = bArr24;
                    bArr15 = bArr26;
                    bArr14 = bArr25;
                    bArr16 = bArr27;
                    i65 = i73;
                    iArr5 = iArr11;
                }
                i67++;
                cVar5 = cVar;
                i65 = i65;
                iArr5 = iArr5;
            }
            i45 = i53 + 1;
            i31 = i65;
            dVar = this;
            bArr12 = bArr20;
            i44 = i66;
            iArr5 = iArr5;
        }
        d dVar2 = dVar;
        int i100 = i31;
        c cVar8 = dVar2.l;
        byte[] bArr28 = cVar8.l;
        int i101 = i36;
        while (true) {
            i101--;
            if (i101 < 0) {
                break;
            } else {
                bArr28[i101] = (byte) i101;
            }
        }
        int i102 = i46;
        for (int i103 = 0; i103 < i102; i103++) {
            byte b13 = cVar8.f11396d[i103];
            byte b14 = bArr28[0];
            int i104 = 0;
            while (b13 != b14) {
                i104++;
                byte b15 = bArr28[i104];
                bArr28[i104] = b14;
                b14 = b15;
            }
            bArr28[0] = b14;
            cVar8.f11397e[i103] = (byte) i104;
        }
        c cVar9 = dVar2.l;
        int[][] iArr12 = cVar9.f11403k;
        for (int i105 = 0; i105 < i36; i105++) {
            byte[][] bArr29 = cVar9.f11399g;
            byte[] bArr30 = bArr29[i105];
            int i106 = 32;
            int i107 = i100;
            int i108 = 0;
            while (true) {
                i107--;
                if (i107 < 0) {
                    break;
                }
                int i109 = bArr30[i107] & 255;
                if (i109 > i108) {
                    i108 = i109;
                }
                if (i109 < i106) {
                    i106 = i109;
                }
            }
            int[] iArr13 = iArr12[i105];
            byte[] bArr31 = bArr29[i105];
            int i110 = 0;
            while (i106 <= i108) {
                for (int i111 = 0; i111 < i100; i111++) {
                    if ((bArr31[i111] & 255) == i106) {
                        iArr13[i111] = i110;
                        i110++;
                    }
                }
                i110 <<= 1;
                i106++;
            }
        }
        c cVar10 = dVar2.l;
        boolean[] zArr3 = cVar10.f11393a;
        int i112 = 16;
        while (true) {
            i112--;
            zArr = cVar10.f11404m;
            if (i112 < 0) {
                break;
            }
            zArr[i112] = false;
            int i113 = i112 * 16;
            int i114 = 16;
            while (true) {
                i114--;
                if (i114 >= 0) {
                    if (zArr3[i113 + i114]) {
                        zArr[i112] = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        int i115 = 1;
        int i116 = 0;
        while (i116 < 16) {
            dVar2.J(i115, zArr[i116] ? 1 : 0);
            i116++;
            i115 = 1;
        }
        OutputStream outputStream = ((FilterOutputStream) dVar2).out;
        int i117 = dVar2.f11414d;
        int i118 = dVar2.f11413c;
        for (int i119 = 0; i119 < 16; i119++) {
            if (zArr[i119]) {
                int i120 = i119 * 16;
                for (int i121 = 0; i121 < 16; i121++) {
                    while (i117 >= 8) {
                        outputStream.write(i118 >> 24);
                        i118 <<= 8;
                        i117 -= 8;
                    }
                    if (zArr3[i120 + i121]) {
                        i118 |= 1 << (31 - i117);
                    }
                    i117++;
                }
            }
        }
        dVar2.f11413c = i118;
        dVar2.f11414d = i117;
        dVar2.J(3, i36);
        dVar2.J(15, i102);
        OutputStream outputStream2 = ((FilterOutputStream) dVar2).out;
        byte[] bArr32 = dVar2.l.f11397e;
        int i122 = dVar2.f11414d;
        int i123 = dVar2.f11413c;
        for (int i124 = 0; i124 < i102; i124++) {
            int i125 = bArr32[i124] & 255;
            for (int i126 = 0; i126 < i125; i126++) {
                while (i122 >= 8) {
                    outputStream2.write(i123 >> 24);
                    i123 <<= 8;
                    i122 -= 8;
                }
                i123 |= 1 << (31 - i122);
                i122++;
            }
            while (i122 >= 8) {
                outputStream2.write(i123 >> 24);
                i123 <<= 8;
                i122 -= 8;
            }
            i122++;
        }
        dVar2.f11413c = i123;
        dVar2.f11414d = i122;
        byte[][] bArr33 = dVar2.l.f11399g;
        OutputStream outputStream3 = ((FilterOutputStream) dVar2).out;
        for (int i127 = 0; i127 < i36; i127++) {
            byte[] bArr34 = bArr33[i127];
            int i128 = bArr34[0] & 255;
            while (i122 >= 8) {
                outputStream3.write(i123 >> 24);
                i123 <<= 8;
                i122 -= 8;
            }
            i123 |= i128 << (27 - i122);
            i122 += 5;
            for (int i129 = 0; i129 < i100; i129++) {
                int i130 = bArr34[i129] & 255;
                while (i128 < i130) {
                    while (i122 >= 8) {
                        outputStream3.write(i123 >> 24);
                        i123 <<= 8;
                        i122 -= 8;
                    }
                    i123 |= 2 << (30 - i122);
                    i122 += 2;
                    i128++;
                }
                while (i128 > i130) {
                    while (i122 >= 8) {
                        outputStream3.write(i123 >> 24);
                        i123 <<= 8;
                        i122 -= 8;
                    }
                    i123 |= 3 << (30 - i122);
                    i122 += 2;
                    i128--;
                }
                while (i122 >= 8) {
                    outputStream3.write(i123 >> 24);
                    i123 <<= 8;
                    i122 -= 8;
                }
                i122++;
            }
        }
        int i131 = 0;
        dVar2.f11413c = i123;
        dVar2.f11414d = i122;
        c cVar11 = dVar2.l;
        byte[][] bArr35 = cVar11.f11399g;
        OutputStream outputStream4 = ((FilterOutputStream) dVar2).out;
        int i132 = dVar2.f11417g;
        int i133 = i123;
        int i134 = 0;
        while (i134 < i132) {
            int iMin2 = Math.min(i134 + 49, i132 - 1);
            int i135 = cVar11.f11396d[i131] & 255;
            int[] iArr14 = cVar11.f11403k[i135];
            byte[] bArr36 = bArr35[i135];
            while (i134 <= iMin2) {
                char c12 = cVar11.f11409s[i134];
                while (i122 >= 8) {
                    outputStream4.write(i133 >> 24);
                    i133 <<= 8;
                    i122 -= 8;
                }
                int i136 = bArr36[c12] & 255;
                i133 |= iArr14[c12] << ((32 - i122) - i136);
                i122 += i136;
                i134++;
            }
            i134 = iMin2 + 1;
            i131++;
        }
        dVar2.f11413c = i133;
        dVar2.f11414d = i122;
    }

    public final void O(int i10) throws IOException {
        int i11 = this.f11418h;
        if (i11 == -1) {
            this.f11418h = i10 & 255;
            this.f11419i++;
            return;
        }
        int i12 = i10 & 255;
        if (i11 != i12) {
            P();
            this.f11419i = 1;
            this.f11418h = i12;
            return;
        }
        int i13 = this.f11419i + 1;
        this.f11419i = i13;
        if (i13 > 254) {
            P();
            this.f11418h = -1;
            this.f11419i = 0;
        }
    }

    public final void P() throws IOException {
        int i10 = this.f11412b;
        int i11 = this.f11421k;
        f fVar = this.f11415e;
        if (i10 < i11) {
            int i12 = this.f11418h;
            c cVar = this.l;
            cVar.f11393a[i12] = true;
            byte b10 = (byte) i12;
            int i13 = this.f11419i;
            int i14 = fVar.f11437a;
            int i15 = i13;
            while (true) {
                int i16 = i15 - 1;
                if (i15 <= 0) {
                    break;
                }
                int i17 = (i14 >> 24) ^ i12;
                int i18 = i14 << 8;
                int[] iArr = f.f11436b;
                if (i17 < 0) {
                    i17 += 256;
                }
                i14 = i18 ^ iArr[i17];
                i15 = i16;
            }
            fVar.f11437a = i14;
            byte[] bArr = cVar.f11408q;
            if (i13 == 1) {
                bArr[i10 + 2] = b10;
                this.f11412b = i10 + 1;
                return;
            }
            if (i13 == 2) {
                int i19 = i10 + 2;
                bArr[i19] = b10;
                bArr[i10 + 3] = b10;
                this.f11412b = i19;
                return;
            }
            if (i13 == 3) {
                bArr[i10 + 2] = b10;
                int i20 = i10 + 3;
                bArr[i20] = b10;
                bArr[i10 + 4] = b10;
                this.f11412b = i20;
                return;
            }
            int i21 = i13 - 4;
            cVar.f11393a[i21] = true;
            bArr[i10 + 2] = b10;
            bArr[i10 + 3] = b10;
            bArr[i10 + 4] = b10;
            int i22 = i10 + 5;
            bArr[i22] = b10;
            bArr[i10 + 6] = (byte) i21;
            this.f11412b = i22;
            return;
        }
        L();
        fVar.f11437a = -1;
        this.f11412b = -1;
        boolean[] zArr = this.l.f11393a;
        int i23 = 256;
        while (true) {
            i23--;
            if (i23 < 0) {
                P();
                return;
            }
            zArr[i23] = false;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        AtomicBoolean atomicBoolean = this.f11411a;
        if (atomicBoolean.get()) {
            return;
        }
        try {
            if (!atomicBoolean.get()) {
                try {
                    if (this.f11419i > 0) {
                        P();
                    }
                    this.f11418h = -1;
                    L();
                    M();
                    this.f11422m = null;
                    this.l = null;
                } catch (Throwable th2) {
                    this.f11422m = null;
                    this.l = null;
                    throw th2;
                }
            }
        } finally {
            K();
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        if (((FilterOutputStream) this).out != null) {
            super.flush();
        }
    }

    public final void r(int i10) throws IOException {
        J(8, (i10 >> 24) & 255);
        J(8, (i10 >> 16) & 255);
        J(8, (i10 >> 8) & 255);
        J(8, i10 & 255);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i10) throws IOException {
        if (this.f11411a.get()) {
            throw new IOException("Stream closed");
        }
        O(i10);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException(g.b.i("offs(", i10, ") < 0."));
        }
        if (i11 >= 0) {
            int i12 = i10 + i11;
            if (i12 <= bArr.length) {
                if (this.f11411a.get()) {
                    throw new IOException("Stream closed");
                }
                while (i10 < i12) {
                    O(bArr[i10]);
                    i10++;
                }
                return;
            }
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.s(q.o(i10, i11, "offs(", ") + len(", ") > buf.length("), bArr.length, ")."));
        }
        throw new IndexOutOfBoundsException(g.b.i("len(", i11, ") < 0."));
    }
}
