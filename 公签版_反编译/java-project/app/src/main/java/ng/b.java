package ng;

import com.android.apksig.internal.apk.AndroidBinXmlParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.util.Arrays;
import org.simpleframework.xml.strategy.Name;
import ta.q;

/* loaded from: classes.dex */
public final class b extends mg.a {

    /* renamed from: a, reason: collision with root package name */
    public int f11374a;

    /* renamed from: b, reason: collision with root package name */
    public int f11375b;

    /* renamed from: c, reason: collision with root package name */
    public int f11376c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f11377d;

    /* renamed from: f, reason: collision with root package name */
    public int f11379f;

    /* renamed from: g, reason: collision with root package name */
    public rg.a f11380g;

    /* renamed from: i, reason: collision with root package name */
    public int f11382i;

    /* renamed from: j, reason: collision with root package name */
    public int f11383j;

    /* renamed from: k, reason: collision with root package name */
    public int f11384k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f11385m;

    /* renamed from: n, reason: collision with root package name */
    public int f11386n;

    /* renamed from: p, reason: collision with root package name */
    public int f11387p;

    /* renamed from: q, reason: collision with root package name */
    public int f11388q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public int f11389s;

    /* renamed from: t, reason: collision with root package name */
    public int f11390t;

    /* renamed from: v, reason: collision with root package name */
    public char f11391v;

    /* renamed from: w, reason: collision with root package name */
    public a f11392w;

    /* renamed from: e, reason: collision with root package name */
    public final f f11378e = new f();

    /* renamed from: h, reason: collision with root package name */
    public int f11381h = 1;

    public b(InputStream inputStream) throws IOException {
        this.f11380g = new rg.a(inputStream == System.in ? new xg.e(inputStream) : inputStream, ByteOrder.BIG_ENDIAN);
        rg.a aVar = this.f11380g;
        if (aVar == null) {
            throw new IOException("No InputStream");
        }
        int iR = (int) aVar.r(8);
        int iR2 = (int) this.f11380g.r(8);
        int iR3 = (int) this.f11380g.r(8);
        if (iR != 66 || iR2 != 90 || iR3 != 104) {
            throw new IOException("Stream is not in the BZip2 format");
        }
        int iR4 = (int) this.f11380g.r(8);
        if (iR4 < 49 || iR4 > 57) {
            throw new IOException("BZip2 block size is invalid");
        }
        this.f11376c = iR4 - 48;
        this.f11384k = 0;
        L();
    }

    public static int A(rg.a aVar, int i10) throws IOException {
        long jR = aVar.r(i10);
        if (jR >= 0) {
            return (int) jR;
        }
        throw new IOException("Unexpected end of stream");
    }

    public static void J(int i10, int i11, String str) throws IOException {
        if (i10 < 0) {
            throw new IOException(g.b.A("Corrupted input, ", str, " value negative"));
        }
        if (i10 >= i11) {
            throw new IOException(g.b.A("Corrupted input, ", str, " value too big"));
        }
    }

    public final void K() throws IOException {
        int i10 = this.f11378e.f11437a ^ (-1);
        int i11 = this.f11382i;
        if (i11 == i10) {
            int i12 = this.f11384k;
            this.f11384k = i10 ^ ((i12 >>> 31) | (i12 << 1));
        } else {
            int i13 = this.f11383j;
            this.f11384k = ((i13 >>> 31) | (i13 << 1)) ^ i11;
            throw new IOException("BZip2 CRC error");
        }
    }

