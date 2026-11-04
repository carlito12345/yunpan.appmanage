package rd;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f13758a = {-1, 83, 77, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f13759b = {-2, 83, 77, 66, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    public static int a(int i10, byte[] bArr) {
        return (bArr[i10] & 255) + ((bArr[i10 + 1] & 255) << 8);
    }

    public static int b(int i10, byte[] bArr) {
        return (bArr[i10] & 255) + ((bArr[i10 + 1] & 255) << 8) + ((bArr[i10 + 2] & 255) << 16) + ((bArr[i10 + 3] & 255) << 24);
    }

    public static long c(int i10, byte[] bArr) {
        return (b(i10, bArr) & 4294967295L) + (b(i10 + 4, bArr) << 32);
    }

    public static long d(int i10, byte[] bArr) {
        return (((b(i10 + 4, bArr) << 32) | (b(i10, bArr) & 4294967295L)) / 10000) - 11644473600000L;
    }

    public static void e(long j10, byte[] bArr, int i10) {
        bArr[i10] = (byte) j10;
        bArr[i10 + 1] = (byte) (j10 >> 8);
    }

    public static void f(long j10, byte[] bArr, int i10) {
        bArr[i10] = (byte) j10;
        bArr[i10 + 1] = (byte) (j10 >> 8);
        bArr[i10 + 2] = (byte) (j10 >> 16);
        bArr[i10 + 3] = (byte) (j10 >> 24);
    }

    public static void g(long j10, byte[] bArr, int i10) {
        bArr[i10] = (byte) j10;
        bArr[i10 + 1] = (byte) (j10 >> 8);
        bArr[i10 + 2] = (byte) (j10 >> 16);
        bArr[i10 + 3] = (byte) (j10 >> 24);
        bArr[i10 + 4] = (byte) (j10 >> 32);
        bArr[i10 + 5] = (byte) (j10 >> 40);
        bArr[i10 + 6] = (byte) (j10 >> 48);
        bArr[i10 + 7] = (byte) (j10 >> 56);
    }

    public static void h(long j10, byte[] bArr, int i10) {
        if (j10 != 0) {
            j10 = (j10 + 11644473600000L) * 10000;
        }
        g(j10, bArr, i10);
    }
}
