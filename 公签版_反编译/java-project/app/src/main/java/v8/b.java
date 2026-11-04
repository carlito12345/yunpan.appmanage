package v8;

import java.lang.ref.Reference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayList f16669a = new ArrayList();

    public static synchronized void a() {
        a aVar;
        Iterator it = f16669a.iterator();
        while (it.hasNext()) {
            Reference reference = (Reference) it.next();
            if (reference != null && (aVar = (a) reference.get()) != null) {
                aVar.b();
            }
        }
    }

    public static synchronized void b() {
        a aVar;
        Iterator it = f16669a.iterator();
        while (it.hasNext()) {
            Reference reference = (Reference) it.next();
            if (reference != null && (aVar = (a) reference.get()) != null) {
                it.remove();
                aVar.g();
            }
        }
    }

    public static synchronized void c(String str) {
        a aVar;
        if (str == null) {
            return;
        }
        Iterator it = f16669a.iterator();
        while (it.hasNext()) {
            Reference reference = (Reference) it.next();
            if (reference != null && (aVar = (a) reference.get()) != null && str.equals(aVar.f16661h)) {
                it.remove();
                aVar.g();
            }
        }
    }
}
