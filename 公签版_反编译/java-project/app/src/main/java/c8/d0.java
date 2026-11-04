package c8;

import java.io.IOException;

/* loaded from: classes.dex */
public final class d0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() == 9) {
            aVar.a0();
            return null;
        }
        try {
            return Long.valueOf(aVar.X());
        } catch (NumberFormatException e7) {
            throw new z7.q(e7);
        }
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        Number number = (Number) obj;
        if (number == null) {
            bVar.P();
        } else {
            bVar.V(number.longValue());
        }
    }
}
