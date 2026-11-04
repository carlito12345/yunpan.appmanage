package c8;

import java.io.IOException;

/* loaded from: classes.dex */
public final class a1 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() == 9) {
            aVar.a0();
            return null;
        }
        try {
            int iW = aVar.W();
            if (iW <= 255 && iW >= -128) {
                return Byte.valueOf((byte) iW);
            }
            StringBuilder sbN = g.b.n("Lossy conversion from ", iW, " to byte; at path ");
            sbN.append(aVar.Q());
            throw new z7.q(sbN.toString());
        } catch (NumberFormatException e7) {
            throw new z7.q(e7);
        }
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        if (((Number) obj) == null) {
            bVar.P();
        } else {
            bVar.V(r4.byteValue());
        }
    }
}
