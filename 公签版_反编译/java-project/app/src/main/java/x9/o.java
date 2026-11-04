package x9;

import com.yunpan.appmanage.ui.ActivityAppDetails;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class o extends androidx.viewpager2.adapter.f {

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f18313m;

    public o(ActivityAppDetails activityAppDetails) {
        super(activityAppDetails);
        this.f18313m = new ArrayList();
    }

    @Override // androidx.recyclerview.widget.m1
    public final int b() {
        return this.f18313m.size();
    }
}
