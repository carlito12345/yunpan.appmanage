package fg;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class e0 {

    /* renamed from: a, reason: collision with root package name */
    public static final g f5842a = new g();

    public static final boolean a(int i10, byte[] bArr, int i11, byte[] bArr2, int i12) {
        ue.d.e(bArr, "a");
        ue.d.e(bArr2, "b");
        for (int i13 = 0; i13 < i12; i13++) {
            if (bArr[i13 + i10] != bArr2[i13 + i11]) {
                return false;
            }
        }
        return true;
    }

    public static final s b(x xVar) {
        ue.d.e(xVar, "<this>");
        return new s(xVar);
    }

    public static final t c(z zVar) {
        ue.d.e(zVar, "<this>");
        return new t(zVar);
    }

    public static final void d(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            StringBuilder sbW = android.support.v4.media.session.a.w(j10, "size=", " offset=");
            sbW.append(j11);
            sbW.append(" byteCount=");
            sbW.append(j12);
            throw new ArrayIndexOutOfBoundsException(sbW.toString());
        }
    }

    public static l e(String str) {
        ue.d.e(str, "<this>");
        byte[] bytes = str.getBytes(bf.a.f2815a);
        ue.d.d(bytes, "this as java.lang.String).getBytes(charset)");
        l lVar = new l(bytes);
        lVar.f5857c = str;
        return lVar;
    }

    public static final boolean f(AssertionError assertionError) {
        Logger logger = r.f5868a;
        if (assertionError.getCause() == null) {
            return false;
        }
        String message = assertionError.getMessage();
        return message != null ? bf.h.N(message, "getsockname failed") : false;
    }

    public static final x g(Socket socket) throws IOException {
        Logger logger = r.f5868a;
        ue.d.e(socket, "<this>");
        y yVar = new y(socket);
        OutputStream outputStream = socket.getOutputStream();
        ue.d.d(outputStream, "getOutputStream()");
        return yVar.sink(new c(outputStream, 1, yVar));
    }

    public static final z h(Socket socket) throws IOException {
        Logger logger = r.f5868a;
        ue.d.e(socket, "<this>");
        y yVar = new y(socket);
        InputStream inputStream = socket.getInputStream();
        ue.d.d(inputStream, "getInputStream()");
        return yVar.source(new d(inputStream, yVar));
    }
}
