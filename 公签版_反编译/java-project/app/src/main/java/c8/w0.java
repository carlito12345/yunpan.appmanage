package c8;

import java.io.IOException;
import java.util.BitSet;

/* loaded from: classes.dex */
public final class w0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException, NumberFormatException {
        boolean zU;
        BitSet bitSet = new BitSet();
        aVar.r();
        int iE0 = aVar.e0();
        int i10 = 0;
        while (iE0 != 2) {
            int iC = d0.f.c(iE0);
            if (iC == 5 || iC == 6) {
                int iW = aVar.W();
                if (iW == 0) {
                    zU = false;
                } else {
                    if (iW != 1) {
                        StringBuilder sbN = g.b.n("Invalid bitset value ", iW, ", expected 0 or 1; at path ");
                        sbN.append(aVar.Q());
                        throw new z7.q(sbN.toString());
                    }
                    zU = true;
                }
            } else {
                if (iC != 7) {
                    throw new z7.q("Invalid bitset value type: " + g.b.B(iE0) + "; at path " + aVar.O());
                }
                zU = aVar.U();
            }
            if (zU) {
                bitSet.set(i10);
            }
            i10++;
            iE0 = aVar.e0();
        }
        aVar.L();
        return bitSet;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        BitSet bitSet = (BitSet) obj;
        bVar.A();
        int length = bitSet.length();
        for (int i10 = 0; i10 < length; i10++) {
            bVar.V(bitSet.get(i10) ? 1L : 0L);
        }
        bVar.L();
    }
}
