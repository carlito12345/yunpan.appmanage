package androidx.recyclerview.widget;

import android.util.SparseArray;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;

/* loaded from: classes.dex */
public final class f2 {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f2114a = new SparseArray();

    /* renamed from: b, reason: collision with root package name */
    public int f2115b = 0;

    /* renamed from: c, reason: collision with root package name */
    public final Set f2116c = Collections.newSetFromMap(new IdentityHashMap());

    public final e2 a(int i10) {
        SparseArray sparseArray = this.f2114a;
        e2 e2Var = (e2) sparseArray.get(i10);
        if (e2Var != null) {
            return e2Var;
        }
        e2 e2Var2 = new e2();
        sparseArray.put(i10, e2Var2);
        return e2Var2;
    }
}
