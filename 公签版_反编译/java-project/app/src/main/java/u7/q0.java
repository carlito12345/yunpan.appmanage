package u7;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class q0 extends n1 {
    public q0(Iterator it) {
        super(it);
    }

    @Override // u7.n1
    public final Object a(Object obj) {
        return ((Map.Entry) obj).getValue();
    }
}