    public final void L() throws IOException {
        byte[] bArr;
        byte[] bArr2;
        int[] iArr;
        char[] cArr;
        int[] iArr2;
        String str;
        String str2;
        rg.a aVar;
        int i10;
        String str3;
        int i11;
        int i12;
        char c7;
        int i13;
        String str4;
        int i14;
        rg.a aVar2 = this.f11380g;
        char cA = (char) A(aVar2, 8);
        char cA2 = (char) A(aVar2, 8);
        char cA3 = (char) A(aVar2, 8);
        char cA4 = (char) A(aVar2, 8);
        char cA5 = (char) A(aVar2, 8);
        char cA6 = (char) A(aVar2, 8);
        if (cA == 23 && cA2 == 'r' && cA3 == 'E' && cA4 == '8' && cA5 == 'P' && cA6 == 144) {
            int iA = A(this.f11380g, 32);
            this.f11383j = iA;
            this.f11381h = 0;
            this.f11392w = null;
            if (iA != this.f11384k) {
                throw new IOException("BZip2 CRC error");
            }
            return;
        }
        if (cA != '1' || cA2 != 'A' || cA3 != 'Y' || cA4 != '&' || cA5 != 'S' || cA6 != 'Y') {
            this.f11381h = 0;
            throw new IOException("Bad block header");
        }
        this.f11382i = A(aVar2, 32);
        this.f11377d = A(aVar2, 1) == 1;
        if (this.f11392w == null) {
            this.f11392w = new a(this.f11376c);
        }
        rg.a aVar3 = this.f11380g;
        this.f11375b = A(aVar3, 24);
        rg.a aVar4 = this.f11380g;
        a aVar5 = this.f11392w;
        boolean[] zArr = aVar5.f11360a;
        int i15 = 0;
        for (int i16 = 0; i16 < 16; i16++) {
            if (A(aVar4, 1) != 0) {
                i15 |= 1 << i16;
            }
        }
        Arrays.fill(zArr, false);
        for (int i17 = 0; i17 < 16; i17++) {
            if (((1 << i17) & i15) != 0) {
                int i18 = i17 << 4;
                for (int i19 = 0; i19 < 16; i19++) {
                    if (A(aVar4, 1) != 0) {
                        zArr[i18 + i19] = true;
                    }
                }
            }
        }
        a aVar6 = this.f11392w;
        boolean[] zArr2 = aVar6.f11360a;
        int i20 = 0;
        for (int i21 = 0; i21 < 256; i21++) {
            if (zArr2[i21]) {
                aVar6.f11361b[i20] = (byte) i21;
                i20++;
            }
        }
        this.f11379f = i20;
        int i22 = i20 + 2;
        int iA2 = A(aVar4, 3);
        int iA3 = A(aVar4, 15);
        if (iA3 < 0) {
            throw new IOException("Corrupted input, nSelectors value negative");
        }
        J(i22, 259, "alphaSize");
        J(iA2, 7, "nGroups");
        int i23 = 0;
        while (true) {
            bArr = aVar5.f11363d;
            if (i23 >= iA3) {
                break;
            }
            int i24 = 0;
            while (A(aVar4, 1) != 0) {
                i24++;
            }
            if (i23 < 18002) {
                bArr[i23] = (byte) i24;
            }
            i23++;
        }
        int iMin = Math.min(iA3, 18002);
        int i25 = iA2;
        while (true) {
            i25--;
            bArr2 = aVar5.f11371m;
            if (i25 < 0) {
                break;
            } else {
                bArr2[i25] = (byte) i25;
            }
        }
        for (int i26 = 0; i26 < iMin; i26++) {
            int i27 = bArr[i26] & 255;
            J(i27, 6, "selectorMtf");
            byte b10 = bArr2[i27];
            while (i27 > 0) {
                bArr2[i27] = bArr2[i27 - 1];
                i27--;
            }
            bArr2[0] = b10;
            aVar5.f11362c[i26] = b10;
        }
        for (int i28 = 0; i28 < iA2; i28++) {
            int iA4 = A(aVar4, 5);
            char[] cArr2 = aVar5.l[i28];
            for (int i29 = 0; i29 < i22; i29++) {
                while (A(aVar4, 1) != 0) {
                    iA4 += A(aVar4, 1) != 0 ? -1 : 1;
                }
                cArr2[i29] = (char) iA4;
            }
        }
        a aVar7 = this.f11392w;
        char[][] cArr3 = aVar7.l;
        for (int i30 = 0; i30 < iA2; i30++) {
            char[] cArr4 = cArr3[i30];
            int i31 = i22;
            int i32 = 32;
            int i33 = 0;
            while (true) {
                i31--;
                if (i31 < 0) {
                    break;
                }
                char c10 = cArr4[i31];
                if (c10 > i33) {
                    i33 = c10;
                }
                if (c10 < i32) {
                    i32 = c10;
                }
            }
            int[] iArr3 = aVar7.f11365f[i30];
            int[] iArr4 = aVar7.f11366g[i30];
            int[] iArr5 = aVar7.f11367h[i30];
            char[] cArr5 = cArr3[i30];
            int i34 = 0;
            for (int i35 = i32; i35 <= i33; i35++) {
                for (int i36 = 0; i36 < i22; i36++) {
                    if (cArr5[i36] == i35) {
                        iArr5[i34] = i36;
                        i34++;
                    }
                }
            }
            int i37 = 23;
            while (true) {
                i37--;
                if (i37 <= 0) {
                    break;
                }
                iArr4[i37] = 0;
                iArr3[i37] = 0;
            }
            for (int i38 = 0; i38 < i22; i38++) {
                char c11 = cArr5[i38];
                J(c11, AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT, Name.LENGTH);
                int i39 = c11 + 1;
                iArr4[i39] = iArr4[i39] + 1;
            }
            int i40 = iArr4[0];
            for (int i41 = 1; i41 < 23; i41++) {
                i40 += iArr4[i41];
                iArr4[i41] = i40;
            }
            int i42 = iArr4[i32];
            int i43 = i32;
            int i44 = 0;
            while (i43 <= i33) {
                int i45 = i43 + 1;
                int i46 = iArr4[i45];
                int i47 = (i46 - i42) + i44;
                iArr3[i43] = i47 - 1;
                i44 = i47 << 1;
                i43 = i45;
                i42 = i46;
            }
            int i48 = 1;
            int i49 = i32 + 1;
            while (i49 <= i33) {
                iArr4[i49] = ((iArr3[i49 - 1] + i48) << i48) - iArr4[i49];
                i49++;
                i48 = 1;
            }
            aVar7.f11368i[i30] = i32;
        }
        a aVar8 = this.f11392w;
        byte[] bArr3 = aVar8.f11373o;
        int i50 = this.f11376c * 100000;
        int i51 = 256;
        while (true) {
            i51--;
            iArr = aVar8.f11364e;
            cArr = aVar8.f11370k;
            if (i51 < 0) {
                break;
            }
            cArr[i51] = (char) i51;
            iArr[i51] = 0;
        }
        int i52 = this.f11379f + 1;
        a aVar9 = this.f11392w;
        int i53 = aVar9.f11362c[0] & 255;
        J(i53, 6, "zt");
        int i54 = aVar9.f11368i[i53];
        String str5 = "zn";
        J(i54, AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT, "zn");
        int iA5 = A(this.f11380g, i54);
        for (int[] iArr6 = aVar9.f11365f[i53]; iA5 > iArr6[i54]; iArr6 = iArr6) {
            i54++;
            J(i54, AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT, "zn");
            iA5 = (iA5 << 1) | A(this.f11380g, 1);
        }
        int i55 = iA5 - aVar9.f11366g[i53][i54];
        J(i55, AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT, "zvec");
        int i56 = aVar9.f11367h[i53][i55];
        byte[] bArr4 = aVar8.f11362c;
        int i57 = bArr4[0] & 255;
        J(i57, 6, "zt");
        int[][] iArr7 = aVar8.f11366g;
        int[] iArr8 = iArr7[i57];
        int[][] iArr9 = aVar8.f11365f;
        int[] iArr10 = iArr9[i57];
        int[] iArr11 = iArr8;
        int[][] iArr12 = aVar8.f11367h;
        int[] iArr13 = iArr12[i57];
        int[] iArr14 = aVar8.f11368i;
        String str6 = "zvec";
        int[] iArr15 = iArr13;
        int i58 = -1;
        int i59 = 0;
        int i60 = 49;
        int i61 = iArr14[i57];
        int i62 = i56;
        while (i62 != i52) {
            int i63 = i52;
            byte[] bArr5 = aVar8.f11361b;
            a aVar10 = aVar8;
            String str7 = "groupNo";
            rg.a aVar11 = aVar3;
            String str8 = str5;
            if (i62 == 0) {
                iArr2 = iArr14;
                str = " exceeds ";
                str2 = str6;
                aVar = aVar11;
            } else if (i62 == 1) {
                iArr2 = iArr14;
                str2 = str6;
                aVar = aVar11;
                str = " exceeds ";
            } else {
                i58++;
                if (i58 >= i50) {
                    throw new IOException(android.support.v4.media.session.a.o("Block overrun in MTF, ", i58, i50, " exceeds "));
                }
                int i64 = i50;
                J(i62, 257, "nextSym");
                int i65 = i62 - 1;
                char c12 = cArr[i65];
                int[] iArr16 = iArr14;
                J(c12, 256, "yy");
                byte b11 = bArr5[c12];
                int i66 = b11 & 255;
                iArr[i66] = iArr[i66] + 1;
                bArr3[i58] = b11;
                if (i62 <= 16) {
                    while (i65 > 0) {
                        int i67 = i65 - 1;
                        cArr[i65] = cArr[i67];
                        i65 = i67;
                    }
                    c7 = 0;
                } else {
                    c7 = 0;
                    System.arraycopy(cArr, 0, cArr, 1, i65);
                }
                cArr[c7] = c12;
                if (i60 == 0) {
                    int i68 = i59 + 1;
                    J(i68, 18002, "groupNo");
                    int i69 = bArr4[i68] & 255;
                    J(i69, 6, "zt");
                    int[] iArr17 = iArr7[i69];
                    int[] iArr18 = iArr9[i69];
                    int[] iArr19 = iArr12[i69];
                    i13 = iArr16[i69];
                    i59 = i68;
                    iArr11 = iArr17;
                    iArr10 = iArr18;
                    iArr15 = iArr19;
                    str4 = str8;
                    i14 = AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT;
                    i60 = 49;
                } else {
                    i60--;
                    i13 = i61;
                    str4 = str8;
                    i14 = AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT;
                }
                J(i13, i14, str4);
                int iA6 = A(aVar11, i13);
                int i70 = i13;
                while (iA6 > iArr10[i70]) {
                    i70++;
                    J(i70, i14, str4);
                    iA6 = (iA6 << 1) | A(aVar11, 1);
                }
                int i71 = iA6 - iArr11[i70];
                J(i71, i14, str6);
                i62 = iArr15[i71];
                i61 = i13;
                aVar3 = aVar11;
                i52 = i63;
                aVar8 = aVar10;
                iArr14 = iArr16;
                str5 = str4;
                i50 = i64;
            }
            int i72 = i62;
            int i73 = i50;
            byte[] bArr6 = bArr3;
            i62 = i72;
            int i74 = -1;
            int[] iArr20 = iArr15;
            int i75 = i59;
            int[] iArr21 = iArr11;
            int[] iArr22 = iArr10;
            int i76 = i61;
            int i77 = 1;
            while (true) {
                if (i62 != 0) {
                    i10 = i58;
                    if (i62 != 1) {
                        break;
                    } else {
                        i74 += i77 << 1;
                    }
                } else {
                    i74 += i77;
                    i10 = i58;
                }
                if (i60 == 0) {
                    int i78 = i75 + 1;
                    J(i78, 18002, str7);
                    int i79 = bArr4[i78] & 255;
                    str3 = str7;
                    J(i79, 6, "zt");
                    iArr21 = iArr7[i79];
                    iArr22 = iArr9[i79];
                    iArr20 = iArr12[i79];
                    i75 = i78;
                    i11 = iArr2[i79];
                    i12 = AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT;
                    i60 = 49;
                } else {
                    str3 = str7;
                    i60--;
                    i11 = i76;
                    i12 = AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT;
                }
                J(i11, i12, str8);
                int iA7 = A(aVar, i11);
                int i80 = i11;
                while (iA7 > iArr22[i80]) {
                    int i81 = i80 + 1;
                    J(i81, AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT, str8);
                    iA7 = (iA7 << 1) | A(aVar, 1);
                    i80 = i81;
                    iArr9 = iArr9;
                }
                int i82 = iA7 - iArr21[i80];
                J(i82, AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT, str2);
                i77 <<= 1;
                i76 = i11;
                i58 = i10;
                iArr9 = iArr9;
                i62 = iArr20[i82];
                str7 = str3;
            }
            int[][] iArr23 = iArr9;
            J(i74, this.f11392w.f11373o.length, "s");
            char c13 = cArr[0];
            J(c13, 256, "yy");
            byte b12 = bArr5[c13];
            int i83 = b12 & 255;
            iArr[i83] = i74 + 1 + iArr[i83];
            int i84 = i10 + 1;
            int i85 = i74 + i84;
            J(i85, this.f11392w.f11373o.length, "lastShadow");
            Arrays.fill(bArr6, i84, i85 + 1, b12);
            if (i85 >= i73) {
                throw new IOException(android.support.v4.media.session.a.o("Block overrun while expanding RLE in MTF, ", i85, i73, str));
            }
            i58 = i85;
            bArr3 = bArr6;
            i61 = i76;
            iArr10 = iArr22;
            iArr11 = iArr21;
            i59 = i75;
            iArr15 = iArr20;
            i52 = i63;
            aVar8 = aVar10;
            iArr9 = iArr23;
            str6 = str2;
            iArr14 = iArr2;
            i50 = i73;
            aVar3 = aVar;
            str5 = str8;
        }
        this.f11374a = i58;
        this.f11378e.f11437a = -1;
        this.f11381h = 1;
    }

