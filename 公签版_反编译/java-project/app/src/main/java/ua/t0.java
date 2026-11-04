package ua;

import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.ui.ActivityBootStartTask;
import ha.ea;
import java.io.IOException;

/* loaded from: classes.dex */
public final /* synthetic */ class t0 implements ea, ea.e, ha.y6, ha.i3, ha.q0, ha.n1, ha.h7, ea.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15958a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityBootStartTask f15959b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ KeyMapSelectBean f15960c;

    public /* synthetic */ t0(ActivityBootStartTask activityBootStartTask, KeyMapSelectBean keyMapSelectBean, int i10) {
        this.f15958a = i10;
        this.f15959b = activityBootStartTask;
        this.f15960c = keyMapSelectBean;
    }

    @Override // ha.h7
    public void a(String str) throws IOException {
        KeyMapSelectBean keyMapSelectBean = this.f15960c;
        ActivityBootStartTask activityBootStartTask = this.f15959b;
        switch (this.f15958a) {
            case 6:
                int i10 = ActivityBootStartTask.G;
                activityBootStartTask.getClass();
                String strU = android.support.v4.media.session.a.u(new StringBuilder(), keyMapSelectBean.gn_name, "：", str);
                z7.s sVar = new z7.s();
                sVar.k("isOpen", Boolean.TRUE);
                sVar.l("type", Integer.valueOf(keyMapSelectBean.gn_type));
                sVar.m("name", strU);
                sVar.m("str1", str);
                activityBootStartTask.y(-1, sVar, strU);
                break;
            default:
                int i11 = ActivityBootStartTask.G;
                activityBootStartTask.getClass();
                String strU2 = android.support.v4.media.session.a.u(new StringBuilder(), keyMapSelectBean.gn_name, "：", str);
                z7.s sVar2 = new z7.s();
                sVar2.k("isOpen", Boolean.TRUE);
                sVar2.l("type", Integer.valueOf(keyMapSelectBean.gn_type));
                sVar2.m("name", strU2);
                sVar2.m("str1", str);
                activityBootStartTask.y(-1, sVar2, strU2);
                break;
        }
    }

    @Override // ha.ea
    public void b(int i10) throws IOException {
        int i11 = ActivityBootStartTask.G;
        ActivityBootStartTask activityBootStartTask = this.f15959b;
        activityBootStartTask.getClass();
        int i12 = i10 + 1;
        if (i12 > 20) {
            i12 = ((i10 - 19) * 5) + 30;
        } else if (i12 > 10) {
            i12 = ((i10 - 9) * 2) + 10;
        }
        StringBuilder sb2 = new StringBuilder();
        KeyMapSelectBean keyMapSelectBean = this.f15960c;
        sb2.append(keyMapSelectBean.gn_name);
        sb2.append("：");
        sb2.append(i12);
        sb2.append(" 秒");
        String string = sb2.toString();
        z7.s sVar = new z7.s();
        sVar.k("isOpen", Boolean.TRUE);
        sVar.l("type", Integer.valueOf(keyMapSelectBean.gn_type));
        sVar.m("name", string);
        sVar.l("time", Integer.valueOf(i12));
        activityBootStartTask.y(-1, sVar, string);
    }

    @Override // ha.i3
    public void c(x9.w3 w3Var, int i10, int i11, KeyMapSelectBean keyMapSelectBean, KeyMapSelectBean keyMapSelectBean2, KeyMapSelectBean keyMapSelectBean3, int i12) throws IOException {
        int i13 = ActivityBootStartTask.G;
        ActivityBootStartTask activityBootStartTask = this.f15959b;
        activityBootStartTask.getClass();
        StringBuilder sb2 = new StringBuilder();
        KeyMapSelectBean keyMapSelectBean4 = this.f15960c;
        sb2.append(keyMapSelectBean4.gn_name);
        sb2.append("：");
        sb2.append(w3Var.f18364a);
        String string = sb2.toString();
        z7.s sVar = new z7.s();
        sVar.k("isOpen", Boolean.TRUE);
        sVar.l("type", Integer.valueOf(keyMapSelectBean4.gn_type));
        sVar.m("name", string);
        sVar.m("str1", w3Var.f18365b);
        sVar.l("int1", Integer.valueOf(i11));
        sVar.l("volumeType", Integer.valueOf(i10));
        sVar.l("tdType", Integer.valueOf(keyMapSelectBean.gn_type));
        sVar.l("focusType", Integer.valueOf(keyMapSelectBean2.gn_type));
        sVar.l("speakerId", Integer.valueOf(keyMapSelectBean3.gn_type));
        sVar.l("volumeGain", Integer.valueOf(i12));
        activityBootStartTask.y(-1, sVar, string);
    }

    @Override // ha.q0
    public void d(String str, String str2, String str3) throws IOException {
        int i10 = ActivityBootStartTask.G;
        ActivityBootStartTask activityBootStartTask = this.f15959b;
        activityBootStartTask.getClass();
        StringBuilder sb2 = new StringBuilder();
        KeyMapSelectBean keyMapSelectBean = this.f15960c;
        String strU = android.support.v4.media.session.a.u(sb2, keyMapSelectBean.gn_name, "：", str);
        z7.s sVar = new z7.s();
        sVar.k("isOpen", Boolean.TRUE);
        sVar.l("type", Integer.valueOf(keyMapSelectBean.gn_type));
        sVar.m("name", strU);
        sVar.m("str1", str2);
        sVar.m("str2", str3);
        activityBootStartTask.y(-1, sVar, strU);
    }

    @Override // ha.n1
    public void e(String str, String str2, String str3, String str4) throws IOException {
        int i10 = ActivityBootStartTask.G;
        ActivityBootStartTask activityBootStartTask = this.f15959b;
        activityBootStartTask.getClass();
        StringBuilder sb2 = new StringBuilder("settings put ");
        sb2.append(str);
        sb2.append(" ");
        sb2.append(str3);
        String strL = g.b.l(" ", str4, sb2);
        z7.s sVar = new z7.s();
        sVar.k("isOpen", Boolean.TRUE);
        sVar.l("type", Integer.valueOf(this.f15960c.gn_type));
        sVar.m("name", strL);
        sVar.m("type1", str);
        sVar.m("type2", str2);
        sVar.m("key", str3);
        sVar.m("value", str4);
        activityBootStartTask.y(-1, sVar, strL);
    }

    @Override // ea.e
    public void k(z7.s sVar) throws IOException {
        int i10 = ActivityBootStartTask.G;
        ActivityBootStartTask activityBootStartTask = this.f15959b;
        activityBootStartTask.getClass();
        sVar.k("isOpen", Boolean.TRUE);
        sVar.l("type", Integer.valueOf(this.f15960c.gn_type));
        activityBootStartTask.y(-1, sVar, sVar.o("name").i());
    }

    @Override // ha.y6
    public void n(String str, boolean z) throws IOException {
        int i10 = ActivityBootStartTask.G;
        ActivityBootStartTask activityBootStartTask = this.f15959b;
        activityBootStartTask.getClass();
        StringBuilder sb2 = new StringBuilder();
        KeyMapSelectBean keyMapSelectBean = this.f15960c;
        String strU = android.support.v4.media.session.a.u(sb2, keyMapSelectBean.gn_name, "：", str);
        z7.s sVar = new z7.s();
        sVar.k("isOpen", Boolean.TRUE);
        sVar.l("type", Integer.valueOf(keyMapSelectBean.gn_type));
        sVar.m("name", strU);
        sVar.m("str1", str);
        activityBootStartTask.y(-1, sVar, strU);
    }
}
