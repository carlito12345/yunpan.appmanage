package a6;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f419a;

    /* renamed from: b, reason: collision with root package name */
    public int f420b;

    /* renamed from: c, reason: collision with root package name */
    public int f421c;

    public b(byte[] bArr) {
        int length = bArr.length;
        this.f419a = new byte[256];
        this.f420b = 0;
        while (true) {
            int i10 = this.f420b;
            if (i10 >= 256) {
                break;
            }
            this.f419a[i10] = (byte) i10;
            this.f420b = i10 + 1;
        }
        this.f421c = 0;
        this.f420b = 0;
        while (true) {
            int i11 = this.f420b;
            if (i11 >= 256) {
                this.f421c = 0;
                this.f420b = 0;
                return;
            }
            int i12 = this.f421c + bArr[i11 % length];
            byte[] bArr2 = this.f419a;
            byte b10 = bArr2[i11];
            int i13 = (i12 + b10) & 255;
            this.f421c = i13;
            bArr2[i11] = bArr2[i13];
            bArr2[i13] = b10;
            this.f420b = i11 + 1;
        }
    }

    public void a(byte[] bArr, byte[] bArr2) {
        int i10 = 0;
        for (int i11 = 0; i11 < 16; i11++) {
            int i12 = (this.f420b + 1) & 255;
            this.f420b = i12;
            int i13 = this.f421c;
            byte[] bArr3 = this.f419a;
            byte b10 = bArr3[i12];
            int i14 = (i13 + b10) & 255;
            this.f421c = i14;
            bArr3[i12] = bArr3[i14];
            bArr3[i14] = b10;
            bArr2[i10] = (byte) (bArr[i11] ^ bArr3[(bArr3[i12] + b10) & 255]);
            i10++;
        }
    }

    public b(byte[] bArr, int i10, int i11) {
        this.f419a = bArr;
        this.f420b = i10;
        this.f421c = i11;
    }
}
