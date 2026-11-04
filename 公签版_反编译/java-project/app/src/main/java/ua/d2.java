package ua;

import android.content.res.Resources;
import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.ui.ActivityHome;

/* loaded from: classes.dex */
public final class d2 implements TvRecyclerView.OnItemListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityHome f15632a;

    public d2(ActivityHome activityHome) {
        this.f15632a = activityHome;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemSelected(TvRecyclerView tvRecyclerView, View view, int i10) throws Resources.NotFoundException, SecurityException, IllegalArgumentException {
        ActivityHome activityHome = this.f15632a;
        if (i10 != activityHome.E.F()) {
            activityHome.E.G(i10);
            activityHome.F.m(i10, false, false);
            ((da.h) activityHome.G.f18260h.get(i10)).m();
        }
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemClick(TvRecyclerView tvRecyclerView, View view, int i10) {
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemPreSelected(TvRecyclerView tvRecyclerView, View view, int i10) {
    }
}
