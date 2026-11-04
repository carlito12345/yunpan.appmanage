package androidx.fragment.app;

import android.os.Build;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class n1 {

    /* renamed from: a, reason: collision with root package name */
    public static final t1 f1355a;

    /* renamed from: b, reason: collision with root package name */
    public static final v1 f1356b;

    static {
        v1 v1Var = null;
        f1355a = Build.VERSION.SDK_INT >= 21 ? new t1() : null;
        try {
            v1Var = (v1) h4.n.class.getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f1356b = v1Var;
    }

    public static final void a(int i10, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((View) it.next()).setVisibility(i10);
        }
    }
}
