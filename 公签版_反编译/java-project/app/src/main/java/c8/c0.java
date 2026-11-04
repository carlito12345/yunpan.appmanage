package c8;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* loaded from: classes.dex */
public final class c0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        aVar.r();
        while (aVar.R()) {
            try {
                arrayList.add(Integer.valueOf(aVar.W()));
            } catch (NumberFormatException e7) {
                throw new z7.q(e7);
            }
        }
        aVar.L();
        int size = arrayList.size();
        AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
        for (int i10 = 0; i10 < size; i10++) {
            atomicIntegerArray.set(i10, ((Integer) arrayList.get(i10)).intValue());
        }
        return atomicIntegerArray;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        bVar.A();
        int length = ((AtomicIntegerArray) obj).length();
        for (int i10 = 0; i10 < length; i10++) {
            bVar.V(r6.get(i10));
        }
        bVar.L();
    }
}
