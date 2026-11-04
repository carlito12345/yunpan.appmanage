package c8;

import java.io.IOException;
import java.util.Currency;

/* loaded from: classes.dex */
public final class s0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        String strC0 = aVar.c0();
        try {
            return Currency.getInstance(strC0);
        } catch (IllegalArgumentException e7) {
            StringBuilder sbD = da.b.d("Failed parsing '", strC0, "' as Currency; at path ");
            sbD.append(aVar.Q());
            throw new z7.q(sbD.toString(), e7);
        }
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        bVar.X(((Currency) obj).getCurrencyCode());
    }
}
