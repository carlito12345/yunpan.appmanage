package v;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import androidx.appcompat.view.menu.ExpandedMenuView;

/* loaded from: classes.dex */
public final class g implements x, AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public Context f16221a;

    /* renamed from: b, reason: collision with root package name */
    public LayoutInflater f16222b;

    /* renamed from: c, reason: collision with root package name */
    public k f16223c;

    /* renamed from: d, reason: collision with root package name */
    public ExpandedMenuView f16224d;

    /* renamed from: e, reason: collision with root package name */
    public w f16225e;

    /* renamed from: f, reason: collision with root package name */
    public f f16226f;

    public g(Context context) {
        this.f16221a = context;
        this.f16222b = LayoutInflater.from(context);
    }

    @Override // v.x
    public final void a(k kVar, boolean z) {
        w wVar = this.f16225e;
        if (wVar != null) {
            wVar.a(kVar, z);
        }
    }

    @Override // v.x
    public final void c(w wVar) {
        throw null;
    }

    @Override // v.x
    public final boolean d() {
        return false;
    }

    @Override // v.x
    public final boolean e(m mVar) {
        return false;
    }

    @Override // v.x
    public final void f(Context context, k kVar) {
        if (this.f16221a != null) {
            this.f16221a = context;
            if (this.f16222b == null) {
                this.f16222b = LayoutInflater.from(context);
            }
        }
        this.f16223c = kVar;
        f fVar = this.f16226f;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    @Override // v.x
    public final void g() {
        f fVar = this.f16226f;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    @Override // v.x
    public final boolean i(m mVar) {
        return false;
    }

    @Override // v.x
    public final boolean j(d0 d0Var) {
        if (!d0Var.hasVisibleItems()) {
            return false;
        }
        l lVar = new l(d0Var);
        Context context = d0Var.f16233a;
        q.f fVar = new q.f(context);
        g gVar = new g(fVar.getContext());
        lVar.f16256c = gVar;
        gVar.f16225e = lVar;
        d0Var.b(gVar, context);
        g gVar2 = lVar.f16256c;
        if (gVar2.f16226f == null) {
            gVar2.f16226f = new f(gVar2);
        }
        f fVar2 = gVar2.f16226f;
        q.c cVar = fVar.f12831a;
        cVar.f12792k = fVar2;
        cVar.l = lVar;
        View view = d0Var.f16246p;
        if (view != null) {
            cVar.f12786e = view;
        } else {
            cVar.f12784c = d0Var.f16245n;
            fVar.setTitle(d0Var.f16244m);
        }
        cVar.f12791j = lVar;
        q.g gVarCreate = fVar.create();
        lVar.f16255b = gVarCreate;
        gVarCreate.setOnDismissListener(lVar);
        WindowManager.LayoutParams attributes = lVar.f16255b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        lVar.f16255b.show();
        w wVar = this.f16225e;
        if (wVar == null) {
            return true;
        }
        wVar.d(d0Var);
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
        this.f16223c.q(this.f16226f.getItem(i10), this, 0);
    }
}
