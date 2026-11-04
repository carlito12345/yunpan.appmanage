package xh;

import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;

/* loaded from: classes3.dex */
public final class j extends k {
    @Override // xh.k
    public final void a() {
        Iterator it = ServiceLoader.load(d.class, d.class.getClassLoader()).iterator();
        while (it.hasNext()) {
            try {
                d.c((d) it.next());
            } catch (ServiceConfigurationError e7) {
                if (!(e7.getCause() instanceof SecurityException)) {
                    throw e7;
                }
            }
        }
    }
}
