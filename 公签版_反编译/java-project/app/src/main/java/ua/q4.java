package ua;

import android.os.Build;
import android.text.Html;
import android.view.View;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaperX;
import ha.ja;
import java.util.Arrays;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final /* synthetic */ class q4 implements ec.d, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15900a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityNezhaWallpaperX f15901b;

    public /* synthetic */ q4(ActivityNezhaWallpaperX activityNezhaWallpaperX, int i10) {
        this.f15900a = i10;
        this.f15901b = activityNezhaWallpaperX;
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        String str;
        ActivityNezhaWallpaperX activityNezhaWallpaperX = this.f15901b;
        switch (this.f15900a) {
            case 0:
                int i10 = ActivityNezhaWallpaperX.N;
                activityNezhaWallpaperX.getClass();
                fa.b0.f5652a.getClass();
                fa.a0 a0VarH = a2.w0.h(Name.MARK);
                if (a0VarH.f5648a != 0) {
                    str = "出错：获取配置失败";
                } else if (a0VarH.a().contains("uid=0(")) {
                    if (a2.w0.h("ls -ls \"" + activityNezhaWallpaperX.L.getPath() + "\"").f5648a != 0) {
                        bVar.d(new Exception("无法查看目录：" + activityNezhaWallpaperX.L.getPath()));
                        break;
                    } else {
                        if (a2.w0.h("\\cp -R '" + activityNezhaWallpaperX.L.getPath() + "' '" + activityNezhaWallpaperX.M.getPath() + "'").f5648a != 0) {
                            str = "读取文件出错1，请重试";
                        } else {
                            String strN = "";
                            try {
                                strN = p000if.a.N(q4.a.J(activityNezhaWallpaperX.M), "<string name=\"all_app\">", "</string>", false);
                                if (Build.VERSION.SDK_INT >= 24) {
                                    strN = Html.fromHtml(strN, 0).toString();
                                }
                            } catch (Exception e7) {
                                e7.printStackTrace();
                            }
                            if (strN.isEmpty()) {
                                str = "读取文件出错2，请重试";
                            } else {
                                try {
                                    z7.s sVarG = d.b.b0(strN).g();
                                    activityNezhaWallpaperX.H = sVarG;
                                    activityNezhaWallpaperX.I = sVarG.p("application");
                                    for (int i11 = 0; i11 < activityNezhaWallpaperX.I.f19478a.size(); i11++) {
                                        String strV = android.support.v4.media.session.a.v(activityNezhaWallpaperX.I, i11, "package_name");
                                        AppBean appBeanK = android.support.v4.media.session.a.k(strV);
                                        if (appBeanK != null) {
                                            appBeanK.name = android.support.v4.media.session.a.v(activityNezhaWallpaperX.I, i11, "name");
                                        } else {
                                            appBeanK = new AppBean();
                                            appBeanK.pack = strV;
                                            appBeanK.name = android.support.v4.media.session.a.v(activityNezhaWallpaperX.I, i11, "name");
                                            appBeanK.isCanStart = true;
                                            appBeanK.isSystem = false;
                                            appBeanK.isHide = false;
                                            appBeanK.isDisable = false;
                                            appBeanK.isUnInstall = true;
                                        }
                                        activityNezhaWallpaperX.E.add(appBeanK);
                                    }
                                    bVar.b();
                                    break;
                                } catch (Exception unused) {
                                    str = "读取文件出错：格式错误";
                                }
                            }
                        }
                    }
                } else {
                    str = "无权限，请先提权";
                }
                android.support.v4.media.session.a.B(str, bVar);
                break;
            default:
                int i12 = ActivityNezhaWallpaperX.N;
                StringBuilder sb2 = new StringBuilder("<?xml version='1.0' encoding='utf-8' standalone='yes' ?><map><string name=\"all_app\">");
                activityNezhaWallpaperX.H.j("application", activityNezhaWallpaperX.I);
                sb2.append(activityNezhaWallpaperX.H.toString());
                sb2.append("</string></map>");
                q4.a.M(activityNezhaWallpaperX.M, sb2.toString());
                String str2 = "\\cp -R '" + activityNezhaWallpaperX.M.getPath() + "' '" + activityNezhaWallpaperX.L.getPath() + "'";
                fa.b0.f5652a.getClass();
                if (a2.w0.h(str2).f5648a != 0) {
                    android.support.v4.media.session.a.B("失败：写入文件出错", bVar);
                    break;
                } else {
                    a2.w0.h("kill -9 $(pidof com.android.systemui)");
                    a2.w0.h("kill -9 $(pidof com.hozonauto.netahome)");
                    bVar.b();
                    break;
                }
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = ActivityNezhaWallpaperX.N;
        ActivityNezhaWallpaperX activityNezhaWallpaperX = this.f15901b;
        activityNezhaWallpaperX.getClass();
        new ja(activityNezhaWallpaperX, activityNezhaWallpaperX, view, Arrays.asList("移除", "插入", "改名"), new ha.v1(activityNezhaWallpaperX, gVar, i10, 9)).show();
    }
}
