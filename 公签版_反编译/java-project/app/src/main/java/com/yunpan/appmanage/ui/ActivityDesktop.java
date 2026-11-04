package com.yunpan.appmanage.ui;

import a2.w0;
import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import c6.e;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.ui.ActivityDesktop;
import da.g;
import fa.b0;
import fc.b;
import ha.fa;
import java.util.ArrayList;
import mc.c;
import rc.f;
import ua.j1;
import ua.v0;
import x9.k1;
import x9.m0;

/* loaded from: classes.dex */
public class ActivityDesktop extends g {
    public static final /* synthetic */ int G = 0;
    public RecyclerView C;
    public k1 D;
    public RecyclerView E;
    public m0 F;

    @Override // da.g
    public final int t() {
        return R.layout.activity_desktop;
    }

    @Override // da.g
    public final void u() {
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list_gn);
        this.E = recyclerView;
        recyclerView.setLayoutManager(new GridLayoutManager(2));
        m0 m0Var = new m0();
        this.F = m0Var;
        m0Var.q("选择默认桌面");
        this.F.q("设置默认应用");
        this.F.q("刷新");
        this.F.q("返回");
        this.F.q("设置默认桌面");
        this.E.setAdapter(this.F);
        final int i10 = 0;
        this.F.f2881e = new e(this) { // from class: ua.h1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityDesktop f15709b;

            {
                this.f15709b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i11) {
                switch (i10) {
                    case 0:
                        int i12 = ActivityDesktop.G;
                        ActivityDesktop activityDesktop = this.f15709b;
                        if (i11 == 0) {
                            if (qf.c.r(activityDesktop.A).size() < 2) {
                                Toaster.show((CharSequence) "只有一个桌面应用，无需设置");
                                break;
                            } else {
                                new ha.z6(activityDesktop, activityDesktop, "即将弹出系统桌面选择器，请选中你需要的桌面应用 \n然后点击【始终】即可设置为默认桌面！", "如果不能点始终，就重新点击本按钮", "好的", "", new l5.y(29, activityDesktop)).show();
                                break;
                            }
                        } else if (i11 != 1) {
                            if (i11 == 2) {
                                activityDesktop.x();
                                break;
                            } else if (i11 == 3) {
                                activityDesktop.finish();
                                break;
                            } else {
                                activityDesktop.getClass();
                                if (i11 == 4) {
                                    ArrayList arrayList = new ArrayList();
                                    ArrayList arrayList2 = new ArrayList();
                                    for (int i13 = 0; i13 < activityDesktop.D.b(); i13++) {
                                        DesktopBean desktopBean = (DesktopBean) activityDesktop.D.t(i13);
                                        if (!desktopBean.isDefaultDesktop && !desktopBean.isDisable && !desktopBean.isHide && !desktopBean.isUninstall) {
                                            arrayList2.add(desktopBean);
                                            arrayList.add(desktopBean.name);
                                        }
                                    }
                                    if (arrayList2.isEmpty()) {
                                        com.yunpan.appmanage.util.a0.t("没有可设置桌面的应用");
                                        break;
                                    } else {
                                        new fa(activityDesktop, activityDesktop, null, arrayList, new ma.b(activityDesktop, 9, arrayList2)).show();
                                        break;
                                    }
                                }
                            }
                        } else if (!p000if.a.d0(activityDesktop.A, new Intent("android.settings.MANAGE_DEFAULT_APPS_SETTINGS"))) {
                            com.yunpan.appmanage.util.a0.t("此设备不支持此功能");
                            break;
                        } else {
                            try {
                                Intent intent = new Intent("android.settings.MANAGE_DEFAULT_APPS_SETTINGS");
                                intent.addFlags(268435456);
                                activityDesktop.A.startActivity(intent);
                                break;
                            } catch (Exception unused) {
                                com.yunpan.appmanage.util.a0.t("此设备不支持");
                                return;
                            }
                        }
                        break;
                    default:
                        int i14 = ActivityDesktop.G;
                        ActivityDesktop activityDesktop2 = this.f15709b;
                        activityDesktop2.getClass();
                        new mc.c(0, new ha.o(i11, 10, activityDesktop2)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.s2(i11, 3, activityDesktop2));
                        break;
                }
            }
        };
        RecyclerView recyclerView2 = (RecyclerView) findViewById(R.id.v_list);
        this.C = recyclerView2;
        final int i11 = 1;
        recyclerView2.setLayoutManager(new LinearLayoutManager(1, false));
        k1 k1Var = new k1(this);
        this.D = k1Var;
        this.C.setAdapter(k1Var);
        this.D.f2881e = new e(this) { // from class: ua.h1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityDesktop f15709b;

            {
                this.f15709b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i112) {
                switch (i11) {
                    case 0:
                        int i12 = ActivityDesktop.G;
                        ActivityDesktop activityDesktop = this.f15709b;
                        if (i112 == 0) {
                            if (qf.c.r(activityDesktop.A).size() < 2) {
                                Toaster.show((CharSequence) "只有一个桌面应用，无需设置");
                                break;
                            } else {
                                new ha.z6(activityDesktop, activityDesktop, "即将弹出系统桌面选择器，请选中你需要的桌面应用 \n然后点击【始终】即可设置为默认桌面！", "如果不能点始终，就重新点击本按钮", "好的", "", new l5.y(29, activityDesktop)).show();
                                break;
                            }
                        } else if (i112 != 1) {
                            if (i112 == 2) {
                                activityDesktop.x();
                                break;
                            } else if (i112 == 3) {
                                activityDesktop.finish();
                                break;
                            } else {
                                activityDesktop.getClass();
                                if (i112 == 4) {
                                    ArrayList arrayList = new ArrayList();
                                    ArrayList arrayList2 = new ArrayList();
                                    for (int i13 = 0; i13 < activityDesktop.D.b(); i13++) {
                                        DesktopBean desktopBean = (DesktopBean) activityDesktop.D.t(i13);
                                        if (!desktopBean.isDefaultDesktop && !desktopBean.isDisable && !desktopBean.isHide && !desktopBean.isUninstall) {
                                            arrayList2.add(desktopBean);
                                            arrayList.add(desktopBean.name);
                                        }
                                    }
                                    if (arrayList2.isEmpty()) {
                                        com.yunpan.appmanage.util.a0.t("没有可设置桌面的应用");
                                        break;
                                    } else {
                                        new fa(activityDesktop, activityDesktop, null, arrayList, new ma.b(activityDesktop, 9, arrayList2)).show();
                                        break;
                                    }
                                }
                            }
                        } else if (!p000if.a.d0(activityDesktop.A, new Intent("android.settings.MANAGE_DEFAULT_APPS_SETTINGS"))) {
                            com.yunpan.appmanage.util.a0.t("此设备不支持此功能");
                            break;
                        } else {
                            try {
                                Intent intent = new Intent("android.settings.MANAGE_DEFAULT_APPS_SETTINGS");
                                intent.addFlags(268435456);
                                activityDesktop.A.startActivity(intent);
                                break;
                            } catch (Exception unused) {
                                com.yunpan.appmanage.util.a0.t("此设备不支持");
                                return;
                            }
                        }
                        break;
                    default:
                        int i14 = ActivityDesktop.G;
                        ActivityDesktop activityDesktop2 = this.f15709b;
                        activityDesktop2.getClass();
                        new mc.c(0, new ha.o(i112, 10, activityDesktop2)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.s2(i112, 3, activityDesktop2));
                        break;
                }
            }
        };
        x();
    }

    public final void x() {
        new c(0, new v0(4)).d(f.f13757b).a(b.a()).b(new j1(this, 0));
    }

    public final void y(int i10, boolean z) {
        DesktopBean desktopBean = (DesktopBean) this.D.t(i10);
        if (desktopBean.isDisable || z) {
            w0 w0Var = b0.f5652a;
            String str = desktopBean.packageName;
            w0Var.getClass();
            w0.V(str, z);
            return;
        }
        if (desktopBean.isUninstall) {
            w0 w0Var2 = b0.f5652a;
            String str2 = desktopBean.packageName;
            w0Var2.getClass();
            w0.X(str2);
            return;
        }
        if (!desktopBean.isHide) {
            throw new Exception("出错：怎么会呢？？？");
        }
        w0 w0Var3 = b0.f5652a;
        String str3 = desktopBean.packageName;
        w0Var3.getClass();
        w0.W(str3, false);
    }
}
