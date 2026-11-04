package w;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;

/* loaded from: classes.dex */
public final class k0 implements p0, DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public q.g f17134a;

    /* renamed from: b, reason: collision with root package name */
    public l0 f17135b;

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f17136c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ q0 f17137d;

    public k0(q0 q0Var) {
        this.f17137d = q0Var;
    }

    @Override // w.p0
    public final int a() {
        return 0;
    }

    @Override // w.p0
    public final boolean b() {
        q.g gVar = this.f17134a;
        if (gVar != null) {
            return gVar.isShowing();
        }
        return false;
    }

    @Override // w.p0
    public final void dismiss() {
        q.g gVar = this.f17134a;
        if (gVar != null) {
            gVar.dismiss();
            this.f17134a = null;
        }
    }

    @Override // w.p0
    public final CharSequence e() {
        return this.f17136c;
    }

    @Override // w.p0
    public final Drawable f() {
        return null;
    }

    @Override // w.p0
    public final void g(CharSequence charSequence) {
        this.f17136c = charSequence;
    }

    @Override // w.p0
    public final void l(int i10, int i11) {
        if (this.f17135b == null) {
            return;
        }
        q0 q0Var = this.f17137d;
        q.f fVar = new q.f(q0Var.getPopupContext());
        CharSequence charSequence = this.f17136c;
        if (charSequence != null) {
            fVar.setTitle(charSequence);
        }
        l0 l0Var = this.f17135b;
        int selectedItemPosition = q0Var.getSelectedItemPosition();
        q.c cVar = fVar.f12831a;
        cVar.f12792k = l0Var;
        cVar.l = this;
        cVar.f12795o = selectedItemPosition;
        cVar.f12794n = true;
        q.g gVarCreate = fVar.create();
        this.f17134a = gVarCreate;
        AlertController$RecycleListView alertController$RecycleListView = gVarCreate.f12836f.f12812e;
        i0.d(alertController$RecycleListView, i10);
        i0.c(alertController$RecycleListView, i11);
        this.f17134a.show();
    }

    @Override // w.p0
    public final int n() {
        return 0;
    }

    @Override // w.p0
    public final void o(ListAdapter listAdapter) {
        this.f17135b = (l0) listAdapter;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        q0 q0Var = this.f17137d;
        q0Var.setSelection(i10);
        if (q0Var.getOnItemClickListener() != null) {
            q0Var.performItemClick(null, i10, this.f17135b.getItemId(i10));
        }
        dismiss();
    }

    @Override // w.p0
    public final void d(int i10) {
    }

    @Override // w.p0
    public final void i(Drawable drawable) {
    }

    @Override // w.p0
    public final void j(int i10) {
    }

    @Override // w.p0
    public final void k(int i10) {
    }
}
