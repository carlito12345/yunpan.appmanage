package f3;

import com.hsae.autosdk.core.NoConst;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import r1.c0;
import r1.d0;
import r1.e0;
import u7.a0;
import u7.g0;

/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f5559a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    public static String a(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        boolean z = false;
        String str = null;
        while (it.hasNext()) {
            String str2 = ((v) it.next()).f5592a.f5566g.f13523o;
            if (e0.k(str2)) {
                return "video/mp4";
            }
            if (e0.h(str2)) {
                z = true;
            } else if (e0.i(str2)) {
                if (Objects.equals(str2, "image/heic")) {
                    str = "image/heif";
                } else if (Objects.equals(str2, "image/avif")) {
                    str = "image/avif";
                }
            }
        }
        return z ? "audio/mp4" : str != null ? str : "application/mp4";
    }

    public static boolean b(int i10, boolean z) {
        if ((i10 >>> 8) == 3368816) {
            return true;
        }
        if (i10 == 1751476579 && z) {
            return true;
        }
        int[] iArr = f5559a;
        for (int i11 = 0; i11 < 29; i11++) {
            if (iArr[i11] == i10) {
                return true;
            }
        }
        return false;
    }

    public static z2.a c(u1.q qVar) {
        int iO = qVar.o();
        if (qVar.o() != 1684108385) {
            u1.a.p("Failed to parse cover art attribute");
            return null;
        }
        int iO2 = qVar.o();
        byte[] bArr = e.f5472a;
        int i10 = iO2 & NoConst.I24;
        String str = i10 == 13 ? "image/jpeg" : i10 == 14 ? "image/png" : null;
        if (str == null) {
            org.bouncycastle.jcajce.provider.digest.a.o(i10, "Unrecognized cover art flags: ");
            return null;
        }
        qVar.P(4);
        int i11 = iO - 16;
        byte[] bArr2 = new byte[i11];
        qVar.l(0, i11, bArr2);
        return new z2.a(3, str, null, bArr2);
    }

    public static z2.n d(int i10, String str, u1.q qVar) {
        int iO = qVar.o();
        if (qVar.o() == 1684108385 && iO >= 22) {
            qVar.P(10);
            int I = qVar.I();
            if (I > 0) {
                String strA = da.b.a(I, "");
                int I2 = qVar.I();
                if (I2 > 0) {
                    strA = strA + "/" + I2;
                }
                return new z2.n(str, null, g0.r(strA));
            }
        }
        u1.a.p("Failed to parse index/count attribute: " + ab.a.b(i10));
        return null;
    }

    public static int e(u1.q qVar) {
        int iO = qVar.o();
        if (qVar.o() == 1684108385) {
            qVar.P(8);
            int i10 = iO - 16;
            if (i10 == 1) {
                return qVar.B();
            }
            if (i10 == 2) {
                return qVar.I();
            }
            if (i10 == 3) {
                return qVar.E();
            }
            if (i10 == 4 && (qVar.k() & 128) == 0) {
                return qVar.F();
            }
        }
        u1.a.p("Failed to parse data atom to int");
        return -1;
    }

    public static z2.i f(int i10, String str, u1.q qVar, boolean z, boolean z4) {
        int iE = e(qVar);
        if (z4) {
            iE = Math.min(1, iE);
        }
        if (iE >= 0) {
            return z ? new z2.n(str, null, g0.r(Integer.toString(iE))) : new z2.e("und", str, Integer.toString(iE));
        }
        u1.a.p("Failed to parse uint8 attribute: " + ab.a.b(i10));
        return null;
    }

    public static z2.n g(int i10, String str, u1.q qVar) {
        int iO = qVar.o();
        if (qVar.o() == 1684108385) {
            qVar.P(8);
            return new z2.n(str, null, g0.r(qVar.x(iO - 16)));
        }
        u1.a.p("Failed to parse text attribute: " + ab.a.b(i10));
        return null;
    }

    public static void h(int i10, d0 d0Var, r1.o oVar, d0 d0Var2, d0... d0VarArr) {
        if (d0Var2 == null) {
            d0Var2 = new d0(new c0[0]);
        }
        if (d0Var != null) {
            u7.e0 e0Var = g0.f15471b;
            u7.q.c(4, "initialCapacity");
            Object[] objArrCopyOf = new Object[4];
            int i11 = 0;
            for (c0 c0Var : d0Var.f13430a) {
                if (v1.a.class.isAssignableFrom(c0Var.getClass())) {
                    c0 c0Var2 = (c0) v1.a.class.cast(c0Var);
                    c0Var2.getClass();
                    int i12 = i11 + 1;
                    int iF = a0.f(objArrCopyOf.length, i12);
                    if (iF > objArrCopyOf.length) {
                        objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
                    }
                    objArrCopyOf[i11] = c0Var2;
                    i11 = i12;
                }
            }
            u7.e0 e0VarListIterator = g0.i(i11, objArrCopyOf).listIterator(0);
            while (e0VarListIterator.hasNext()) {
                v1.a aVar = (v1.a) e0VarListIterator.next();
                if (!aVar.f16323a.equals("com.android.capture.fps") || i10 == 2) {
                    d0Var2 = d0Var2.a(aVar);
                }
            }
        }
        for (d0 d0Var3 : d0VarArr) {
            d0Var2 = d0Var2.b(d0Var3);
        }
        if (d0Var2.f13430a.length > 0) {
            oVar.f13490k = d0Var2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static l2.g0 i(l2.p pVar, boolean z, boolean z4) {
        long jD;
        int i10;
        long j10;
        int i11;
        boolean z10;
        int[] iArr;
        long length = pVar.getLength();
        long j11 = 4096;
        long j12 = -1;
        if (length != -1 && length <= 4096) {
            j11 = length;
        }
        int i12 = (int) j11;
        u1.q qVar = new u1.q(64);
        int i13 = 0;
        int i14 = 0;
        boolean z11 = false;
        while (i14 < i12) {
            qVar.L(8);
            if (!pVar.c(qVar.f15266a, i13, 8, true)) {
                break;
            }
            long jD2 = qVar.D();
            int iO = qVar.o();
            if (jD2 == 1) {
                pVar.a(8, 8, qVar.f15266a);
                qVar.N(16);
                jD = qVar.v();
                i10 = 16;
            } else if (jD2 == 0) {
                long length2 = pVar.getLength();
                jD = length2 != j12 ? (length2 - pVar.d()) + 8 : jD2;
                i10 = 8;
            }
            long j13 = i10;
            if (jD < j13) {
                if (iO != 1718773093 || i10 != 8) {
                    return new a(iO, i10, jD);
                }
                jD = j13;
            }
            int i15 = i14 + i10;
            if (iO == 1836019574 || iO == 1970628964) {
                i12 += (int) jD;
                j10 = -1;
                if (length != -1) {
                    i11 = i15;
                    if (i12 > length) {
                        i12 = (int) length;
                    }
                } else {
                    i11 = i15;
                }
                if (iO == 1836019574) {
                    i14 = i11;
                    j12 = -1;
                    i13 = 0;
                }
            } else {
                i11 = i15;
                j10 = -1;
            }
            if (iO != 1953653099 && iO != 1835297121 && iO != 1835626086) {
                if (iO != 1836019558 && iO != 1836475768) {
                    if (iO == 1835295092) {
                        z11 = true;
                    }
                    if ((iO == 1937007212 && jD > 1000000) || (i11 + jD) - j13 >= i12) {
                        i13 = 0;
                        break;
                    }
                    int i16 = (int) (jD - j13);
                    i14 = i11 + i16;
                    if (iO != 1718909296) {
                        i13 = 0;
                        if (i16 != 0) {
                            pVar.e(i16);
                        }
                    } else {
                        if (i16 < 8) {
                            return new a(iO, 8, i16);
                        }
                        qVar.L(i16);
                        i13 = 0;
                        pVar.a(0, i16, qVar.f15266a);
                        int iO2 = qVar.o();
                        if (b(iO2, z4)) {
                            z11 = true;
                        }
                        qVar.P(4);
                        int iA = qVar.a() / 4;
                        if (!z11 && iA > 0) {
                            int[] iArr2 = new int[iA];
                            int i17 = 0;
                            while (true) {
                                if (i17 >= iA) {
                                    iArr = iArr2;
                                    z10 = z11;
                                    break;
                                }
                                int iO3 = qVar.o();
                                iArr2[i17] = iO3;
                                if (b(iO3, z4)) {
                                    iArr = iArr2;
                                    z10 = true;
                                    break;
                                }
                                i17++;
                            }
                        } else {
                            z10 = z11;
                            iArr = null;
                        }
                        if (!z10) {
                            return new d3.g(iO2, iArr);
                        }
                        z11 = z10;
                    }
                } else {
                    i13 = 1;
                    break;
                }
            } else {
                i13 = 0;
                i14 = i11;
            }
            j12 = j10;
        }
        if (!z11) {
            return o.f5551a;
        }
        if (z != i13) {
            return i13 != 0 ? k.f5516b : k.f5517c;
        }
        return null;
    }
}
