package v5;

import a0.e;
import a6.o;
import h5.k;
import h5.x;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: c, reason: collision with root package name */
    public static final x f16626c = new x(Object.class, Object.class, Object.class, Collections.singletonList(new k(Object.class, Object.class, Object.class, Collections.emptyList(), new t5.c(0), null)), null);

    /* renamed from: a, reason: collision with root package name */
    public final e f16627a = new e();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReference f16628b = new AtomicReference();

    public final void a(Class cls, Class cls2, Class cls3, x xVar) {
        synchronized (this.f16627a) {
            e eVar = this.f16627a;
            o oVar = new o(cls, cls2, cls3);
            if (xVar == null) {
                xVar = f16626c;
            }
            eVar.put(oVar, xVar);
        }
    }
}
