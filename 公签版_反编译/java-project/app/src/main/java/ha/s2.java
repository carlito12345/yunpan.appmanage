package ha;

import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.bean.InputMethodBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.ui.ActivityAccessibility;
import com.yunpan.appmanage.ui.ActivityDesktop;
import com.yunpan.appmanage.ui.ActivityDownload;
import com.yunpan.appmanage.ui.ActivityOuShangWhitelist;
import com.yunpan.appmanage.ui.ActivityStudy;
import java.util.List;

/* loaded from: classes.dex */
public final class s2 extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7724b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7725c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f7726d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s2(int i10, int i11, Object obj) {
        super(28);
        this.f7724b = i11;
        this.f7726d = obj;
        this.f7725c = i10;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f7724b) {
            case 1:
                com.yunpan.appmanage.util.a0.t("" + th2.getMessage());
                break;
            case 3:
                com.yunpan.appmanage.util.a0.t("" + th2.getMessage());
                break;
            case 4:
                ((ActivityDownload) this.f7726d).P.setVisibility(8);
                com.yunpan.appmanage.util.a0.y(th2.getMessage() + "");
                break;
            case 5:
                com.yunpan.appmanage.util.a0.t("设置失败");
                break;
            case 6:
                fa.b0.f5652a.getClass();
                if (!a2.w0.P()) {
                    com.yunpan.appmanage.util.a0.y("修改失败，请先连接adb");
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.y("修改失败");
                    break;
                }
            case 7:
                ((ActivityStudy) this.f7726d).D.D(this.f7725c, new x9.l3(R.drawable.tp_root6, "搜索端口"));
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ha.l2, ec.e
    public void E(Object obj) {
        int i10 = this.f7725c;
        boolean z = false;
        Object[] objArr = 0;
        Object obj2 = this.f7726d;
        switch (this.f7724b) {
            case 0:
                List list = (List) obj;
                if (!list.isEmpty()) {
                    t2 t2Var = (t2) obj2;
                    new r2(t2Var.f6724a, t2Var.f6725b, list, new o(i10, 4, this)).show();
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.t("此应用没有启动页");
                    break;
                }
            case 2:
                if (obj != null && (obj instanceof x9.b)) {
                    ((ActivityAccessibility) obj2).D.D(i10, (x9.b) obj);
                    break;
                }
                break;
            case 3:
                ActivityDesktop activityDesktop = (ActivityDesktop) obj2;
                if (!(obj instanceof AppBean)) {
                    if (!(obj instanceof String)) {
                        activityDesktop.D.D(i10, (DesktopBean) obj);
                        break;
                    } else {
                        int i11 = ActivityDesktop.G;
                        new z6(activityDesktop, activityDesktop.A, "即将弹出系统桌面选择器，请选中你需要的桌面应用 \n然后点击【始终】即可设置为默认桌面！", "请务必设置一个默认桌面，并点击【始终】", "好的", "", new ua.i1(objArr == true ? 1 : 0, this)).show();
                        qf.c.Z(activityDesktop.A);
                        break;
                    }
                } else {
                    int i12 = ActivityDesktop.G;
                    da.g gVar = activityDesktop.A;
                    new z6(gVar, gVar, "检测到新的默认桌面并没有启动，请启动一下", "因为某些系统安装桌面应用后，如果没启动过的话，系统不会自动打开", "启动应用", "", new kf.d(26, this, obj, z)).show();
                    break;
                }
            case 4:
                ActivityDownload activityDownload = (ActivityDownload) obj2;
                if (!(obj instanceof ba.r)) {
                    activityDownload.S.E((List) obj);
                    if (activityDownload.S.b() > 0) {
                        activityDownload.D.smoothScrollToPositionWithOffset(0, 0, true);
                        break;
                    }
                } else {
                    activityDownload.D.setHasMoreData(((ba.r) obj).f2752o);
                    break;
                }
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f7724b) {
            case 5:
                Toaster.showLong((CharSequence) "设置中");
                break;
            case 7:
                ((ActivityStudy) this.f7726d).D.D(this.f7725c, new x9.l3(R.drawable.tp_root6, "正在搜索端口..."));
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        switch (this.f7724b) {
            case 1:
                ((ka.d) this.f7726d).f10228d.e(this.f7725c);
                Toaster.show((CharSequence) "设置成功");
                break;
            case 4:
                ActivityDownload activityDownload = (ActivityDownload) this.f7726d;
                activityDownload.P.setVisibility(8);
                int iB = activityDownload.R.b();
                while (true) {
                    iB--;
                    if (iB <= this.f7725c) {
                        break;
                    } else {
                        activityDownload.R.C(iB);
                    }
                }
            case 5:
                com.yunpan.appmanage.util.a0.w("设置成功");
                int i10 = 0;
                while (true) {
                    x9.p2 p2Var = (x9.p2) this.f7726d;
                    if (i10 >= p2Var.b()) {
                        p2Var.f2188a.b();
                        break;
                    } else {
                        ((InputMethodBean) p2Var.v().get(i10)).isDefault = i10 == this.f7725c;
                        i10++;
                    }
                }
            case 6:
                ((ActivityOuShangWhitelist) this.f7726d).E.C(this.f7725c);
                break;
            case 7:
                ((ActivityStudy) this.f7726d).D.D(this.f7725c, new x9.l3(R.drawable.tp_root6, "搜索端口"));
                break;
        }
    }

    private final void Y(Object obj) {
    }
}
