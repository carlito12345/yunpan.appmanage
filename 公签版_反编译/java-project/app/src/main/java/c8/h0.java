package c8;

import java.io.IOException;

/* loaded from: classes.dex */
public final class h0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        int iE0 = aVar.e0();
        if (iE0 != 9) {
            return iE0 == 8 ? Boolean.toString(aVar.U()) : aVar.c0();
        }
        aVar.a0();
        return null;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        bVar.X((String) obj);
    }
}
