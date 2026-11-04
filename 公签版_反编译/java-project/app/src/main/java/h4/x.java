package h4;

import android.view.ViewGroup;
import com.yunpan.appmanage.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import x0.b1;

/* loaded from: classes.dex */
public abstract class x {

    /* renamed from: a, reason: collision with root package name */
    public static final b f6507a = new b();

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadLocal f6508b = new ThreadLocal();

    /* renamed from: c, reason: collision with root package name */
    public static final ArrayList f6509c = new ArrayList();

    public static void a(ViewGroup viewGroup, t tVar) {
        ArrayList arrayList = f6509c;
        if (arrayList.contains(viewGroup) || !b1.m(viewGroup)) {
            return;
        }
        arrayList.add(viewGroup);
        if (tVar == null) {
            tVar = f6507a;
        }
        t tVarClone = tVar.clone();
        ArrayList arrayList2 = (ArrayList) b().get(viewGroup);
        if (arrayList2 != null && arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ((t) it.next()).u(viewGroup);
            }
        }
        if (tVarClone != null) {
            tVarClone.h(viewGroup, true);
        }
        if (viewGroup.getTag(R.id.transition_current_scene) != null) {
            throw new ClassCastException();
        }
        viewGroup.setTag(R.id.transition_current_scene, null);
        if (tVarClone != null) {
            w wVar = new w(viewGroup, tVarClone);
            viewGroup.addOnAttachStateChangeListener(wVar);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(wVar);
        }
    }

    public static a0.e b() {
        a0.e eVar;
        ThreadLocal threadLocal = f6508b;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (eVar = (a0.e) weakReference.get()) != null) {
            return eVar;
        }
        a0.e eVar2 = new a0.e();
        threadLocal.set(new WeakReference(eVar2));
        return eVar2;
    }
}
