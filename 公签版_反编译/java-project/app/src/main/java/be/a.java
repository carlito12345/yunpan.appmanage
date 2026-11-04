package be;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f2795b = {78, 84, 76, 77, 83, 83, 80, 0};

    /* renamed from: c, reason: collision with root package name */
    public static final String f2796c = wd.a.f17872c;

    /* renamed from: a, reason: collision with root package name */
    public int f2797a;

    public static byte[] a(int i10, byte[] bArr) {
        int i11 = (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8);
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, b(i10 + 4, bArr), bArr2, 0, i11);
        return bArr2;
    }

    public static int b(int i10, byte[] bArr) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static void c(int i10, int i11, byte[] bArr, byte[] bArr2) {
        int length = bArr2 != null ? bArr2.length : 0;
        if (length == 0) {
            return;
        }
        e(i10, length, bArr);
        e(i10 + 2, length, bArr);
        d(i10 + 4, i11, bArr);
        System.arraycopy(bArr2, 0, bArr, i11, length);
    }

    public static void d(int i10, int i11, byte[] bArr) {
        bArr[i10] = (byte) (i11 & 255);
        bArr[i10 + 1] = (byte) ((i11 >> 8) & 255);
        bArr[i10 + 2] = (byte) ((i11 >> 16) & 255);
        bArr[i10 + 3] = (byte) ((i11 >> 24) & 255);
    }

    public static void e(int i10, int i11, byte[] bArr) {
        bArr[i10] = (byte) (i11 & 255);
        bArr[i10 + 1] = (byte) ((i11 >> 8) & 255);
    }
}
