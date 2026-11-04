package w;

import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class g3 implements m, v.i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Toolbar f17089a;

    public /* synthetic */ g3(Toolbar toolbar) {
        this.f17089a = toolbar;
    }

    @Override // v.i
    public boolean e(v.k kVar, MenuItem menuItem) {
        this.f17089a.getClass();
        return false;
    }

    @Override // v.i
    public void f(v.k kVar) {
        Toolbar toolbar = this.f17089a;
        j jVar = toolbar.f986a.f954v;
        if (jVar == null || !jVar.k()) {
            Iterator it = ((CopyOnWriteArrayList) toolbar.I.f14294c).iterator();
            while (it.hasNext()) {
                ((androidx.fragment.app.v0) it.next()).f1413a.s(kVar);
            }
        }
    }
}
