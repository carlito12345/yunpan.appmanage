package s3;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: f, reason: collision with root package name */
    public static final byte[] f14095f = {0, 0, 1};

    /* renamed from: a, reason: collision with root package name */
    public boolean f14096a;

    /* renamed from: b, reason: collision with root package name */
    public int f14097b;

    /* renamed from: c, reason: collision with root package name */
    public int f14098c;

    /* renamed from: d, reason: collision with root package name */
    public int f14099d;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f14100e = new byte[128];

    public final void a(int i10, int i11, byte[] bArr) {
        if (this.f14096a) {
            int i12 = i11 - i10;
            byte[] bArr2 = this.f14100e;
            int length = bArr2.length;
            int i13 = this.f14098c + i12;
            if (length < i13) {
                this.f14100e = Arrays.copyOf(bArr2, i13 * 2);
            }
            System.arraycopy(bArr, i10, this.f14100e, this.f14098c, i12);
            this.f14098c += i12;
        }
    }
}
