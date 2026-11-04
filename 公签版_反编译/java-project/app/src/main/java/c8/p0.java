package c8;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

/* loaded from: classes.dex */
public final class p0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() == 9) {
            aVar.a0();
            return null;
        }
        try {
            String strC0 = aVar.c0();
            if (strC0.equals("null")) {
                return null;
            }
            return new URI(strC0);
        } catch (URISyntaxException e7) {
            throw new z7.q(e7);
        }
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        URI uri = (URI) obj;
        bVar.X(uri == null ? null : uri.toASCIIString());
    }
}