    public final int M() throws IOException {
        switch (this.f11381h) {
            case 0:
                return -1;
            case 1:
                return N();
            case 2:
                throw new IllegalStateException();
            case 3:
                if (this.f11385m != this.f11386n) {
                    this.f11381h = 2;
                    this.l = 1;
                    return Q();
                }
                int i10 = this.l + 1;
                this.l = i10;
                if (i10 < 4) {
                    this.f11381h = 2;
                    return Q();
                }
                a aVar = this.f11392w;
                byte[] bArr = aVar.f11373o;
                int i11 = this.f11390t;
                this.f11391v = (char) (bArr[i11] & 255);
                J(i11, aVar.f11372n.length, "su_tPos");
                this.f11390t = this.f11392w.f11372n[this.f11390t];
                int i12 = this.r;
                if (i12 == 0) {
                    int i13 = this.f11389s;
                    this.r = g.f11438a[i13] - 1;
                    int i14 = i13 + 1;
                    this.f11389s = i14;
                    if (i14 == 512) {
                        this.f11389s = 0;
                    }
                } else {
                    this.r = i12 - 1;
                }
                this.f11388q = 0;
                this.f11381h = 4;
                if (this.r == 1) {
                    this.f11391v = (char) (this.f11391v ^ 1);
                }
                return R();
            case 4:
                return R();
            case 5:
                throw new IllegalStateException();
            case 6:
                if (this.f11385m != this.f11386n) {
                    this.l = 1;
                    return O();
                }
                int i15 = this.l + 1;
                this.l = i15;
                if (i15 < 4) {
                    return O();
                }
                J(this.f11390t, this.f11392w.f11373o.length, "su_tPos");
                a aVar2 = this.f11392w;
                byte[] bArr2 = aVar2.f11373o;
                int i16 = this.f11390t;
                this.f11391v = (char) (bArr2[i16] & 255);
                this.f11390t = aVar2.f11372n[i16];
                this.f11388q = 0;
                return P();
            case 7:
                return P();
            default:
                throw new IllegalStateException();
        }
    }

