package ua;

import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.ui.ActivityBootStartTask;
import ha.wd;
import java.io.IOException;

/* loaded from: classes.dex */
public final class w0 implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16007a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyMapSelectBean f16008b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityBootStartTask f16009c;

    public /* synthetic */ w0(ActivityBootStartTask activityBootStartTask, KeyMapSelectBean keyMapSelectBean, int i10) {
        this.f16007a = i10;
        this.f16009c = activityBootStartTask;
        this.f16008b = keyMapSelectBean;
    }

    @Override // ha.wd
    public final void D() throws IOException {
        ActivityBootStartTask activityBootStartTask = this.f16009c;
        KeyMapSelectBean keyMapSelectBean = this.f16008b;
        switch (this.f16007a) {
            case 0:
                z7.s sVar = new z7.s();
                sVar.k("isOpen", Boolean.TRUE);
                sVar.l("type", Integer.valueOf(keyMapSelectBean.gn_type));
                sVar.m("name", keyMapSelectBean.gn_name);
                String str = keyMapSelectBean.gn_name;
                int i10 = ActivityBootStartTask.G;
                activityBootStartTask.y(-1, sVar, str);
                break;
            default:
                z7.s sVar2 = new z7.s();
                sVar2.k("isOpen", Boolean.TRUE);
                sVar2.l("type", Integer.valueOf(keyMapSelectBean.gn_type));
                sVar2.m("name", keyMapSelectBean.gn_name);
                String str2 = keyMapSelectBean.gn_name;
                int i11 = ActivityBootStartTask.G;
                activityBootStartTask.y(-1, sVar2, str2);
                if (!com.yunpan.appmanage.util.v.f4106a.B) {
                    s9.a aVar = new s9.a(3, false);
                    ActivityBootStartTask activityBootStartTask2 = this.f16009c;
                    new ha.z6(activityBootStartTask2, activityBootStartTask2, "开机自动连接匹配码adb，请在功能面板的【匹配码adb】功能里面勾选【自动勾选无线调试】", "是否帮你勾选？？？", "确定", "取消", aVar).show();
                    break;
                }
                break;
        }
    }

    @Override // ha.wd
    public final void t() {
        int i10 = this.f16007a;
    }

    private final void a() {
    }

    private final void b() {
    }
}
