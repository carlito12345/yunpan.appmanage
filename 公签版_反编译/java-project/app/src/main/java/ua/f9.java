package ua;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;

/* loaded from: classes.dex */
public final class f9 implements TvRecyclerView.OnItemListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i9 f15680a;

    public f9(i9 i9Var) {
        this.f15680a = i9Var;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemSelected(TvRecyclerView tvRecyclerView, View view, int i10) {
        i9 i9Var = this.f15680a;
        if (i9Var.D.getVisibility() == 0) {
            i9Var.D.setVisibility(8);
        }
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemClick(TvRecyclerView tvRecyclerView, View view, int i10) {
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemPreSelected(TvRecyclerView tvRecyclerView, View view, int i10) {
    }
}