    public final int N() throws IOException {
        a aVar;
        if (this.f11381h == 0 || (aVar = this.f11392w) == null) {
            return -1;
        }
        int i10 = this.f11374a + 1;
        int[] iArr = aVar.f11372n;
        if (iArr == null || iArr.length < i10) {
            iArr = new int[i10];
            aVar.f11372n = iArr;
        }
        int[] iArr2 = aVar.f11369j;
        iArr2[0] = 0;
        System.arraycopy(aVar.f11364e, 0, iArr2, 1, 256);
        int i11 = iArr2[0];
        for (int i12 = 1; i12 <= 256; i12++) {
            i11 += iArr2[i12];
            iArr2[i12] = i11;
        }
        int i13 = this.f11374a;
        for (int i14 = 0; i14 <= i13; i14++) {
            int i15 = aVar.f11373o[i14] & 255;
            int i16 = iArr2[i15];
            iArr2[i15] = i16 + 1;
            J(i16, i10, "tt index");
            iArr[i16] = i14;
        }
        int i17 = this.f11375b;
        if (i17 < 0 || i17 >= iArr.length) {
            throw new IOException("Stream corrupted");
        }
        this.f11390t = iArr[i17];
        this.l = 0;
        this.f11387p = 0;
        this.f11385m = 256;
        if (!this.f11377d) {
            return O();
        }
        this.r = 0;
        this.f11389s = 0;
        return Q();
    }

