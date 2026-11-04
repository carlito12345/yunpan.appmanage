package fe;

import a0.t;
import a2.k;
import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import android.view.MenuItem;
import java.io.File;
import l5.q;
import l5.r;
import l5.w;
import m5.d;
import q.a0;

/* loaded from: classes.dex */
public abstract class c implements r {

    /* renamed from: a, reason: collision with root package name */
    public Object f5798a;

    /* renamed from: b, reason: collision with root package name */
    public Object f5799b;

    public c() {
    }

    public void c() {
        k kVar = (k) this.f5798a;
        if (kVar != null) {
            try {
                ((a0) this.f5799b).f12767k.unregisterReceiver(kVar);
            } catch (IllegalArgumentException unused) {
            }
            this.f5798a = null;
        }
    }

    public abstract IntentFilter d();

    public abstract int e();

    public MenuItem f(MenuItem menuItem) {
        if (!(menuItem instanceof r0.a)) {
            return menuItem;
        }
        r0.a aVar = (r0.a) menuItem;
        if (((t) this.f5799b) == null) {
            this.f5799b = new t(0);
        }
        MenuItem menuItem2 = (MenuItem) ((t) this.f5799b).get(aVar);
        if (menuItem2 != null) {
            return menuItem2;
        }
        v.r rVar = new v.r((Context) this.f5798a, aVar);
        ((t) this.f5799b).put(aVar, rVar);
        return rVar;
    }

    public abstract void g();

    public void h() {
        c();
        IntentFilter intentFilterD = d();
        if (intentFilterD == null || intentFilterD.countActions() == 0) {
            return;
        }
        if (((k) this.f5798a) == null) {
            this.f5798a = new k(4, this);
        }
        ((a0) this.f5799b).f12767k.registerReceiver((k) this.f5798a, intentFilterD);
    }

    public abstract byte[] i();

    @Override // l5.r
    public q l(w wVar) {
        Class cls = (Class) this.f5799b;
        return new d((Context) this.f5798a, wVar.c(File.class, cls), wVar.c(Uri.class, cls), cls);
    }

    public c(Context context) {
        this.f5798a = context;
    }

    public c(Context context, Class cls) {
        this.f5798a = context;
        this.f5799b = cls;
    }

    public c(a0 a0Var) {
        this.f5799b = a0Var;
    }
}
