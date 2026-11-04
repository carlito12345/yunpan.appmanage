package hh;

import java.io.Serializable;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class a implements Serializable, Iterable {

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList f8203a = new CopyOnWriteArrayList();

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f8203a.iterator();
    }
}
