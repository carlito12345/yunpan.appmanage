package c8;

import java.io.IOException;

/* loaded from: classes.dex */
public final class z0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() != 9) {
            return Boolean.valueOf(aVar.c0());
        }
        aVar.a0();
        return null;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        Boolean bool = (Boolean) obj;
        bVar.X(bool == null ? "null" : bool.toString());
    }
}
