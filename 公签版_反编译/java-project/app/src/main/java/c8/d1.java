package c8;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class d1 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) {
        try {
            return new AtomicInteger(aVar.W());
        } catch (NumberFormatException e7) {
            throw new z7.q(e7);
        }
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        bVar.V(((AtomicInteger) obj).get());
    }
}
