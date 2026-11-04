package ua;

import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.ui.ActivityLaboratory;
import ha.pe;
import ha.wd;

/* loaded from: classes.dex */
public final class w3 implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16013a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityLaboratory f16014b;

    public /* synthetic */ w3(ActivityLaboratory activityLaboratory, int i10) {
        this.f16013a = i10;
        this.f16014b = activityLaboratory;
    }

    @Override // ha.wd
    public final void D() {
        ActivityLaboratory activityLaboratory = this.f16014b;
        switch (this.f16013a) {
            case 2:
                ActivityLaboratory.y(activityLaboratory, false);
                break;
            case 3:
                ActivityLaboratory.A(activityLaboratory, true);
                break;
            case 4:
                new mc.c(0, new ph.j(25, this)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.m6(10));
                break;
            case 5:
                try {
                    int i10 = ActivityLaboratory.I;
                    if (Settings.System.getInt(activityLaboratory.A.getContentResolver(), "screen_off_timeout") == -1) {
                        com.yunpan.appmanage.util.a0.w("您的系统没有问题，无需修改");
                        break;
                    }
                } catch (Exception unused) {
                }
                new mc.c(0, new y3(this)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.m6(11));
                break;
            case 6:
                ActivityLaboratory.z(activityLaboratory, true);
                break;
            case 7:
                try {
                    Intent intent = new Intent("android.intent.action.UNINSTALL_PACKAGE");
                    intent.setData(Uri.parse("package:" + activityLaboratory.getPackageName()));
                    activityLaboratory.startActivity(intent);
                    break;
                } catch (Exception unused2) {
                    com.yunpan.appmanage.util.a0.s("调用卸载程序出错", false);
                    return;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ha.wd
    public final void t() {
        boolean z = false;
        Object[] objArr = 0;
        ActivityLaboratory activityLaboratory = this.f16014b;
        switch (this.f16013a) {
            case 0:
                int i10 = ActivityLaboratory.I;
                activityLaboratory.getClass();
                if (!fa.g0.f5682a.f()) {
                    fa.b0.f5652a.getClass();
                    if (!a2.w0.P()) {
                        Toaster.show((CharSequence) "请先连接adb");
                        break;
                    } else {
                        new mc.c(0, new v0(15)).d(rc.f.f13757b).a(fc.b.a()).b(new x3(activityLaboratory, objArr == true ? 1 : 0));
                        break;
                    }
                } else {
                    com.yunpan.appmanage.util.a0.w("您是尊贵的root系统用户，用不着此功能哟");
                    break;
                }
            case 1:
                int i11 = ActivityLaboratory.I;
                new pe(activityLaboratory, activityLaboratory.A).show();
                break;
            case 2:
                ActivityLaboratory.y(activityLaboratory, true);
                break;
            case 3:
                ActivityLaboratory.A(activityLaboratory, false);
                break;
            case 4:
                break;
            case 5:
                int i12 = ActivityLaboratory.I;
                new ha.o1(activityLaboratory, activityLaboratory.A, new y3(this), 9).show();
                break;
            case 6:
                ActivityLaboratory.z(activityLaboratory, false);
                break;
            case 7:
                a2.w0 w0Var = fa.b0.f5652a;
                String packageName = activityLaboratory.getPackageName();
                w0Var.f347c = null;
                u9.d.f15554a.execute(new fa.s(w0Var, packageName, z, 2));
                break;
            default:
                int i13 = ActivityLaboratory.I;
                da.g gVar = activityLaboratory.A;
                new ha.z6(gVar, gVar, "再次询问您，真的要这么做？？？", "？？？？？？？？？？？？？？？？？？？？？", "取消", "我要开启分区检测", new i1(13, this)).show();
                break;
        }
    }

    private final void a() {
    }

    private final void b() {
    }

    private final void c() {
    }

    private final void d() {
    }
}
