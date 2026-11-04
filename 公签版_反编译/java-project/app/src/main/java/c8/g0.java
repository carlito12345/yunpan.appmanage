package c8;

import java.io.IOException;

/* loaded from: classes.dex */
public final class g0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() == 9) {
            aVar.a0();
            return null;
        }
        String strC0 = aVar.c0();
        if (strC0.length() == 1) {
            return Character.valueOf(strC0.charAt(0));
        }
        StringBuilder sbD = da.b.d("Expecting character, got: ", strC0, "; at ");
        sbD.append(aVar.Q());
        throw new z7.q(sbD.toString());
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        Character ch2 = (Character) obj;
        bVar.X(ch2 == null ? null : String.valueOf(ch2));
    }
}
