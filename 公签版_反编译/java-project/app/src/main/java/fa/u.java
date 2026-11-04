package fa;

import a2.w0;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final /* synthetic */ class u implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5755a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w0 f5756b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f5757c;

    public /* synthetic */ u(w0 w0Var, String str, int i10) {
        this.f5755a = i10;
        this.f5756b = w0Var;
        this.f5757c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = "";
        String str2 = this.f5757c;
        w0 w0Var = this.f5756b;
        switch (this.f5755a) {
            case 0:
                w0Var.getClass();
                String strF = w0.f(str2);
                if (!strF.equals("清理成功")) {
                    w0Var.e0(101, strF);
                    break;
                } else {
                    w0Var.e0(100, strF);
                    break;
                }
            case 1:
                w0Var.getClass();
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                w0Var.e0(666, w0.Y(com.yunpan.appmanage.util.j.f4033a.f4060n, str2));
                break;
            case 2:
                w0Var.getClass();
                String strU = w0.U(str2);
                if (!strU.equals("清理成功")) {
                    w0Var.e0(101, strU);
                    break;
                } else {
                    w0Var.e0(100, "清理成功");
                    break;
                }
            case 3:
                w0Var.getClass();
                w0.B("/data/data/" + str2);
                StringBuilder sb2 = new StringBuilder("/data/user/");
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                sb2.append(kVar.f4060n);
                sb2.append("/");
                sb2.append(str2);
                w0.B(sb2.toString());
                w0.B("/data/user_de/" + kVar.f4060n + "/" + str2);
                w0.B("/data/media/" + kVar.f4060n + "/Android/data/" + str2);
                w0.B("/data/media/" + kVar.f4060n + "/Android/obb/" + str2);
                w0.B("/data/media/" + kVar.f4060n + "/Android/media/" + str2);
                if (!kVar.f4069s.isEmpty()) {
                    str = new File(kVar.f4069s).getParentFile().getParentFile() + "/" + str2;
                }
                if (!str.isEmpty()) {
                    w0.B(str);
                }
                w0Var.e0(100, "删除成功");
                break;
            case 4:
                w0Var.getClass();
                String strB = w0.B(str2);
                if (!strB.equals("删除成功")) {
                    w0Var.e0(101, strB);
                    break;
                } else {
                    w0Var.e0(100, "删除成功");
                    break;
                }
            case 5:
                w0Var.getClass();
                try {
                    w0.X(str2);
                    w0Var.e0(100, "恢复成功");
                    break;
                } catch (Exception e7) {
                    w0Var.e0(101, "" + e7.getMessage());
                    return;
                }
            default:
                w0Var.getClass();
                w0Var.e0(777, w0.h(str2));
                break;
        }
    }
}
