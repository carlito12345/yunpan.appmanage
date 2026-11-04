package ua;

import com.yunpan.appmanage.ui.ActivityUsersApps;
import com.yunpan.appmanage.ui.ActivityWindowInputAdbPair;
import java.util.List;

/* loaded from: classes.dex */
public final class s7 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15952b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15953c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s7(int i10, Object obj) {
        super(28);
        this.f15952b = i10;
        this.f15953c = obj;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f15952b) {
            case 2:
                ActivityWindowInputAdbPair activityWindowInputAdbPair = (ActivityWindowInputAdbPair) this.f15953c;
                activityWindowInputAdbPair.D.setText("确定");
                if (!("" + th2.getMessage()).contains("未找到端口")) {
                    activityWindowInputAdbPair.C.setText("配对失败，请重新尝试");
                    break;
                } else {
                    activityWindowInputAdbPair.C.setText("未找到端口，请重新尝试");
                    break;
                }
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f15952b) {
            case 0:
                androidx.room.s sVar = (androidx.room.s) this.f15953c;
                ((ActivityUsersApps) sVar.f2428d).F.C(sVar.f2426b);
                break;
            case 1:
                ActivityUsersApps activityUsersApps = (ActivityUsersApps) this.f15953c;
                activityUsersApps.F.E((List) obj);
                activityUsersApps.G.setVisibility(activityUsersApps.F.b() == 0 ? 0 : 8);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f15952b) {
            case 1:
                ((ActivityUsersApps) this.f15953c).H.c("加载中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        switch (this.f15952b) {
            case 1:
                ((ActivityUsersApps) this.f15953c).H.a();
                break;
            case 2:
                ActivityWindowInputAdbPair activityWindowInputAdbPair = (ActivityWindowInputAdbPair) this.f15953c;
                activityWindowInputAdbPair.D.setText("成功");
                activityWindowInputAdbPair.C.setText("配对成功，请将管家退出小窗口模式，然后返回");
                break;
        }
    }
}
