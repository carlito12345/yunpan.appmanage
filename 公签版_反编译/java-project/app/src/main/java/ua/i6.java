package ua;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.yunpan.appmanage.ui.ActivityShell;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class i6 implements fa.g, u9.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityShell f15737a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15738b;

    public /* synthetic */ i6(ActivityShell activityShell, int i10) {
        this.f15737a = activityShell;
        this.f15738b = i10;
    }

    @Override // fa.g
    public void a(fa.i iVar) {
        ActivityShell activityShell = this.f15737a;
        activityShell.G.D(this.f15738b, new x9.j1("adb执行"));
        if (iVar.f5692b.contains("未连接")) {
            activityShell.D.setText("正在尝试连接adb...\n");
            fa.h.f5683a.h(new h6(activityShell, 5));
            return;
        }
        ArrayList arrayList = iVar.f5693c;
        String strL = "";
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            strL = g.b.l((String) arrayList.get(i10), SignParameters.NEW_LINE, g.b.m(strL));
        }
        activityShell.D.setText(strL);
    }

    @Override // u9.b
    public void n(androidx.room.s sVar) {
        int i10 = ActivityShell.M;
        ActivityShell activityShell = this.f15737a;
        activityShell.getClass();
        sVar.k().addAll(sVar.j());
        String strL = "";
        for (int i11 = 0; i11 < sVar.k().size(); i11++) {
            strL = g.b.l((String) sVar.k().get(i11), SignParameters.NEW_LINE, g.b.m(strL));
        }
        activityShell.D.setText(sVar.f2426b == 0 ? g.b.j(strL, "执行成功\n") : android.support.v4.media.session.a.s(d0.f.b(strL, "执行完毕，返回结果代码："), sVar.f2426b, SignParameters.NEW_LINE));
        activityShell.G.D(this.f15738b, new x9.j1("本机执行"));
    }
}
