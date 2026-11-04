package ua;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;

/* loaded from: classes.dex */
public final class d9 implements TvRecyclerView.OnItemListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i9 f15642a;

    public d9(i9 i9Var) {
        this.f15642a = i9Var;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemSelected(TvRecyclerView tvRecyclerView, View view, int i10) {
        i9 i9Var = this.f15642a;
        i9Var.V = i10;
        i9Var.X = view;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemClick(TvRecyclerView tvRecyclerView, View view, int i10) {
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemPreSelected(TvRecyclerView tvRecyclerView, View view, int i10) {
    }
}