    public final int O() throws IOException {
        if (this.f11387p > this.f11374a) {
            this.f11381h = 5;
            K();
            L();
            return N();
        }
        this.f11386n = this.f11385m;
        a aVar = this.f11392w;
        byte[] bArr = aVar.f11373o;
        int i10 = this.f11390t;
        int i11 = bArr[i10] & 255;
        this.f11385m = i11;
        J(i10, aVar.f11372n.length, "su_tPos");
        this.f11390t = this.f11392w.f11372n[this.f11390t];
        this.f11387p++;
        this.f11381h = 6;
        f fVar = this.f11378e;
        int i12 = fVar.f11437a;
        int i13 = (i12 >> 24) ^ i11;
        int i14 = i12 << 8;
        int[] iArr = f.f11436b;
        if (i13 < 0) {
            i13 += 256;
        }
        fVar.f11437a = i14 ^ iArr[i13];
        return i11;
    }

    public final int P() {
        int i10 = this.f11388q;
        if (i10 >= this.f11391v) {
            this.f11387p++;
            this.l = 0;
            return O();
        }
        int i11 = this.f11385m;
        f fVar = this.f11378e;
        int i12 = fVar.f11437a;
        int i13 = (i12 >> 24) ^ i11;
        int i14 = i12 << 8;
        int[] iArr = f.f11436b;
        if (i13 < 0) {
            i13 += 256;
        }
        fVar.f11437a = i14 ^ iArr[i13];
        this.f11388q = i10 + 1;
        this.f11381h = 7;
        return i11;
    }

