package c8;

import java.io.IOException;
import java.net.InetAddress;

/* loaded from: classes.dex */
public final class q0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() != 9) {
            return InetAddress.getByName(aVar.c0());
        }
        aVar.a0();
        return null;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        InetAddress inetAddress = (InetAddress) obj;
        bVar.X(inetAddress == null ? null : inetAddress.getHostAddress());
    }
}
