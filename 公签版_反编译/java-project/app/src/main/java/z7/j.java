package z7;

import java.io.IOException;

/* loaded from: classes.dex */
public final class j extends a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() != 9) {
            return Long.valueOf(aVar.X());
        }
        aVar.a0();
        return null;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        Number number = (Number) obj;
        if (number == null) {
            bVar.P();
        } else {
            bVar.X(number.toString());
        }
    }
}
