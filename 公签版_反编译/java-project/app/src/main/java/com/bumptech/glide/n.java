package com.bumptech.glide;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.yunpan.appmanage.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class n implements x5.e {

    /* renamed from: a, reason: collision with root package name */
    public final x5.c f3415a;

    /* renamed from: b, reason: collision with root package name */
    public final View f3416b;

    public n(View view) {
        a6.h.c(view, "Argument must not be null");
        this.f3416b = view;
        this.f3415a = new x5.c(view);
    }

    @Override // x5.e
    public final void a(w5.f fVar) {
        this.f3415a.f18152b.remove(fVar);
    }

    @Override // x5.e
    public final void d(Drawable drawable) {
    }

    @Override // x5.e
    public final w5.c g() {
        Object tag = this.f3416b.getTag(R.id.glide_custom_view_target_tag);
        if (tag == null) {
            return null;
        }
        if (tag instanceof w5.c) {
            return (w5.c) tag;
        }
        throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
    }

    @Override // x5.e
    public final void h(w5.f fVar) throws Throwable {
        x5.c cVar = this.f3415a;
        View view = cVar.f18151a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int iA = cVar.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        View view2 = cVar.f18151a;
        int paddingBottom = view2.getPaddingBottom() + view2.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
        int iA2 = cVar.a(view2.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iA > 0 || iA == Integer.MIN_VALUE) && (iA2 > 0 || iA2 == Integer.MIN_VALUE)) {
            fVar.k(iA, iA2);
            return;
        }
        ArrayList arrayList = cVar.f18152b;
        if (!arrayList.contains(fVar)) {
            arrayList.add(fVar);
        }
        if (cVar.f18153c == null) {
            ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
            x5.b bVar = new x5.b(cVar);
            cVar.f18153c = bVar;
            viewTreeObserver.addOnPreDrawListener(bVar);
        }
    }

    @Override // x5.e
    public final void i(Drawable drawable) {
        x5.c cVar = this.f3415a;
        ViewTreeObserver viewTreeObserver = cVar.f18151a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(cVar.f18153c);
        }
        cVar.f18153c = null;
        cVar.f18152b.clear();
    }

    @Override // x5.e
    public final void j(w5.c cVar) {
        this.f3416b.setTag(R.id.glide_custom_view_target_tag, cVar);
    }

    public final String toString() {
        return "Target for: " + this.f3416b;
    }

    @Override // com.bumptech.glide.manager.h
    public final void c() {
    }

    @Override // com.bumptech.glide.manager.h
    public final void e() {
    }

    @Override // com.bumptech.glide.manager.h
    public final void k() {
    }

    @Override // x5.e
    public final void b(Object obj) {
    }

    @Override // x5.e
    public final void f(Drawable drawable) {
    }
}
