package c8;

import java.io.IOException;

/* loaded from: classes.dex */
public final class e0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() != 9) {
            return Float.valueOf((float) aVar.V());
        }
        aVar.a0();
        return null;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        Number numberValueOf = (Number) obj;
        if (numberValueOf == null) {
            bVar.P();
            return;
        }
        if (!(numberValueOf instanceof Float)) {
            numberValueOf = Float.valueOf(numberValueOf.floatValue());
        }
        bVar.W(numberValueOf);
    }
}
