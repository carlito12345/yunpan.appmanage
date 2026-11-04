package l2;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class a0 {

    /* renamed from: a, reason: collision with root package name */
    public int f10391a;

    /* renamed from: b, reason: collision with root package name */
    public int f10392b;

    /* renamed from: c, reason: collision with root package name */
    public int f10393c;

    /* renamed from: d, reason: collision with root package name */
    public int f10394d;

    /* renamed from: e, reason: collision with root package name */
    public int f10395e;

    /* renamed from: f, reason: collision with root package name */
    public int f10396f;

    /* renamed from: g, reason: collision with root package name */
    public Serializable f10397g;

    public a0() {
    }

    public boolean a(int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        if (!((i10 & (-2097152)) == -2097152) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0 || (i13 = (i10 >>> 12) & 15) == 0 || i13 == 15 || (i14 = (i10 >>> 10) & 3) == 3) {
            return false;
        }
        this.f10391a = i11;
        this.f10397g = b.f10414s[3 - i12];
        int i15 = b.f10415t[i14];
        this.f10393c = i15;
        if (i11 == 2) {
            this.f10393c = i15 / 2;
        } else if (i11 == 0) {
            this.f10393c = i15 / 4;
        }
        int i16 = (i10 >>> 9) & 1;
        int i17 = 1152;
        if (i12 != 1) {
            if (i12 != 2) {
                if (i12 != 3) {
                    throw new IllegalArgumentException();
                }
                i17 = 384;
            }
        } else if (i11 != 3) {
            i17 = 576;
        }
        this.f10396f = i17;
        if (i12 == 3) {
            int i18 = i11 == 3 ? b.f10416u[i13 - 1] : b.f10417v[i13 - 1];
            this.f10395e = i18;
            this.f10392b = (((i18 * 12) / this.f10393c) + i16) * 4;
        } else {
            if (i11 == 3) {
                int i19 = i12 == 2 ? b.f10418w[i13 - 1] : b.f10419x[i13 - 1];
                this.f10395e = i19;
                this.f10392b = ((i19 * 144) / this.f10393c) + i16;
            } else {
                int i20 = b.f10420y[i13 - 1];
                this.f10395e = i20;
                this.f10392b = (((i12 == 1 ? 72 : 144) * i20) / this.f10393c) + i16;
            }
        }
        this.f10394d = ((i10 >> 6) & 3) == 3 ? 1 : 2;
        return true;
    }

    public a0(a0 a0Var) {
        this.f10391a = a0Var.f10391a;
        this.f10397g = (String) a0Var.f10397g;
        this.f10392b = a0Var.f10392b;
        this.f10393c = a0Var.f10393c;
        this.f10394d = a0Var.f10394d;
        this.f10395e = a0Var.f10395e;
        this.f10396f = a0Var.f10396f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a0(int i10, int i11, int i12, int i13, int i14, int i15, byte[] bArr) {
        this.f10391a = i10;
        this.f10392b = i11;
        this.f10393c = i12;
        this.f10394d = i13;
        this.f10395e = i14;
        this.f10396f = i15;
        this.f10397g = bArr;
    }
}
