package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.widget.TextView;
import com.yunpan.appmanage.ui.ActivityApps;
import java.io.File;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public final class m2 extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7390b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ o2 f7391c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m2(o2 o2Var, int i10) {
        super(28);
        this.f7390b = i10;
        this.f7391c = o2Var;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f7390b) {
            case 0:
                com.yunpan.appmanage.util.a0.t("" + th2.getMessage());
                break;
            default:
                com.yunpan.appmanage.util.a0.y("此应用不存在");
                this.f7391c.dismiss();
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        o2 o2Var = this.f7391c;
        switch (this.f7390b) {
            case 0:
                l5.y yVar = o2Var.f7509p;
                if (yVar != null) {
                    int i10 = o2Var.f7502g;
                    switch (yVar.f10628a) {
                        case 24:
                            break;
                        default:
                            ((ActivityApps) yVar.f10629b).F.C(i10);
                            break;
                    }
                }
                o2Var.dismiss();
                Context context = o2Var.f6725b;
                new z6((Activity) context, context, "删除成功！需重启方可消失", "", "立即重启", "稍后再说", new l2(0)).show();
                break;
            default:
                if (o2Var.f7505j != null) {
                    o2Var.f7510q = new File(o2Var.f7503h.apkPath).length();
                    if (Build.VERSION.SDK_INT >= 21 && o2Var.f7505j.splitNames != null && o2Var.f7505j.splitNames.length > 0) {
                        for (String str : o2Var.f7504i.splitPublicSourceDirs) {
                            double d10 = o2Var.f7510q;
                            double length = new File(str).length();
                            Double.isNaN(length);
                            o2Var.f7510q = d10 + length;
                        }
                    }
                    try {
                        for (File file : new File(o2Var.f6725b.getObbDir().getParentFile().getPath() + "/" + o2Var.f7503h.pack + "/").listFiles()) {
                            if (file.getName().endsWith(".obb")) {
                                double d11 = o2Var.f7510q;
                                double length2 = file.length();
                                Double.isNaN(length2);
                                o2Var.f7510q = d11 + length2;
                            }
                        }
                    } catch (Exception unused) {
                    }
                    TextView textView = o2Var.f7515x;
                    StringBuilder sb2 = new StringBuilder("uid:");
                    sb2.append(o2Var.f7504i.uid);
                    sb2.append("  ");
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                    sb2.append(com.yunpan.appmanage.util.k.f4034u0.format((o2Var.f7510q / 1024.0d) / 1024.0d));
                    sb2.append("M  v");
                    sb2.append(o2Var.f7505j.versionName);
                    textView.setText(sb2.toString());
                    String string = o2Var.f7505j.firstInstallTime != 0 ? "首次安装：" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(o2Var.f7505j.firstInstallTime)) : "首次安装：未知";
                    if (o2Var.f7505j.lastUpdateTime != 0) {
                        StringBuilder sbB = d0.f.b(string, "    最近更新：");
                        sbB.append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(o2Var.f7505j.lastUpdateTime)));
                        string = sbB.toString();
                    }
                    o2Var.f7516y.setText(string);
                    break;
                } else {
                    o2Var.f7515x.setText("");
                    o2Var.f7516y.setText("");
                    break;
                }
                break;
        }
    }
}
