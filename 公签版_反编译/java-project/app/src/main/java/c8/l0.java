package c8;

import java.io.IOException;

/* loaded from: classes.dex */
public final class l0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() != 9) {
            return new StringBuilder(aVar.c0());
        }
        aVar.a0();
        return null;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        StringBuilder sb2 = (StringBuilder) obj;
        bVar.X(sb2 == null ? null : sb2.toString());
    }
}
