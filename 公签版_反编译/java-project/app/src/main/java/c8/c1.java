package c8;

import java.io.IOException;

/* loaded from: classes.dex */
public final class c1 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() == 9) {
            aVar.a0();
            return null;
        }
        try {
            return Integer.valueOf(aVar.W());
        } catch (NumberFormatException e7) {
            throw new z7.q(e7);
        }
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        if (((Number) obj) == null) {
            bVar.P();
        } else {
            bVar.V(r4.intValue());
        }
    }
}
