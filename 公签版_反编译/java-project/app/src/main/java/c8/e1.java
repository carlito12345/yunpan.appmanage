package c8;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class e1 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) {
        return new AtomicBoolean(aVar.U());
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        bVar.Y(((AtomicBoolean) obj).get());
    }
}
