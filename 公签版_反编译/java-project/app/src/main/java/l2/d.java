package l2;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f10430a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10431b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10432c;

    /* renamed from: d, reason: collision with root package name */
    public final int f10433d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10434e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10435f;

    /* renamed from: g, reason: collision with root package name */
    public final int f10436g;

    /* renamed from: h, reason: collision with root package name */
    public final int f10437h;

    /* renamed from: i, reason: collision with root package name */
    public final int f10438i;

    /* renamed from: j, reason: collision with root package name */
    public final int f10439j;

    /* renamed from: k, reason: collision with root package name */
    public final float f10440k;
    public final String l;

    public d(ArrayList arrayList, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, float f10, String str) {
        this.f10430a = arrayList;
        this.f10431b = i10;
        this.f10432c = i11;
        this.f10433d = i12;
        this.f10434e = i13;
        this.f10435f = i14;
        this.f10436g = i15;
        this.f10437h = i16;
        this.f10438i = i17;
        this.f10439j = i18;
        this.f10440k = f10;
        this.l = str;
    }

    public static d a(u1.q qVar) throws r1.f0 {
        String str;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        float f10;
        try {
            qVar.P(4);
            int iB = (qVar.B() & 3) + 1;
            if (iB == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iB2 = qVar.B() & 31;
            for (int i18 = 0; i18 < iB2; i18++) {
                int I = qVar.I();
                int i19 = qVar.f15267b;
                qVar.P(I);
                byte[] bArr = qVar.f15266a;
                byte[] bArr2 = u1.c.f15189a;
                byte[] bArr3 = new byte[I + 4];
                System.arraycopy(u1.c.f15189a, 0, bArr3, 0, 4);
                System.arraycopy(bArr, i19, bArr3, 4, I);
                arrayList.add(bArr3);
            }
            int iB3 = qVar.B();
            for (int i20 = 0; i20 < iB3; i20++) {
                int I2 = qVar.I();
                int i21 = qVar.f15267b;
                qVar.P(I2);
                byte[] bArr4 = qVar.f15266a;
                byte[] bArr5 = u1.c.f15189a;
                byte[] bArr6 = new byte[I2 + 4];
                System.arraycopy(u1.c.f15189a, 0, bArr6, 0, 4);
                System.arraycopy(bArr4, i21, bArr6, 4, I2);
                arrayList.add(bArr6);
            }
            if (iB2 > 0) {
                v1.n nVarM = v1.o.m(4, ((byte[]) arrayList.get(0)).length, (byte[]) arrayList.get(0));
                int i22 = nVarM.f16373e;
                int i23 = nVarM.f16374f;
                int i24 = nVarM.f16376h + 8;
                int i25 = nVarM.f16377i + 8;
                int i26 = nVarM.f16383p;
                int i27 = nVarM.f16384q;
                int i28 = nVarM.r;
                int i29 = nVarM.f16385s;
                float f11 = nVarM.f16375g;
                int i30 = nVarM.f16369a;
                int i31 = nVarM.f16370b;
                int i32 = nVarM.f16371c;
                byte[] bArr7 = u1.c.f15189a;
                str = String.format("avc1.%02X%02X%02X", Integer.valueOf(i30), Integer.valueOf(i31), Integer.valueOf(i32));
                i16 = i28;
                i17 = i29;
                f10 = f11;
                i13 = i25;
                i14 = i26;
                i15 = i27;
                i10 = i22;
                i11 = i23;
                i12 = i24;
            } else {
                str = null;
                i10 = -1;
                i11 = -1;
                i12 = -1;
                i13 = -1;
                i14 = -1;
                i15 = -1;
                i16 = -1;
                i17 = 16;
                f10 = 1.0f;
            }
            return new d(arrayList, iB, i10, i11, i12, i13, i14, i15, i16, i17, f10, str);
        } catch (ArrayIndexOutOfBoundsException e7) {
            throw r1.f0.a(e7, "Error parsing AVC config");
        }
    }
}
