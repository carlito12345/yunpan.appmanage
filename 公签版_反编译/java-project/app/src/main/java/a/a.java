package a;

import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* loaded from: classes.dex */
public final class a extends b {

    /* renamed from: b, reason: collision with root package name */
    public static final char[] f0b = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', Matrix.MATRIX_TYPE_RANDOM_LT, 'M', 'N', 'O', 'P', 'Q', Matrix.MATRIX_TYPE_RANDOM_REGULAR, 'S', 'T', Matrix.MATRIX_TYPE_RANDOM_UT, 'V', 'W', 'X', 'Y', Matrix.MATRIX_TYPE_ZERO, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    public a() {
        super(0);
    }

    @Override // a.b
    public final void b(byte[] bArr, int i10, int i11, OutputStream outputStream) throws IOException {
        char[] cArr = f0b;
        if (i11 == 1) {
            byte b10 = bArr[i10];
            outputStream.write(cArr[(b10 >>> 2) & 63]);
            outputStream.write(cArr[(b10 << 4) & 48]);
            outputStream.write(61);
            outputStream.write(61);
            return;
        }
        if (i11 == 2) {
            byte b11 = bArr[i10];
            byte b12 = bArr[i10 + 1];
            outputStream.write(cArr[(b11 >>> 2) & 63]);
            outputStream.write(cArr[((b11 << 4) & 48) + ((b12 >>> 4) & 15)]);
            outputStream.write(cArr[(b12 << 2) & 60]);
            outputStream.write(61);
            return;
        }
        byte b13 = bArr[i10];
        byte b14 = bArr[i10 + 1];
        byte b15 = bArr[i10 + 2];
        outputStream.write(cArr[(b13 >>> 2) & 63]);
        outputStream.write(cArr[((b13 << 4) & 48) + ((b14 >>> 4) & 15)]);
        outputStream.write(cArr[((b14 << 2) & 60) + ((b15 >>> 6) & 3)]);
        outputStream.write(cArr[b15 & 63]);
    }
}
