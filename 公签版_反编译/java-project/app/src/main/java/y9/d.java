package y9;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public int f18995a;

    /* renamed from: b, reason: collision with root package name */
    public int f18996b;

    /* renamed from: c, reason: collision with root package name */
    public int f18997c;

    /* renamed from: d, reason: collision with root package name */
    public int f18998d;

    /* renamed from: e, reason: collision with root package name */
    public int f18999e;

    /* renamed from: f, reason: collision with root package name */
    public int f19000f;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f19001g;

    public static d a(InputStream inputStream) throws IOException {
        d dVar = new d();
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
        int i10 = 0;
        int i11 = 0;
        do {
            int i12 = inputStream.read(byteBufferOrder.array(), i11, 24 - i11);
            if (i12 < 0) {
                throw new IOException("Stream closed");
            }
            i11 += i12;
        } while (i11 < 24);
        dVar.f18995a = byteBufferOrder.getInt();
        dVar.f18996b = byteBufferOrder.getInt();
        dVar.f18997c = byteBufferOrder.getInt();
        dVar.f18998d = byteBufferOrder.getInt();
        dVar.f18999e = byteBufferOrder.getInt();
        dVar.f19000f = byteBufferOrder.getInt();
        int i13 = dVar.f18998d;
        if (i13 != 0) {
            dVar.f19001g = new byte[i13];
            do {
                int i14 = inputStream.read(dVar.f19001g, i10, dVar.f18998d - i10);
                if (i14 < 0) {
                    throw new IOException("Stream closed");
                }
                i10 += i14;
            } while (i10 < dVar.f18998d);
        }
        return dVar;
    }
}
