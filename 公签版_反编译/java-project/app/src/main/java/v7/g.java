package v7;

import a9.o;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f16650a = 0;

    static {
        new f();
    }

    public static byte[] a(ArrayDeque arrayDeque, int i10) {
        if (arrayDeque.isEmpty()) {
            return new byte[0];
        }
        byte[] bArr = (byte[]) arrayDeque.remove();
        if (bArr.length == i10) {
            return bArr;
        }
        int length = i10 - bArr.length;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, i10);
        while (length > 0) {
            byte[] bArr2 = (byte[]) arrayDeque.remove();
            int iMin = Math.min(length, bArr2.length);
            System.arraycopy(bArr2, 0, bArrCopyOf, i10 - length, iMin);
            length -= iMin;
        }
        return bArrCopyOf;
    }

    public static void b(j jVar, byte[] bArr, int i10, int i11) throws IOException {
        bArr.getClass();
        if (i11 < 0) {
            throw new IndexOutOfBoundsException(g.b.i("len (", i11, ") cannot be negative"));
        }
        o.q(i10, i10 + i11, bArr.length);
        int i12 = 0;
        while (i12 < i11) {
            int i13 = jVar.read(bArr, i10 + i12, i11 - i12);
            if (i13 == -1) {
                break;
            } else {
                i12 += i13;
            }
        }
        if (i12 == i11) {
            return;
        }
        throw new EOFException("reached end of stream after reading " + i12 + " bytes; " + i11 + " bytes expected");
    }

    public static byte[] c(InputStream inputStream) throws IOException {
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int iMin = Math.min(8192, Math.max(128, Integer.highestOneBit(0) * 2));
        int i10 = 0;
        while (i10 < 2147483639) {
            int iMin2 = Math.min(iMin, 2147483639 - i10);
            byte[] bArr = new byte[iMin2];
            arrayDeque.add(bArr);
            int i11 = 0;
            while (i11 < iMin2) {
                int i12 = inputStream.read(bArr, i11, iMin2 - i11);
                if (i12 == -1) {
                    return a(arrayDeque, i10);
                }
                i11 += i12;
                i10 += i12;
            }
            iMin = d.b.i0(iMin * (iMin < 4096 ? 4 : 2));
        }
        if (inputStream.read() == -1) {
            return a(arrayDeque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }
}
