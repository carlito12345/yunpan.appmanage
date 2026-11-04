package c8;

import java.io.IOException;
import java.util.UUID;

/* loaded from: classes.dex */
public final class r0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() == 9) {
            aVar.a0();
            return null;
        }
        String strC0 = aVar.c0();
        try {
            return UUID.fromString(strC0);
        } catch (IllegalArgumentException e7) {
            StringBuilder sbD = da.b.d("Failed parsing '", strC0, "' as UUID; at path ");
            sbD.append(aVar.Q());
            throw new z7.q(sbD.toString(), e7);
        }
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        UUID uuid = (UUID) obj;
        bVar.X(uuid == null ? null : uuid.toString());
    }
}
