package ua;

import android.view.View;
import com.yunpan.appmanage.bean.SwitchAppBean;
import com.yunpan.appmanage.ui.ActivityAppShowAppClose;
import ha.dd;

/* loaded from: classes.dex */
public final /* synthetic */ class v implements c6.e, dd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityAppShowAppClose f15993a;

    public /* synthetic */ v(ActivityAppShowAppClose activityAppShowAppClose) {
        this.f15993a = activityAppShowAppClose;
    }

    @Override // ha.dd
    public void a(String str, String str2, String str3, String str4, String str5) {
        ActivityAppShowAppClose activityAppShowAppClose = this.f15993a;
        activityAppShowAppClose.F.q(new SwitchAppBean(str, str2, str3, str4, str5));
        activityAppShowAppClose.x();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = ActivityAppShowAppClose.G;
        ActivityAppShowAppClose activityAppShowAppClose = this.f15993a;
        activityAppShowAppClose.getClass();
        new ha.z6(activityAppShowAppClose, activityAppShowAppClose.A, "您是否要删除此任务", "", "确定", "取消", new d3.g(i10, 8, activityAppShowAppClose)).show();
    }
}