    public final int Q() throws IOException {
        if (this.f11387p > this.f11374a) {
            K();
            L();
            return N();
        }
        this.f11386n = this.f11385m;
        a aVar = this.f11392w;
        byte[] bArr = aVar.f11373o;
        int i10 = this.f11390t;
        int i11 = bArr[i10] & 255;
        J(i10, aVar.f11372n.length, "su_tPos");
        this.f11390t = this.f11392w.f11372n[this.f11390t];
        int i12 = this.r;
        if (i12 == 0) {
            int i13 = this.f11389s;
            this.r = g.f11438a[i13] - 1;
            int i14 = i13 + 1;
            this.f11389s = i14;
            if (i14 == 512) {
                this.f11389s = 0;
            }
        } else {
            this.r = i12 - 1;
        }
        int i15 = i11 ^ (this.r == 1 ? 1 : 0);
        this.f11385m = i15;
        this.f11387p++;
        this.f11381h = 3;
        f fVar = this.f11378e;
        int i16 = fVar.f11437a;
        int i17 = (i16 >> 24) ^ i15;
        int i18 = i16 << 8;
        int[] iArr = f.f11436b;
        if (i17 < 0) {
            i17 += 256;
        }
        fVar.f11437a = i18 ^ iArr[i17];
        return i15;
    }

    public final int R() {
        int i10 = this.f11388q;
        if (i10 >= this.f11391v) {
            this.f11381h = 2;
            this.f11387p++;
            this.l = 0;
            return Q();
        }
        int i11 = this.f11385m;
        f fVar = this.f11378e;
        int i12 = fVar.f11437a;
        int i13 = (i12 >> 24) ^ i11;
        int i14 = i12 << 8;
        int[] iArr = f.f11436b;
        if (i13 < 0) {
            i13 += 256;
        }
        fVar.f11437a = i14 ^ iArr[i13];
        this.f11388q = i10 + 1;
        return i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        rg.a aVar = this.f11380g;
        if (aVar != null) {
            try {
                aVar.close();
            } finally {
                this.f11392w = null;
                this.f11380g = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (this.f11380g != null) {
            return M();
        }
        throw new IOException("Stream closed");
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException(g.b.i("offs(", i10, ") < 0."));
        }
        if (i11 >= 0) {
            int i12 = i10 + i11;
            if (i12 <= bArr.length) {
                if (this.f11380g == null) {
                    throw new IOException("Stream closed");
                }
                if (i11 == 0) {
                    return 0;
                }
                int i13 = i10;
                while (i13 < i12) {
                    int iM = M();
                    if (iM < 0) {
                        break;
                    }
                    bArr[i13] = (byte) iM;
                    i13++;
                }
                if (i13 == i10) {
                    return -1;
                }
                return i13 - i10;
            }
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.s(q.o(i10, i11, "offs(", ") + len(", ") > dest.length("), bArr.length, ")."));
        }
        throw new IndexOutOfBoundsException(g.b.i("len(", i11, ") < 0."));
    }
}
