package ua;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.ui.ActivityShell;

/* loaded from: classes.dex */
public final class m6 implements TvRecyclerView.OnItemListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityShell f15825a;

    public m6(ActivityShell activityShell) {
        this.f15825a = activityShell;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemPreSelected(TvRecyclerView tvRecyclerView, View view, int i10) {
        if (view != null) {
            g.b.r(view, 1.0f, 1.0f, 150L);
            ActivityShell activityShell = this.f15825a;
            if (((x9.j1) activityShell.G.t(i10)).f18248a.contains("扫码")) {
                activityShell.E.setVisibility(8);
            }
        }
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemSelected(TvRecyclerView tvRecyclerView, View view, int i10) {
        if (view != null) {
            g.b.r(view, 1.03f, 1.03f, 150L);
            ActivityShell activityShell = this.f15825a;
            if (((x9.j1) activityShell.G.t(i10)).f18248a.contains("扫码")) {
                activityShell.E.setVisibility(0);
            }
        }
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemClick(TvRecyclerView tvRecyclerView, View view, int i10) {
    }
}
