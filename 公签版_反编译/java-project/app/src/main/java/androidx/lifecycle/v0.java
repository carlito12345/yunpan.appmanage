package androidx.lifecycle;

import java.io.Closeable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public final class v0 {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f1824a = new LinkedHashMap();

    public final void a() {
        for (r0 r0Var : this.f1824a.values()) {
            r0Var.f1808c = true;
            HashMap map = r0Var.f1806a;
            if (map != null) {
                synchronized (map) {
                    try {
                        Iterator it = r0Var.f1806a.values().iterator();
                        while (it.hasNext()) {
                            r0.a(it.next());
                        }
                    } finally {
                    }
                }
            }
            LinkedHashSet linkedHashSet = r0Var.f1807b;
            if (linkedHashSet != null) {
                synchronized (linkedHashSet) {
                    try {
                        Iterator it2 = r0Var.f1807b.iterator();
                        while (it2.hasNext()) {
                            r0.a((Closeable) it2.next());
                        }
                    } finally {
                    }
                }
            }
            r0Var.b();
        }
        this.f1824a.clear();
    }
}
