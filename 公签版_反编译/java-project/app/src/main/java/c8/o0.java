package c8;

import java.io.IOException;
import java.net.URL;

/* loaded from: classes.dex */
public final class o0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() == 9) {
            aVar.a0();
            return null;
        }
        String strC0 = aVar.c0();
        if (strC0.equals("null")) {
            return null;
        }
        return new URL(strC0);
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        URL url = (URL) obj;
        bVar.X(url == null ? null : url.toExternalForm());
    }
}
