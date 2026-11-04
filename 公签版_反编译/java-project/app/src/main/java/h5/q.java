package h5;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class q implements Iterable {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f6625a;

    public q(ArrayList arrayList) {
        this.f6625a = arrayList;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f6625a.iterator();
    }
}
