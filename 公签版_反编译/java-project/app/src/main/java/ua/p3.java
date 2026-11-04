package ua;

import android.view.View;
import com.yunpan.appmanage.bean.KeyCodeBean;
import com.yunpan.appmanage.ui.ActivityKeyMapXingyuanSet;
import com.yunpan.appmanage.ui.ActivityKeymapFlyOS18;
import ha.ga;
import ha.ha;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class p3 implements c6.e, ga {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15879a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityKeymapFlyOS18 f15880b;

    public /* synthetic */ p3(ActivityKeymapFlyOS18 activityKeymapFlyOS18, int i10) {
        this.f15879a = i10;
        this.f15880b = activityKeymapFlyOS18;
    }

    @Override // ha.ga
    public void b(int i10) {
        ActivityKeymapFlyOS18 activityKeymapFlyOS18 = this.f15880b;
        KeyCodeBean keyCodeBean = (KeyCodeBean) activityKeymapFlyOS18.I.get(i10);
        z7.o oVarP = activityKeymapFlyOS18.H.p("maps");
        for (int i11 = 0; i11 < oVarP.f19478a.size(); i11++) {
            if (android.support.v4.media.session.a.j(oVarP, i11, "type") == keyCodeBean.keyCode) {
                com.yunpan.appmanage.util.a0.u("已存在此映射");
                return;
            }
        }
        z7.s sVar = new z7.s();
        sVar.l("type", Integer.valueOf(keyCodeBean.keyCode));
        sVar.m("name", keyCodeBean.keyName);
        sVar.m("eventName", keyCodeBean.keyName);
        sVar.j("click", new z7.o());
        int i12 = -1;
        if (keyCodeBean.keyCode >= 10000) {
            new ha.m0(activityKeymapFlyOS18, activityKeymapFlyOS18, sVar, new q3(activityKeymapFlyOS18, i12)).show();
        } else {
            new ha.x7(activityKeymapFlyOS18, activityKeymapFlyOS18, sVar, new q3(activityKeymapFlyOS18, i12)).show();
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = 2;
        switch (this.f15879a) {
            case 0:
                int i12 = ActivityKeymapFlyOS18.K;
                ActivityKeymapFlyOS18 activityKeymapFlyOS18 = this.f15880b;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                if (i10 == activityKeymapFlyOS18.D.b() - 1) {
                                    new ha.z6(activityKeymapFlyOS18, activityKeymapFlyOS18.A, "此功能是基于星愿Flyme1.8系统开发的", "").show();
                                    break;
                                }
                            } else {
                                activityKeymapFlyOS18.w(ActivityKeyMapXingyuanSet.class);
                                break;
                            }
                        } else if (activityKeymapFlyOS18.F.b() != 0) {
                            new ha.z6(activityKeymapFlyOS18, activityKeymapFlyOS18.A, "确定要清空所有映射吗？", "", "确定", "取消", new i1(11, activityKeymapFlyOS18)).show();
                            break;
                        }
                    } else {
                        ArrayList arrayList = activityKeymapFlyOS18.I;
                        if (arrayList.isEmpty()) {
                            arrayList.add(new KeyCodeBean(10000, "按键-左键"));
                            arrayList.add(new KeyCodeBean(10002, "按键-右键"));
                            arrayList.add(new KeyCodeBean(10001, "按键-上键"));
                            arrayList.add(new KeyCodeBean(10003, "按键-下键"));
                            arrayList.add(new KeyCodeBean(10004, "按键-中心键"));
                            arrayList.add(new KeyCodeBean(1, "切到 P 档时"));
                            arrayList.add(new KeyCodeBean(2, "切到 R 档时"));
                            arrayList.add(new KeyCodeBean(3, "切到 N 档时"));
                            arrayList.add(new KeyCodeBean(4, "切到 D 档时"));
                        }
                        new ha(activityKeymapFlyOS18, activityKeymapFlyOS18, null, arrayList, new p3(activityKeymapFlyOS18, i11)).show();
                        break;
                    }
                } else {
                    activityKeymapFlyOS18.finish();
                    break;
                }
                break;
            default:
                ActivityKeymapFlyOS18 activityKeymapFlyOS182 = this.f15880b;
                z7.s sVar = (z7.s) activityKeymapFlyOS182.F.t(i10);
                if (sVar.o("type").e() < 10000) {
                    new ha.x7(activityKeymapFlyOS182, activityKeymapFlyOS182, sVar, new q3(activityKeymapFlyOS182, i10)).show();
                    break;
                } else {
                    new ha.m0(activityKeymapFlyOS182, activityKeymapFlyOS182, sVar, new q3(activityKeymapFlyOS182, i10)).show();
                    break;
                }
        }
    }
}
