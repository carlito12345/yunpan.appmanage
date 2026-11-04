package z2;

import j$.nio.charset.StandardCharsets;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import r1.d0;
import u1.f0;
import u1.q;
import u7.a0;
import u7.e0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class h extends nh.b {

    /* renamed from: c, reason: collision with root package name */
    public static final z1.d f19414c = new z1.d();

    /* renamed from: b, reason: collision with root package name */
    public final g f19415b;

    public h(g gVar) {
        this.f19415b = gVar;
    }

    public static m A0(int i10, q qVar) {
        byte[] bArr = new byte[i10];
        qVar.l(0, i10, bArr);
        int iL0 = L0(0, bArr);
        String str = new String(bArr, 0, iL0, StandardCharsets.ISO_8859_1);
        int i11 = iL0 + 1;
        return new m(str, i10 <= i11 ? f0.f15207b : Arrays.copyOfRange(bArr, i11, i10));
    }

    public static String B0(byte[] bArr, int i10, int i11, Charset charset) {
        return (i11 <= i10 || i11 > bArr.length) ? "" : new String(bArr, i10, i11 - i10, charset);
    }

    public static n C0(int i10, String str, q qVar) {
        if (i10 < 1) {
            return null;
        }
        int iB = qVar.B();
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        qVar.l(0, i11, bArr);
        return new n(str, null, D0(iB, 0, bArr));
    }

    public static y0 D0(int i10, int i11, byte[] bArr) {
        if (i11 >= bArr.length) {
            return g0.r("");
        }
        e0 e0Var = g0.f15471b;
        u7.q.c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int iK0 = K0(i11, i10, bArr);
        int i12 = 0;
        while (i11 < iK0) {
            String str = new String(bArr, i11, iK0 - i11, I0(i10));
            int i13 = i12 + 1;
            int iF = a0.f(objArrCopyOf.length, i13);
            if (iF > objArrCopyOf.length) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
            }
            objArrCopyOf[i12] = str;
            i11 = H0(i10) + iK0;
            iK0 = K0(i11, i10, bArr);
            i12 = i13;
        }
        y0 y0VarI = g0.i(i12, objArrCopyOf);
        return y0VarI.isEmpty() ? g0.r("") : y0VarI;
    }

    public static n E0(int i10, q qVar) {
        if (i10 < 1) {
            return null;
        }
        int iB = qVar.B();
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        qVar.l(0, i11, bArr);
        int iK0 = K0(0, iB, bArr);
        return new n("TXXX", new String(bArr, 0, iK0, I0(iB)), D0(iB, H0(iB) + iK0, bArr));
    }

    public static o F0(int i10, String str, q qVar) {
        byte[] bArr = new byte[i10];
        qVar.l(0, i10, bArr);
        return new o(str, null, new String(bArr, 0, L0(0, bArr), StandardCharsets.ISO_8859_1));
    }

    public static o G0(int i10, q qVar) {
        if (i10 < 1) {
            return null;
        }
        int iB = qVar.B();
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        qVar.l(0, i11, bArr);
        int iK0 = K0(0, iB, bArr);
        String str = new String(bArr, 0, iK0, I0(iB));
        int iH0 = H0(iB) + iK0;
        return new o("WXXX", str, B0(bArr, iH0, L0(iH0, bArr), StandardCharsets.ISO_8859_1));
    }

    public static int H0(int i10) {
        return (i10 == 0 || i10 == 3) ? 1 : 2;
    }

    public static Charset I0(int i10) {
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? StandardCharsets.ISO_8859_1 : StandardCharsets.UTF_8 : StandardCharsets.UTF_16BE : StandardCharsets.UTF_16;
    }

    public static String J0(int i10, int i11, int i12, int i13, int i14) {
        return i10 == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14));
    }

    public static int K0(int i10, int i11, byte[] bArr) {
        int iL0 = L0(i10, bArr);
        if (i11 == 0 || i11 == 3) {
            return iL0;
        }
        while (iL0 < bArr.length - 1) {
            if ((iL0 - i10) % 2 == 0 && bArr[iL0 + 1] == 0) {
                return iL0;
            }
            iL0 = L0(iL0 + 1, bArr);
        }
        return bArr.length;
    }

    public static int L0(int i10, byte[] bArr) {
        while (i10 < bArr.length) {
            if (bArr[i10] == 0) {
                return i10;
            }
            i10++;
        }
        return bArr.length;
    }

    public static int M0(int i10, q qVar) {
        byte[] bArr = qVar.f15266a;
        int i11 = qVar.f15267b;
        int i12 = i11;
        while (true) {
            int i13 = i12 + 1;
            if (i13 >= i11 + i10) {
                return i10;
            }
            if ((bArr[i12] & 255) == 255 && bArr[i13] == 0) {
                System.arraycopy(bArr, i12 + 2, bArr, i13, (i10 - (i12 - i11)) - 2);
                i10--;
            }
            i12 = i13;
        }
    }

    public static boolean N0(q qVar, int i10, int i11, boolean z) {
        int iE;
        long jE;
        int I;
        int i12;
        int i13 = qVar.f15267b;
        while (true) {
            try {
                boolean z4 = true;
                if (qVar.a() < i11) {
                    qVar.O(i13);
                    return true;
                }
                if (i10 >= 3) {
                    iE = qVar.o();
                    jE = qVar.D();
                    I = qVar.I();
                } else {
                    iE = qVar.E();
                    jE = qVar.E();
                    I = 0;
                }
                if (iE == 0 && jE == 0 && I == 0) {
                    qVar.O(i13);
                    return true;
                }
                if (i10 == 4 && !z) {
                    if ((8421504 & jE) != 0) {
                        qVar.O(i13);
                        return false;
                    }
                    jE = (((jE >> 24) & 255) << 21) | (jE & 255) | (((jE >> 8) & 255) << 7) | (((jE >> 16) & 255) << 14);
                }
                if (i10 == 4) {
                    i12 = (I & 64) != 0 ? 1 : 0;
                    if ((I & 1) == 0) {
                        z4 = false;
                    }
                } else {
                    if (i10 == 3) {
                        i12 = (I & 32) != 0 ? 1 : 0;
                        if ((I & 128) == 0) {
                        }
                    } else {
                        i12 = 0;
                    }
                    z4 = false;
                }
                if (z4) {
                    i12 += 4;
                }
                if (jE < i12) {
                    qVar.O(i13);
                    return false;
                }
                if (qVar.a() < jE) {
                    qVar.O(i13);
                    return false;
                }
                qVar.P((int) jE);
            } catch (Throwable th2) {
                qVar.O(i13);
                throw th2;
            }
        }
    }

    public static a t0(q qVar, int i10, int i11) {
        int iL0;
        String strConcat;
        int iB = qVar.B();
        Charset charsetI0 = I0(iB);
        int i12 = i10 - 1;
        byte[] bArr = new byte[i12];
        qVar.l(0, i12, bArr);
        if (i11 == 2) {
            strConcat = "image/" + qf.c.b0(new String(bArr, 0, 3, StandardCharsets.ISO_8859_1));
            if ("image/jpg".equals(strConcat)) {
                strConcat = "image/jpeg";
            }
            iL0 = 2;
        } else {
            iL0 = L0(0, bArr);
            String strB0 = qf.c.b0(new String(bArr, 0, iL0, StandardCharsets.ISO_8859_1));
            strConcat = strB0.indexOf(47) == -1 ? "image/".concat(strB0) : strB0;
        }
        int i13 = bArr[iL0 + 1] & 255;
        int i14 = iL0 + 2;
        int iK0 = K0(i14, iB, bArr);
        String str = new String(bArr, i14, iK0 - i14, charsetI0);
        int iH0 = H0(iB) + iK0;
        return new a(i13, strConcat, str, i12 <= iH0 ? f0.f15207b : Arrays.copyOfRange(bArr, iH0, i12));
    }

    public static c u0(q qVar, int i10, int i11, boolean z, int i12, g gVar) {
        int i13 = qVar.f15267b;
        int iL0 = L0(i13, qVar.f15266a);
        String str = new String(qVar.f15266a, i13, iL0 - i13, StandardCharsets.ISO_8859_1);
        qVar.O(iL0 + 1);
        int iO = qVar.o();
        int iO2 = qVar.o();
        long jD = qVar.D();
        long j10 = jD == 4294967295L ? -1L : jD;
        long jD2 = qVar.D();
        long j11 = jD2 == 4294967295L ? -1L : jD2;
        ArrayList arrayList = new ArrayList();
        int i14 = i13 + i10;
        while (qVar.f15267b < i14) {
            i iVarX0 = x0(i11, qVar, z, i12, gVar);
            if (iVarX0 != null) {
                arrayList.add(iVarX0);
            }
        }
        return new c(str, iO, iO2, j10, j11, (i[]) arrayList.toArray(new i[0]));
    }

    public static d v0(q qVar, int i10, int i11, boolean z, int i12, g gVar) {
        int i13 = qVar.f15267b;
        int iL0 = L0(i13, qVar.f15266a);
        String str = new String(qVar.f15266a, i13, iL0 - i13, StandardCharsets.ISO_8859_1);
        qVar.O(iL0 + 1);
        int iB = qVar.B();
        boolean z4 = (iB & 2) != 0;
        boolean z10 = (iB & 1) != 0;
        int iB2 = qVar.B();
        String[] strArr = new String[iB2];
        for (int i14 = 0; i14 < iB2; i14++) {
            int i15 = qVar.f15267b;
            int iL02 = L0(i15, qVar.f15266a);
            strArr[i14] = new String(qVar.f15266a, i15, iL02 - i15, StandardCharsets.ISO_8859_1);
            qVar.O(iL02 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i16 = i13 + i10;
        while (qVar.f15267b < i16) {
            i iVarX0 = x0(i11, qVar, z, i12, gVar);
            if (iVarX0 != null) {
                arrayList.add(iVarX0);
            }
        }
        return new d(str, z4, z10, strArr, (i[]) arrayList.toArray(new i[0]));
    }

    public static e w0(int i10, q qVar) {
        if (i10 < 4) {
            return null;
        }
        int iB = qVar.B();
        Charset charsetI0 = I0(iB);
        byte[] bArr = new byte[3];
        qVar.l(0, 3, bArr);
        String str = new String(bArr, 0, 3);
        int i11 = i10 - 4;
        byte[] bArr2 = new byte[i11];
        qVar.l(0, i11, bArr2);
        int iK0 = K0(0, iB, bArr2);
        String str2 = new String(bArr2, 0, iK0, charsetI0);
        int iH0 = H0(iB) + iK0;
        return new e(str, str2, B0(bArr2, iH0, K0(iH0, iB, bArr2), charsetI0));
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x01db A[Catch: all -> 0x010d, Exception -> 0x0110, OutOfMemoryError -> 0x0113, TRY_LEAVE, TryCatch #2 {Exception -> 0x0110, OutOfMemoryError -> 0x0113, all -> 0x010d, blocks: (B:91:0x0107, B:99:0x0118, B:106:0x012e, B:108:0x0136, B:116:0x0150, B:125:0x0168, B:136:0x0183, B:143:0x0195, B:149:0x01a4, B:154:0x01bc, B:160:0x01d6, B:161:0x01db), top: B:172:0x00fd }] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x01fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static i x0(int i10, q qVar, boolean z, int i11, g gVar) {
        int iF;
        int i12;
        int i13;
        boolean z4;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        i bVar;
        int iB = qVar.B();
        int iB2 = qVar.B();
        int iB3 = qVar.B();
        int iB4 = i10 >= 3 ? qVar.B() : 0;
        if (i10 == 4) {
            iF = qVar.F();
            if (!z) {
                iF = (((iF >> 24) & 255) << 21) | (iF & 255) | (((iF >> 8) & 255) << 7) | (((iF >> 16) & 255) << 14);
            }
        } else {
            iF = i10 == 3 ? qVar.F() : qVar.E();
        }
        int iM0 = iF;
        int I = i10 >= 3 ? qVar.I() : 0;
        i iVar = null;
        if (iB == 0 && iB2 == 0 && iB3 == 0 && iB4 == 0 && iM0 == 0 && I == 0) {
            qVar.O(qVar.f15268c);
            return null;
        }
        int i14 = qVar.f15267b + iM0;
        if (i14 > qVar.f15268c) {
            u1.a.p("Frame size exceeds remaining tag data");
            qVar.O(qVar.f15268c);
            return null;
        }
        if (gVar != null) {
            i12 = i14;
            i13 = I;
            if (!gVar.b(i10, iB, iB2, iB3, iB4)) {
                qVar.O(i12);
                return null;
            }
        } else {
            i12 = i14;
            i13 = I;
        }
        if (i10 == 3) {
            z10 = (i13 & 128) != 0;
            boolean z14 = (i13 & 64) != 0;
            z4 = (i13 & 32) != 0;
            z12 = z14;
            z13 = false;
            z11 = z10;
        } else if (i10 == 4) {
            boolean z15 = (i13 & 64) != 0;
            boolean z16 = (i13 & 8) != 0;
            z12 = (i13 & 4) != 0;
            z13 = (i13 & 2) != 0;
            boolean z17 = z16;
            z11 = (i13 & 1) != 0;
            z4 = z15;
            z10 = z17;
        } else {
            z4 = false;
            z10 = false;
            z11 = false;
            z12 = false;
            z13 = false;
        }
        if (z10 || z12) {
            u1.a.p("Skipping unsupported compressed or encrypted frame");
            qVar.O(i12);
            return null;
        }
        if (z4) {
            iM0--;
            qVar.P(1);
        }
        if (z11) {
            iM0 -= 4;
            qVar.P(4);
        }
        if (z13) {
            iM0 = M0(iM0, qVar);
        }
        try {
        } catch (Exception e7) {
            e = e7;
            qVar.O(i12);
            if (iVar == null) {
            }
            return iVar;
        } catch (OutOfMemoryError e10) {
            e = e10;
            qVar.O(i12);
            if (iVar == null) {
            }
            return iVar;
        } catch (Throwable th2) {
            qVar.O(i12);
            throw th2;
        }
        if (iB == 84 && iB2 == 88 && iB3 == 88 && (i10 == 2 || iB4 == 88)) {
            bVar = E0(iM0, qVar);
        } else if (iB == 84) {
            bVar = C0(iM0, J0(i10, iB, iB2, iB3, iB4), qVar);
        } else if (iB == 87 && iB2 == 88 && iB3 == 88 && (i10 == 2 || iB4 == 88)) {
            bVar = G0(iM0, qVar);
        } else if (iB == 87) {
            bVar = F0(iM0, J0(i10, iB, iB2, iB3, iB4), qVar);
        } else if (iB == 80 && iB2 == 82 && iB3 == 73 && iB4 == 86) {
            bVar = A0(iM0, qVar);
        } else if (iB == 71 && iB2 == 69 && iB3 == 79 && (iB4 == 66 || i10 == 2)) {
            bVar = y0(iM0, qVar);
        } else if (i10 == 2) {
            if (iB == 80 && iB2 == 73 && iB3 == 67) {
                bVar = t0(qVar, iM0, i10);
            }
            if (iB != 67 && iB2 == 79 && iB3 == 77 && (iB4 == 77 || i10 == 2)) {
                bVar = w0(iM0, qVar);
            } else if (iB != 67 && iB2 == 72 && iB3 == 65 && iB4 == 80) {
                bVar = u0(qVar, iM0, i10, z, i11, gVar);
            } else if (iB != 67 && iB2 == 84 && iB3 == 79 && iB4 == 67) {
                bVar = v0(qVar, iM0, i10, z, i11, gVar);
            } else if (iB != 77 && iB2 == 76 && iB3 == 76 && iB4 == 84) {
                bVar = z0(iM0, qVar);
            } else {
                String strJ0 = J0(i10, iB, iB2, iB3, iB4);
                byte[] bArr = new byte[iM0];
                qVar.l(0, iM0, bArr);
                bVar = new b(strJ0, bArr);
            }
        } else {
            if (iB != 65 || iB2 != 80 || iB3 != 73 || iB4 != 67) {
                if (iB != 67) {
                    if (iB != 67) {
                        if (iB != 67) {
                            if (iB != 77) {
                                String strJ02 = J0(i10, iB, iB2, iB3, iB4);
                                byte[] bArr2 = new byte[iM0];
                                qVar.l(0, iM0, bArr2);
                                bVar = new b(strJ02, bArr2);
                            }
                        }
                    }
                }
                if (iVar == null) {
                    u1.a.q("Failed to decode frame: id=" + J0(i10, iB, iB2, iB3, iB4) + ", frameSize=" + iM0, e);
                }
                return iVar;
            }
            bVar = t0(qVar, iM0, i10);
        }
        qVar.O(i12);
        iVar = bVar;
        e = null;
        if (iVar == null) {
        }
        return iVar;
    }

    public static f y0(int i10, q qVar) {
        int iB = qVar.B();
        Charset charsetI0 = I0(iB);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        qVar.l(0, i11, bArr);
        int iL0 = L0(0, bArr);
        String strL = r1.e0.l(new String(bArr, 0, iL0, StandardCharsets.ISO_8859_1));
        int i12 = iL0 + 1;
        int iK0 = K0(i12, iB, bArr);
        String strB0 = B0(bArr, i12, iK0, charsetI0);
        int iH0 = H0(iB) + iK0;
        int iK02 = K0(iH0, iB, bArr);
        String strB02 = B0(bArr, iH0, iK02, charsetI0);
        int iH02 = H0(iB) + iK02;
        return new f(strL, strB0, strB02, i11 <= iH02 ? f0.f15207b : Arrays.copyOfRange(bArr, iH02, i11));
    }

    public static l z0(int i10, q qVar) {
        int I = qVar.I();
        int iE = qVar.E();
        int iE2 = qVar.E();
        int iB = qVar.B();
        int iB2 = qVar.B();
        j3.f fVar = new j3.f();
        fVar.l(qVar);
        int i11 = ((i10 - 10) * 8) / (iB + iB2);
        int[] iArr = new int[i11];
        int[] iArr2 = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            int iG = fVar.g(iB);
            int iG2 = fVar.g(iB2);
            iArr[i12] = iG;
            iArr2[i12] = iG2;
        }
        return new l(I, iE, iArr, iArr2, iE2);
    }

    @Override // nh.b
    public final d0 r(u2.a aVar, ByteBuffer byteBuffer) {
        return s0(byteBuffer.limit(), byteBuffer.array());
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0099 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final d0 s0(int i10, byte[] bArr) {
        mb.d dVar;
        boolean z = true;
        ArrayList arrayList = new ArrayList();
        q qVar = new q(bArr, i10);
        if (qVar.a() < 10) {
            u1.a.p("Data too short to be an ID3 tag");
        } else {
            int iE = qVar.E();
            if (iE == 4801587) {
                int iB = qVar.B();
                qVar.P(1);
                int iB2 = qVar.B();
                int iA = qVar.A();
                if (iB == 2) {
                    if ((iB2 & 64) != 0) {
                        u1.a.p("Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                    }
                    dVar = new mb.d(iB, iA, iB >= 4 && (iB2 & 128) != 0);
                } else {
                    if (iB == 3) {
                        if ((iB2 & 64) != 0) {
                            int iO = qVar.o();
                            qVar.P(iO);
                            iA -= iO + 4;
                        }
                    } else if (iB == 4) {
                        if ((iB2 & 64) != 0) {
                            int iA2 = qVar.A();
                            qVar.P(iA2 - 4);
                            iA -= iA2;
                        }
                        if ((iB2 & 16) != 0) {
                            iA -= 10;
                        }
                    } else {
                        org.bouncycastle.jcajce.provider.digest.a.o(iB, "Skipped ID3 tag with unsupported majorVersion=");
                    }
                    if (iB >= 4) {
                        dVar = new mb.d(iB, iA, iB >= 4 && (iB2 & 128) != 0);
                    }
                }
                if (dVar != null) {
                    return null;
                }
                int i11 = qVar.f15267b;
                int i12 = dVar.f11061a;
                int i13 = i12 == 2 ? 6 : 10;
                boolean z4 = dVar.f11062b;
                int iM0 = dVar.f11063c;
                if (z4) {
                    iM0 = M0(iM0, qVar);
                }
                qVar.N(i11 + iM0);
                if (N0(qVar, i12, i13, false)) {
                    z = false;
                } else if (i12 != 4 || !N0(qVar, 4, i13, true)) {
                    org.bouncycastle.jcajce.provider.digest.a.o(i12, "Failed to validate ID3 tag with majorVersion=");
                    return null;
                }
                while (qVar.a() >= i13) {
                    i iVarX0 = x0(i12, qVar, z, i13, this.f19415b);
                    if (iVarX0 != null) {
                        arrayList.add(iVarX0);
                    }
                }
                return new d0(arrayList);
            }
            u1.a.p("Unexpected first three bytes of ID3 tag header: 0x".concat(String.format("%06X", Integer.valueOf(iE))));
        }
        dVar = null;
        if (dVar != null) {
        }
    }
}
