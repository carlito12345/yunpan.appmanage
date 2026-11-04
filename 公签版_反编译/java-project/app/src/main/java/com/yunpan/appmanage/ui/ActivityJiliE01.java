package com.yunpan.appmanage.ui;

import a2.w0;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityJiliE01;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import da.g;
import ec.d;
import fa.b0;
import fc.b;
import h5.d0;
import ha.u9;
import ha.z6;
import java.io.File;
import java.text.DecimalFormat;
import mc.c;
import rc.f;
import ua.d3;
import ua.f3;
import ua.g1;
import x9.k3;

/* loaded from: classes.dex */
public class ActivityJiliE01 extends g {
    public static final /* synthetic */ int F = 0;
    public TvRecyclerView C;
    public k3 D;
    public u9 E;

    public static void x(ActivityJiliE01 activityJiliE01, final boolean z, final boolean z4) {
        activityJiliE01.getClass();
        new c(0, new d() { // from class: ua.e3
            @Override // ec.d
            public final void g(mc.b bVar) throws Exception {
                AppBean appBeanK;
                boolean z10;
                String str;
                int i10 = ActivityJiliE01.F;
                boolean z11 = z;
                if (z11) {
                    appBeanK = android.support.v4.media.session.a.k("com.autonavi.amapauto");
                    if (appBeanK == null) {
                        appBeanK = MyDb.get().getAppDao().get_appBean_name("高德地图");
                    }
                } else {
                    appBeanK = android.support.v4.media.session.a.k("cn.kuwo.kwmusiccar");
                    if (appBeanK == null) {
                        appBeanK = MyDb.get().getAppDao().get_appBean_name("酷我音乐");
                    }
                }
                if (appBeanK == null) {
                    str = "未找到此应用";
                } else {
                    if (appBeanK.isSystem) {
                        fa.b0.f5652a.getClass();
                        a2.w0.u(appBeanK);
                        if (!z4) {
                            bVar.b();
                            return;
                        }
                        String strD = fa.g0.f5682a.d();
                        if (z11) {
                            if (com.yunpan.appmanage.util.a0.g(strD + "/amapauto9/AutoDeviceAdapter/")) {
                                a2.w0.h("mv " + strD + "/amapauto9/AutoDeviceAdapter " + strD + "/");
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            a2.w0.h("rm -rf '" + strD + "/amapauto9'");
                            if (z10) {
                                try {
                                    new File(strD + "/amapauto9/").mkdirs();
                                } catch (Exception unused) {
                                }
                                a2.w0 w0Var = fa.b0.f5652a;
                                String strL = ta.q.l("mv ", strD, "/AutoDeviceAdapter ", strD, "/amapauto9/");
                                w0Var.getClass();
                                a2.w0.h(strL);
                            }
                        } else if (!strD.isEmpty()) {
                            a2.w0.h("rm -rf '" + strD + "/cn_kuwo_kwmusiccas'");
                            a2.w0.h("rm -rf '" + strD + "/KuwoTingshu'");
                            a2.w0.h("rm -rf '" + strD + "/kwmusiccar'");
                        }
                        bVar.b();
                        return;
                    }
                    str = "非系统原应用，请在应用管理中卸载";
                }
                android.support.v4.media.session.a.B(str, bVar);
            }
        }).d(f.f13757b).a(b.a()).b(new f3(activityJiliE01, 0));
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_xingrui;
    }

    @Override // da.g
    public final void u() {
        this.A.getContentResolver();
        ((TextView) findViewById(R.id.v_title)).setText("星瑞E01系统专用功能，禁止用于非法用途");
        this.E = new u9(this, this.A);
        ((ConstraintLayout) findViewById(R.id.v_btn_return)).setOnClickListener(new g1(this, 8));
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_auto);
        ImageView imageView = (ImageView) findViewById(R.id.v_btn_auto_ico);
        imageView.setImageResource(v.f4106a.J ? R.drawable.tp_check1 : R.drawable.tp_check2);
        constraintLayout.setOnClickListener(new ha.f(imageView, 7));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 2));
        k3 k3Var = new k3();
        this.D = k3Var;
        g.b.p(R.drawable.tp_dp2, "adb提权(临时提升为root权限)", k3Var);
        g.b.p(R.drawable.tp_dp2, "预留按钮", this.D);
        g.b.p(R.drawable.tp_root6, "一键root系统(无损快速root)", this.D);
        g.b.p(R.drawable.tp_root6, "移除root权限(撤销系统root)", this.D);
        g.b.p(R.drawable.tp_dp1, "将root文件锁定只能管家使用", this.D);
        g.b.p(R.drawable.tp_dp1, "撤销锁定root文件", this.D);
        g.b.p(R.drawable.tp_chenjin, "一键卸载系统自带 高德地图", this.D);
        g.b.p(R.drawable.tp_kw, "一键卸载系统自带 酷我音乐", this.D);
        this.C.setAdapter(this.D);
        this.D.f2881e = new d3(this, 0);
    }

    public final void y(boolean z) {
        b0.f5652a.getClass();
        if (!w0.P()) {
            Toaster.show((CharSequence) "请先连接adb");
            return;
        }
        DecimalFormat decimalFormat = k.f4034u0;
        if (j.f4033a.f4058m) {
            new z6(this, this.A, z ? "如果成功删除(高德地图)，是否删除旧版地图数据？" : "如果成功删除(酷我音乐)，是否删除旧版音乐数据？", "", "删除数据", "不删数据", new d0(this, z)).show();
        } else {
            Toaster.show((CharSequence) "无权限：请先提权");
        }
    }
}
