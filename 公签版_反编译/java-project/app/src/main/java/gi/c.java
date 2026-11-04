package gi;

import com.hsae.autosdk.core.NoConst;

/* loaded from: classes3.dex */
public final class c implements b {

    /* renamed from: d, reason: collision with root package name */
    public static final boolean[] f6198d = {true, true, true, false, true, false, false, false};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f6199e = {0, 1, 2, 2, 3, 3, 3, 3};

    /* renamed from: a, reason: collision with root package name */
    public final boolean f6200a;

    /* renamed from: b, reason: collision with root package name */
    public int f6201b;

    /* renamed from: c, reason: collision with root package name */
    public int f6202c = 0;

    public c(int i10, boolean z) {
        this.f6200a = z;
        this.f6201b = i10 + 5;
    }

    @Override // gi.b
    public final int g(int i10, int i11, byte[] bArr) {
        int i12;
        int i13;
        int i14 = i10 - 1;
        int i15 = (i11 + i10) - 5;
        int i16 = i10;
        while (true) {
            if (i16 > i15) {
                break;
            }
            if ((bArr[i16] & NoConst.ESCAPE_0XFE) == 232) {
                int i17 = i16 - i14;
                int i18 = i17 & (-4);
                int[] iArr = f6199e;
                if (i18 != 0) {
                    this.f6202c = 0;
                } else {
                    int i19 = (this.f6202c << (i17 - 1)) & 7;
                    this.f6202c = i19;
                    if (i19 != 0 && (!f6198d[i19] || (i12 = bArr[(i16 + 4) - iArr[i19]] & 255) == 0 || i12 == 255)) {
                        this.f6202c = (i19 << 1) | 1;
                    }
                    i14 = i16;
                }
                int i20 = i16 + 4;
                int i21 = bArr[i20] & 255;
                if (i21 == 0 || i21 == 255) {
                    int i22 = i16 + 1;
                    int iP = q4.a.p(i22, bArr);
                    while (true) {
                        i13 = this.f6200a ? ((this.f6201b + i16) - i10) + iP : iP - ((this.f6201b + i16) - i10);
                        int i23 = this.f6202c;
                        if (i23 != 0) {
                            int i24 = iArr[i23] * 8;
                            int i25 = ((byte) (i13 >>> (24 - i24))) & 255;
                            if (i25 != 0 && i25 != 255) {
                                break;
                            }
                            iP = ((1 << (32 - i24)) - 1) ^ i13;
                        } else {
                            break;
                        }
                    }
                    q4.a.Z(i22, (i13 << 7) >> 7, bArr);
                    i14 = i16;
                    i16 = i20;
                } else {
                    this.f6202c = (this.f6202c << 1) | 1;
                    i14 = i16;
                }
            }
            i16++;
        }
        int i26 = i16 - i14;
        this.f6202c = (i26 & (-4)) == 0 ? this.f6202c << (i26 - 1) : 0;
        int i27 = i16 - i10;
        this.f6201b += i27;
        return i27;
    }
}
