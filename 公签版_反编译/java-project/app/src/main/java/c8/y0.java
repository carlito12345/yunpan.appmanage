package c8;

import java.io.IOException;

/* loaded from: classes.dex */
public final class y0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        int iE0 = aVar.e0();
        if (iE0 != 9) {
            return iE0 == 6 ? Boolean.valueOf(Boolean.parseBoolean(aVar.c0())) : Boolean.valueOf(aVar.U());
        }
        aVar.a0();
        return null;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        Boolean bool = (Boolean) obj;
        if (bool == null) {
            bVar.P();
            return;
        }
        bVar.Z();
        bVar.r();
        bVar.f6698a.write(bool.booleanValue() ? "true" : "false");
    }
}
