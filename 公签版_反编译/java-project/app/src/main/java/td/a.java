package td;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f15065b = {78, 84, 76, 77, 83, 83, 80, 0};

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f15066c = {6, 1, 0, 0, 0, 0, 0, 15};

    /* renamed from: a, reason: collision with root package name */
    public int f15067a;

    public static byte[] b(int i10, byte[] bArr) {
        int i11 = (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8);
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, c(i10 + 4, bArr), bArr2, 0, i11);
        return bArr2;
    }

    public static int c(int i10, byte[] bArr) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static int d(int i10, byte[] bArr, byte[] bArr2) {
        int length = bArr2 != null ? bArr2.length : 0;
        if (length == 0) {
            return i10 + 4;
        }
        byte b10 = (byte) (length & 255);
        bArr[i10] = b10;
        byte b11 = (byte) ((length >> 8) & 255);
        bArr[i10 + 1] = b11;
        bArr[i10 + 2] = b10;
        bArr[i10 + 3] = b11;
        return i10 + 4;
    }

    public static int e(int i10, int i11, byte[] bArr, byte[] bArr2) {
        f(i11, i10, bArr);
        if (bArr2 == null || bArr2.length <= 0) {
            return 0;
        }
        System.arraycopy(bArr2, 0, bArr, i10, bArr2.length);
        return bArr2.length;
    }

    public static void f(int i10, int i11, byte[] bArr) {
        bArr[i10] = (byte) (i11 & 255);
        bArr[i10 + 1] = (byte) ((i11 >> 8) & 255);
        bArr[i10 + 2] = (byte) ((i11 >> 16) & 255);
        bArr[i10 + 3] = (byte) ((i11 >> 24) & 255);
    }

    public final boolean a(int i10) {
        return (i10 & this.f15067a) != 0;
    }
}
