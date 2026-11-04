package ua;

import com.yunpan.appmanage.bean.NameContentSelectBean;
import com.yunpan.appmanage.ui.ActivityOuShangWhitelist;

/* loaded from: classes.dex */
public final class k5 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15784b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityOuShangWhitelist f15785c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k5(ActivityOuShangWhitelist activityOuShangWhitelist, int i10) {
        super(28);
        this.f15784b = i10;
        this.f15785c = activityOuShangWhitelist;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f15784b) {
            case 0:
                String strValueOf = String.valueOf(th2.getMessage());
                fa.b0.f5652a.getClass();
                if (!a2.w0.P() && !strValueOf.equals("已存在")) {
                    com.yunpan.appmanage.util.a0.y("添加失败，请先连接adb");
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.y(strValueOf);
                    break;
                }
                break;
            default:
                fa.b0.f5652a.getClass();
                if (!a2.w0.P()) {
                    com.yunpan.appmanage.util.a0.y("修改失败，请先连接adb");
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.y("修改失败");
                    break;
                }
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f15784b) {
            case 0:
                if (obj instanceof NameContentSelectBean) {
                    this.f15785c.E.q((NameContentSelectBean) obj);
                    break;
                }
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        switch (this.f15784b) {
            case 1:
                ActivityOuShangWhitelist activityOuShangWhitelist = this.f15785c;
                for (int iB = activityOuShangWhitelist.E.b() - 1; iB >= 0; iB--) {
                    if (!((NameContentSelectBean) activityOuShangWhitelist.E.t(iB)).isSelect) {
                        activityOuShangWhitelist.E.C(iB);
                    }
                }
                break;
        }
    }
}
