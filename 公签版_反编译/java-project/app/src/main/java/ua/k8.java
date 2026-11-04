package ua;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;

/* loaded from: classes.dex */
public final class k8 implements TvRecyclerView.OnItemListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q8 f15791a;

    public k8(q8 q8Var) {
        this.f15791a = q8Var;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemPreSelected(TvRecyclerView tvRecyclerView, View view, int i10) {
        if (view != null) {
            q8 q8Var = this.f15791a;
            q8Var.M = -1;
            g.b.r(view, 1.0f, 1.0f, 150L);
            q8Var.N.setText("");
        }
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemSelected(TvRecyclerView tvRecyclerView, View view, int i10) {
        if (view != null) {
            q8 q8Var = this.f15791a;
            q8Var.M = i10;
            g.b.r(view, 1.05f, 1.05f, 150L);
            q8Var.N.setText(((x9.w3) q8Var.f15914n.t(i10)).f18365b);
        }
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemClick(TvRecyclerView tvRecyclerView, View view, int i10) {
    }
}
