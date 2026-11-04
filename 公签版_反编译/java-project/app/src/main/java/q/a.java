package q;

import android.view.View;
import android.widget.AbsListView;

/* loaded from: classes.dex */
public final class a implements AbsListView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f12759a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f12760b;

    public a(View view, View view2) {
        this.f12759a = view;
        this.f12760b = view2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i10, int i11, int i12) {
        e.b(absListView, this.f12759a, this.f12760b);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i10) {
    }
}
