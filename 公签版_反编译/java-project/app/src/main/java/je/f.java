package je;

import java.util.AbstractSet;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class f extends AbstractSet implements Set, ve.a {
    public abstract int a();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return a();
    }
}
