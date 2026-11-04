package y9;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f19002a = "host::\u0000".getBytes(Charset.forName(HTTP.UTF_8));

    public static byte[] a(int i10, int i11, int i12, byte[] bArr) {
        ByteBuffer byteBufferOrder = bArr != null ? ByteBuffer.allocate(bArr.length + 24).order(ByteOrder.LITTLE_ENDIAN) : ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putInt(i10);
        byteBufferOrder.putInt(i11);
        byteBufferOrder.putInt(i12);
        if (bArr != null) {
            byteBufferOrder.putInt(bArr.length);
            int length = bArr.length;
            int i13 = 0;
            for (int i14 = 0; i14 < length; i14++) {
                byte b10 = bArr[i14];
                i13 = b10 >= 0 ? i13 + b10 : b10 + 256 + i13;
            }
            byteBufferOrder.putInt(i13);
        } else {
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(0);
        }
        byteBufferOrder.putInt(i10 ^ (-1));
        if (bArr != null) {
            byteBufferOrder.put(bArr);
        }
        return byteBufferOrder.array();
    }
}
