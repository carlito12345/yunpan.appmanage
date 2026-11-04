package di;

import yh.h;

/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f4699a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4700b;

    /* renamed from: c, reason: collision with root package name */
    public int f4701c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f4702d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f4703e = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f4704f = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f4705g = 0;

    /* renamed from: h, reason: collision with root package name */
    public int f4706h = 0;

    public c(int i10, yh.b bVar) {
        this.f4700b = i10;
        this.f4699a = bVar.a(i10);
    }

    public final void a(int i10, int i11) throws h {
        int i12;
        if (i10 < 0 || i10 >= this.f4703e) {
            throw new h();
        }
        int iMin = Math.min(this.f4704f - this.f4702d, i11);
        this.f4705g = i11 - iMin;
        this.f4706h = i10;
        int i13 = (this.f4702d - i10) - 1;
        byte[] bArr = this.f4699a;
        if (i13 < 0) {
            int i14 = this.f4700b;
            int i15 = i13 + i14;
            int iMin2 = Math.min(i14 - i15, iMin);
            System.arraycopy(bArr, i15, bArr, this.f4702d, iMin2);
            this.f4702d += iMin2;
            iMin -= iMin2;
            if (iMin == 0) {
                return;
            } else {
                i13 = 0;
            }
        }
        do {
            int iMin3 = Math.min(iMin, this.f4702d - i13);
            System.arraycopy(bArr, i13, bArr, this.f4702d, iMin3);
            i12 = this.f4702d + iMin3;
            this.f4702d = i12;
            iMin -= iMin3;
        } while (iMin > 0);
        if (this.f4703e < i12) {
            this.f4703e = i12;
        }
    }
}
