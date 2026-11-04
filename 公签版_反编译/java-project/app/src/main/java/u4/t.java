package u4;

import java.util.Formatter;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class t extends f0 {
    public t(String str, f fVar) {
        super(str, fVar, 4);
    }

    @Override // u4.f0
    public final void k() {
        int i10 = 0;
        if (c().size() <= 65536) {
            Iterator it = c().iterator();
            while (it.hasNext()) {
                ((s) it.next()).g(i10);
                i10++;
            }
            return;
        }
        TreeMap treeMap = new TreeMap();
        Iterator it2 = c().iterator();
        while (it2.hasNext()) {
            String str = ((s) it2.next()).f15377b.e().f18136a;
            int iLastIndexOf = str.lastIndexOf(47);
            String strReplace = iLastIndexOf == -1 ? "default" : str.substring(str.lastIndexOf(91) + 2, iLastIndexOf).replace('/', '.');
            AtomicInteger atomicInteger = (AtomicInteger) treeMap.get(strReplace);
            if (atomicInteger == null) {
                atomicInteger = new AtomicInteger();
                treeMap.put(strReplace, atomicInteger);
            }
            atomicInteger.incrementAndGet();
        }
        Formatter formatter = new Formatter();
        try {
            formatter.format("Too many %1$s references to fit in one dex file: %2$d; max is %3$d.%nYou may try using multi-dex. If multi-dex is enabled then the list of classes for the main dex list is too large.%nReferences by package:", this instanceof v ? "method" : "field", Integer.valueOf(c().size()), 65536);
            for (Map.Entry entry : treeMap.entrySet()) {
                formatter.format("%n%6d %s", Integer.valueOf(((AtomicInteger) entry.getValue()).get()), entry.getKey());
            }
            String string = formatter.toString();
            formatter.close();
            throw new o4.a(string);
        } catch (Throwable th2) {
            formatter.close();
            throw th2;
        }
    }
}
