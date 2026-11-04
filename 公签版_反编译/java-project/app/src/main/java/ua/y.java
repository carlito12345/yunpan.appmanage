package ua;

import android.view.View;
import com.yunpan.appmanage.bean.SwitchAppBean;
import com.yunpan.appmanage.ui.ActivityAppShowAppOpen;
import ha.dd;

/* loaded from: classes.dex */
public final /* synthetic */ class y implements c6.e, dd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityAppShowAppOpen f16047a;

    public /* synthetic */ y(ActivityAppShowAppOpen activityAppShowAppOpen) {
        this.f16047a = activityAppShowAppOpen;
    }

    @Override // ha.dd
    public void a(String str, String str2, String str3, String str4, String str5) {
        ActivityAppShowAppOpen activityAppShowAppOpen = this.f16047a;
        activityAppShowAppOpen.F.q(new SwitchAppBean(str, str2, str3, str4, str5));
        activityAppShowAppOpen.x();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = ActivityAppShowAppOpen.G;
        ActivityAppShowAppOpen activityAppShowAppOpen = this.f16047a;
        activityAppShowAppOpen.getClass();
        new ha.z6(activityAppShowAppOpen, activityAppShowAppOpen.A, "您是否要删除此任务", "", "确定", "取消", new d3.g(i10, 9, activityAppShowAppOpen)).show();
    }
}
