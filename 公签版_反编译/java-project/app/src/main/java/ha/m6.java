package ha;

import com.hjq.toast.Toaster;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class m6 extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7412b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m6(int i10) {
        super(28);
        this.f7412b = i10;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f7412b) {
            case 2:
                String str = th2.getMessage() + "";
                if (str.trim().isEmpty()) {
                    str = "修改失败";
                }
                com.yunpan.appmanage.util.a0.s(str, false);
                break;
            case 3:
                com.yunpan.appmanage.util.a0.s(th2.getMessage(), false);
                break;
            case 4:
                com.yunpan.appmanage.util.a0.u("设置失败");
                break;
            case 6:
                com.yunpan.appmanage.util.a0.t("修改失败");
                break;
            case 7:
                com.yunpan.appmanage.util.a0.t("修改失败");
                break;
            case 9:
                com.yunpan.appmanage.util.a0.t("" + th2.getMessage());
                break;
            case 10:
                com.yunpan.appmanage.util.a0.w("" + th2.getMessage());
                break;
            case 11:
                com.yunpan.appmanage.util.a0.w("" + th2.getMessage());
                break;
            case 12:
                com.yunpan.appmanage.util.a0.w("" + th2.getMessage());
                break;
            case 13:
                Toaster.show((CharSequence) "修改失败，无权限！");
                break;
            case 14:
                com.yunpan.appmanage.util.a0.w("" + th2.getMessage());
                break;
            case 15:
                com.yunpan.appmanage.util.a0.t(String.valueOf(th2.getMessage()));
                break;
            case 16:
                com.yunpan.appmanage.util.a0.t(String.valueOf(th2.getMessage()));
                break;
            case 17:
                com.yunpan.appmanage.util.a0.t(String.valueOf(th2.getMessage()));
                break;
            case 18:
                com.yunpan.appmanage.util.a0.t(String.valueOf(th2.getMessage()));
                break;
            case 19:
                com.yunpan.appmanage.util.a0.t(String.valueOf(th2.getMessage()));
                break;
            case 20:
                com.yunpan.appmanage.util.a0.t(String.valueOf(th2.getMessage()));
                break;
            case 21:
                com.yunpan.appmanage.util.a0.t(String.valueOf(th2.getMessage()));
                break;
            case 22:
                com.yunpan.appmanage.util.a0.t(String.valueOf(th2.getMessage()));
                break;
            case 23:
                com.yunpan.appmanage.util.a0.t(String.valueOf(th2.getMessage()));
                break;
            case 24:
                com.yunpan.appmanage.util.a0.s("修改失败：" + th2.getMessage(), false);
                break;
            case 25:
                com.yunpan.appmanage.util.a0.s("修改失败：" + th2.getMessage(), false);
                break;
            case 26:
                com.yunpan.appmanage.util.a0.t("获取分享地址失败");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f7412b) {
            case 26:
                String str = (String) obj;
                if (!str.startsWith("http")) {
                    com.yunpan.appmanage.util.a0.t("获取分享地址失败");
                    break;
                } else {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.j.f4033a.c(str);
                    Toaster.show((CharSequence) "已复制\n".concat(str));
                    break;
                }
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f7412b) {
            case 2:
                Toaster.showLong((CharSequence) "执行中");
                break;
            case 3:
                Toaster.showLong((CharSequence) "激活中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        switch (this.f7412b) {
            case 2:
                com.yunpan.appmanage.util.a0.w("赋权完成");
                break;
            case 3:
                com.yunpan.appmanage.util.a0.w("激活完成");
                break;
            case 4:
                com.yunpan.appmanage.util.a0.w("设置成功，请重新打开");
                break;
            case 10:
                kh.e.b().f("关闭应用");
                break;
            case 11:
                com.yunpan.appmanage.util.a0.w("设置成功");
                break;
            case 12:
                com.yunpan.appmanage.util.a0.w("设置成功");
                break;
            case 13:
                com.yunpan.appmanage.util.a0.w("修改成功");
                break;
            case 14:
                com.yunpan.appmanage.util.a0.w("已修复");
                break;
            case 17:
                com.yunpan.appmanage.util.a0.w("可正常授权");
                break;
            case 18:
                com.yunpan.appmanage.util.a0.w("可正常授权");
                break;
            case 19:
                com.yunpan.appmanage.util.a0.w("可正常授权");
                break;
            case 20:
                com.yunpan.appmanage.util.a0.w("可正常授权");
                break;
            case 24:
                com.yunpan.appmanage.util.a0.v("修改成功", true);
                break;
            case 25:
                com.yunpan.appmanage.util.a0.v("修改成功", true);
                break;
        }
    }

    private final void Y() {
    }

    private final void Z() {
    }

    private final void a0() {
    }

    private final void b0() {
    }
}
