package ua;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;

/* loaded from: classes.dex */
public final class i implements TvRecyclerView.OnItemListener {
    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemClick(TvRecyclerView tvRecyclerView, View view, int i10) {
        s1.g.Y(view);
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemPreSelected(TvRecyclerView tvRecyclerView, View view, int i10) {
        if (view != null) {
            g.b.r(view, 1.0f, 1.0f, 100L);
        }
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemSelected(TvRecyclerView tvRecyclerView, View view, int i10) {
        if (view != null) {
            g.b.r(view, 1.2f, 1.2f, 100L);
        }
    }
}
