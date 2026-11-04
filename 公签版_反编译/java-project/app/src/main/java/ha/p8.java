package ha;

import android.app.ActivityOptions;
import android.content.Intent;
import android.os.Build;
import android.view.Display;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.ui.ActivityDisplayStartApp;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class p8 implements ea.c, ea.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7578a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7579b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7580c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f7581d;

    public /* synthetic */ p8(int i10, int i11, KeyMapSelectBean keyMapSelectBean, ea.e eVar) {
        this.f7578a = i10;
        this.f7579b = i11;
        this.f7580c = keyMapSelectBean;
        this.f7581d = eVar;
    }

    @Override // ea.c
    public void e(int i10) {
        z7.s sVar = new z7.s();
        sVar.l("keyType", Integer.valueOf(this.f7578a));
        sVar.l("gnType", Integer.valueOf(this.f7579b));
        StringBuilder sb2 = new StringBuilder("设置");
        KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) this.f7580c;
        sb2.append(keyMapSelectBean.gn_name);
        sb2.append("：");
        sb2.append(i10);
        sVar.m("name", sb2.toString());
        sVar.l("streamType", Integer.valueOf(keyMapSelectBean.gn_type));
        sVar.l("volume", Integer.valueOf(i10));
        ((ea.e) this.f7581d).k(sVar);
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        ActivityDisplayStartApp activityDisplayStartApp = (ActivityDisplayStartApp) this.f7580c;
        AppBean appBean = (AppBean) activityDisplayStartApp.D.t(this.f7578a);
        boolean z = activityDisplayStartApp.E;
        int i10 = this.f7579b;
        if (!z && i10 == 0) {
            a2.w0 w0Var = fa.b0.f5652a;
            String str = "am force-stop '" + appBean.pack + "'";
            w0Var.getClass();
            a2.w0.h(str);
            bVar.b();
            return;
        }
        int i11 = Build.VERSION.SDK_INT;
        Intent leanbackLaunchIntentForPackage = i11 >= 21 ? activityDisplayStartApp.A.getPackageManager().getLeanbackLaunchIntentForPackage(appBean.pack) : null;
        if (leanbackLaunchIntentForPackage == null) {
            leanbackLaunchIntentForPackage = activityDisplayStartApp.A.getPackageManager().getLaunchIntentForPackage(appBean.pack);
        }
        if (leanbackLaunchIntentForPackage != null) {
            boolean z4 = activityDisplayStartApp.E;
            ArrayList arrayList = (ArrayList) this.f7581d;
            if (z4) {
                try {
                    if (i11 >= 26) {
                        ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
                        activityOptionsMakeBasic.setLaunchDisplayId(((Display) arrayList.get(i10)).getDisplayId());
                        activityDisplayStartApp.startActivity(leanbackLaunchIntentForPackage, activityOptionsMakeBasic.toBundle());
                    } else {
                        activityDisplayStartApp.startActivity(leanbackLaunchIntentForPackage);
                    }
                } catch (Exception unused) {
                    com.yunpan.appmanage.util.a0.u("启动失败");
                }
            } else {
                a2.w0 w0Var2 = fa.b0.f5652a;
                String str2 = "am start -n '" + leanbackLaunchIntentForPackage.getComponent().flattenToString() + "' --display " + ((Display) arrayList.get(i10 - 1)).getDisplayId();
                w0Var2.getClass();
                if (a2.w0.h(str2).f5648a != 0) {
                    com.yunpan.appmanage.util.a0.u("启动失败");
                }
            }
        } else {
            com.yunpan.appmanage.util.a0.u("此应用无法启动");
        }
        bVar.b();
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        int i10 = this.f7578a;
        int i11 = this.f7579b;
        KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) this.f7580c;
        ea.e eVar = (ea.e) this.f7581d;
        try {
            sVar.l("keyType", Integer.valueOf(i10));
            sVar.l("gnType", Integer.valueOf(i11));
            sVar.m("name", keyMapSelectBean.gn_name);
            sVar.l("int1", Integer.valueOf(keyMapSelectBean.gn_type));
            eVar.k(sVar);
        } catch (Exception unused) {
        }
    }

    public /* synthetic */ p8(ActivityDisplayStartApp activityDisplayStartApp, int i10, int i11, ArrayList arrayList) {
        this.f7580c = activityDisplayStartApp;
        this.f7578a = i10;
        this.f7579b = i11;
        this.f7581d = arrayList;
    }
}
