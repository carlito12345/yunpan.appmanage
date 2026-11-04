package ha;

import android.app.Activity;
import android.content.Context;
import android.widget.EditText;
import android.widget.TextView;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.bean.LogcatBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.db.ApkFileBean;
import com.yunpan.appmanage.ui.ActivityAdb;
import com.yunpan.appmanage.ui.ActivityDownload;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcat;
import com.yunpan.appmanage.ui.ActivityOuShangStatusBar;
import com.yunpan.appmanage.ui.ActivityOuShangStatusBarNoRoot;
import com.yunpan.appmanage.ui.ActivityOuShangWhitelist;
import com.yunpan.appmanage.ui.ActivityShell;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class h3 extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7141b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7142c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f7143d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h3(Object obj, int i10, Object obj2) {
        super(28);
        this.f7141b = i10;
        this.f7143d = obj;
        this.f7142c = obj2;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f7141b) {
            case 0:
                com.yunpan.appmanage.util.a0.t("无法获取本机音频文件");
                break;
            case 1:
                com.yunpan.appmanage.util.a0.t("无法获取本机音频文件");
                break;
            case 6:
                com.yunpan.appmanage.util.a0.t("无法获取本机apk文件");
                break;
            case 7:
                String str = "执行报错：" + th2.getMessage() + SignParameters.NEW_LINE;
                StringBuffer stringBuffer = (StringBuffer) this.f7142c;
                stringBuffer.append(str);
                d2 d2Var = (d2) this.f7143d;
                ((EditText) d2Var.f6882i).setText(stringBuffer.toString());
                ((TextView) d2Var.f6881h).setText("执行");
                break;
            case 8:
                com.yunpan.appmanage.util.a0.y("" + th2.getMessage());
                break;
            case 10:
                ActivityDownload activityDownload = (ActivityDownload) this.f7143d;
                activityDownload.G.setVisibility(8);
                activityDownload.D.finishLoadMore();
                com.yunpan.appmanage.util.a0.y(th2.getMessage() + "");
                ba.r rVar = (ba.r) this.f7142c;
                rVar.f2751n = rVar.f2751n + (-1);
                break;
            case 12:
                com.yunpan.appmanage.util.a0.t("无法获取json文件");
                break;
            case 13:
                com.yunpan.appmanage.util.a0.s(String.valueOf(th2.getMessage()), false);
                break;
            case 14:
                com.yunpan.appmanage.util.a0.s(String.valueOf(th2.getMessage()), false);
                break;
            case 15:
                com.yunpan.appmanage.util.a0.z("获取失败，请确保是欧尚车机", false);
                break;
            case 17:
                ua.q8 q8Var = (ua.q8) this.f7143d;
                StringBuilder sbR = l2.z.r(q8Var.f15908g, "");
                sbR.append(th2.getMessage());
                String string = sbR.toString();
                if (!string.equals("需要密码") && !string.equals("密码错误")) {
                    com.yunpan.appmanage.util.a0.t(string);
                    break;
                } else {
                    if (string.equals("密码错误")) {
                        com.yunpan.appmanage.util.a0.s("密码错误请重新输入", false);
                    }
                    new o1(q8Var.f4529e, new ua.i1(24, this)).show();
                    break;
                }
                break;
            case 18:
                StringBuilder sbR2 = l2.z.r(((ua.q8) this.f7143d).f15908g, "");
                sbR2.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.s(sbR2.toString(), false);
                break;
            case 19:
                StringBuilder sbR3 = l2.z.r(((ua.i9) this.f7143d).f15744h, "");
                sbR3.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.s(sbR3.toString(), false);
                break;
            case 20:
                ua.i9 i9Var = (ua.i9) this.f7143d;
                i9Var.I.setVisibility(8);
                x9.n5 n5Var = (x9.n5) this.f7142c;
                int i10 = n5Var.f18290a;
                if (i10 != 1 && i10 != 20) {
                    if (i10 != 2) {
                        if (i10 != 21) {
                            if (i10 != 4 && i10 != 5) {
                                if (i10 != 6) {
                                    if (i10 != 3) {
                                        if (i10 == 7) {
                                            Toaster.show((CharSequence) "连接失败，请重新连接");
                                            new se(i9Var.f4530f, i9Var.f4529e, n5Var, new ua.h9(this, n5Var, 6)).show();
                                            break;
                                        }
                                    } else {
                                        Toaster.show((CharSequence) "连接失败，请重新连接");
                                        new s5(i9Var.f4530f, i9Var.f4529e, n5Var, (oc) new ua.h9(this, n5Var, 5)).show();
                                        break;
                                    }
                                } else {
                                    Toaster.show((CharSequence) "连接失败，请重新连接");
                                    new w(i9Var.f4530f, i9Var.f4529e, n5Var, new ua.h9(this, n5Var, 4)).show();
                                    break;
                                }
                            } else {
                                Toaster.show((CharSequence) "连接失败，请重新连接");
                                new s5(i9Var.f4530f, i9Var.f4529e, n5Var, (i6) new ua.h9(this, n5Var, 3)).show();
                                break;
                            }
                        } else {
                            Toaster.show((CharSequence) "登录失败，请重新登录");
                            new bf(i9Var.f4530f, i9Var.f4529e, n5Var, new ua.h9(this, n5Var, 2), 0).show();
                            break;
                        }
                    } else {
                        Toaster.show((CharSequence) "登录失败，请重新登录");
                        new bf(i9Var.f4530f, i9Var.f4529e, n5Var, new ua.h9(this, n5Var, 1), 1).show();
                        break;
                    }
                } else {
                    Toaster.show((CharSequence) "登录失败，请重新登录");
                    new ye(i9Var.f4530f, i9Var.f4529e, n5Var, new ua.h9(this, n5Var, 0)).show();
                    break;
                }
                break;
            case 21:
                com.yunpan.appmanage.util.a0.y("" + th2.getMessage());
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        String str = "";
        Object obj2 = this.f7142c;
        Object obj3 = this.f7143d;
        switch (this.f7141b) {
            case 2:
                String str2 = (String) obj;
                ((v5) obj3).a(str2);
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.j.f4033a.f4048g0.submit(new a2.e0(this, (ApkFileBean) obj2, str2, 9));
                break;
            case 3:
                if (obj instanceof String) {
                    ArrayList arrayList = (ArrayList) obj2;
                    arrayList.add((String) obj);
                    ((TextView) obj3).setText("日志数量：" + arrayList.size());
                    break;
                }
                break;
            case 4:
                com.yunpan.appmanage.carsdk.u uVar = (com.yunpan.appmanage.carsdk.u) obj3;
                TextView textView = ((ba) uVar.f3894b).f6813k;
                StringBuilder sb2 = new StringBuilder();
                ba baVar = (ba) uVar.f3894b;
                sb2.append(baVar.f6815n.size());
                sb2.append("");
                textView.setText(sb2.toString());
                baVar.f6811i.E(baVar.f6815n);
                if (!baVar.f6815n.isEmpty()) {
                    baVar.f6810h.setScrollY(0);
                    break;
                }
                break;
            case 5:
                if (obj instanceof LogcatBean) {
                    ba baVar2 = (ba) obj3;
                    baVar2.f6815n.add((LogcatBean) obj);
                    ((TextView) obj2).setText("日志数量：" + baVar2.f6815n.size());
                    break;
                }
                break;
            case 9:
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                if (kVar.f4053j && !kVar.f4055k) {
                    str = "如果无效，建议安装：公签UID版，来尝试";
                }
                String str3 = str;
                int i10 = ActivityAdb.G;
                ActivityAdb activityAdb = (ActivityAdb) obj3;
                new z6(activityAdb, activityAdb.A, "当前状态：".concat(((Boolean) obj).booleanValue() ? "已开启" : "已关闭"), str3, "开启无线adb", "关闭无线adb", new l5.y(23, this)).show();
                break;
            case 10:
                ((ActivityDownload) obj3).S.r((List) obj);
                break;
            case 17:
                ua.q8 q8Var = (ua.q8) obj3;
                if (!(obj instanceof za.a)) {
                    if (obj instanceof String) {
                        q8Var.f15908g.b(obj.toString());
                        break;
                    }
                } else {
                    q8Var.f15908g.b(((za.a) obj).f19515c);
                    break;
                }
                break;
            case 18:
                ua.q8 q8Var2 = (ua.q8) obj3;
                if (!(obj instanceof za.a)) {
                    q8Var2.f15908g.b((String) obj);
                    break;
                } else {
                    q8Var2.f15908g.b(((za.a) obj).f19515c);
                    break;
                }
            case 19:
                ua.i9 i9Var = (ua.i9) obj3;
                if (!(obj instanceof za.a)) {
                    i9Var.f15744h.b((String) obj);
                    break;
                } else {
                    i9Var.f15744h.b(((za.a) obj).f19515c);
                    break;
                }
            case 20:
                com.yunpan.appmanage.util.e0.f4012a.h(((ua.i9) obj3).T, (x9.n5) obj2);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f7141b) {
            case 7:
                d2 d2Var = (d2) this.f7143d;
                ((TextView) d2Var.f6881h).setText("等待");
                StringBuffer stringBuffer = (StringBuffer) this.f7142c;
                stringBuffer.append("执行中...\n");
                ((EditText) d2Var.f6882i).setText(stringBuffer.toString());
                break;
            case 17:
                ((ua.q8) this.f7143d).f15908g.c("解压中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        int i10 = 8;
        int i11 = 3;
        Object obj = this.f7142c;
        Object obj2 = this.f7143d;
        switch (this.f7141b) {
            case 0:
                ArrayList arrayList = (ArrayList) obj;
                if (!arrayList.isEmpty()) {
                    Context context = ((j3) obj2).f6725b;
                    new b6((Activity) context, context, arrayList, new a1.d(13, this)).show();
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.t("没有音频文件");
                    break;
                }
            case 1:
                ArrayList arrayList2 = (ArrayList) obj;
                if (!arrayList2.isEmpty()) {
                    Context context2 = ((r3) obj2).f6725b;
                    new b6((Activity) context2, context2, arrayList2, new a1.d(14, this)).show();
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.t("没有音频文件");
                    break;
                }
            case 4:
                com.yunpan.appmanage.carsdk.u uVar = (com.yunpan.appmanage.carsdk.u) obj2;
                TextView textView = ((ba) uVar.f3894b).f6813k;
                StringBuilder sb2 = new StringBuilder();
                ArrayList arrayList3 = (ArrayList) obj;
                sb2.append(arrayList3.size());
                sb2.append("");
                textView.setText(sb2.toString());
                ba baVar = (ba) uVar.f3894b;
                baVar.f6811i.E(arrayList3);
                if (!arrayList3.isEmpty()) {
                    baVar.f6810h.setScrollY(0);
                    break;
                }
                break;
            case 6:
                sa saVar = (sa) obj2;
                new b6(saVar.f6724a, saVar.f6725b, (ArrayList) obj, new p7(i10, this)).show();
                break;
            case 7:
                d2 d2Var = (d2) obj2;
                ((EditText) d2Var.f6882i).setText(((StringBuffer) obj).toString());
                ((TextView) d2Var.f6881h).setText("执行");
                break;
            case 8:
                ff ffVar = (ff) obj2;
                ffVar.b("", 0, false);
                Toaster.show((CharSequence) "新建成功");
                ffVar.f7065k.p(0, (WpPathBean) obj);
                ffVar.f7064j.setSelectionWithSmooth(0);
                ffVar.f7064j.setSelection(0);
                ffVar.f7064j.requestFocus();
                break;
            case 10:
                ActivityDownload activityDownload = (ActivityDownload) obj2;
                activityDownload.G.setVisibility(8);
                ba.r rVar = (ba.r) obj;
                activityDownload.D.setHasMoreData(rVar.f2752o);
                if (!rVar.f2752o) {
                    activityDownload.D.finishLoadMoreWithNoMore();
                    break;
                } else {
                    activityDownload.D.finishLoadMore();
                    break;
                }
            case 11:
                ((x9.p2) obj2).E((ArrayList) obj);
                break;
            case 12:
                ActivityKeyMapLogcat activityKeyMapLogcat = (ActivityKeyMapLogcat) obj2;
                new b6(activityKeyMapLogcat, activityKeyMapLogcat, (ArrayList) obj, new ph.j(23, this)).show();
                break;
            case 13:
                ((ActivityOuShangStatusBar) obj2).D.E((ArrayList) obj);
                break;
            case 14:
                ((ActivityOuShangStatusBarNoRoot) obj2).D.E((ArrayList) obj);
                break;
            case 15:
                ((ActivityOuShangWhitelist) obj2).E.E((ArrayList) obj);
                break;
            case 16:
                int i12 = ActivityShell.M;
                ActivityShell activityShell = (ActivityShell) obj2;
                da.g gVar = activityShell.A;
                activityShell.H = new lc(gVar, gVar, (ArrayList) obj, new ua.g5(i11, this));
                break;
            case 17:
                ua.q8 q8Var = (ua.q8) obj2;
                q8Var.f15908g.a();
                com.yunpan.appmanage.util.a0.v("解压完成", true);
                String str = (String) obj;
                q8Var.f15914n.p(0, new x9.w3(str));
                q8Var.f15913m.setSelection(0);
                if (ua.q8.w(str)) {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.j.f4033a.f4046f0.submit(new com.yunpan.appmanage.util.z(new File(str)));
                    break;
                }
                break;
            case 18:
                ua.q8 q8Var2 = (ua.q8) obj2;
                q8Var2.f15908g.a();
                com.yunpan.appmanage.util.a0.v("压缩打包完成", false);
                q8Var2.f15914n.p(0, new x9.w3((File) obj));
                q8Var2.f15913m.setSelection(0);
                break;
            case 19:
                ua.i9 i9Var = (ua.i9) obj2;
                i9Var.f15744h.a();
                com.yunpan.appmanage.util.a0.v("压缩打包完成", false);
                i9Var.z.p(0, new x9.w3((File) obj));
                i9Var.f15757y.setSelection(0);
                break;
            case 20:
                ua.i9 i9Var2 = (ua.i9) obj2;
                x9.n5 n5Var = (x9.n5) obj;
                com.yunpan.appmanage.util.e0.f4012a.h(i9Var2.T, n5Var);
                int i13 = n5Var.f18290a;
                if (i13 == 1) {
                    i9Var2.f15749n.q(new WpPathBean(n5Var.f18291b, "-1"));
                } else if (i13 == 2) {
                    i9Var2.f15749n.q(new WpPathBean(n5Var.f18291b, "0"));
                } else if (i13 == 3) {
                    i9Var2.f15749n.q(new WpPathBean(n5Var.f18291b, ""));
                } else if (i13 == 4 || i13 == 5 || i13 == 6) {
                    i9Var2.f15749n.q(new WpPathBean(n5Var.f18291b, "/"));
                } else if (i13 == 7) {
                    i9Var2.f15749n.q(new WpPathBean(n5Var.f18291b, n5Var.f18292c));
                } else if (i13 == 20) {
                    i9Var2.f15749n.q(new WpPathBean(n5Var.f18291b, "0"));
                } else if (i13 == 21) {
                    i9Var2.f15749n.q(new WpPathBean(n5Var.f18291b, ""));
                }
                i9Var2.z(false);
                break;
            case 21:
                ua.i9 i9Var3 = (ua.i9) obj2;
                i9Var3.u("", 0, false);
                int i14 = 0;
                while (true) {
                    WpPathBean wpPathBean = (WpPathBean) obj;
                    if (i14 >= i9Var3.f15751q.b()) {
                        Toaster.show((CharSequence) "新建成功");
                        i9Var3.f15751q.p(0, wpPathBean);
                        i9Var3.f15750p.setSelectionWithSmooth(0);
                        i9Var3.f15750p.setSelection(0);
                        i9Var3.f15750p.requestFocus();
                        break;
                    } else {
                        WpPathBean wpPathBean2 = (WpPathBean) i9Var3.f15751q.t(i14);
                        if (wpPathBean2.is_dir == wpPathBean.is_dir && wpPathBean2.name.equals(wpPathBean.name) && wpPathBean2.path.equals(wpPathBean.path)) {
                            i9Var3.f15750p.setSelectionWithSmooth(i14);
                            i9Var3.f15750p.setSelection(i14);
                            i9Var3.f15750p.requestFocus();
                            Toaster.show((CharSequence) "目录已存在");
                            break;
                        } else {
                            i14++;
                        }
                    }
                }
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h3(ArrayList arrayList, TextView textView) {
        super(28);
        this.f7141b = 3;
        this.f7142c = arrayList;
        this.f7143d = textView;
    }
}
