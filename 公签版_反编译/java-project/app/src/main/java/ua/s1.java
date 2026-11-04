package ua;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.bean.NameIcoTypeBean;
import com.yunpan.appmanage.ui.ActivityDownload;

/* loaded from: classes.dex */
public final class s1 implements TvRecyclerView.OnItemListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityDownload f15944a;

    public s1(ActivityDownload activityDownload) {
        this.f15944a = activityDownload;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemSelected(TvRecyclerView tvRecyclerView, View view, int i10) {
        if (view != null) {
            int i11 = ActivityDownload.P0;
            ActivityDownload activityDownload = this.f15944a;
            activityDownload.B();
            String str = ((NameIcoTypeBean) activityDownload.T.t(i10)).name;
            if (str.equals("扫码")) {
                activityDownload.F();
            } else if (str.equals("说明")) {
                activityDownload.O.setVisibility(0);
            } else if (str.equals("历史")) {
                activityDownload.M.setVisibility(0);
            }
        }
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemClick(TvRecyclerView tvRecyclerView, View view, int i10) {
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnItemListener
    public final void onItemPreSelected(TvRecyclerView tvRecyclerView, View view, int i10) {
    }
}
