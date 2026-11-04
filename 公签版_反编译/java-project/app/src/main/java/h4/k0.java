package h4;

import android.view.View;
import android.view.ViewGroup;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class k0 extends u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f6442a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f6443b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f6444c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ i f6445d;

    public k0(i iVar, ViewGroup viewGroup, View view, View view2) {
        this.f6445d = iVar;
        this.f6442a = viewGroup;
        this.f6443b = view;
        this.f6444c = view2;
    }

    @Override // h4.u, h4.s
    public final void a() {
        android.support.v4.media.session.b.m(this.f6442a).D(this.f6443b);
    }

    @Override // h4.s
    public final void c(t tVar) {
        this.f6444c.setTag(R.id.save_overlay_view, null);
        android.support.v4.media.session.b.m(this.f6442a).D(this.f6443b);
        tVar.v(this);
    }

    @Override // h4.u, h4.s
    public final void e() {
        View view = this.f6443b;
        if (view.getParent() == null) {
            android.support.v4.media.session.b.m(this.f6442a).k(view);
        } else {
            this.f6445d.cancel();
        }
    }
}
