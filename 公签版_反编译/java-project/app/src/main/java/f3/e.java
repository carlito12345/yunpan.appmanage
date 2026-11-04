package f3;

import a2.w0;
import android.util.Pair;
import androidx.media3.exoplayer.video.y;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import f2.y0;
import j$.nio.charset.StandardCharsets;
import j$.util.Objects;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import l2.w;
import l2.z;
import r1.c0;
import r1.d0;
import r1.e0;
import u1.f0;
import u7.g0;

/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f5472a;

    static {
        String str = f0.f15206a;
        f5472a = "OpusHead".getBytes(StandardCharsets.UTF_8);
    }

    public static void a(u1.q qVar) {
        int i10 = qVar.f15267b;
        qVar.P(4);
        if (qVar.o() != 1751411826) {
            i10 += 4;
        }
        qVar.O(i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:200:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0590  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x05c4  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x065b  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x065d  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0661  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x071b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0788  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x07d0  */
    /* JADX WARN: Removed duplicated region for block: B:617:0x0831 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b(u1.q qVar, int i10, int i11, int i12, int i13, String str, boolean z, r1.l lVar, a9.a aVar, int i14) throws r1.f0 {
        int i15;
        int I;
        int iC;
        int iO;
        int i16;
        r1.l lVarA;
        String str2;
        String str3;
        int i17;
        a9.a aVar2;
        String str4;
        int i18;
        int i19;
        int i20;
        String str5;
        List listR;
        String str6;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int iT;
        int i27;
        int i28;
        int i29;
        r1.l lVar2;
        int i30;
        int i31;
        int i32;
        int i33;
        boolean zF;
        int iG;
        int iG2;
        boolean z4;
        int i34;
        int i35;
        boolean zF2;
        int i36;
        boolean z10;
        int i37;
        u1.q qVar2 = qVar;
        int iIntValue = i10;
        int i38 = i11;
        int i39 = i12;
        String str7 = str;
        a9.a aVar3 = aVar;
        qVar2.O(i38 + 16);
        if (z) {
            int I2 = qVar.I();
            qVar2.P(6);
            i15 = I2;
        } else {
            qVar2.P(8);
            i15 = 0;
        }
        int iT2 = 268435456;
        if (i15 == 0 || i15 == 1) {
            I = qVar.I();
            qVar2.P(6);
            iC = qVar.C();
            qVar2.O(qVar2.f15267b - 4);
            iO = qVar.o();
            if (i15 == 1) {
                qVar2.P(16);
            }
            i16 = -1;
        } else {
            if (i15 != 2) {
                return;
            }
            qVar2.P(16);
            iC = (int) Math.round(Double.longBitsToDouble(qVar.v()));
            I = qVar.F();
            qVar2.P(4);
            int iF = qVar.F();
            int iF2 = qVar.F();
            boolean z11 = (iF2 & 1) != 0;
            boolean z12 = (iF2 & 2) != 0;
            if (z11) {
                if (!z12 && iF == 32) {
                    i16 = 4;
                }
                qVar2.P(8);
                iO = 0;
            } else {
                i16 = iF == 8 ? 3 : iF == 16 ? z12 ? 268435456 : 2 : iF == 24 ? z12 ? 1342177280 : 21 : iF == 32 ? z12 ? 1610612736 : 22 : -1;
                qVar2.P(8);
                iO = 0;
            }
        }
        if (iIntValue == 1767992678) {
            I = -1;
            iC = -1;
        } else if (iIntValue == 1935764850) {
            I = 1;
            iC = 8000;
        } else if (iIntValue == 1935767394) {
            I = 1;
            iC = 16000;
        }
        int i40 = qVar2.f15267b;
        if (iIntValue == 1701733217) {
            Pair pairH = h(qVar2, i38, i39);
            if (pairH != null) {
                iIntValue = ((Integer) pairH.first).intValue();
                lVarA = lVar == null ? null : lVar.a(((t) pairH.second).f5572b);
                ((t[]) aVar3.f473d)[i14] = (t) pairH.second;
            } else {
                lVarA = lVar;
            }
            qVar2.O(i40);
        } else {
            lVarA = lVar;
        }
        String str8 = "audio/mhm1";
        if (iIntValue == 1633889587) {
            iT2 = i16;
            str2 = "audio/ac3";
        } else if (iIntValue == 1700998451) {
            iT2 = i16;
            str2 = "audio/eac3";
        } else if (iIntValue == 1633889588) {
            iT2 = i16;
            str2 = "audio/ac4";
        } else {
            if (iIntValue == 1685353315) {
                str2 = "audio/vnd.dts";
            } else if (iIntValue == 1685353320 || iIntValue == 1685353324) {
                str2 = "audio/vnd.dts.hd";
            } else if (iIntValue == 1685353317) {
                str2 = "audio/vnd.dts.hd;profile=lbr";
            } else if (iIntValue == 1685353336) {
                str2 = "audio/vnd.dts.uhd;profile=p2";
            } else if (iIntValue == 1935764850) {
                str2 = "audio/3gpp";
            } else if (iIntValue == 1935767394) {
                str2 = "audio/amr-wb";
            } else if (iIntValue == 1936684916) {
                str2 = "audio/raw";
                iT2 = 2;
            } else if (iIntValue == 1953984371) {
                str2 = "audio/raw";
            } else if (iIntValue == 1819304813) {
                if (i16 != -1) {
                    iT2 = i16;
                    str2 = "audio/raw";
                }
                str2 = "audio/raw";
                iT2 = 2;
            } else if (iIntValue == 778924082 || iIntValue == 778924083) {
                str2 = "audio/mpeg";
            } else if (iIntValue == 1835557169) {
                str2 = "audio/mha1";
            } else if (iIntValue == 1835560241) {
                iT2 = i16;
                str2 = "audio/mhm1";
            } else if (iIntValue == 1634492771) {
                str2 = "audio/alac";
            } else if (iIntValue == 1634492791) {
                str2 = "audio/g711-alaw";
            } else if (iIntValue == 1970037111) {
                str2 = "audio/g711-mlaw";
            } else if (iIntValue == 1332770163) {
                str2 = "audio/opus";
            } else if (iIntValue == 1716281667) {
                str2 = "audio/flac";
            } else if (iIntValue == 1835823201) {
                str2 = "audio/true-hd";
            } else if (iIntValue == 1767992678) {
                str2 = "audio/iamf";
            } else {
                iT2 = i16;
                str2 = null;
            }
            iT2 = i16;
        }
        String str9 = null;
        List listR2 = null;
        y0 y0Var = null;
        y yVar = null;
        while (i40 - i38 < i39) {
            qVar2.O(i40);
            int iO2 = qVar.o();
            l2.b.b("childAtomSize must be positive", iO2 > 0);
            int iO3 = qVar.o();
            String str10 = str9;
            if (iO3 == 1835557187) {
                qVar2.O(i40 + 8);
                qVar2.P(1);
                int iB = qVar.B();
                qVar2.P(1);
                if (Objects.equals(str2, str8)) {
                    i37 = 0;
                    str9 = String.format("mhm1.%02X", Integer.valueOf(iB));
                    str3 = str8;
                } else {
                    i37 = 0;
                    str3 = str8;
                    str9 = String.format("mha1.%02X", Integer.valueOf(iB));
                }
                int I3 = qVar.I();
                byte[] bArr = new byte[I3];
                qVar2.l(i37, I3, bArr);
                listR2 = listR2 == null ? g0.r(bArr) : g0.s(bArr, (byte[]) listR2.get(i37));
                str6 = str2;
                i21 = I;
                i20 = iO2;
            } else {
                str3 = str8;
                if (iO3 == 1835557200) {
                    qVar2.O(i40 + 8);
                    int iB2 = qVar.B();
                    if (iB2 > 0) {
                        byte[] bArr2 = new byte[iB2];
                        qVar2.l(0, iB2, bArr2);
                        listR2 = listR2 == null ? g0.r(bArr2) : g0.s((byte[]) listR2.get(0), bArr2);
                    }
                } else {
                    if (iO3 == 1702061171 || (z && iO3 == 2002876005)) {
                        String str11 = str2;
                        int i41 = iO2;
                        List list = listR2;
                        int i42 = i40;
                        i17 = iIntValue;
                        int i43 = I;
                        aVar2 = aVar3;
                        str4 = str7;
                        int i44 = iC;
                        u1.q qVar3 = qVar2;
                        if (iO3 == 1702061171) {
                            i19 = i42;
                            i18 = i19;
                            i20 = i41;
                        } else {
                            i18 = qVar3.f15267b;
                            i19 = i42;
                            l2.b.b(null, i18 >= i19);
                            while (true) {
                                i20 = i41;
                                if (i18 - i19 < i20) {
                                    qVar3.O(i18);
                                    int iO4 = qVar.o();
                                    l2.b.b("childAtomSize must be positive", iO4 > 0);
                                    if (qVar.o() != 1702061171) {
                                        i18 += iO4;
                                        i41 = i20;
                                    }
                                } else {
                                    i18 = -1;
                                }
                            }
                        }
                        if (i18 != -1) {
                            y0 y0VarC = c(i18, qVar3);
                            str5 = (String) y0VarC.f5445c;
                            byte[] bArr3 = (byte[]) y0VarC.f5446d;
                            if (bArr3 != null) {
                                if ("audio/vorbis".equals(str5)) {
                                    u1.q qVar4 = new u1.q(bArr3);
                                    qVar4.P(1);
                                    int i45 = 0;
                                    while (true) {
                                        if (qVar4.a() > 0) {
                                            y0Var = y0VarC;
                                            i22 = 255;
                                            if (qVar4.k() == 255) {
                                                i45 += 255;
                                                qVar4.P(1);
                                                y0VarC = y0Var;
                                            }
                                        } else {
                                            y0Var = y0VarC;
                                            i22 = 255;
                                        }
                                    }
                                    int iB3 = qVar4.B() + i45;
                                    int i46 = 0;
                                    while (qVar4.a() > 0 && qVar4.k() == i22) {
                                        i46 += i22;
                                        qVar4.P(1);
                                    }
                                    int iB4 = qVar4.B() + i46;
                                    byte[] bArr4 = new byte[iB3];
                                    int i47 = qVar4.f15267b;
                                    System.arraycopy(bArr3, i47, bArr4, 0, iB3);
                                    int i48 = i47 + iB3 + iB4;
                                    int length = bArr3.length - i48;
                                    byte[] bArr5 = new byte[length];
                                    System.arraycopy(bArr3, i48, bArr5, 0, length);
                                    u7.y0 y0VarS = g0.s(bArr4, bArr5);
                                    iC = i44;
                                    listR = y0VarS;
                                    str9 = str10;
                                } else {
                                    y0Var = y0VarC;
                                    if ("audio/mp4a-latm".equals(str5)) {
                                        l2.a aVarO = l2.b.o(new j3.f(bArr3, bArr3.length), false);
                                        iC = aVarO.f10389b;
                                        int i49 = aVarO.f10390c;
                                        str9 = aVarO.f10388a;
                                        i43 = i49;
                                    } else {
                                        iC = i44;
                                        str9 = str10;
                                    }
                                    listR = g0.r(bArr3);
                                }
                                str6 = str5;
                                i21 = i43;
                                listR2 = listR;
                            } else {
                                y0Var = y0VarC;
                                iC = i44;
                                str9 = str10;
                            }
                        } else {
                            iC = i44;
                            str9 = str10;
                            str5 = str11;
                        }
                        listR = list;
                        str6 = str5;
                        i21 = i43;
                        listR2 = listR;
                    } else if (iO3 == 1651798644) {
                        qVar2.O(i40 + 8);
                        qVar2.P(4);
                        yVar = new y(qVar.D(), qVar.D(), 1);
                    } else {
                        int[] iArr = l2.b.f10403f;
                        int[] iArr2 = l2.b.f10401d;
                        List list2 = listR2;
                        if (iO3 == 1684103987) {
                            qVar2.O(i40 + 8);
                            String string = Integer.toString(i13);
                            j3.f fVar = new j3.f();
                            fVar.l(qVar2);
                            int i50 = iArr2[fVar.g(2)];
                            fVar.o(8);
                            int i51 = iArr[fVar.g(3)];
                            if (fVar.g(1) != 0) {
                                i51++;
                            }
                            int i52 = l2.b.f10404g[fVar.g(5)] * 1000;
                            fVar.c();
                            qVar2.O(fVar.d());
                            r1.o oVar = new r1.o();
                            oVar.f13480a = string;
                            oVar.f13492n = e0.l("audio/ac3");
                            oVar.F = i51;
                            oVar.G = i50;
                            oVar.r = lVarA;
                            oVar.f13483d = str7;
                            oVar.f13487h = i52;
                            oVar.f13488i = i52;
                            aVar3.f474e = new r1.p(oVar);
                            str6 = str2;
                            i25 = I;
                            i26 = iC;
                            i23 = iO2;
                            i24 = i40;
                            i17 = iIntValue;
                            aVar2 = aVar3;
                            str4 = str7;
                        } else if (iO3 == 1684366131) {
                            qVar2.O(i40 + 8);
                            String string2 = Integer.toString(i13);
                            j3.f fVar2 = new j3.f();
                            fVar2.l(qVar2);
                            int iG3 = fVar2.g(13) * 1000;
                            int i53 = iC;
                            fVar2.o(3);
                            int i54 = iArr2[fVar2.g(2)];
                            fVar2.o(10);
                            int i55 = iArr[fVar2.g(3)];
                            if (fVar2.g(1) != 0) {
                                i55++;
                            }
                            fVar2.o(3);
                            int iG4 = fVar2.g(4);
                            fVar2.o(1);
                            int i56 = I;
                            if (iG4 > 0) {
                                fVar2.o(6);
                                if (fVar2.g(1) != 0) {
                                    i55 += 2;
                                }
                                fVar2.o(1);
                            }
                            if (fVar2.b() > 7) {
                                fVar2.o(7);
                                String str12 = fVar2.g(1) != 0 ? "audio/eac3-joc" : "audio/eac3";
                                fVar2.c();
                                qVar2.O(fVar2.d());
                                r1.o oVar2 = new r1.o();
                                oVar2.f13480a = string2;
                                oVar2.f13492n = e0.l(str12);
                                oVar2.F = i55;
                                oVar2.G = i54;
                                oVar2.r = lVarA;
                                oVar2.f13483d = str7;
                                oVar2.f13488i = iG3;
                                aVar3.f474e = new r1.p(oVar2);
                                str6 = str2;
                                aVar2 = aVar3;
                                i23 = iO2;
                                i24 = i40;
                                i26 = i53;
                                i25 = i56;
                                i17 = iIntValue;
                                str4 = str7;
                            }
                        } else {
                            i21 = I;
                            int i57 = iC;
                            if (iO3 == 1684103988) {
                                qVar2.O(i40 + 8);
                                String string3 = Integer.toString(i13);
                                j3.f fVar3 = new j3.f();
                                fVar3.l(qVar2);
                                int iB5 = fVar3.b();
                                int iG5 = fVar3.g(3);
                                if (iG5 > 1) {
                                    throw r1.f0.b("Unsupported AC-4 DSI version: " + iG5);
                                }
                                int iG6 = fVar3.g(7);
                                int i58 = fVar3.f() ? 48000 : 44100;
                                fVar3.o(4);
                                str6 = str2;
                                int iG7 = fVar3.g(9);
                                int i59 = 1;
                                if (iG6 > 1) {
                                    if (iG5 == 0) {
                                        throw r1.f0.b("Invalid AC-4 DSI version: " + iG5);
                                    }
                                    if (fVar3.f()) {
                                        fVar3.o(16);
                                        if (fVar3.f()) {
                                            fVar3.o(128);
                                        }
                                    }
                                    i59 = 1;
                                }
                                if (iG5 == i59) {
                                    i29 = iIntValue;
                                    if (fVar3.b() < 66) {
                                        throw r1.f0.b("Invalid AC-4 DSI bitrate.");
                                    }
                                    fVar3.o(66);
                                    fVar3.c();
                                } else {
                                    i29 = iIntValue;
                                }
                                l2.c cVar = new l2.c();
                                int i60 = 0;
                                while (i60 < iG7) {
                                    if (iG5 == 0) {
                                        zF = fVar3.f();
                                        i23 = iO2;
                                        i30 = iO;
                                        iG = fVar3.g(5);
                                        iG2 = fVar3.g(5);
                                        z4 = false;
                                        i34 = 0;
                                        i24 = i40;
                                        i35 = 0;
                                    } else {
                                        int i61 = iG7;
                                        int iG8 = fVar3.g(8);
                                        i24 = i40;
                                        int iG9 = fVar3.g(8);
                                        int iG10 = iG9 == 255 ? fVar3.g(16) + iG9 : iG9;
                                        if (iG8 > 2) {
                                            fVar3.o(iG10 * 8);
                                            i60++;
                                            iG7 = i61;
                                            i40 = i24;
                                        } else {
                                            int iB6 = (iB5 - fVar3.b()) / 8;
                                            int iG11 = fVar3.g(5);
                                            z4 = iG11 == 31;
                                            i30 = iO;
                                            iG2 = iG8;
                                            i34 = iB6;
                                            i35 = iG10;
                                            i23 = iO2;
                                            iG = iG11;
                                            zF = false;
                                        }
                                    }
                                    cVar.f10428f = iG2;
                                    if (zF || z4 || iG != 6) {
                                        cVar.f10429g = fVar3.g(3);
                                        if (fVar3.f()) {
                                            fVar3.o(5);
                                        }
                                        fVar3.o(2);
                                        int i62 = 1;
                                        if (iG5 == 1 && (iG2 == 1 || iG2 == 2)) {
                                            fVar3.o(2);
                                        }
                                        fVar3.o(5);
                                        fVar3.o(10);
                                        if (iG5 != 1) {
                                            lVar2 = lVarA;
                                            if (zF && !z4) {
                                                fVar3.n();
                                                if (iG == 0 || iG == 1 || iG == 2) {
                                                    if (iG2 == 0) {
                                                        for (int i63 = 0; i63 < 2; i63++) {
                                                            l2.b.p(fVar3, cVar);
                                                        }
                                                    } else {
                                                        int i64 = 0;
                                                        for (int i65 = 2; i64 < i65; i65 = 2) {
                                                            l2.b.q(fVar3, cVar);
                                                            i64++;
                                                        }
                                                    }
                                                } else if (iG == 3 || iG == 4) {
                                                    if (iG2 == 0) {
                                                        for (int i66 = 0; i66 < 3; i66++) {
                                                            l2.b.p(fVar3, cVar);
                                                        }
                                                    } else {
                                                        int i67 = 0;
                                                        for (int i68 = 3; i67 < i68; i68 = 3) {
                                                            l2.b.q(fVar3, cVar);
                                                            i67++;
                                                        }
                                                    }
                                                } else if (iG != 5) {
                                                    int iG12 = fVar3.g(7);
                                                    for (int i69 = 0; i69 < iG12; i69++) {
                                                        fVar3.o(8);
                                                    }
                                                } else if (iG2 == 0) {
                                                    l2.b.p(fVar3, cVar);
                                                } else {
                                                    int iG13 = fVar3.g(3);
                                                    for (int i70 = 0; i70 < iG13 + 2; i70++) {
                                                        l2.b.q(fVar3, cVar);
                                                    }
                                                }
                                            } else if (iG2 != 0) {
                                                l2.b.p(fVar3, cVar);
                                            } else {
                                                l2.b.q(fVar3, cVar);
                                            }
                                            fVar3.n();
                                            zF2 = fVar3.f();
                                        } else {
                                            if (iG2 > 0) {
                                                cVar.f10423a = fVar3.f();
                                            }
                                            if (!cVar.f10423a) {
                                                i36 = 2;
                                            } else if (iG2 != 1) {
                                                i36 = 2;
                                                if (iG2 == 2) {
                                                    int iG14 = fVar3.g(5);
                                                    if (iG14 >= 0 && iG14 <= 15) {
                                                        cVar.f10424b = iG14;
                                                    }
                                                    if (iG14 < 11 || iG14 > 14) {
                                                        i36 = 2;
                                                    } else {
                                                        cVar.f10426d = fVar3.f();
                                                        i36 = 2;
                                                        cVar.f10427e = fVar3.g(2);
                                                    }
                                                }
                                                fVar3.o(24);
                                                i62 = 1;
                                            }
                                            if (iG2 == i62 || iG2 == i36) {
                                                if (fVar3.f() && fVar3.f()) {
                                                    fVar3.o(i36);
                                                }
                                                if (fVar3.f()) {
                                                    fVar3.n();
                                                    int i71 = 8;
                                                    int iG15 = fVar3.g(8);
                                                    lVar2 = lVarA;
                                                    int i72 = 0;
                                                    while (i72 < iG15) {
                                                        fVar3.o(i71);
                                                        i72++;
                                                        i71 = 8;
                                                    }
                                                }
                                                if (zF) {
                                                    if (iG2 != 0) {
                                                    }
                                                    fVar3.n();
                                                    zF2 = fVar3.f();
                                                }
                                            }
                                        }
                                    } else {
                                        lVar2 = lVarA;
                                        zF2 = true;
                                    }
                                    if (zF2) {
                                        int iG16 = fVar3.g(7);
                                        for (int i73 = 0; i73 < iG16; i73++) {
                                            fVar3.o(15);
                                        }
                                    }
                                    if (iG2 > 0) {
                                        if (fVar3.f()) {
                                            if (fVar3.b() < 66) {
                                                z10 = false;
                                            } else {
                                                fVar3.o(66);
                                                z10 = true;
                                            }
                                            if (!z10) {
                                                throw r1.f0.b("Can't parse bitrate DSI.");
                                            }
                                        }
                                        if (fVar3.f()) {
                                            fVar3.c();
                                            fVar3.p(fVar3.g(16));
                                            int iG17 = fVar3.g(5);
                                            for (int i74 = 0; i74 < iG17; i74++) {
                                                fVar3.o(3);
                                                fVar3.o(8);
                                            }
                                        }
                                    }
                                    fVar3.c();
                                    if (iG5 == 1) {
                                        int iB7 = ((iB5 - fVar3.b()) / 8) - i34;
                                        if (i35 < iB7) {
                                            throw r1.f0.b("pres_bytes is smaller than presentation bytes read.");
                                        }
                                        fVar3.p(i35 - iB7);
                                    }
                                    if (cVar.f10423a && cVar.f10424b == -1) {
                                        throw r1.f0.b("Can't determine channel mode of presentation " + i60);
                                    }
                                    if (cVar.f10423a) {
                                        int i75 = cVar.f10425c;
                                        if (i75 > 0) {
                                            i31 = i75 + 1;
                                            if (cVar.f10429g == 4 && i31 == 17) {
                                                i31 = 21;
                                            }
                                        } else {
                                            int i76 = cVar.f10429g;
                                            if (i76 == 0) {
                                                i31 = 2;
                                            } else if (i76 == 1) {
                                                i31 = 6;
                                            } else if (i76 == 2) {
                                                i31 = 8;
                                            } else if (i76 == 3) {
                                                i31 = 10;
                                            } else if (i76 != 4) {
                                                u1.a.p("AC-4 level " + cVar.f10429g + " has not been defined.");
                                                i31 = 2;
                                            } else {
                                                i31 = 12;
                                            }
                                        }
                                    } else {
                                        int i77 = cVar.f10424b;
                                        boolean z13 = cVar.f10426d;
                                        int i78 = cVar.f10427e;
                                        switch (i77) {
                                            case 0:
                                                i32 = 11;
                                                i33 = 1;
                                                break;
                                            case 1:
                                                i32 = 11;
                                                i33 = 2;
                                                break;
                                            case 2:
                                                i32 = 11;
                                                i33 = 3;
                                                break;
                                            case 3:
                                                i32 = 11;
                                                i33 = 5;
                                                break;
                                            case 4:
                                                i32 = 11;
                                                i33 = 6;
                                                break;
                                            case 5:
                                            case 7:
                                            case 9:
                                                i32 = 11;
                                                i33 = 7;
                                                break;
                                            case 6:
                                            case 8:
                                            case 10:
                                                i32 = 11;
                                                i33 = 8;
                                                break;
                                            case 11:
                                                i32 = 11;
                                                i33 = 11;
                                                break;
                                            case 12:
                                                i32 = 11;
                                                i33 = 12;
                                                break;
                                            case 13:
                                                i32 = 11;
                                                i33 = 13;
                                                break;
                                            case 14:
                                                i32 = 11;
                                                i33 = 14;
                                                break;
                                            case 15:
                                                i32 = 11;
                                                i33 = 24;
                                                break;
                                            default:
                                                i32 = 11;
                                                i33 = -1;
                                                break;
                                        }
                                        if (i77 == i32 || i77 == 12 || i77 == 13 || i77 == 14) {
                                            if (!z13) {
                                                i33 -= 2;
                                            }
                                            if (i78 == 0) {
                                                i33 -= 4;
                                            } else if (i78 == 1) {
                                                i33 -= 2;
                                            }
                                        }
                                        i31 = i33;
                                    }
                                    if (i31 > 0) {
                                        throw r1.f0.b("Cannot determine channel count of presentation.");
                                    }
                                    Object[] objArr = {Integer.valueOf(iG6), Integer.valueOf(cVar.f10428f), Integer.valueOf(cVar.f10429g)};
                                    String str13 = f0.f15206a;
                                    String str14 = String.format(Locale.US, "ac-4.%02d.%02d.%02d", objArr);
                                    r1.o oVar3 = new r1.o();
                                    oVar3.f13480a = string3;
                                    oVar3.f13492n = e0.l("audio/ac4");
                                    oVar3.F = i31;
                                    oVar3.G = i58;
                                    lVarA = lVar2;
                                    oVar3.r = lVarA;
                                    str4 = str;
                                    oVar3.f13483d = str4;
                                    oVar3.f13489j = str14;
                                    aVar2 = aVar;
                                    aVar2.f474e = new r1.p(oVar3);
                                    i26 = i57;
                                    i25 = i21;
                                    i17 = i29;
                                    iO = i30;
                                }
                                i23 = iO2;
                                lVar2 = lVarA;
                                i30 = iO;
                                i24 = i40;
                                if (cVar.f10423a) {
                                }
                                if (i31 > 0) {
                                }
                            } else {
                                int i79 = iIntValue;
                                str6 = str2;
                                aVar2 = aVar3;
                                i23 = iO2;
                                int i80 = iO;
                                i24 = i40;
                                str4 = str7;
                                if (iO3 != 1684892784) {
                                    iO = i80;
                                    if (iO3 == 1684305011 || iO3 == 1969517683) {
                                        i17 = i79;
                                        r1.o oVar4 = new r1.o();
                                        oVar4.f13480a = Integer.toString(i13);
                                        oVar4.f13492n = e0.l(str6);
                                        i25 = i21;
                                        oVar4.F = i25;
                                        i26 = i57;
                                        oVar4.G = i26;
                                        oVar4.r = lVarA;
                                        oVar4.f13483d = str4;
                                        aVar2.f474e = new r1.p(oVar4);
                                    } else {
                                        if (iO3 == 1682927731) {
                                            int i81 = i23 - 8;
                                            byte[] bArr6 = f5472a;
                                            byte[] bArrCopyOf = Arrays.copyOf(bArr6, bArr6.length + i81);
                                            qVar.O(i24 + 8);
                                            qVar.l(bArr6.length, i81, bArrCopyOf);
                                            listR2 = v1.o.a(bArrCopyOf);
                                        } else if (iO3 == 1684425825) {
                                            byte[] bArr7 = new byte[i23 - 8];
                                            bArr7[0] = 102;
                                            bArr7[1] = 76;
                                            bArr7[2] = 97;
                                            bArr7[3] = 67;
                                            qVar.O(i24 + 12);
                                            qVar.l(4, i23 - 12, bArr7);
                                            listR2 = g0.r(bArr7);
                                        } else if (iO3 == 1634492771) {
                                            int i82 = i23 - 12;
                                            byte[] bArr8 = new byte[i82];
                                            qVar.O(i24 + 12);
                                            qVar.l(0, i82, bArr8);
                                            byte[] bArr9 = u1.c.f15189a;
                                            u1.q qVar5 = new u1.q(bArr8);
                                            qVar5.O(5);
                                            int iB8 = qVar5.B();
                                            qVar5.O(9);
                                            int iB9 = qVar5.B();
                                            qVar5.O(20);
                                            int[] iArr3 = {qVar5.F(), iB9, iB8};
                                            int i83 = iArr3[0];
                                            int i84 = iArr3[1];
                                            int i85 = iArr3[2];
                                            String str15 = f0.f15206a;
                                            iT2 = f0.t(i85, ByteOrder.LITTLE_ENDIAN);
                                            iC = i83;
                                            i21 = i84;
                                            str9 = str10;
                                            i17 = i79;
                                            i19 = i24;
                                            i20 = i23;
                                            listR2 = g0.r(bArr8);
                                        } else {
                                            if (iO3 == 1767990114) {
                                                qVar.O(i24 + 9);
                                                int iG18 = qVar.G();
                                                byte[] bArr10 = new byte[iG18];
                                                qVar.l(0, iG18, bArr10);
                                                byte[] bArr11 = u1.c.f15189a;
                                                u1.q qVar6 = new u1.q(bArr10);
                                                String str16 = null;
                                                String str17 = null;
                                                while (qVar6.a() > 0 && (str16 == null || str17 == null)) {
                                                    int iB10 = qVar6.B();
                                                    int i86 = iB10 >> 3;
                                                    boolean z14 = (iB10 & 2) != 0;
                                                    boolean z15 = (iB10 & 1) != 0;
                                                    int iG19 = qVar6.G();
                                                    if (i86 > 4 && i86 < 24 && z14) {
                                                        do {
                                                        } while ((qVar6.B() & 128) != 0);
                                                        for (i28 = 128; (qVar6.B() & i28) != 0; i28 = 128) {
                                                        }
                                                    }
                                                    if (z15) {
                                                        qVar6.P(qVar6.G());
                                                    }
                                                    int i87 = qVar6.f15267b + iG19;
                                                    if (i86 == 31) {
                                                        qVar6.P(4);
                                                        Object[] objArr2 = {Integer.valueOf(qVar6.B()), Integer.valueOf(qVar6.B())};
                                                        String str18 = f0.f15206a;
                                                        str16 = String.format(Locale.US, "iamf.%03X.%03X", objArr2);
                                                    } else {
                                                        if (i86 == 0) {
                                                            while ((qVar6.B() & 128) != 0) {
                                                            }
                                                            String strZ = qVar6.z(StandardCharsets.UTF_8, 4);
                                                            if (strZ.equals("mp4a")) {
                                                                while ((qVar6.B() & 128) != 0) {
                                                                }
                                                                qVar6.P(2);
                                                                j3.f fVar4 = new j3.f();
                                                                fVar4.l(qVar6);
                                                                int iG20 = fVar4.g(5);
                                                                if (iG20 == 31) {
                                                                    iG20 = fVar4.g(6) + 32;
                                                                }
                                                                strZ = strZ + ".40." + iG20;
                                                            }
                                                            str17 = strZ;
                                                        }
                                                        qVar6.O(i87);
                                                    }
                                                    qVar6.O(i87);
                                                }
                                                String strK = (str16 == null || str17 == null) ? null : g.b.k(str16, ".", str17);
                                                listR2 = g0.r(bArr10);
                                                str9 = strK;
                                                iC = i57;
                                                i17 = i79;
                                            } else if (iO3 == 1885564227) {
                                                qVar.O(i24 + 12);
                                                ByteOrder byteOrder = (qVar.B() & 1) != 0 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
                                                int iB11 = qVar.B();
                                                i17 = i79;
                                                if (i17 == 1768973165) {
                                                    iT = f0.t(iB11, byteOrder);
                                                    i27 = -1;
                                                } else {
                                                    iT = (i17 == 1718641517 && iB11 == 32 && byteOrder.equals(ByteOrder.LITTLE_ENDIAN)) ? 4 : iT2;
                                                    i27 = -1;
                                                }
                                                listR2 = list2;
                                                iT2 = iT;
                                                str9 = str10;
                                                if (iT != i27) {
                                                    str6 = "audio/raw";
                                                }
                                                iC = i57;
                                            } else {
                                                i17 = i79;
                                                i26 = i57;
                                                i25 = i21;
                                            }
                                            i19 = i24;
                                            i20 = i23;
                                        }
                                        str9 = str10;
                                        iC = i57;
                                        i17 = i79;
                                        i19 = i24;
                                        i20 = i23;
                                    }
                                } else {
                                    if (i80 <= 0) {
                                        throw r1.f0.a(null, "Invalid sample rate for Dolby TrueHD MLP stream: " + i80);
                                    }
                                    listR2 = list2;
                                    str9 = str10;
                                    i17 = i79;
                                    i19 = i24;
                                    i20 = i23;
                                    iC = i80;
                                    iO = iC;
                                    i21 = 2;
                                }
                            }
                            iC = i26;
                            i21 = i25;
                            str9 = str10;
                            i19 = i24;
                            i20 = i23;
                            listR2 = list2;
                        }
                        iC = i26;
                        i21 = i25;
                        str9 = str10;
                        i19 = i24;
                        i20 = i23;
                        listR2 = list2;
                    }
                    i40 = i19 + i20;
                    qVar2 = qVar;
                    i38 = i11;
                    i39 = i12;
                    str8 = str3;
                    str7 = str4;
                    aVar3 = aVar2;
                    iIntValue = i17;
                    I = i21;
                    str2 = str6;
                }
                str6 = str2;
                i21 = I;
                i20 = iO2;
                str9 = str10;
            }
            i17 = iIntValue;
            aVar2 = aVar3;
            i19 = i40;
            str4 = str7;
            i40 = i19 + i20;
            qVar2 = qVar;
            i38 = i11;
            i39 = i12;
            str8 = str3;
            str7 = str4;
            aVar3 = aVar2;
            iIntValue = i17;
            I = i21;
            str2 = str6;
        }
        String str19 = str2;
        int i88 = iC;
        String str20 = str9;
        List list3 = listR2;
        int i89 = I;
        a9.a aVar4 = aVar3;
        String str21 = str7;
        if (((r1.p) aVar4.f474e) != null || str19 == null) {
            return;
        }
        r1.o oVar5 = new r1.o();
        oVar5.f13480a = Integer.toString(i13);
        oVar5.f13492n = e0.l(str19);
        oVar5.f13489j = str20;
        oVar5.F = i89;
        oVar5.G = i88;
        oVar5.H = iT2;
        oVar5.f13495q = list3;
        oVar5.r = lVarA;
        oVar5.f13483d = str21;
        y0 y0Var2 = y0Var;
        if (y0Var2 != null) {
            oVar5.f13487h = d.b.i0(y0Var2.f5443a);
            oVar5.f13488i = d.b.i0(y0Var2.f5444b);
        } else {
            y yVar2 = yVar;
            if (yVar2 != null) {
                oVar5.f13487h = d.b.i0(yVar2.f1983b);
                oVar5.f13488i = d.b.i0(yVar2.f1984c);
            }
        }
        aVar4.f474e = new r1.p(oVar5);
    }

    public static y0 c(int i10, u1.q qVar) {
        qVar.O(i10 + 12);
        qVar.P(1);
        d(qVar);
        qVar.P(2);
        int iB = qVar.B();
        if ((iB & 128) != 0) {
            qVar.P(2);
        }
        if ((iB & 64) != 0) {
            qVar.P(qVar.B());
        }
        if ((iB & 32) != 0) {
            qVar.P(2);
        }
        qVar.P(1);
        d(qVar);
        String strD = e0.d(qVar.B());
        if ("audio/mpeg".equals(strD) || "audio/vnd.dts".equals(strD) || "audio/vnd.dts.hd".equals(strD)) {
            return new y0(strD, null, -1L, -1L);
        }
        qVar.P(4);
        long jD = qVar.D();
        long jD2 = qVar.D();
        qVar.P(1);
        int iD = d(qVar);
        byte[] bArr = new byte[iD];
        qVar.l(0, iD, bArr);
        return new y0(strD, bArr, jD2 > 0 ? jD2 : -1L, jD > 0 ? jD : -1L);
    }

    public static int d(u1.q qVar) {
        int iB = qVar.B();
        int i10 = iB & 127;
        while ((iB & 128) == 128) {
            iB = qVar.B();
            i10 = (i10 << 7) | (iB & 127);
        }
        return i10;
    }

    public static int e(int i10) {
        return (i10 >> 24) & 255;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x008a, code lost:
    
        r9 = r14.o();
        r10 = r14.o();
        r11 = r11 - 16;
        r12 = new byte[r11];
        r14.l(0, r11, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0099, code lost:
    
        r11 = new v1.a(r8, r12, r10, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009f, code lost:
    
        ta.q.t("Failed to parse metadata entry with key: ", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00aa, code lost:
    
        r11 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static d0 f(v1.c cVar) {
        v1.a aVar;
        v1.d dVarI = cVar.i(1751411826);
        v1.d dVarI2 = cVar.i(1801812339);
        v1.d dVarI3 = cVar.i(1768715124);
        if (dVarI == null || dVarI2 == null || dVarI3 == null) {
            return null;
        }
        u1.q qVar = dVarI.f16331c;
        qVar.O(16);
        if (qVar.o() != 1835299937) {
            return null;
        }
        u1.q qVar2 = dVarI2.f16331c;
        qVar2.O(12);
        int iO = qVar2.o();
        String[] strArr = new String[iO];
        for (int i10 = 0; i10 < iO; i10++) {
            int iO2 = qVar2.o();
            qVar2.P(4);
            strArr[i10] = qVar2.z(StandardCharsets.UTF_8, iO2 - 8);
        }
        u1.q qVar3 = dVarI3.f16331c;
        qVar3.O(8);
        ArrayList arrayList = new ArrayList();
        while (qVar3.a() > 8) {
            int i11 = qVar3.f15267b;
            int iO3 = qVar3.o();
            int iO4 = qVar3.o() - 1;
            if (iO4 < 0 || iO4 >= iO) {
                org.bouncycastle.jcajce.provider.digest.a.o(iO4, "Skipped metadata with unknown key index: ");
            } else {
                String str = strArr[iO4];
                int i12 = i11 + iO3;
                while (true) {
                    int i13 = qVar3.f15267b;
                    if (i13 >= i12) {
                        break;
                    }
                    int iO5 = qVar3.o();
                    if (qVar3.o() == 1684108385) {
                        break;
                    }
                    qVar3.O(i13 + iO5);
                }
                if (aVar == null) {
                    arrayList.add(aVar);
                }
            }
            qVar3.O(i11 + iO3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new d0(arrayList);
    }

    public static v1.f g(u1.q qVar) {
        long jV;
        long jV2;
        qVar.O(8);
        if (e(qVar.o()) == 0) {
            jV = qVar.D();
            jV2 = qVar.D();
        } else {
            jV = qVar.v();
            jV2 = qVar.v();
        }
        return new v1.f(jV, jV2, qVar.D());
    }

    public static Pair h(u1.q qVar, int i10, int i11) throws r1.f0 {
        Integer num;
        t tVar;
        Pair pairCreate;
        int i12;
        int i13;
        byte[] bArr;
        int i14 = qVar.f15267b;
        while (i14 - i10 < i11) {
            qVar.O(i14);
            int iO = qVar.o();
            l2.b.b("childAtomSize must be positive", iO > 0);
            if (qVar.o() == 1936289382) {
                int i15 = i14 + 8;
                int i16 = -1;
                int i17 = 0;
                String strZ = null;
                Integer numValueOf = null;
                while (i15 - i14 < iO) {
                    qVar.O(i15);
                    int iO2 = qVar.o();
                    int iO3 = qVar.o();
                    if (iO3 == 1718775137) {
                        numValueOf = Integer.valueOf(qVar.o());
                    } else if (iO3 == 1935894637) {
                        qVar.P(4);
                        strZ = qVar.z(StandardCharsets.UTF_8, 4);
                    } else if (iO3 == 1935894633) {
                        i16 = i15;
                        i17 = iO2;
                    }
                    i15 += iO2;
                }
                if ("cenc".equals(strZ) || "cbc1".equals(strZ) || "cens".equals(strZ) || "cbcs".equals(strZ)) {
                    l2.b.b("frma atom is mandatory", numValueOf != null);
                    l2.b.b("schi atom is mandatory", i16 != -1);
                    int i18 = i16 + 8;
                    while (true) {
                        if (i18 - i16 >= i17) {
                            num = numValueOf;
                            tVar = null;
                            break;
                        }
                        qVar.O(i18);
                        int iO4 = qVar.o();
                        if (qVar.o() == 1952804451) {
                            int iE = e(qVar.o());
                            qVar.P(1);
                            if (iE == 0) {
                                qVar.P(1);
                                i12 = 0;
                                i13 = 0;
                            } else {
                                int iB = qVar.B();
                                int i19 = (iB & 240) >> 4;
                                i12 = iB & 15;
                                i13 = i19;
                            }
                            boolean z = qVar.B() == 1;
                            int iB2 = qVar.B();
                            byte[] bArr2 = new byte[16];
                            qVar.l(0, 16, bArr2);
                            if (z && iB2 == 0) {
                                int iB3 = qVar.B();
                                byte[] bArr3 = new byte[iB3];
                                qVar.l(0, iB3, bArr3);
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            num = numValueOf;
                            tVar = new t(z, strZ, iB2, bArr2, i13, i12, bArr);
                        } else {
                            i18 += iO4;
                        }
                    }
                    l2.b.b("tenc atom is mandatory", tVar != null);
                    String str = f0.f15206a;
                    pairCreate = Pair.create(num, tVar);
                } else {
                    pairCreate = null;
                }
                if (pairCreate != null) {
                    return pairCreate;
                }
            }
            i14 += iO;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e5, code lost:
    
        r7 = -9223372036854775807L;
     */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0599  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x068d  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x0691  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x06f5  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x06fa  */
    /* JADX WARN: Removed duplicated region for block: B:491:0x0a54  */
    /* JADX WARN: Removed duplicated region for block: B:494:0x0a92  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0a95  */
    /* JADX WARN: Removed duplicated region for block: B:558:0x0c61  */
    /* JADX WARN: Removed duplicated region for block: B:566:0x0cb1  */
    /* JADX WARN: Removed duplicated region for block: B:568:0x0cb5  */
    /* JADX WARN: Removed duplicated region for block: B:569:0x0cb7  */
    /* JADX WARN: Removed duplicated region for block: B:573:0x0cc8  */
    /* JADX WARN: Removed duplicated region for block: B:613:0x0d83  */
    /* JADX WARN: Removed duplicated region for block: B:614:0x0d85  */
    /* JADX WARN: Removed duplicated region for block: B:617:0x0d89  */
    /* JADX WARN: Removed duplicated region for block: B:618:0x0d8c  */
    /* JADX WARN: Removed duplicated region for block: B:620:0x0d90  */
    /* JADX WARN: Removed duplicated region for block: B:621:0x0d93  */
    /* JADX WARN: Removed duplicated region for block: B:623:0x0d97  */
    /* JADX WARN: Removed duplicated region for block: B:624:0x0d99  */
    /* JADX WARN: Removed duplicated region for block: B:626:0x0d9d  */
    /* JADX WARN: Removed duplicated region for block: B:627:0x0da0  */
    /* JADX WARN: Removed duplicated region for block: B:629:0x0da3  */
    /* JADX WARN: Removed duplicated region for block: B:630:0x0da9  */
    /* JADX WARN: Removed duplicated region for block: B:634:0x0dbb  */
    /* JADX WARN: Removed duplicated region for block: B:659:0x0e6f  */
    /* JADX WARN: Removed duplicated region for block: B:660:0x0e81  */
    /* JADX WARN: Removed duplicated region for block: B:715:0x05ed A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList i(v1.c cVar, l2.v vVar, long j10, r1.l lVar, boolean z, boolean z4, t7.d dVar, boolean z10) {
        long jD;
        long jM;
        int i10;
        ArrayList arrayList;
        long jM2;
        String str;
        long[] jArr;
        long[] jArr2;
        r1.p pVar;
        s sVar;
        t7.d dVar2;
        Pair pairCreate;
        int i11;
        int i12;
        byte b10;
        int i13;
        v1.c cVar2;
        int i14;
        u7.y0 y0VarR;
        long j11;
        s sVarA;
        c dVar3;
        boolean z11;
        int iF;
        u1.q qVar;
        int iF2;
        int iF3;
        r1.p pVar2;
        int[] iArrCopyOf;
        int i15;
        int i16;
        boolean z12;
        int i17;
        s sVarA2;
        int[] iArr;
        long j12;
        long[] jArr3;
        int i18;
        long[] jArr4;
        int i19;
        long j13;
        long[] jArr5;
        int[] iArr2;
        int i20;
        int iO;
        int iF4;
        int i21;
        r1.p pVar3;
        long[] jArr6;
        long j14;
        long[] jArr7;
        int i22;
        int i23;
        long[] jArr8;
        int i24;
        boolean z13;
        s sVarA3;
        v vVar2;
        boolean z14;
        int[] iArr3;
        int i25;
        boolean z15;
        long[] jArr9;
        int[] iArr4;
        int[] iArr5;
        r1.p pVar4;
        int i26;
        long jM3;
        ArrayList arrayList2;
        v1.c cVar3 = cVar;
        int i27 = 8;
        int i28 = 4;
        int i29 = 16;
        byte b11 = -1;
        ArrayList arrayList3 = new ArrayList();
        int i30 = 0;
        while (true) {
            ArrayList arrayList4 = cVar3.f16330e;
            if (i30 >= arrayList4.size()) {
                return arrayList3;
            }
            v1.c cVar4 = (v1.c) arrayList4.get(i30);
            if (cVar4.f567b != 1953653099) {
                arrayList2 = arrayList3;
                i10 = i30;
            } else {
                v1.d dVarI = cVar3.i(1836476516);
                dVarI.getClass();
                v1.c cVarG = cVar4.g(1835297121);
                cVarG.getClass();
                v1.d dVarI2 = cVarG.i(1751411826);
                dVarI2.getClass();
                u1.q qVar2 = dVarI2.f16331c;
                qVar2.O(i29);
                int iO2 = qVar2.o();
                byte b12 = iO2 == 1936684398 ? (byte) 1 : iO2 == 1986618469 ? (byte) 2 : (iO2 == 1952807028 || iO2 == 1935832172 || iO2 == 1937072756 || iO2 == 1668047728 || iO2 == 1937072752) ? (byte) 3 : iO2 == 1835365473 ? (byte) 5 : (byte) -1;
                if (b12 == b11) {
                    dVar2 = dVar;
                    arrayList = arrayList3;
                    i10 = i30;
                } else {
                    v1.d dVarI3 = cVar4.i(1953196132);
                    dVarI3.getClass();
                    u1.q qVar3 = dVarI3.f16331c;
                    qVar3.O(i27);
                    int iE = e(qVar3.o());
                    if (iE != 0) {
                        i27 = 16;
                    }
                    qVar3.P(i27);
                    int iO3 = qVar3.o();
                    qVar3.P(i28);
                    int i31 = qVar3.f15267b;
                    int i32 = iE == 0 ? 4 : 8;
                    int i33 = 0;
                    while (true) {
                        if (i33 >= i32) {
                            qVar3.P(i32);
                            break;
                        }
                        if (qVar3.f15266a[i31 + i33] != b11) {
                            jD = iE == 0 ? qVar3.D() : qVar3.H();
                            if (jD == 0) {
                                break;
                            }
                        } else {
                            i33++;
                        }
                    }
                    qVar3.P(10);
                    int I = qVar3.I();
                    qVar3.P(4);
                    int iO4 = qVar3.o();
                    int iO5 = qVar3.o();
                    qVar3.P(4);
                    int iO6 = qVar3.o();
                    int iO7 = qVar3.o();
                    long j15 = jD;
                    int i34 = (iO4 == 0 && iO5 == 65536 && (iO6 == -65536 || iO6 == 65536) && iO7 == 0) ? 90 : (iO4 == 0 && iO5 == -65536 && (iO6 == 65536 || iO6 == -65536) && iO7 == 0) ? SubsamplingScaleImageView.ORIENTATION_270 : ((iO4 == -65536 || iO4 == 65536) && iO5 == 0 && iO6 == 0 && iO7 == -65536) ? 180 : 0;
                    qVar3.P(16);
                    short sY = qVar3.y();
                    qVar3.P(2);
                    short sY2 = qVar3.y();
                    long j16 = j10 == -9223372036854775807L ? j15 : j10;
                    long j17 = g(dVarI.f16331c).f16336c;
                    if (j16 == -9223372036854775807L) {
                        jM = -9223372036854775807L;
                    } else {
                        String str2 = f0.f15206a;
                        jM = f0.M(j16, 1000000L, j17, RoundingMode.DOWN);
                    }
                    v1.c cVarG2 = cVarG.g(1835626086);
                    cVarG2.getClass();
                    v1.c cVarG3 = cVarG2.g(1937007212);
                    cVarG3.getClass();
                    v1.d dVarI4 = cVarG.i(1835296868);
                    dVarI4.getClass();
                    u1.q qVar4 = dVarI4.f16331c;
                    qVar4.O(8);
                    int iE2 = e(qVar4.o());
                    qVar4.P(iE2 == 0 ? 8 : 16);
                    long jD2 = qVar4.D();
                    int i35 = qVar4.f15267b;
                    i10 = i30;
                    int i36 = iE2 == 0 ? 4 : 8;
                    arrayList = arrayList3;
                    int i37 = 0;
                    while (true) {
                        if (i37 >= i36) {
                            qVar4.P(i36);
                            break;
                        }
                        int i38 = i35;
                        if (qVar4.f15266a[i35 + i37] != -1) {
                            long jD3 = iE2 == 0 ? qVar4.D() : qVar4.H();
                            if (jD3 == 0) {
                                break;
                            }
                            String str3 = f0.f15206a;
                            jM2 = f0.M(jD3, 1000000L, jD2, RoundingMode.DOWN);
                        } else {
                            i37++;
                            i35 = i38;
                        }
                    }
                    jM2 = -9223372036854775807L;
                    int I2 = qVar4.I();
                    long j18 = jM2;
                    char[] cArr = {(char) (((I2 >> 10) & 31) + 96), (char) (((I2 >> 5) & 31) + 96), (char) ((I2 & 31) + 96)};
                    int i39 = 0;
                    for (int i40 = 3; i39 < i40; i40 = 3) {
                        char c7 = cArr[i39];
                        if (c7 < 'a' || c7 > 'z') {
                            str = null;
                            break;
                        }
                        i39++;
                    }
                    str = new String(cArr);
                    v1.d dVarI5 = cVarG3.i(1937011556);
                    if (dVarI5 == null) {
                        u1.a.p("Ignoring track where sample table (stbl) box is missing a sample description (stsd).");
                        dVar2 = dVar;
                    } else {
                        u1.q qVar5 = dVarI5.f16331c;
                        qVar5.O(12);
                        int iO8 = qVar5.o();
                        a9.a aVar = new a9.a(iO8, 1);
                        int i41 = 0;
                        while (i41 < iO8) {
                            int i42 = qVar5.f15267b;
                            int iO9 = qVar5.o();
                            long j19 = j17;
                            int i43 = iO8;
                            l2.b.b("childAtomSize must be positive", iO9 > 0);
                            int iO10 = qVar5.o();
                            if (iO10 == 1635148593 || iO10 == 1635148595 || iO10 == 1701733238 || iO10 == 1831958048 || iO10 == 1836070006 || iO10 == 1752589105 || iO10 == 1751479857 || iO10 == 1987470129 || iO10 == 1987471665 || iO10 == 1932670515 || iO10 == 1211250227 || iO10 == 1748121139 || iO10 == 1987063864 || iO10 == 1987063865 || iO10 == 1635135537 || iO10 == 1685479798 || iO10 == 1685479729 || iO10 == 1685481573 || iO10 == 1685481521 || iO10 == 1634760241 || iO10 == 1684108849) {
                                i11 = i34;
                                i12 = I;
                                b10 = b12;
                                i13 = i41;
                                cVar2 = cVar4;
                                i14 = iO9;
                                k(qVar5, iO10, i42, i14, iO3, str, i11, lVar, aVar, i13);
                            } else if (iO10 == 1836069985 || iO10 == 1701733217 || iO10 == 1633889587 || iO10 == 1700998451 || iO10 == 1633889588 || iO10 == 1835823201 || iO10 == 1685353315 || iO10 == 1685353317 || iO10 == 1685353320 || iO10 == 1685353324 || iO10 == 1685353336 || iO10 == 1935764850 || iO10 == 1935767394 || iO10 == 1819304813 || iO10 == 1936684916 || iO10 == 1953984371 || iO10 == 778924082 || iO10 == 778924083 || iO10 == 1835557169 || iO10 == 1835560241 || iO10 == 1634492771 || iO10 == 1634492791 || iO10 == 1970037111 || iO10 == 1332770163 || iO10 == 1716281667 || iO10 == 1767992678 || iO10 == 1768973165 || iO10 == 1718641517) {
                                i11 = i34;
                                i12 = I;
                                b10 = b12;
                                i13 = i41;
                                cVar2 = cVar4;
                                i14 = iO9;
                                b(qVar5, iO10, i42, i14, iO3, str, z4, lVar, aVar, i13);
                            } else if (iO10 == 1414810956 || iO10 == 1954034535 || iO10 == 2004251764 || iO10 == 1937010800 || iO10 == 1664495672 || iO10 == 1836070003) {
                                b10 = b12;
                                qVar5.O(i42 + 16);
                                String str4 = "application/ttml+xml";
                                if (iO10 != 1414810956) {
                                    if (iO10 == 1954034535) {
                                        int i44 = iO9 - 16;
                                        byte[] bArr = new byte[i44];
                                        qVar5.l(0, i44, bArr);
                                        y0VarR = g0.r(bArr);
                                        str4 = "application/x-quicktime-tx3g";
                                        i11 = i34;
                                        i12 = I;
                                        i13 = i41;
                                        cVar2 = cVar4;
                                        i14 = iO9;
                                        j11 = Long.MAX_VALUE;
                                    } else {
                                        if (iO10 == 2004251764) {
                                            str4 = "application/x-mp4-vtt";
                                        } else if (iO10 == 1937010800) {
                                            i11 = i34;
                                            i12 = I;
                                            i13 = i41;
                                            cVar2 = cVar4;
                                            i14 = iO9;
                                            y0VarR = null;
                                            j11 = 0;
                                        } else if (iO10 == 1664495672) {
                                            aVar.f472c = 1;
                                            str4 = "application/x-mp4-cea-608";
                                        } else {
                                            if (iO10 != 1836070003) {
                                                throw new IllegalStateException();
                                            }
                                            int i45 = qVar5.f15267b;
                                            qVar5.P(4);
                                            if (qVar5.o() == 1702061171) {
                                                byte[] bArr2 = (byte[]) c(i45, qVar5).f5446d;
                                                if (bArr2 == null || bArr2.length != 64) {
                                                    i11 = i34;
                                                    i12 = I;
                                                    i13 = i41;
                                                    cVar2 = cVar4;
                                                    i14 = iO9;
                                                } else {
                                                    a9.o.t(bArr2.length == 64);
                                                    ArrayList arrayList5 = new ArrayList(16);
                                                    int i46 = 0;
                                                    while (i46 < bArr2.length - 3) {
                                                        int i47 = i34;
                                                        int iT = d.b.t(bArr2[i46], bArr2[i46 + 1], bArr2[i46 + 2], bArr2[i46 + 3]);
                                                        int i48 = (iT >> 16) & 255;
                                                        byte[] bArr3 = bArr2;
                                                        int i49 = ((iT >> 8) & 255) - 128;
                                                        int i50 = (iT & 255) - 128;
                                                        arrayList5.add(String.format("%06x", Integer.valueOf(f0.g(z.a(i50, 17790, 10000, i48), 0, 255) | (f0.g(z.a(i49, 14075, 10000, i48), 0, 255) << 16) | (f0.g((i48 - ((i50 * 3455) / 10000)) - ((i49 * 7169) / 10000), 0, 255) << 8))));
                                                        i46 += 4;
                                                        bArr2 = bArr3;
                                                        I = I;
                                                        i34 = i47;
                                                        i41 = i41;
                                                        cVar4 = cVar4;
                                                    }
                                                    i11 = i34;
                                                    i12 = I;
                                                    i13 = i41;
                                                    cVar2 = cVar4;
                                                    StringBuilder sbO = ta.q.o(sY, sY2, "size: ", "x", "\npalette: ");
                                                    bd.c cVar5 = new bd.c(", ");
                                                    Iterator it = arrayList5.iterator();
                                                    StringBuilder sb2 = new StringBuilder();
                                                    cVar5.d(sb2, it);
                                                    sbO.append(sb2.toString());
                                                    sbO.append(SignParameters.NEW_LINE);
                                                    String string = sbO.toString();
                                                    String str5 = f0.f15206a;
                                                    y0VarR = g0.r(string.getBytes(StandardCharsets.UTF_8));
                                                    str4 = "application/vobsub";
                                                }
                                            } else {
                                                i11 = i34;
                                                i12 = I;
                                                i13 = i41;
                                                cVar2 = cVar4;
                                                y0VarR = null;
                                                str4 = null;
                                            }
                                            i14 = iO9;
                                            j11 = Long.MAX_VALUE;
                                            if (str4 != null) {
                                                r1.o oVar = new r1.o();
                                                oVar.f13480a = Integer.toString(iO3);
                                                oVar.f13492n = e0.l(str4);
                                                oVar.f13483d = str;
                                                oVar.f13496s = j11;
                                                oVar.f13495q = y0VarR;
                                                aVar.f474e = new r1.p(oVar);
                                            }
                                        }
                                        i11 = i34;
                                        i12 = I;
                                        i13 = i41;
                                        cVar2 = cVar4;
                                        i14 = iO9;
                                        j11 = Long.MAX_VALUE;
                                        y0VarR = null;
                                    }
                                    if (str4 != null) {
                                    }
                                } else {
                                    i11 = i34;
                                    i12 = I;
                                    i13 = i41;
                                    cVar2 = cVar4;
                                    i14 = iO9;
                                    j11 = Long.MAX_VALUE;
                                    y0VarR = null;
                                    if (str4 != null) {
                                    }
                                }
                            } else {
                                if (iO10 == 1835365492) {
                                    b10 = b12;
                                    qVar5.O(i42 + 16);
                                    if (iO10 == 1835365492) {
                                        qVar5.w();
                                        String strW = qVar5.w();
                                        if (strW != null) {
                                            r1.o oVar2 = new r1.o();
                                            oVar2.f13480a = Integer.toString(iO3);
                                            oVar2.f13492n = e0.l(strW);
                                            aVar.f474e = new r1.p(oVar2);
                                        }
                                    }
                                } else {
                                    b10 = b12;
                                    if (iO10 == 1667329389) {
                                        r1.o oVar3 = new r1.o();
                                        oVar3.f13480a = Integer.toString(iO3);
                                        oVar3.f13492n = e0.l("application/x-camera-motion");
                                        aVar.f474e = new r1.p(oVar3);
                                    }
                                }
                                i11 = i34;
                                i12 = I;
                                i13 = i41;
                                cVar2 = cVar4;
                                i14 = iO9;
                            }
                            qVar5.O(i42 + i14);
                            i41 = i13 + 1;
                            iO8 = i43;
                            b12 = b10;
                            I = i12;
                            i34 = i11;
                            j17 = j19;
                            cVar4 = cVar2;
                        }
                        int i51 = I;
                        byte b13 = b12;
                        long j20 = j17;
                        v1.c cVar6 = cVar4;
                        if (z) {
                            cVar4 = cVar6;
                        } else {
                            cVar4 = cVar6;
                            v1.c cVarG4 = cVar4.g(1701082227);
                            if (cVarG4 != null) {
                                v1.d dVarI6 = cVarG4.i(1701606260);
                                if (dVarI6 == null) {
                                    pairCreate = null;
                                } else {
                                    u1.q qVar6 = dVarI6.f16331c;
                                    qVar6.O(8);
                                    int iE3 = e(qVar6.o());
                                    int iF5 = qVar6.F();
                                    long[] jArr10 = new long[iF5];
                                    long[] jArr11 = new long[iF5];
                                    for (int i52 = 0; i52 < iF5; i52++) {
                                        jArr10[i52] = iE3 == 1 ? qVar6.H() : qVar6.D();
                                        jArr11[i52] = iE3 == 1 ? qVar6.v() : qVar6.o();
                                        if (qVar6.y() != 1) {
                                            throw new IllegalArgumentException("Unsupported media rate.");
                                        }
                                        qVar6.P(2);
                                    }
                                    pairCreate = Pair.create(jArr10, jArr11);
                                }
                                if (pairCreate != null) {
                                    jArr2 = (long[]) pairCreate.first;
                                    jArr = (long[]) pairCreate.second;
                                }
                                pVar = (r1.p) aVar.f474e;
                                if (pVar == null) {
                                    dVar2 = dVar;
                                    sVar = null;
                                } else {
                                    if (i51 != 0) {
                                        v1.b bVar = new v1.b(i51);
                                        r1.o oVar4 = new r1.o(pVar);
                                        d0 d0Var = ((r1.p) aVar.f474e).l;
                                        oVar4.f13490k = d0Var != null ? d0Var.a(bVar) : new d0(bVar);
                                        pVar = new r1.p(oVar4);
                                    }
                                    sVar = new s(iO3, b13, jD2, j20, jM, j18, pVar, aVar.f472c, (t[]) aVar.f473d, aVar.f471b, jArr2, jArr);
                                    dVar2 = dVar;
                                }
                                sVarA = (s) dVar2.apply(sVar);
                                if (sVarA != null) {
                                    arrayList2 = arrayList;
                                } else {
                                    v1.c cVarG5 = cVar4.g(1835297121);
                                    cVarG5.getClass();
                                    v1.c cVarG6 = cVarG5.g(1835626086);
                                    cVarG6.getClass();
                                    v1.c cVarG7 = cVarG6.g(1937007212);
                                    cVarG7.getClass();
                                    v1.d dVarI7 = cVarG7.i(1937011578);
                                    r1.p pVar5 = sVarA.f5566g;
                                    if (dVarI7 != null) {
                                        dVar3 = new a0.h(dVarI7, pVar5);
                                    } else {
                                        v1.d dVarI8 = cVarG7.i(1937013298);
                                        if (dVarI8 == null) {
                                            throw r1.f0.a(null, "Track has no sample table size information");
                                        }
                                        dVar3 = new d(dVarI8);
                                    }
                                    int iC = dVar3.c();
                                    if (iC == 0) {
                                        vVar2 = new v(sVarA, new long[0], new int[0], 0, new long[0], new int[0], new int[0], false, 0L, 0);
                                    } else {
                                        if (sVarA.f5561b == 2) {
                                            long j21 = sVarA.f5565f;
                                            if (j21 > 0) {
                                                r1.o oVarA = pVar5.a();
                                                oVarA.f13502y = iC / (j21 / 1000000.0f);
                                                sVarA = sVarA.a(oVarA.a());
                                            }
                                        }
                                        v1.d dVarI9 = cVarG7.i(1937007471);
                                        if (dVarI9 == null) {
                                            dVarI9 = cVarG7.i(1668232756);
                                            dVarI9.getClass();
                                            z11 = true;
                                        } else {
                                            z11 = false;
                                        }
                                        v1.d dVarI10 = cVarG7.i(1937011555);
                                        dVarI10.getClass();
                                        v1.d dVarI11 = cVarG7.i(1937011827);
                                        dVarI11.getClass();
                                        v1.d dVarI12 = cVarG7.i(1937011571);
                                        u1.q qVar7 = dVarI12 != null ? dVarI12.f16331c : null;
                                        v1.d dVarI13 = cVarG7.i(1668576371);
                                        u1.q qVar8 = dVarI13 != null ? dVarI13.f16331c : null;
                                        b bVar2 = new b(dVarI10.f16331c, dVarI9.f16331c, z11);
                                        u1.q qVar9 = dVarI11.f16331c;
                                        qVar9.O(12);
                                        int iF6 = qVar9.F() - 1;
                                        int iF7 = qVar9.F();
                                        int iF8 = qVar9.F();
                                        if (qVar8 != null) {
                                            qVar8.O(12);
                                            iF = qVar8.F();
                                        } else {
                                            iF = 0;
                                        }
                                        if (qVar7 != null) {
                                            qVar7.O(12);
                                            iF2 = qVar7.F();
                                            if (iF2 > 0) {
                                                iF3 = qVar7.F() - 1;
                                                qVar = qVar7;
                                            } else {
                                                iF3 = -1;
                                                qVar = null;
                                            }
                                        } else {
                                            qVar = qVar7;
                                            iF2 = 0;
                                            iF3 = -1;
                                        }
                                        int iB = dVar3.b();
                                        r1.p pVar6 = sVarA.f5566g;
                                        String str6 = pVar6.f13523o;
                                        boolean z16 = iB != -1 && ("audio/raw".equals(str6) || "audio/g711-mlaw".equals(str6) || "audio/g711-alaw".equals(str6)) && iF6 == 0 && iF == 0 && iF2 == 0;
                                        ArrayList arrayList6 = new ArrayList();
                                        boolean z17 = qVar == null;
                                        if (z16) {
                                            int i53 = bVar2.f5458a;
                                            long[] jArr12 = new long[i53];
                                            int[] iArr6 = new int[i53];
                                            while (bVar2.a()) {
                                                int i54 = bVar2.f5459b;
                                                jArr12[i54] = bVar2.f5461d;
                                                iArr6[i54] = bVar2.f5460c;
                                            }
                                            long j22 = iF8;
                                            int i55 = 8192 / iB;
                                            int iE4 = 0;
                                            for (int i56 = 0; i56 < i53; i56++) {
                                                iE4 += f0.e(iArr6[i56], i55);
                                            }
                                            long[] jArr13 = new long[iE4];
                                            int[] iArr7 = new int[iE4];
                                            long[] jArr14 = new long[iE4];
                                            int[] iArr8 = new int[iE4];
                                            pVar2 = pVar6;
                                            int i57 = iE4;
                                            int i58 = 0;
                                            int i59 = 0;
                                            int i60 = 0;
                                            int i61 = 0;
                                            int i62 = 0;
                                            while (i60 < i53) {
                                                int i63 = iArr6[i60];
                                                long j23 = jArr12[i60];
                                                int i64 = i62;
                                                int i65 = i53;
                                                int i66 = i61;
                                                int i67 = i64;
                                                long[] jArr15 = jArr12;
                                                int i68 = i63;
                                                while (i68 > 0) {
                                                    int iMin = Math.min(i55, i68);
                                                    jArr13[i67] = j23;
                                                    int[] iArr9 = iArr6;
                                                    int i69 = iB * iMin;
                                                    iArr7[i67] = i69;
                                                    int iMax = Math.max(i66, i69);
                                                    jArr14[i67] = i59 * j22;
                                                    iArr8[i67] = 1;
                                                    j23 += iArr7[i67];
                                                    i59 += iMin;
                                                    i68 -= iMin;
                                                    i67++;
                                                    i58 += i69;
                                                    iArr6 = iArr9;
                                                    i66 = iMax;
                                                }
                                                i60++;
                                                jArr12 = jArr15;
                                                int i70 = i67;
                                                i61 = i66;
                                                i53 = i65;
                                                i62 = i70;
                                            }
                                            long j24 = j22 * i59;
                                            j13 = i58;
                                            if (z10) {
                                                jArr13 = new long[0];
                                            }
                                            if (z10) {
                                                iArr7 = new int[0];
                                            }
                                            if (z10) {
                                                jArr14 = new long[0];
                                            }
                                            if (z10) {
                                                iArr8 = new int[0];
                                            }
                                            sVarA2 = sVarA;
                                            j12 = j24;
                                            i19 = i57;
                                            i18 = i61;
                                            int[] iArr10 = iArr7;
                                            jArr4 = jArr13;
                                            iArrCopyOf = iArr8;
                                            jArr3 = jArr14;
                                            iArr = iArr10;
                                        } else {
                                            pVar2 = pVar6;
                                            long[] jArrCopyOf = z10 ? new long[0] : new long[iC];
                                            int[] iArrCopyOf2 = z10 ? new int[0] : new int[iC];
                                            int i71 = iF2;
                                            long[] jArrCopyOf2 = z10 ? new long[0] : new long[iC];
                                            iArrCopyOf = z10 ? new int[0] : new int[iC];
                                            int i72 = i71;
                                            int i73 = iF6;
                                            int i74 = 0;
                                            long j25 = 0;
                                            long j26 = 0;
                                            long j27 = 0;
                                            int iO11 = 0;
                                            int iF9 = 0;
                                            s sVar2 = sVarA;
                                            int iF10 = iF3;
                                            int i75 = 0;
                                            int i76 = iF8;
                                            int i77 = 0;
                                            int i78 = iF;
                                            int i79 = iF7;
                                            while (true) {
                                                if (i75 >= iC) {
                                                    i15 = i72;
                                                    i16 = i79;
                                                    break;
                                                }
                                                boolean zA = true;
                                                while (i74 == 0) {
                                                    zA = bVar2.a();
                                                    if (!zA) {
                                                        break;
                                                    }
                                                    int i80 = i79;
                                                    long j28 = bVar2.f5461d;
                                                    i74 = bVar2.f5460c;
                                                    j27 = j28;
                                                    i79 = i80;
                                                    i76 = i76;
                                                    iC = iC;
                                                }
                                                int i81 = iC;
                                                i16 = i79;
                                                int i82 = i76;
                                                if (zA) {
                                                    if (qVar8 != null) {
                                                        while (iF9 == 0 && i78 > 0) {
                                                            iF9 = qVar8.F();
                                                            iO11 = qVar8.o();
                                                            i78--;
                                                        }
                                                        iF9--;
                                                    }
                                                    int i83 = iO11;
                                                    int iE5 = dVar3.e();
                                                    int i84 = i72;
                                                    b bVar3 = bVar2;
                                                    long j29 = iE5;
                                                    j26 += j29;
                                                    if (iE5 > i77) {
                                                        i77 = iE5;
                                                    }
                                                    if (z10) {
                                                        jArr5 = jArrCopyOf;
                                                        iArr2 = iArrCopyOf2;
                                                        i20 = 1;
                                                    } else {
                                                        jArrCopyOf[i75] = j27;
                                                        iArrCopyOf2[i75] = iE5;
                                                        jArr5 = jArrCopyOf;
                                                        iArr2 = iArrCopyOf2;
                                                        jArrCopyOf2[i75] = j25 + i83;
                                                        iArrCopyOf[i75] = qVar == null ? 1 : 0;
                                                        i20 = 1;
                                                        if (i75 == iF10) {
                                                            iArrCopyOf[i75] = 1;
                                                            arrayList6.add(Integer.valueOf(i75));
                                                        }
                                                    }
                                                    if (qVar != null && i75 == iF10) {
                                                        i84--;
                                                        if (i84 > 0) {
                                                            iF10 = qVar.F() - i20;
                                                        }
                                                    }
                                                    long[] jArr16 = jArrCopyOf2;
                                                    c cVar7 = dVar3;
                                                    j25 += i82;
                                                    int i85 = i16 - 1;
                                                    if (i85 != 0 || i73 <= 0) {
                                                        iO = i82;
                                                        iF4 = i85;
                                                    } else {
                                                        iF4 = qVar9.F();
                                                        iO = qVar9.o();
                                                        i73--;
                                                    }
                                                    j27 += j29;
                                                    i74--;
                                                    i75++;
                                                    iO11 = i83;
                                                    i72 = i84;
                                                    bVar2 = bVar3;
                                                    iC = i81;
                                                    iArrCopyOf2 = iArr2;
                                                    jArrCopyOf2 = jArr16;
                                                    i76 = iO;
                                                    dVar3 = cVar7;
                                                    long[] jArr17 = jArr5;
                                                    i79 = iF4;
                                                    jArrCopyOf = jArr17;
                                                } else {
                                                    u1.a.p("Unexpected end of chunk data");
                                                    if (!z10) {
                                                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i75);
                                                        iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i75);
                                                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i75);
                                                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i75);
                                                    }
                                                    iC = i75;
                                                    i15 = i72;
                                                }
                                            }
                                            int i86 = i74;
                                            long j30 = j25 + iO11;
                                            if (qVar8 != null) {
                                                while (i78 > 0) {
                                                    if (qVar8.F() != 0) {
                                                        z12 = false;
                                                        break;
                                                    }
                                                    qVar8.o();
                                                    i78--;
                                                }
                                                z12 = true;
                                                if (i15 != 0 && i16 == 0 && i86 == 0 && i73 == 0) {
                                                    i17 = iF9;
                                                    if (i17 == 0 && z12) {
                                                        sVarA2 = sVar2;
                                                    }
                                                    iArr = iArrCopyOf2;
                                                    j12 = j30;
                                                    jArr3 = jArrCopyOf2;
                                                    i18 = i77;
                                                    jArr4 = jArrCopyOf;
                                                    i19 = iC;
                                                    j13 = j26;
                                                } else {
                                                    i17 = iF9;
                                                }
                                                StringBuilder sb3 = new StringBuilder("Inconsistent stbl box for track ");
                                                sVarA2 = sVar2;
                                                sb3.append(sVarA2.f5560a);
                                                sb3.append(": remainingSynchronizationSamples ");
                                                sb3.append(i15);
                                                sb3.append(", remainingSamplesAtTimestampDelta ");
                                                sb3.append(i16);
                                                sb3.append(", remainingSamplesInChunk ");
                                                sb3.append(i86);
                                                sb3.append(", remainingTimestampDeltaChanges ");
                                                sb3.append(i73);
                                                sb3.append(", remainingSamplesAtTimestampOffset ");
                                                sb3.append(i17);
                                                sb3.append(z12 ? ", ctts invalid" : "");
                                                u1.a.p(sb3.toString());
                                                iArr = iArrCopyOf2;
                                                j12 = j30;
                                                jArr3 = jArrCopyOf2;
                                                i18 = i77;
                                                jArr4 = jArrCopyOf;
                                                i19 = iC;
                                                j13 = j26;
                                            } else {
                                                z12 = true;
                                                if (i15 != 0) {
                                                    i17 = iF9;
                                                    StringBuilder sb32 = new StringBuilder("Inconsistent stbl box for track ");
                                                    sVarA2 = sVar2;
                                                    sb32.append(sVarA2.f5560a);
                                                    sb32.append(": remainingSynchronizationSamples ");
                                                    sb32.append(i15);
                                                    sb32.append(", remainingSamplesAtTimestampDelta ");
                                                    sb32.append(i16);
                                                    sb32.append(", remainingSamplesInChunk ");
                                                    sb32.append(i86);
                                                    sb32.append(", remainingTimestampDeltaChanges ");
                                                    sb32.append(i73);
                                                    sb32.append(", remainingSamplesAtTimestampOffset ");
                                                    sb32.append(i17);
                                                    sb32.append(z12 ? ", ctts invalid" : "");
                                                    u1.a.p(sb32.toString());
                                                    iArr = iArrCopyOf2;
                                                    j12 = j30;
                                                    jArr3 = jArrCopyOf2;
                                                    i18 = i77;
                                                    jArr4 = jArrCopyOf;
                                                    i19 = iC;
                                                    j13 = j26;
                                                }
                                            }
                                        }
                                        long j31 = sVarA2.f5565f;
                                        if (j31 > 0) {
                                            long jM4 = f0.M(j13 * 8, 1000000L, j31, RoundingMode.HALF_DOWN);
                                            if (jM4 > 0 && jM4 < 2147483647L) {
                                                r1.o oVarA2 = pVar2.a();
                                                oVarA2.f13487h = (int) jM4;
                                                sVarA2 = sVarA2.a(oVarA2.a());
                                            }
                                        }
                                        RoundingMode roundingMode = RoundingMode.DOWN;
                                        int i87 = i19;
                                        int[] iArr11 = iArrCopyOf;
                                        long jM5 = f0.M(j12, 1000000L, sVarA2.f5562c, roundingMode);
                                        int[] iArrR0 = d.b.r0(arrayList6);
                                        long j32 = sVarA2.f5562c;
                                        long[] jArr18 = sVarA2.f5568i;
                                        if (jArr18 == null) {
                                            if (!z10) {
                                                f0.L(jArr3, j32);
                                            }
                                            vVar2 = new v(sVarA2, jArr4, iArr, i18, jArr3, iArr11, iArrR0, z17, jM5, i87);
                                        } else {
                                            long[] jArr19 = sVarA2.f5569j;
                                            if (z10) {
                                                jArr19.getClass();
                                                if (jArr18.length == 1 && jArr18[0] == 0) {
                                                    jM3 = f0.M(j12 - jArr19[0], 1000000L, sVarA2.f5562c, roundingMode);
                                                } else {
                                                    long j33 = 0;
                                                    for (int i88 = 0; i88 < jArr18.length; i88++) {
                                                        if (jArr19[i88] != -1) {
                                                            j33 += jArr18[i88];
                                                        }
                                                    }
                                                    jM3 = f0.M(j33, 1000000L, sVarA2.f5563d, RoundingMode.DOWN);
                                                }
                                                vVar2 = new v(sVarA2, jArr4, iArr, i18, jArr3, iArr11, iArrR0, z17, jM3, i87);
                                            } else {
                                                int length = jArr18.length;
                                                int i89 = sVarA2.f5561b;
                                                r1.p pVar7 = sVarA2.f5566g;
                                                if (length == 1 && i89 == 1 && jArr3.length >= 2) {
                                                    jArr19.getClass();
                                                    long j34 = jArr19[0];
                                                    j14 = j12;
                                                    long jM6 = j34 + f0.M(jArr18[0], sVarA2.f5562c, sVarA2.f5563d, roundingMode);
                                                    int length2 = jArr3.length - 1;
                                                    i21 = i89;
                                                    jArr6 = jArr19;
                                                    if (jArr3[0] <= j34 && j34 < jArr3[f0.g(4, 0, length2)] && jArr3[f0.g(jArr3.length - 4, 0, length2)] < jM6 && jM6 <= j14 + 2) {
                                                        long jMax = Math.max(0L, j14 - jM6);
                                                        long jM7 = f0.M(j34 - jArr3[0], pVar7.H, sVarA2.f5562c, roundingMode);
                                                        pVar3 = pVar7;
                                                        jArr7 = jArr4;
                                                        long jM8 = f0.M(jMax, pVar7.H, sVarA2.f5562c, roundingMode);
                                                        if ((jM7 != 0 || jM8 != 0) && jM7 <= 2147483647L && jM8 <= 2147483647L) {
                                                            vVar.f10530a = (int) jM7;
                                                            vVar.f10531b = (int) jM8;
                                                            f0.L(jArr3, j32);
                                                            vVar2 = new v(sVarA2, jArr7, iArr, i18, jArr3, iArr11, iArrR0, z17, f0.M(jArr18[0], 1000000L, sVarA2.f5563d, roundingMode), i87);
                                                        }
                                                    } else {
                                                        pVar3 = pVar7;
                                                        jArr7 = jArr4;
                                                        int i90 = 1;
                                                        if (jArr18.length == 1) {
                                                            i22 = i21;
                                                        } else if (jArr18[0] == 0) {
                                                            jArr6.getClass();
                                                            long j35 = jArr6[0];
                                                            for (int i91 = 0; i91 < jArr3.length; i91++) {
                                                                jArr3[i91] = f0.M(jArr3[i91] - j35, 1000000L, sVarA2.f5562c, RoundingMode.DOWN);
                                                            }
                                                            vVar2 = new v(sVarA2, jArr7, iArr, i18, jArr3, iArr11, iArrR0, z17, f0.M(j14 - j35, 1000000L, sVarA2.f5562c, RoundingMode.DOWN), i87);
                                                        } else {
                                                            i22 = i21;
                                                            i90 = 1;
                                                        }
                                                        boolean z18 = i22 != i90;
                                                        int[] iArr12 = new int[jArr18.length];
                                                        int[] iArr13 = new int[jArr18.length];
                                                        jArr6.getClass();
                                                        boolean z19 = false;
                                                        int i92 = 0;
                                                        int i93 = 0;
                                                        i23 = 0;
                                                        while (i23 < jArr18.length) {
                                                            long j36 = jArr6[i23];
                                                            if (j36 != -1) {
                                                                iArr4 = iArr;
                                                                jArr9 = jArr18;
                                                                long jM9 = f0.M(jArr18[i23], sVarA2.f5562c, sVarA2.f5563d, RoundingMode.DOWN) + j36;
                                                                iArr12[i23] = f0.d(jArr3, j36, true);
                                                                int iA = f0.a(jArr3, jM9, z18);
                                                                int i94 = iA - 1;
                                                                int i95 = 0;
                                                                while (true) {
                                                                    if (iA >= jArr3.length) {
                                                                        z15 = z18;
                                                                        pVar4 = pVar3;
                                                                        break;
                                                                    }
                                                                    if (jArr3[iA] >= jM9) {
                                                                        i95++;
                                                                        z15 = z18;
                                                                        pVar4 = pVar3;
                                                                        if (i95 > pVar4.f13525q) {
                                                                            break;
                                                                        }
                                                                    } else {
                                                                        z15 = z18;
                                                                        i94 = iA;
                                                                        pVar4 = pVar3;
                                                                    }
                                                                    iA++;
                                                                    pVar3 = pVar4;
                                                                    z18 = z15;
                                                                }
                                                                int i96 = 1;
                                                                iArr13[i23] = i94 + 1;
                                                                int i97 = iArr12[i23];
                                                                while (true) {
                                                                    i26 = iArr12[i23];
                                                                    iArr5 = iArr11;
                                                                    if (i26 <= 0 || (iArr5[i26] & 1) != 0) {
                                                                        break;
                                                                    }
                                                                    iArr12[i23] = i26 - 1;
                                                                    iArr11 = iArr5;
                                                                }
                                                                if (i26 == 0 && (iArr5[0] & 1) == 0) {
                                                                    iArr12[i23] = i97;
                                                                    while (true) {
                                                                        int i98 = iArr12[i23];
                                                                        if (i98 >= iArr13[i23] || (iArr5[i98] & i96) != 0) {
                                                                            break;
                                                                        }
                                                                        iArr12[i23] = i98 + i96;
                                                                        i96 = 1;
                                                                    }
                                                                }
                                                                int i99 = iArr13[i23];
                                                                int i100 = iArr12[i23];
                                                                int i101 = (i99 - i100) + i92;
                                                                boolean z20 = i93 != i100;
                                                                i93 = i99;
                                                                z19 = z20 | z19;
                                                                i92 = i101;
                                                            } else {
                                                                z15 = z18;
                                                                jArr9 = jArr18;
                                                                iArr4 = iArr;
                                                                iArr5 = iArr11;
                                                                pVar4 = pVar3;
                                                            }
                                                            i23++;
                                                            iArr11 = iArr5;
                                                            pVar3 = pVar4;
                                                            iArr = iArr4;
                                                            jArr18 = jArr9;
                                                            z18 = z15;
                                                        }
                                                        jArr8 = jArr18;
                                                        int[] iArr14 = iArr;
                                                        int[] iArr15 = iArr11;
                                                        r1.p pVar8 = pVar3;
                                                        boolean z21 = (i92 == i87) | z19;
                                                        long[] jArr20 = !z21 ? new long[i92] : jArr7;
                                                        int[] iArr16 = !z21 ? new int[i92] : iArr14;
                                                        int i102 = !z21 ? 0 : i18;
                                                        int[] iArr17 = !z21 ? new int[i92] : iArr15;
                                                        ArrayList arrayList7 = !z21 ? new ArrayList() : arrayList6;
                                                        long[] jArr21 = new long[i92];
                                                        int i103 = i102;
                                                        boolean z22 = false;
                                                        i24 = 0;
                                                        int i104 = 0;
                                                        long j37 = 0;
                                                        while (i24 < jArr8.length) {
                                                            long j38 = jArr6[i24];
                                                            int i105 = iArr12[i24];
                                                            int[] iArr18 = iArr12;
                                                            int i106 = iArr13[i24];
                                                            int[] iArr19 = iArr13;
                                                            if (z21) {
                                                                int i107 = i106 - i105;
                                                                z14 = z22;
                                                                System.arraycopy(jArr7, i105, jArr20, i104, i107);
                                                                iArr3 = iArr14;
                                                                System.arraycopy(iArr3, i105, iArr16, i104, i107);
                                                                System.arraycopy(iArr15, i105, iArr17, i104, i107);
                                                            } else {
                                                                z14 = z22;
                                                                iArr3 = iArr14;
                                                            }
                                                            int i108 = i103;
                                                            while (i105 < i106) {
                                                                RoundingMode roundingMode2 = RoundingMode.DOWN;
                                                                long[] jArr22 = jArr20;
                                                                int i109 = i106;
                                                                long jM10 = f0.M(j37, 1000000L, sVarA2.f5563d, roundingMode2);
                                                                ArrayList arrayList8 = arrayList7;
                                                                int[] iArr20 = iArr15;
                                                                long jM11 = f0.M(jArr3[i105] - j38, 1000000L, sVarA2.f5562c, roundingMode2);
                                                                if (jM11 < 0) {
                                                                    z14 = true;
                                                                }
                                                                jArr21[i104] = jM10 + jM11;
                                                                if (z21 && iArr16[i104] > i108) {
                                                                    i108 = iArr3[i105];
                                                                }
                                                                if (!z21 || z17) {
                                                                    arrayList7 = arrayList8;
                                                                    i25 = 1;
                                                                } else {
                                                                    i25 = 1;
                                                                    if ((iArr17[i104] & 1) != 0) {
                                                                        arrayList7 = arrayList8;
                                                                        arrayList7.add(Integer.valueOf(i104));
                                                                    } else {
                                                                        arrayList7 = arrayList8;
                                                                    }
                                                                }
                                                                i104 += i25;
                                                                i105 += i25;
                                                                jArr20 = jArr22;
                                                                i106 = i109;
                                                                iArr15 = iArr20;
                                                            }
                                                            j37 += jArr8[i24];
                                                            i24++;
                                                            i103 = i108;
                                                            iArr14 = iArr3;
                                                            iArr12 = iArr18;
                                                            iArr13 = iArr19;
                                                            z22 = z14;
                                                        }
                                                        long[] jArr23 = jArr20;
                                                        z13 = z22;
                                                        long jM12 = f0.M(j37, 1000000L, sVarA2.f5563d, RoundingMode.DOWN);
                                                        if (z13) {
                                                            sVarA3 = sVarA2;
                                                        } else {
                                                            r1.o oVarA3 = pVar8.a();
                                                            oVarA3.f13497t = true;
                                                            sVarA3 = sVarA2.a(oVarA3.a());
                                                        }
                                                        vVar2 = new v(sVarA3, jArr23, iArr16, i103, jArr21, iArr17, d.b.r0(arrayList7), z17, jM12, jArr23.length);
                                                    }
                                                } else {
                                                    i21 = i89;
                                                    pVar3 = pVar7;
                                                    jArr6 = jArr19;
                                                    j14 = j12;
                                                    jArr7 = jArr4;
                                                }
                                                int i902 = 1;
                                                if (jArr18.length == 1) {
                                                }
                                                if (i22 != i902) {
                                                }
                                                int[] iArr122 = new int[jArr18.length];
                                                int[] iArr132 = new int[jArr18.length];
                                                jArr6.getClass();
                                                boolean z192 = false;
                                                int i922 = 0;
                                                int i932 = 0;
                                                i23 = 0;
                                                while (i23 < jArr18.length) {
                                                }
                                                jArr8 = jArr18;
                                                int[] iArr142 = iArr;
                                                int[] iArr152 = iArr11;
                                                r1.p pVar82 = pVar3;
                                                boolean z212 = (i922 == i87) | z192;
                                                if (!z212) {
                                                }
                                                if (!z212) {
                                                }
                                                if (!z212) {
                                                }
                                                if (!z212) {
                                                }
                                                if (!z212) {
                                                }
                                                long[] jArr212 = new long[i922];
                                                int i1032 = i102;
                                                boolean z222 = false;
                                                i24 = 0;
                                                int i1042 = 0;
                                                long j372 = 0;
                                                while (i24 < jArr8.length) {
                                                }
                                                long[] jArr232 = jArr20;
                                                z13 = z222;
                                                long jM122 = f0.M(j372, 1000000L, sVarA2.f5563d, RoundingMode.DOWN);
                                                if (z13) {
                                                }
                                                vVar2 = new v(sVarA3, jArr232, iArr16, i1032, jArr212, iArr17, d.b.r0(arrayList7), z17, jM122, jArr232.length);
                                            }
                                        }
                                    }
                                    arrayList2 = arrayList;
                                    arrayList2.add(vVar2);
                                }
                            }
                            jArr = null;
                            jArr2 = null;
                            pVar = (r1.p) aVar.f474e;
                            if (pVar == null) {
                            }
                            sVarA = (s) dVar2.apply(sVar);
                            if (sVarA != null) {
                            }
                        }
                        jArr = null;
                        jArr2 = null;
                        pVar = (r1.p) aVar.f474e;
                        if (pVar == null) {
                        }
                        sVarA = (s) dVar2.apply(sVar);
                        if (sVarA != null) {
                        }
                    }
                }
                sVar = null;
                sVarA = (s) dVar2.apply(sVar);
                if (sVarA != null) {
                }
            }
            i30 = i10 + 1;
            arrayList3 = arrayList2;
            i27 = 8;
            i28 = 4;
            i29 = 16;
            b11 = -1;
            cVar3 = cVar;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01b4, code lost:
    
        r3.O(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01bc, code lost:
    
        r4 = 16777215 & r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01c3, code lost:
    
        if (r4 != 6516084) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01c5, code lost:
    
        r1 = r3.o();
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01d0, code lost:
    
        if (r3.o() != 1684108385) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01d2, code lost:
    
        r3.P(8);
        r1 = r3.x(r1 - 16);
        r9 = new z2.e("und", r1, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01e7, code lost:
    
        u1.a.p("Failed to parse comment attribute: " + ab.a.b(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0200, code lost:
    
        if (r4 == 7233901) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0205, code lost:
    
        if (r4 != 7631467) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x020c, code lost:
    
        if (r4 == 6516589) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0211, code lost:
    
        if (r4 != 7828084) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0218, code lost:
    
        if (r4 != 6578553) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x021a, code lost:
    
        r9 = f3.r.g(r9, "TDRC", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0224, code lost:
    
        if (r4 != 4280916) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0226, code lost:
    
        r9 = f3.r.g(r9, "TPE1", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0230, code lost:
    
        if (r4 != 7630703) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0232, code lost:
    
        r9 = f3.r.g(r9, "TSSE", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x023d, code lost:
    
        if (r4 != 6384738) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x023f, code lost:
    
        r9 = f3.r.g(r9, "TALB", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0045, code lost:
    
        r3.O(r11);
        r11 = r11 + r14;
        r3.P(r4);
        r0 = new java.util.ArrayList();
        r2 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x024a, code lost:
    
        if (r4 != 7108978) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x024c, code lost:
    
        r9 = f3.r.g(r9, "USLT", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0257, code lost:
    
        if (r4 != 6776174) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0259, code lost:
    
        r9 = f3.r.g(r9, "TCON", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0262, code lost:
    
        if (r4 != 6779504) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0264, code lost:
    
        r9 = f3.r.g(r9, "TIT1", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0051, code lost:
    
        r9 = r3.f15267b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x026f, code lost:
    
        if (r4 != 7173742) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0271, code lost:
    
        r9 = f3.r.g(r9, "MVNM", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x027c, code lost:
    
        if (r4 != 7173737) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x027e, code lost:
    
        r9 = f3.r.f(r9, "MVIN", r3, true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0287, code lost:
    
        u1.a.e("Skipped unknown metadata entry: " + ab.a.b(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x029a, code lost:
    
        r3.O(r15);
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x029f, code lost:
    
        r9 = f3.r.g(r9, "TCOM", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x02a7, code lost:
    
        r9 = f3.r.g(r9, "TIT2", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0053, code lost:
    
        if (r9 >= r11) goto L235;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02af, code lost:
    
        if (r9 == null) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x02b1, code lost:
    
        r0.add(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02b4, code lost:
    
        r2 = 1;
        r10 = null;
        r12 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x02bb, code lost:
    
        r3.O(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02be, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02c3, code lost:
    
        if (r0.isEmpty() == false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x02c6, code lost:
    
        r10 = new r1.d0(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0055, code lost:
    
        r15 = r3.o() + r9;
        r9 = r3.o();
        r4 = (r9 >> 24) & 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0068, code lost:
    
        if (r4 == 169) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006c, code lost:
    
        if (r4 != 253) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0074, code lost:
    
        if (r9 != 1735291493) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0076, code lost:
    
        r4 = z2.j.a(f3.r.e(r3) - r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007f, code lost:
    
        if (r4 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0081, code lost:
    
        r9 = new z2.n("TCON", r10, u7.g0.r(r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008b, code lost:
    
        u1.a.p("Failed to parse standard genre code");
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0090, code lost:
    
        r9 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0091, code lost:
    
        r3.O(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009a, code lost:
    
        if (r9 != 1684632427) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009c, code lost:
    
        r9 = f3.r.d(r9, "TPOS", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a3, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a9, code lost:
    
        if (r9 != 1953655662) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ab, code lost:
    
        r9 = f3.r.d(r9, "TRCK", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b5, code lost:
    
        if (r9 != 1953329263) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b7, code lost:
    
        r9 = f3.r.f(r9, "TBPM", r3, r2, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c1, code lost:
    
        if (r9 != 1668311404) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c3, code lost:
    
        r9 = f3.r.f(r9, "TCMP", r3, r2, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00cd, code lost:
    
        if (r9 != 1668249202) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00cf, code lost:
    
        r9 = f3.r.c(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d7, code lost:
    
        if (r9 != 1631670868) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d9, code lost:
    
        r9 = f3.r.g(r9, "TPE2", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e3, code lost:
    
        if (r9 != 1936682605) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e5, code lost:
    
        r9 = f3.r.g(r9, "TSOT", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ef, code lost:
    
        if (r9 != 1936679276) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f1, code lost:
    
        r9 = f3.r.g(r9, "TSOA", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00fb, code lost:
    
        if (r9 != 1936679282) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00fd, code lost:
    
        r9 = f3.r.g(r9, "TSOP", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0107, code lost:
    
        if (r9 != 1936679265) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0109, code lost:
    
        r9 = f3.r.g(r9, "TSO2", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0113, code lost:
    
        if (r9 != 1936679791) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0115, code lost:
    
        r9 = f3.r.g(r9, "TSOC", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0120, code lost:
    
        if (r9 != 1920233063) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0122, code lost:
    
        r9 = f3.r.f(r9, "ITUNESADVISORY", r3, false, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x012d, code lost:
    
        if (r9 != 1885823344) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x012f, code lost:
    
        r9 = f3.r.f(r9, "ITUNESGAPLESS", r3, false, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x013a, code lost:
    
        if (r9 != 1936683886) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x013c, code lost:
    
        r9 = f3.r.g(r9, "TVSHOWSORT", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0147, code lost:
    
        if (r9 != 1953919848) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0149, code lost:
    
        r9 = f3.r.g(r9, "TVSHOW", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0154, code lost:
    
        if (r9 != 757935405) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0156, code lost:
    
        r1 = r10;
        r4 = r1;
        r9 = -1;
        r13 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x015a, code lost:
    
        r14 = r3.f15267b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x015c, code lost:
    
        if (r14 >= r15) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x015e, code lost:
    
        r16 = r3.o();
        r10 = r3.o();
        r3.P(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x016c, code lost:
    
        if (r10 != 1835360622) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x016e, code lost:
    
        r1 = r3.x(r16 - 12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x017c, code lost:
    
        if (r10 != 1851878757) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x017e, code lost:
    
        r4 = r3.x(r16 - 12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0188, code lost:
    
        if (r10 != 1684108385) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x018a, code lost:
    
        r9 = r14;
        r13 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x018d, code lost:
    
        r3.P(r16 - 12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0192, code lost:
    
        r12 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0196, code lost:
    
        if (r1 == null) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0198, code lost:
    
        if (r4 == null) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x019b, code lost:
    
        if (r9 != (-1)) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x019e, code lost:
    
        r3.O(r9);
        r3.P(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01b0, code lost:
    
        r9 = new z2.k(r1, r4, r3.x(r13 - 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01b3, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:205:0x037b  */
    /* JADX WARN: Type inference failed for: r2v20, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static d0 j(v1.d dVar) {
        d0 d0Var;
        d0 d0Var2;
        int iC;
        int i10;
        boolean z = true;
        u1.q qVar = dVar.f16331c;
        int i11 = 8;
        qVar.O(8);
        d0 d0Var3 = new d0(new c0[0]);
        while (qVar.a() >= i11) {
            int i12 = qVar.f15267b;
            int iO = qVar.o();
            int iO2 = qVar.o();
            String str = null;
            int i13 = 4;
            if (iO2 == 1835365473) {
                qVar.O(i12);
                int i14 = i12 + iO;
                qVar.P(i11);
                a(qVar);
                boolean z4 = z;
                while (true) {
                    int i15 = qVar.f15267b;
                    if (i15 >= i14) {
                        break;
                    }
                    int iO3 = qVar.o();
                    if (qVar.o() == 1768715124) {
                        break;
                    }
                    qVar.O(i15 + iO3);
                    z4 = true;
                    i11 = 8;
                    str = null;
                    i13 = 4;
                }
                d0 d0Var4 = null;
                d0Var3 = d0Var3.b(d0Var4);
            } else if (iO2 == 1936553057) {
                qVar.O(i12);
                int i16 = i12 + iO;
                qVar.P(12);
                while (true) {
                    int i17 = qVar.f15267b;
                    if (i17 >= i16) {
                        break;
                    }
                    int iO4 = qVar.o();
                    if (qVar.o() != 1935766900) {
                        qVar.O(i17 + iO4);
                    } else if (iO4 < 16) {
                        d0Var2 = null;
                    } else {
                        qVar.P(4);
                        int i18 = 0;
                        int i19 = 0;
                        int i20 = -1;
                        while (i18 < 2) {
                            int iB = qVar.B();
                            int iB2 = qVar.B();
                            if (iB == 0) {
                                i20 = iB2;
                                i10 = 1;
                            } else {
                                i10 = 1;
                                if (iB == 1) {
                                    i19 = iB2;
                                }
                            }
                            i18 += i10;
                        }
                        if (i20 == 12) {
                            iC = 240;
                        } else if (i20 == 13) {
                            iC = 120;
                        } else if (i20 != 21) {
                            iC = -2147483647;
                        } else {
                            if (qVar.a() >= 8 && qVar.f15267b + 8 <= i16) {
                                int iO5 = qVar.o();
                                int iO6 = qVar.o();
                                if (iO5 >= 12 && iO6 == 1936877170) {
                                    iC = qVar.C();
                                }
                                if (iC == -2147483647) {
                                    break;
                                }
                                d0Var2 = new d0(new a3.c(iC, i19));
                            }
                            iC = -2147483647;
                            if (iC == -2147483647) {
                            }
                        }
                        if (iC == -2147483647) {
                            break;
                        }
                    }
                }
                d0Var2 = null;
                d0Var3 = d0Var3.b(d0Var2);
            } else if (iO2 == -1451722374) {
                short sY = qVar.y();
                qVar.P(2);
                String strZ = qVar.z(StandardCharsets.UTF_8, sY);
                int iMax = Math.max(strZ.lastIndexOf(43), strZ.lastIndexOf(45));
                try {
                    try {
                        d0Var = new d0(new v1.e(Float.parseFloat(strZ.substring(0, iMax)), Float.parseFloat(strZ.substring(iMax, strZ.length() - 1))));
                    } catch (IndexOutOfBoundsException | NumberFormatException unused) {
                        d0Var = null;
                        d0Var3 = d0Var3.b(d0Var);
                        qVar.O(i12 + iO);
                        z = true;
                        i11 = 8;
                    }
                } catch (IndexOutOfBoundsException | NumberFormatException unused2) {
                }
                d0Var3 = d0Var3.b(d0Var);
            }
            qVar.O(i12 + iO);
            z = true;
            i11 = 8;
        }
        return d0Var3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:470:0x0b37, code lost:
    
        if (r0 == null) goto L472;
     */
    /* JADX WARN: Code restructure failed: missing block: B:471:0x0b39, code lost:
    
        r8 = "video/dolby-vision";
        r0 = r0.f2779b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:472:0x0b3e, code lost:
    
        r0 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:473:0x0b40, code lost:
    
        if (r8 != null) goto L475;
     */
    /* JADX WARN: Code restructure failed: missing block: B:474:0x0b42, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:475:0x0b43, code lost:
    
        r2 = new r1.o();
        r2.f13480a = java.lang.Integer.toString(r58);
        r2.f13492n = r1.e0.l(r8);
        r2.f13489j = r0;
        r2.f13498u = r35;
        r2.f13499v = r34;
        r2.f13500w = r29;
        r2.f13501x = r30;
        r2.A = r21;
        r2.z = r60;
        r2.B = r25;
        r2.C = r3;
        r2.f13495q = r1;
        r2.f13494p = r27;
        r2.E = r28;
        r2.r = r33;
        r2.f13483d = r59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:476:0x0b86, code lost:
    
        if (r20 == null) goto L478;
     */
    /* JADX WARN: Code restructure failed: missing block: B:477:0x0b88, code lost:
    
        r0 = r20.array();
     */
    /* JADX WARN: Code restructure failed: missing block: B:478:0x0b8d, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:479:0x0b8e, code lost:
    
        r2.D = new r1.g(r6, r23, r12, r0, r31, r32);
        r12 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:480:0x0ba5, code lost:
    
        if (r12 == null) goto L482;
     */
    /* JADX WARN: Code restructure failed: missing block: B:481:0x0ba7, code lost:
    
        r2.f13487h = d.b.i0(r12.f1983b);
        r2.f13488i = d.b.i0(r12.f1984c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:482:0x0bb8, code lost:
    
        r12 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:483:0x0bba, code lost:
    
        if (r12 == null) goto L485;
     */
    /* JADX WARN: Code restructure failed: missing block: B:484:0x0bbc, code lost:
    
        r2.f13487h = d.b.i0(r12.f5443a);
        r2.f13488i = d.b.i0(r12.f5444b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:485:0x0bcc, code lost:
    
        r62.f474e = new r1.p(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:486:0x0bd3, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0653  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0677  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x07d0  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x07d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void k(u1.q qVar, int i10, int i11, int i12, int i13, String str, int i14, r1.l lVar, a9.a aVar, int i15) throws r1.f0 {
        List list;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        r1.l lVar2;
        int i21;
        int i22;
        int i23;
        bd.c cVar;
        int iH;
        String str2;
        r1.l lVar3;
        int i24;
        int i25;
        int i26;
        int i27;
        w0 w0Var;
        int i28;
        int i29;
        int i30;
        int i31;
        w0 w0Var2;
        int i32;
        int i33;
        int i34;
        int i35;
        int iG;
        int i36;
        int i37;
        int iG2;
        int i38;
        int i39;
        int i40;
        int iH2;
        r1.g gVar;
        int i41;
        int iG3;
        int i42;
        a1.i iVar;
        String str3;
        int i43;
        int iB;
        int i44;
        String str4;
        int i45;
        int i46 = i11;
        int i47 = i12;
        r1.l lVarA = lVar;
        qVar.O(i46 + 16);
        qVar.P(16);
        int I = qVar.I();
        int I2 = qVar.I();
        qVar.P(50);
        int i48 = qVar.f15267b;
        int iIntValue = i10;
        if (iIntValue == 1701733238) {
            Pair pairH = h(qVar, i46, i47);
            if (pairH != null) {
                iIntValue = ((Integer) pairH.first).intValue();
                lVarA = lVarA == null ? null : lVarA.a(((t) pairH.second).f5572b);
                ((t[]) aVar.f473d)[i15] = (t) pairH.second;
            }
            qVar.O(i48);
        }
        String str5 = "video/3gpp";
        String str6 = iIntValue == 1831958048 ? "video/mpeg" : iIntValue == 1211250227 ? "video/3gpp" : null;
        w0 w0Var3 = null;
        ByteBuffer byteBufferOrder = null;
        float F = 1.0f;
        bd.c cVarE = null;
        List listR = null;
        String string = null;
        byte[] bArrCopyOfRange = null;
        int i49 = -1;
        int i50 = -1;
        int i51 = -1;
        int i52 = -1;
        int i53 = -1;
        int iG4 = -1;
        int i54 = -1;
        int i55 = -1;
        int i56 = 8;
        int i57 = 8;
        y yVar = null;
        y0 y0Var = null;
        boolean z = false;
        while (true) {
            if (i48 - i46 >= i47) {
                list = listR;
                i16 = iG4;
                i17 = i54;
                i18 = i55;
                i19 = i56;
                i20 = i57;
                lVar2 = lVarA;
                i21 = I2;
                i22 = I;
                i23 = i49;
                cVar = cVarE;
                break;
            }
            qVar.O(i48);
            int i58 = qVar.f15267b;
            int iO = qVar.o();
            if (iO == 0 && qVar.f15267b - i46 == i47) {
                cVar = cVarE;
                list = listR;
                i16 = iG4;
                i17 = i54;
                i18 = i55;
                i19 = i56;
                i20 = i57;
                lVar2 = lVarA;
                i21 = I2;
                i22 = I;
                i23 = i49;
                break;
            }
            l2.b.b("childAtomSize must be positive", iO > 0);
            int iO2 = qVar.o();
            if (iO2 == 1635148611) {
                l2.b.b(null, str6 == null);
                qVar.O(i58 + 8);
                l2.d dVarA = l2.d.a(qVar);
                aVar.f471b = dVarA.f10431b;
                if (!z) {
                    F = dVarA.f10440k;
                }
                ArrayList arrayList = dVarA.f10430a;
                String str7 = dVarA.l;
                int i59 = dVarA.f10439j;
                int i60 = dVarA.f10436g;
                int i61 = dVarA.f10437h;
                int i62 = dVarA.f10438i;
                int i63 = dVarA.f10434e;
                i32 = dVarA.f10435f;
                lVar3 = lVarA;
                i24 = I2;
                i25 = i48;
                str2 = str5;
                i26 = I;
                iG4 = i60;
                i54 = i61;
                i27 = i49;
                iH = i62;
                listR = arrayList;
                string = str7;
                i50 = i59;
                i30 = iIntValue;
                i31 = i63;
                str6 = "video/avc";
            } else {
                if (iO2 == 1752589123) {
                    l2.b.b(null, str6 == null);
                    qVar.O(i58 + 8);
                    w wVarA = w.a(qVar, false, null);
                    aVar.f471b = wVarA.f10533b;
                    if (!z) {
                        F = wVarA.l;
                    }
                    int i64 = wVarA.f10542k;
                    if (i64 != -1) {
                        i49 = i64;
                    }
                    List list2 = wVarA.f10532a;
                    int i65 = wVarA.f10543m;
                    int i66 = wVarA.f10534c;
                    String str8 = wVarA.f10544n;
                    int i67 = wVarA.f10535d;
                    listR = list2;
                    int i68 = wVarA.f10536e;
                    int i69 = wVarA.f10539h;
                    int i70 = wVarA.f10540i;
                    int i71 = wVarA.f10541j;
                    int i72 = wVarA.f10537f;
                    i32 = wVarA.f10538g;
                    w0Var2 = wVarA.f10545o;
                    lVar3 = lVarA;
                    i24 = I2;
                    i25 = i48;
                    str2 = str5;
                    i26 = I;
                    i27 = i49;
                    iG4 = i69;
                    i54 = i70;
                    iH = i71;
                    i50 = i65;
                    i51 = i66;
                    i52 = i67;
                    i30 = iIntValue;
                    str6 = "video/hevc";
                    string = str8;
                    i31 = i72;
                    i53 = i68;
                } else if (iO2 == 1818785347) {
                    l2.b.b("lhvC must follow hvcC atom", "video/hevc".equals(str6));
                    l2.b.b("must have at least two layers", w0Var3 != null && ((g0) w0Var3.f346b).size() >= 2);
                    qVar.O(i58 + 8);
                    w0Var3.getClass();
                    w wVarA2 = w.a(qVar, true, w0Var3);
                    l2.b.b("nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms", aVar.f471b == wVarA2.f10533b);
                    int i73 = wVarA2.f10539h;
                    int i74 = iG4;
                    if (i73 != -1) {
                        l2.b.b("colorSpace must be the same for both views", i74 == i73);
                    }
                    int i75 = wVarA2.f10540i;
                    int i76 = i54;
                    if (i75 != -1) {
                        l2.b.b("colorRange must be the same for both views", i76 == i75);
                    }
                    int i77 = wVarA2.f10541j;
                    if (i77 != -1) {
                        i45 = i55;
                        l2.b.b("colorTransfer must be the same for both views", i45 == i77);
                    } else {
                        i45 = i55;
                    }
                    i31 = i56;
                    int i78 = i45;
                    l2.b.b("bitdepthLuma must be the same for both views", i31 == wVarA2.f10537f);
                    int i79 = i57;
                    l2.b.b("bitdepthChroma must be the same for both views", i79 == wVarA2.f10538g);
                    List list3 = listR;
                    if (list3 == null) {
                        throw r1.f0.a(null, "initializationData must be already set from hvcC atom");
                    }
                    u7.e0 e0Var = g0.f15471b;
                    u7.d0 d0Var = new u7.d0();
                    d0Var.d(list3);
                    d0Var.d(wVarA2.f10532a);
                    listR = d0Var.g();
                    lVar3 = lVarA;
                    i24 = I2;
                    i54 = i76;
                    i25 = i48;
                    str2 = str5;
                    i26 = I;
                    iH = i78;
                    i27 = i49;
                    str6 = "video/mv-hevc";
                    string = wVarA2.f10544n;
                    i30 = iIntValue;
                    i32 = i79;
                    iG4 = i74;
                } else {
                    List listR2 = listR;
                    int i80 = iG4;
                    int i81 = i54;
                    iH = i55;
                    int i82 = i56;
                    int i83 = i57;
                    str2 = str5;
                    if (iO2 == 1987470147) {
                        l2.b.b(null, str6 == null);
                        qVar.O(i58 + 8);
                        try {
                            if (qVar.o() != 0) {
                                throw r1.f0.a(null, "Unsupported VVC version");
                            }
                            int iB2 = qVar.B();
                            int i84 = (iB2 >> 1) & 3;
                            boolean z4 = (iB2 & 1) != 0;
                            int i85 = i84 + 1;
                            str3 = "L";
                            if (z4) {
                                qVar.P(1);
                                int iB3 = (qVar.B() >> 4) & 7;
                                int iB4 = (qVar.B() >> 5) & 7;
                                int iB5 = qVar.B() & 63;
                                int iB6 = qVar.B();
                                i43 = (iB6 >> 1) & 127;
                                str3 = (iB6 & 1) != 0 ? "H" : "L";
                                iB = qVar.B();
                                qVar.P(iB5);
                                if (iB3 > 1) {
                                    int iB7 = qVar.B();
                                    str4 = str3;
                                    i44 = iB4;
                                    for (int i86 = 0; i86 < iB3 - 1; i86++) {
                                        if (((iB7 >> (7 - i86)) & 1) != 0) {
                                            qVar.P(1);
                                        }
                                    }
                                } else {
                                    str4 = str3;
                                    i44 = iB4;
                                }
                                qVar.P(qVar.B() * 4);
                                qVar.P(6);
                                str3 = str4;
                            } else {
                                i43 = 0;
                                iB = 0;
                                i44 = 0;
                            }
                            int iB8 = qVar.B();
                            int i87 = qVar.f15267b;
                            lVar3 = lVarA;
                            int i88 = 0;
                            int i89 = 0;
                            while (i89 < iB8) {
                                int i90 = I2;
                                int iB9 = qVar.B() & 31;
                                int i91 = I;
                                int I3 = (iB9 == 13 || iB9 == 12) ? 1 : qVar.I();
                                int i92 = 0;
                                while (i92 < I3) {
                                    int i93 = I3;
                                    int I4 = qVar.I();
                                    i88 = I4 + 4 + i88;
                                    qVar.P(I4);
                                    i92++;
                                    I3 = i93;
                                }
                                i89++;
                                I2 = i90;
                                I = i91;
                            }
                            i24 = I2;
                            i26 = I;
                            qVar.O(i87);
                            byte[] bArr = new byte[i88];
                            int i94 = 0;
                            int i95 = 0;
                            while (i94 < iB8) {
                                int iB10 = qVar.B() & 31;
                                int I5 = (iB10 == 13 || iB10 == 12) ? 1 : qVar.I();
                                int i96 = 0;
                                while (i96 < I5) {
                                    int i97 = iB8;
                                    int I6 = qVar.I();
                                    System.arraycopy(v1.o.f16386a, 0, bArr, i95, 4);
                                    int i98 = i95 + 4;
                                    qVar.l(i98, I6, bArr);
                                    i95 = i98 + I6;
                                    i96++;
                                    iB8 = i97;
                                    I5 = I5;
                                    i48 = i48;
                                    iIntValue = iIntValue;
                                }
                                i94++;
                                iB8 = iB8;
                            }
                            i25 = i48;
                            int i99 = iIntValue;
                            Locale locale = Locale.US;
                            string = "vvc1." + i43 + "." + str3 + iB;
                            u7.y0 y0VarR = g0.r(bArr);
                            aVar.f471b = i85;
                            str6 = "video/vvc";
                            i31 = i44 + 8;
                            w0Var2 = w0Var3;
                            i54 = i81;
                            iG4 = i80;
                            i50 = 16;
                            listR = y0VarR;
                            i32 = i31;
                            i27 = i49;
                            i30 = i99;
                        } catch (ArrayIndexOutOfBoundsException e7) {
                            throw r1.f0.a(e7, "Error parsing VVC configuration");
                        }
                    } else {
                        lVar3 = lVarA;
                        i24 = I2;
                        i25 = i48;
                        i26 = I;
                        int i100 = iIntValue;
                        if (iO2 == 1986361461) {
                            qVar.O(i58 + 8);
                            int i101 = qVar.f15267b;
                            a1.i iVar2 = null;
                            while (i101 - i58 < iO) {
                                qVar.O(i101);
                                int iO3 = qVar.o();
                                l2.b.b("childAtomSize must be positive", iO3 > 0);
                                if (qVar.o() == 1702454643) {
                                    qVar.O(i101 + 8);
                                    int i102 = qVar.f15267b;
                                    while (true) {
                                        if (i102 - i101 >= iO3) {
                                            iVar = null;
                                            break;
                                        }
                                        qVar.O(i102);
                                        int iO4 = qVar.o();
                                        l2.b.b("childAtomSize must be positive", iO4 > 0);
                                        if (qVar.o() == 1937011305) {
                                            qVar.P(4);
                                            int iB11 = qVar.B();
                                            iVar = new a1.i(20, new a2.o((iB11 & 1) == 1, (iB11 & 2) == 2, (iB11 & 8) == 8));
                                        } else {
                                            i102 += iO4;
                                        }
                                    }
                                    iVar2 = iVar;
                                }
                                i101 += iO3;
                            }
                            a1.i iVar3 = iVar2 == null ? null : new a1.i(21, iVar2);
                            if (iVar3 != null) {
                                a2.o oVar = (a2.o) ((a1.i) iVar3.f76b).f76b;
                                if (w0Var3 == null || ((g0) w0Var3.f346b).size() < 2) {
                                    i42 = i49;
                                    int i103 = i42 == -1 ? oVar.f262c ? 5 : 4 : i42;
                                    w0Var2 = w0Var3;
                                    i27 = i103;
                                    i31 = i82;
                                    iG4 = i80;
                                    i30 = i100;
                                } else {
                                    l2.b.b("both eye views must be marked as available", oVar.f260a && oVar.f261b);
                                    l2.b.b("for MV-HEVC, eye_views_reversed must be set to false", !oVar.f262c);
                                    i42 = i49;
                                    w0Var2 = w0Var3;
                                    i27 = i103;
                                    i31 = i82;
                                    iG4 = i80;
                                    i30 = i100;
                                }
                            } else {
                                i42 = i49;
                                w0Var2 = w0Var3;
                                i27 = i103;
                                i31 = i82;
                                iG4 = i80;
                                i30 = i100;
                            }
                        } else {
                            i27 = i49;
                            if (iO2 == 1685480259 || iO2 == 1685485123 || iO2 == 1685485379) {
                                w0Var = w0Var3;
                                i28 = i80;
                                i29 = iH;
                                i30 = i100;
                                cVarE = bd.c.e(qVar);
                            } else if (iO2 == 1987076931) {
                                l2.b.b(null, str6 == null);
                                String str9 = i100 == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                                qVar.O(i58 + 12);
                                byte B = (byte) qVar.B();
                                byte B2 = (byte) qVar.B();
                                int iB12 = qVar.B();
                                int i104 = iB12 >> 4;
                                byte b10 = (byte) ((iB12 >> 1) & 7);
                                if (str9.equals("video/x-vnd.on2.vp9")) {
                                    byte[] bArr2 = u1.c.f15189a;
                                    listR = g0.r(new byte[]{1, 1, B, 2, 1, B2, 3, 1, (byte) i104, 4, 1, b10});
                                } else {
                                    listR = listR2;
                                }
                                boolean z10 = (iB12 & 1) != 0;
                                int iB13 = qVar.B();
                                int iB14 = qVar.B();
                                iG4 = r1.g.g(iB13);
                                i54 = z10 ? 1 : 2;
                                str6 = str9;
                                iH = r1.g.h(iB14);
                                i32 = i104;
                                i31 = i32;
                                w0Var2 = w0Var3;
                                i30 = i100;
                            } else if (iO2 == 1635135811) {
                                int i105 = iO - 8;
                                byte[] bArr3 = new byte[i105];
                                qVar.l(0, i105, bArr3);
                                listR = g0.r(bArr3);
                                qVar.O(i58 + 8);
                                byte[] bArr4 = qVar.f15266a;
                                j3.f fVar = new j3.f(bArr4, bArr4.length);
                                fVar.m(qVar.f15267b * 8);
                                fVar.p(1);
                                int iG5 = fVar.g(3);
                                fVar.o(6);
                                boolean zF = fVar.f();
                                boolean zF2 = fVar.f();
                                if (iG5 == 2 && zF) {
                                    i34 = zF2 ? 12 : 10;
                                    i35 = zF2 ? 12 : 10;
                                } else if (iG5 <= 2) {
                                    int i106 = zF ? 10 : 8;
                                    i35 = zF ? 10 : 8;
                                    i34 = i106;
                                } else {
                                    i33 = 13;
                                    i34 = -1;
                                    i35 = -1;
                                    fVar.o(i33);
                                    fVar.n();
                                    iG = fVar.g(4);
                                    if (iG == 1) {
                                        u1.a.j("Unsupported obu_type: " + iG);
                                        gVar = new r1.g(-1, -1, -1, null, i34, i35);
                                    } else if (fVar.f()) {
                                        u1.a.j("Unsupported obu_extension_flag");
                                        gVar = new r1.g(-1, -1, -1, null, i34, i35);
                                    } else {
                                        boolean zF3 = fVar.f();
                                        fVar.n();
                                        if (!zF3 || fVar.g(8) <= 127) {
                                            int iG6 = fVar.g(3);
                                            fVar.n();
                                            if (fVar.f()) {
                                                u1.a.j("Unsupported reduced_still_picture_header");
                                                gVar = new r1.g(-1, -1, -1, null, i34, i35);
                                            } else if (fVar.f()) {
                                                u1.a.j("Unsupported timing_info_present_flag");
                                                gVar = new r1.g(-1, -1, -1, null, i34, i35);
                                            } else if (fVar.f()) {
                                                u1.a.j("Unsupported initial_display_delay_present_flag");
                                                gVar = new r1.g(-1, -1, -1, null, i34, i35);
                                            } else {
                                                int i107 = 5;
                                                int iG7 = fVar.g(5);
                                                int i108 = 0;
                                                while (i108 <= iG7) {
                                                    fVar.o(12);
                                                    if (fVar.g(i107) > 7) {
                                                        fVar.n();
                                                    }
                                                    i108++;
                                                    i107 = 5;
                                                }
                                                int iG8 = fVar.g(4);
                                                int iG9 = fVar.g(4);
                                                fVar.o(iG8 + 1);
                                                fVar.o(iG9 + 1);
                                                if (fVar.f()) {
                                                    i36 = 7;
                                                    fVar.o(7);
                                                } else {
                                                    i36 = 7;
                                                }
                                                fVar.o(i36);
                                                boolean zF4 = fVar.f();
                                                if (zF4) {
                                                    fVar.o(2);
                                                }
                                                if (fVar.f()) {
                                                    i37 = 1;
                                                    iG2 = 2;
                                                } else {
                                                    i37 = 1;
                                                    iG2 = fVar.g(1);
                                                }
                                                if (iG2 > 0 && !fVar.f()) {
                                                    fVar.o(i37);
                                                }
                                                if (zF4) {
                                                    i38 = 3;
                                                    fVar.o(3);
                                                } else {
                                                    i38 = 3;
                                                }
                                                fVar.o(i38);
                                                boolean zF5 = fVar.f();
                                                if (iG6 == 2 && zF5) {
                                                    fVar.n();
                                                }
                                                boolean z11 = iG6 != 1 && fVar.f();
                                                if (fVar.f()) {
                                                    int iG10 = fVar.g(8);
                                                    int iG11 = fVar.g(8);
                                                    int iG12 = fVar.g(8);
                                                    if (z11) {
                                                        i41 = 1;
                                                    } else {
                                                        i41 = 1;
                                                        if (iG10 == 1 && iG11 == 13 && iG12 == 0) {
                                                            iG3 = 1;
                                                        }
                                                        int iG13 = r1.g.g(iG10);
                                                        i40 = iG3 != i41 ? 1 : 2;
                                                        iH2 = r1.g.h(iG11);
                                                        i39 = iG13;
                                                    }
                                                    iG3 = fVar.g(i41);
                                                    int iG132 = r1.g.g(iG10);
                                                    i40 = iG3 != i41 ? 1 : 2;
                                                    iH2 = r1.g.h(iG11);
                                                    i39 = iG132;
                                                } else {
                                                    i39 = -1;
                                                    i40 = -1;
                                                    iH2 = -1;
                                                }
                                                gVar = new r1.g(i39, i40, iH2, null, i34, i35);
                                            }
                                        } else {
                                            u1.a.j("Excessive obu_size");
                                            gVar = new r1.g(-1, -1, -1, null, i34, i35);
                                        }
                                    }
                                    int i109 = gVar.f13446e;
                                    int i110 = gVar.f13447f;
                                    int i111 = gVar.f13442a;
                                    int i112 = gVar.f13443b;
                                    iH = gVar.f13444c;
                                    i31 = i109;
                                    i32 = i110;
                                    iG4 = i111;
                                    i54 = i112;
                                    w0Var2 = w0Var3;
                                    i30 = i100;
                                    str6 = "video/av01";
                                }
                                i33 = 13;
                                fVar.o(i33);
                                fVar.n();
                                iG = fVar.g(4);
                                if (iG == 1) {
                                }
                                int i1092 = gVar.f13446e;
                                int i1102 = gVar.f13447f;
                                int i1112 = gVar.f13442a;
                                int i1122 = gVar.f13443b;
                                iH = gVar.f13444c;
                                i31 = i1092;
                                i32 = i1102;
                                iG4 = i1112;
                                i54 = i1122;
                                w0Var2 = w0Var3;
                                i30 = i100;
                                str6 = "video/av01";
                            } else {
                                if (iO2 == 1668050025) {
                                    if (byteBufferOrder == null) {
                                        byteBufferOrder = ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
                                    }
                                    ByteBuffer byteBuffer = byteBufferOrder;
                                    byteBuffer.position(21);
                                    byteBuffer.putShort(qVar.y());
                                    byteBuffer.putShort(qVar.y());
                                    byteBufferOrder = byteBuffer;
                                    w0Var2 = w0Var3;
                                    i30 = i100;
                                } else if (iO2 == 1835295606) {
                                    if (byteBufferOrder == null) {
                                        byteBufferOrder = ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
                                    }
                                    ByteBuffer byteBuffer2 = byteBufferOrder;
                                    short sY = qVar.y();
                                    short sY2 = qVar.y();
                                    short sY3 = qVar.y();
                                    short sY4 = qVar.y();
                                    short sY5 = qVar.y();
                                    short sY6 = qVar.y();
                                    short sY7 = qVar.y();
                                    w0 w0Var4 = w0Var3;
                                    short sY8 = qVar.y();
                                    long jD = qVar.D();
                                    long jD2 = qVar.D();
                                    i30 = i100;
                                    byteBuffer2.position(1);
                                    byteBuffer2.putShort(sY5);
                                    byteBuffer2.putShort(sY6);
                                    byteBuffer2.putShort(sY);
                                    byteBuffer2.putShort(sY2);
                                    byteBuffer2.putShort(sY3);
                                    byteBuffer2.putShort(sY4);
                                    byteBuffer2.putShort(sY7);
                                    byteBuffer2.putShort(sY8);
                                    byteBuffer2.putShort((short) (jD / 10000));
                                    byteBuffer2.putShort((short) (jD2 / 10000));
                                    w0Var2 = w0Var4;
                                    byteBufferOrder = byteBuffer2;
                                } else {
                                    w0Var = w0Var3;
                                    i30 = i100;
                                    if (iO2 == 1681012275) {
                                        l2.b.b(null, str6 == null);
                                        str6 = str2;
                                    } else if (iO2 == 1702061171) {
                                        l2.b.b(null, str6 == null);
                                        y0 y0VarC = c(i58, qVar);
                                        byte[] bArr5 = (byte[]) y0VarC.f5446d;
                                        if (bArr5 != null) {
                                            listR2 = g0.r(bArr5);
                                        }
                                        w0Var2 = w0Var;
                                        y0Var = y0VarC;
                                        str6 = (String) y0VarC.f5445c;
                                    } else if (iO2 == 1651798644) {
                                        qVar.O(i58 + 8);
                                        qVar.P(4);
                                        yVar = new y(qVar.D(), qVar.D(), 1);
                                    } else if (iO2 == 1885434736) {
                                        qVar.O(i58 + 8);
                                        w0Var2 = w0Var;
                                        F = qVar.F() / qVar.F();
                                        i31 = i82;
                                        iG4 = i80;
                                        z = true;
                                        listR = listR2;
                                        i32 = i83;
                                        i54 = i81;
                                    } else if (iO2 == 1937126244) {
                                        int i113 = i58 + 8;
                                        while (true) {
                                            if (i113 - i58 >= iO) {
                                                bArrCopyOfRange = null;
                                                break;
                                            }
                                            qVar.O(i113);
                                            int iO5 = qVar.o();
                                            if (qVar.o() == 1886547818) {
                                                bArrCopyOfRange = Arrays.copyOfRange(qVar.f15266a, i113, iO5 + i113);
                                                break;
                                            }
                                            i113 += iO5;
                                        }
                                    } else if (iO2 == 1936995172) {
                                        int iB15 = qVar.B();
                                        qVar.P(3);
                                        if (iB15 == 0) {
                                            int iB16 = qVar.B();
                                            if (iB16 == 0) {
                                                i27 = 0;
                                            } else if (iB16 == 1) {
                                                i27 = 1;
                                            } else if (iB16 == 2) {
                                                i27 = 2;
                                            } else if (iB16 == 3) {
                                                i27 = 3;
                                            }
                                        }
                                        w0Var2 = w0Var;
                                        i31 = i82;
                                        iG4 = i80;
                                        listR = listR2;
                                        i32 = i83;
                                        i54 = i81;
                                    } else if (iO2 == 1634760259) {
                                        int i114 = iO - 12;
                                        byte[] bArr6 = new byte[i114];
                                        qVar.O(i58 + 12);
                                        qVar.l(0, i114, bArr6);
                                        byte[] bArr7 = u1.c.f15189a;
                                        a9.o.h("Invalid APV CSD length: %s", i114, i114 >= 17);
                                        byte b11 = bArr6[0];
                                        a9.o.h("Invalid APV CSD version: %s", b11, b11 == 1);
                                        int i115 = bArr6[5] & 255;
                                        int i116 = bArr6[6] & 255;
                                        int i117 = bArr6[7] & 255;
                                        String str10 = f0.f15206a;
                                        Locale locale2 = Locale.US;
                                        StringBuilder sbO = ta.q.o(i115, i116, "apv1.apvf", ".apvl", ".apvb");
                                        sbO.append(i117);
                                        string = sbO.toString();
                                        listR = g0.r(bArr6);
                                        u1.q qVar2 = new u1.q(bArr6);
                                        j3.f fVar2 = new j3.f(bArr6, i114);
                                        fVar2.m(qVar2.f15267b * 8);
                                        int i118 = 1;
                                        fVar2.p(1);
                                        int iG14 = fVar2.g(8);
                                        int i119 = 0;
                                        int i120 = -1;
                                        int i121 = -1;
                                        int i122 = -1;
                                        iG4 = -1;
                                        i54 = -1;
                                        while (i119 < iG14) {
                                            fVar2.p(i118);
                                            int iG15 = fVar2.g(8);
                                            int iG16 = i122;
                                            int i123 = i121;
                                            int iH3 = i120;
                                            int i124 = 0;
                                            while (i124 < iG15) {
                                                fVar2.o(6);
                                                boolean zF6 = fVar2.f();
                                                fVar2.n();
                                                fVar2.p(11);
                                                fVar2.o(4);
                                                iG16 = fVar2.g(4) + 8;
                                                fVar2.p(1);
                                                if (zF6) {
                                                    int iG17 = fVar2.g(8);
                                                    int iG18 = fVar2.g(8);
                                                    fVar2.p(1);
                                                    boolean zF7 = fVar2.f();
                                                    int iG19 = r1.g.g(iG17);
                                                    int i125 = zF7 ? 1 : 2;
                                                    iG4 = iG19;
                                                    iH3 = r1.g.h(iG18);
                                                    i54 = i125;
                                                }
                                                i124++;
                                                i123 = iG16;
                                            }
                                            i119++;
                                            i120 = iH3;
                                            i121 = i123;
                                            i122 = iG16;
                                            i118 = 1;
                                        }
                                        w0Var2 = w0Var;
                                        str6 = "video/apv";
                                        iH = i120;
                                        i31 = i121;
                                        i32 = i122;
                                    } else if (iO2 == 1668246642) {
                                        i28 = i80;
                                        i29 = iH;
                                        if (i28 == -1 && i29 == -1) {
                                            int iO6 = qVar.o();
                                            if (iO6 == 1852009592 || iO6 == 1852009571) {
                                                int I7 = qVar.I();
                                                int I8 = qVar.I();
                                                qVar.P(2);
                                                boolean z12 = iO == 19 && (qVar.B() & 128) != 0;
                                                int iG20 = r1.g.g(I7);
                                                int i126 = z12 ? 1 : 2;
                                                listR = listR2;
                                                iH = r1.g.h(I8);
                                                i32 = i83;
                                                w0Var2 = w0Var;
                                                i54 = i126;
                                                i31 = i82;
                                                iG4 = iG20;
                                            } else {
                                                u1.a.p("Unsupported color type: " + ab.a.b(iO6));
                                            }
                                        }
                                    } else {
                                        i28 = i80;
                                        i29 = iH;
                                    }
                                    w0Var2 = w0Var;
                                }
                                i31 = i82;
                                iG4 = i80;
                            }
                            iH = i29;
                            i31 = i82;
                            iG4 = i28;
                            w0Var2 = w0Var;
                            listR = listR2;
                            i32 = i83;
                            i54 = i81;
                        }
                        listR = listR2;
                        i32 = i83;
                        i54 = i81;
                    }
                }
                str5 = str2;
                i48 = i25 + iO;
                w0Var3 = w0Var2;
                iIntValue = i30;
                I2 = i24;
                I = i26;
                i47 = i12;
                i57 = i32;
                i49 = i27;
                i56 = i31;
                lVarA = lVar3;
                i55 = iH;
                i46 = i11;
            }
            w0Var2 = w0Var3;
            str5 = str2;
            i48 = i25 + iO;
            w0Var3 = w0Var2;
            iIntValue = i30;
            I2 = i24;
            I = i26;
            i47 = i12;
            i57 = i32;
            i49 = i27;
            i56 = i31;
            lVarA = lVar3;
            i55 = iH;
            i46 = i11;
        }
    }
}
