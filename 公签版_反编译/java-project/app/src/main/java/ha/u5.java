package ha;

import android.content.Context;
import android.os.Build;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.FileAttributeBean;
import com.yunpan.appmanage.db.ApkFileBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class u5 extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7859b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ v5 f7860c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u5(v5 v5Var, int i10) {
        super(28);
        this.f7859b = i10;
        this.f7860c = v5Var;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f7859b) {
            case 0:
                com.yunpan.appmanage.util.a0.y("查询属性失败");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void E(Object obj) {
        v5 v5Var = this.f7860c;
        switch (this.f7859b) {
            case 0:
                new q5(v5Var.f6724a, v5Var.f6725b, v5Var.f7915p, (FileAttributeBean) obj).show();
                v5Var.dismiss();
                break;
            default:
                ApkFileBean apkFileBean = (ApkFileBean) obj;
                Context context = v5Var.f6725b;
                com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(context);
                StringBuilder sb2 = new StringBuilder("file://");
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                sb2.append(kVar.z);
                sb2.append("apk_ico_cache/");
                sb2.append(apkFileBean.packageName);
                sb2.append("_");
                sb2.append(apkFileBean.lastModified);
                com.bumptech.glide.m mVarA = pVarF.u(sb2.toString()).a(w5.e.z(new o5.x(8)));
                int i10 = kVar.R;
                ((com.bumptech.glide.m) mVarA.o(i10, i10)).D(v5Var.f7909h);
                v5Var.f7908g.setVisibility(0);
                long j10 = apkFileBean.versionCode;
                int i11 = apkFileBean.minSdk;
                x9.k5 k5Var = new x9.k5("名称", apkFileBean.apkName, false);
                x9.h hVar = v5Var.f7912k;
                hVar.q(k5Var);
                hVar.q(new x9.k5("包名", apkFileBean.packageName, false));
                hVar.q(new x9.k5("代号", apkFileBean.versionName, false));
                hVar.q(new x9.k5("版本", j10 + "", false));
                if (i11 > 0) {
                    hVar.q(new x9.k5("适配", "android " + p000if.a.w0(i11) + " 以上", false));
                }
                v5Var.f7910i.setText("未安装");
                if (i11 <= 0 || i11 <= Build.VERSION.SDK_INT) {
                    AppBean appBean = MyDb.get().getAppDao().get_appBean(apkFileBean.packageName);
                    if (appBean == null && apkFileBean.packageName.equals(kVar.f4041d)) {
                        try {
                            appBean = new AppBean(kVar.f4037b.getApplicationInfo(kVar.f4041d, 0));
                        } catch (Exception unused) {
                        }
                    }
                    if (appBean != null) {
                        try {
                            long j11 = context.getPackageManager().getPackageInfo(apkFileBean.packageName, 8192).versionCode;
                            if (j10 == j11) {
                                if (com.yunpan.appmanage.util.a0.p(new File(appBean.apkPath)) == 0 || com.yunpan.appmanage.util.a0.p(new File(v5Var.f7915p.f18365b)) == com.yunpan.appmanage.util.a0.p(new File(appBean.apkPath))) {
                                    v5Var.f7910i.setText("已安装");
                                    v5Var.f7910i.setTextColor(-16711936);
                                    v5Var.f7913m.D(0, new x9.l3(R.drawable.tp_install, "重装"));
                                    v5Var.r = appBean;
                                } else {
                                    v5Var.f7910i.setText("不同版本");
                                }
                            } else if (j11 < j10) {
                                v5Var.f7910i.setText("新版本");
                                v5Var.f7910i.setTextColor(-256);
                            } else {
                                v5Var.f7910i.setText("旧版本");
                                v5Var.f7910i.setTextColor(-16711681);
                            }
                        } catch (Exception unused2) {
                        }
                    }
                } else {
                    v5Var.f7910i.setText("不兼容");
                    v5Var.f7910i.setTextColor(-65536);
                }
                String str = apkFileBean.abi;
                if (str.isEmpty() && !v5Var.f7915p.f18364a.endsWith(".gj")) {
                    String lowerCase = v5Var.f7915p.f18365b.toLowerCase();
                    if ((lowerCase.endsWith(".apk") || lowerCase.endsWith(".apk.1")) && v5Var.f7915p.f18367d < 314572800) {
                        new mc.c(0, new ma.a(new File(v5Var.f7915p.f18365b), 1)).d(rc.f.f13757b).a(fc.b.a()).b(new h3(v5Var, 2, apkFileBean));
                        break;
                    }
                } else {
                    v5Var.a(str);
                    break;
                }
                break;
        }
    }
}
