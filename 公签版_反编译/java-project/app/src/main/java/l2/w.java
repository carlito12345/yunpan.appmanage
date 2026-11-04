package l2;

import a2.w0;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public final List f10532a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10533b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10534c;

    /* renamed from: d, reason: collision with root package name */
    public final int f10535d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10536e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10537f;

    /* renamed from: g, reason: collision with root package name */
    public final int f10538g;

    /* renamed from: h, reason: collision with root package name */
    public final int f10539h;

    /* renamed from: i, reason: collision with root package name */
    public final int f10540i;

    /* renamed from: j, reason: collision with root package name */
    public final int f10541j;

    /* renamed from: k, reason: collision with root package name */
    public final int f10542k;
    public final float l;

    /* renamed from: m, reason: collision with root package name */
    public final int f10543m;

    /* renamed from: n, reason: collision with root package name */
    public final String f10544n;

    /* renamed from: o, reason: collision with root package name */
    public final w0 f10545o;

    public w(List list, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, float f10, int i20, String str, w0 w0Var) {
        this.f10532a = list;
        this.f10533b = i10;
        this.f10534c = i11;
        this.f10535d = i12;
        this.f10536e = i13;
        this.f10537f = i14;
        this.f10538g = i15;
        this.f10539h = i16;
        this.f10540i = i17;
        this.f10541j = i18;
        this.f10542k = i19;
        this.l = f10;
        this.f10543m = i20;
        this.f10544n = str;
        this.f10545o = w0Var;
    }

    public static w a(u1.q qVar, boolean z, w0 w0Var) {
        int i10;
        androidx.leanback.widget.i iVarJ;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15 = 4;
        try {
            if (z) {
                qVar.P(4);
            } else {
                qVar.P(21);
            }
            int iB = qVar.B() & 3;
            int iB2 = qVar.B();
            int iD = qVar.d();
            int i16 = 0;
            int i17 = 0;
            for (int i18 = 0; i18 < iB2; i18++) {
                qVar.P(1);
                int I = qVar.I();
                for (int i19 = 0; i19 < I; i19++) {
                    int I2 = qVar.I();
                    i17 += I2 + 4;
                    qVar.P(I2);
                }
            }
            qVar.O(iD);
            byte[] bArr = new byte[i17];
            w0 w0Var2 = w0Var;
            String strA = null;
            int i20 = 0;
            int i21 = 0;
            int i22 = -1;
            int i23 = -1;
            int i24 = -1;
            int i25 = -1;
            int i26 = -1;
            int i27 = -1;
            int i28 = -1;
            int i29 = -1;
            int i30 = -1;
            float f10 = 1.0f;
            int i31 = -1;
            while (i20 < iB2) {
                int iB3 = qVar.B() & 63;
                int I3 = qVar.I();
                w0 w0VarL = w0Var2;
                int i32 = 0;
                while (i32 < I3) {
                    int I4 = qVar.I();
                    int i33 = iB2;
                    System.arraycopy(v1.o.f16386a, i16, bArr, i21, i15);
                    int i34 = i21 + 4;
                    System.arraycopy(qVar.f15266a, qVar.d(), bArr, i34, I4);
                    if (iB3 == 32 && i32 == 0) {
                        w0VarL = v1.o.l(i34, i34 + I4, bArr);
                        i10 = I3;
                    } else if (iB3 == 33 && i32 == 0) {
                        v1.k kVarK = v1.o.k(bArr, i34, i34 + I4, w0VarL);
                        int i35 = kVarK.f16352a + 1;
                        int i36 = kVarK.f16358g;
                        int i37 = kVarK.f16359h;
                        i25 = kVarK.f16354c + 8;
                        i26 = kVarK.f16355d + 8;
                        int i38 = kVarK.f16362k;
                        int i39 = kVarK.l;
                        int i40 = kVarK.f16363m;
                        float f11 = kVarK.f16360i;
                        int i41 = kVarK.f16361j;
                        v1.h hVar = kVarK.f16353b;
                        if (hVar != null) {
                            i11 = i41;
                            i12 = i38;
                            i10 = I3;
                            i13 = i37;
                            i14 = i36;
                            strA = u1.c.a(hVar.f16339a, hVar.f16341c, hVar.f16342d, hVar.f16343e, hVar.f16340b, hVar.f16344f);
                        } else {
                            i11 = i41;
                            i12 = i38;
                            i10 = I3;
                            i13 = i37;
                            i14 = i36;
                        }
                        i22 = i35;
                        i23 = i14;
                        i16 = 0;
                        i28 = i39;
                        i24 = i13;
                        i31 = i11;
                        i29 = i40;
                        i27 = i12;
                        f10 = f11;
                    } else {
                        i10 = I3;
                        if (iB3 != 39 || i32 != 0 || (iVarJ = v1.o.j(i34, i34 + I4, bArr)) == null || w0VarL == null) {
                            i16 = 0;
                        } else {
                            i16 = 0;
                            i30 = iVarJ.f1647b == ((v1.g) ((u7.g0) w0VarL.f346b).get(0)).f16338b ? 4 : 5;
                        }
                    }
                    i21 = i34 + I4;
                    qVar.P(I4);
                    i32++;
                    iB2 = i33;
                    I3 = i10;
                    i15 = 4;
                }
                i20++;
                w0Var2 = w0VarL;
                i15 = 4;
            }
            return new w(i17 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), iB + 1, i22, i23, i24, i25, i26, i27, i28, i29, i30, f10, i31, strA, w0Var2);
        } catch (ArrayIndexOutOfBoundsException e7) {
            throw r1.f0.a(e7, "Error parsing".concat(z ? "L-HEVC config" : "HEVC config"));
        }
    }
}
