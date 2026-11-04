package rg;

import j$.nio.charset.StandardCharsets;
import java.io.DataInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f13774a = new byte[0];

    public static int a(int i10, long j10) {
        long j11 = (int) j10;
        try {
            if (j10 != j11) {
                throw new ArithmeticException();
            }
            long j12 = i10 + j11;
            int i11 = (int) j12;
            if (j12 == i11) {
                return i11;
            }
            throw new ArithmeticException();
        } catch (ArithmeticException e7) {
            throw new IllegalArgumentException("Argument too large or result overflows", e7);
        }
    }

    public static long b(DataInputStream dataInputStream) {
        long unsignedByte = 0;
        for (int i10 = 0; i10 < 4; i10++) {
            unsignedByte |= dataInputStream.readUnsignedByte() << (i10 * 8);
        }
        return unsignedByte;
    }

    public static boolean c(String str, byte[] bArr, int i10, int i11) {
        byte[] bytes = str.getBytes(StandardCharsets.US_ASCII);
        int length = bytes.length;
        int iMin = Math.min(length, i11);
        for (int i12 = 0; i12 < iMin; i12++) {
            if (bytes[i12] != bArr[i10 + i12]) {
                return false;
            }
        }
        return length == i11;
    }

    public static int d(String str) throws IOException {
        try {
            return Integer.parseInt(str, 10);
        } catch (NumberFormatException unused) {
            throw new IOException(da.b.c("Unable to parse int from string value: ", str));
        }
    }

    public static long e(String str) throws IOException {
        try {
            return Long.parseLong(str, 10);
        } catch (NumberFormatException unused) {
            throw new IOException(da.b.c("Unable to parse long from string value: ", str));
        }
    }
}
