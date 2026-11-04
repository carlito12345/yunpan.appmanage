package ka;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.ui.ActivityAppDetails;
import x9.o;

/* loaded from: classes.dex */
public final class b implements TvRecyclerView.OnInBorderKeyEventListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f10222a;

    public b(d dVar) {
        this.f10222a = dVar;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public final boolean onInBorderKeyEvent(int i10, View view) {
        ma.b bVar = this.f10222a.f10231g;
        ActivityAppDetails activityAppDetails = (ActivityAppDetails) bVar.f11023b;
        if (i10 == 17) {
            if (activityAppDetails.D.getCurrentItem() > 0) {
                activityAppDetails.C.f(activityAppDetails.D.getCurrentItem() - 1).f12591e.requestFocus();
            }
        } else if (i10 == 66) {
            if (activityAppDetails.D.getCurrentItem() < ((o) bVar.f11024c).f18313m.size() - 1) {
                activityAppDetails.C.f(activityAppDetails.D.getCurrentItem() + 1).f12591e.requestFocus();
            }
        } else if (i10 == 33) {
            activityAppDetails.C.f(activityAppDetails.D.getCurrentItem()).f12591e.requestFocus();
        } else {
            int i11 = ActivityAppDetails.E;
            activityAppDetails.getClass();
        }
        return true;
    }
}
