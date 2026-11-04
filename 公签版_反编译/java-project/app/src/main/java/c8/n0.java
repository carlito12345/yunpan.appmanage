package c8;

import java.io.IOException;

/* loaded from: classes.dex */
public final class n0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() != 9) {
            return new StringBuffer(aVar.c0());
        }
        aVar.a0();
        return null;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        StringBuffer stringBuffer = (StringBuffer) obj;
        bVar.X(stringBuffer == null ? null : stringBuffer.toString());
    }
}
