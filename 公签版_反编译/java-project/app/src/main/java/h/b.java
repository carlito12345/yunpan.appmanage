package h;

import java.util.Comparator;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class b implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public static final b f6207a = new b();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        a aVar = (a) obj;
        a aVar2 = (a) obj2;
        aVar.getClass();
        HashMap map = c.f6208e;
        c cVar = (c) map.get(aVar.f6205a);
        boolean z = cVar == null ? false : cVar.f6213d;
        aVar2.getClass();
        c cVar2 = (c) map.get(aVar2.f6205a);
        return z == (cVar2 != null ? cVar2.f6213d : false) ? aVar.g().compareTo(aVar2.g()) : z ? -1 : 1;
    }
}
