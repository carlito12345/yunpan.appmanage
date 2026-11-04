package s3;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: e, reason: collision with root package name */
    public static final byte[] f14074e = {0, 0, 1};

    /* renamed from: a, reason: collision with root package name */
    public boolean f14075a;

    /* renamed from: b, reason: collision with root package name */
    public int f14076b;

    /* renamed from: c, reason: collision with root package name */
    public int f14077c;

    /* renamed from: d, reason: collision with root package name */
    public byte[] f14078d = new byte[128];

    public final void a(int i10, int i11, byte[] bArr) {
        if (this.f14075a) {
            int i12 = i11 - i10;
            byte[] bArr2 = this.f14078d;
            int length = bArr2.length;
            int i13 = this.f14076b + i12;
            if (length < i13) {
                this.f14078d = Arrays.copyOf(bArr2, i13 * 2);
            }
            System.arraycopy(bArr, i10, this.f14078d, this.f14076b, i12);
            this.f14076b += i12;
        }
    }
}
