package com.yunpan.appmanage.ui;

import a2.w0;
import android.content.ContentResolver;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.room.s;
import b8.a;
import com.chad.library.adapter4.layoutmanager.QuickGridLayoutManager;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityAdb;
import com.yunpan.appmanage.util.a0;
import da.g;
import fa.b0;
import fc.b;
import ha.h2;
import ha.h3;
import ha.l2;
import ha.qa;
import ha.u9;
import ha.z6;
import kh.j;
import mc.c;
import org.greenrobot.eventbus.ThreadMode;
import rc.f;
import ta.q;
import u9.d;
import ua.e;
import ua.v0;
import x9.l3;
import x9.t0;

/* loaded from: classes.dex */
public class ActivityAdb extends g {
    public static final /* synthetic */ int G = 0;
    public TvRecyclerView C;
    public t0 D;
    public u9 E;
    public ContentResolver F;

    public static void A(ActivityAdb activityAdb, String str, boolean z) {
        activityAdb.getClass();
        new c(0, new h2(str, z, 2)).d(f.f13757b).a(b.a()).b(new ua.g(activityAdb, z, 0));
    }

    public static void B(ActivityAdb activityAdb, String str) {
        activityAdb.getClass();
        new c(0, new a(str, 13)).d(f.f13757b).a(b.a()).b(new e(activityAdb, 4));
    }

    public static void C(ActivityAdb activityAdb, String str) {
        activityAdb.getClass();
        new c(0, new a(str, 12)).d(f.f13757b).a(b.a()).b(new e(activityAdb, 3));
    }

    public static void D(ActivityAdb activityAdb, boolean z) {
        activityAdb.getClass();
        new c(0, new qa(2, z)).d(f.f13757b).a(b.a()).b(new e(activityAdb, 5));
    }

    public static void x(ActivityAdb activityAdb, int i10) {
        activityAdb.getClass();
        String str = i10 == 1 ? "service.adb.tcp.port" : "persist.adb.tcp.port";
        new c(0, new a(str, 11)).d(f.f13757b).a(b.a()).b(new h3(activityAdb, 9, str));
    }

    public static void y(ActivityAdb activityAdb, String str, String str2) {
        activityAdb.getClass();
        new c(0, new qa.a(str, str2, 1)).d(f.f13757b).a(b.a()).b(new e(activityAdb, 1));
    }

    public static void z(ActivityAdb activityAdb, boolean z) {
        activityAdb.getClass();
        new c(0, new h2(activityAdb, z, 1)).d(f.f13757b).a(b.a()).b(new e(activityAdb, 6));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void E(boolean z) {
        String str;
        int i10 = 1;
        str = "已开启";
        if (!z) {
            s sVarL0 = d.r("getprop sys.usb.config").l0();
            if (sVarL0.q()) {
                new z6(this, this.A, "当前状态：".concat((sVarL0.k().isEmpty() || !((String) sVarL0.k().get(0)).contains("diag")) ? "不知道" : "已开启"), "", "开启adb", "关闭adb", new ua.f(this, 2)).show();
                return;
            } else {
                a0.u("不适合，无权限");
                return;
            }
        }
        s sVarL02 = d.r("getprop persist.vendor.bosch.usb2.mode").l0();
        if (!sVarL02.q()) {
            a0.u("不适合，无权限");
            return;
        }
        if (sVarL02.k().isEmpty()) {
            str = "不知道";
        } else if (!((String) sVarL02.k().get(0)).contains("peripheral")) {
            if (((String) sVarL02.k().get(0)).contains("host")) {
                str = "已关闭";
            }
        }
        new z6(this, this.A, "当前状态：".concat(str), "", "开启adb", "关闭adb", new ua.f(this, i10)).show();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void F(String str, String str2, String str3) {
        String str4;
        s sVarL0 = d.r("getprop ".concat(str)).l0();
        if (!sVarL0.q()) {
            a0.u("不适合，无权限");
            return;
        }
        if (sVarL0.k().isEmpty()) {
            str4 = "不知道";
        } else if (((String) sVarL0.k().get(0)).equals(str2)) {
            str4 = "已开启";
        } else if (((String) sVarL0.k().get(0)).equals(str3)) {
            str4 = "已关闭";
        }
        new z6(this, this.A, "当前状态：".concat(str4), "注：有些设备开启USB调试会断开无线adb\n警告：此功能仅适合个别系统", "开启usb调试", "关闭usb调试", new w0(this, str, str2, str3)).show();
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        kh.e.b().l(this);
        super.onDestroy();
    }

    @j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(String str) {
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_adb;
    }

    @Override // da.g
    public final void u() {
        kh.e.b().j(this);
        this.F = this.A.getContentResolver();
        new c(0, new v0(19)).d(f.f13757b).a(b.a()).b(new l2(28));
        this.E = new u9(this, this.A);
        final int i10 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.c

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAdb f15598b;

            {
                this.f15598b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        int i11 = ActivityAdb.G;
                        this.f15598b.finish();
                        break;
                    default:
                        int i12 = ActivityAdb.G;
                        ActivityAdb activityAdb = this.f15598b;
                        activityAdb.getClass();
                        if (!fa.h.f5683a.i() && !fa.l.f5712a.isConnected()) {
                            Toaster.show((CharSequence) "没连接adb");
                            break;
                        } else {
                            new ha.z6(activityAdb, activityAdb.A, "是否要断开adb", "", "确定", "取消", new s9.a(2, false)).show();
                            break;
                        }
                        break;
                }
            }
        });
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_adb);
        b0.f5652a.getClass();
        if (!w0.J()) {
            constraintLayout.setVisibility(8);
        }
        final int i11 = 1;
        constraintLayout.setOnClickListener(new View.OnClickListener(this) { // from class: ua.c

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAdb f15598b;

            {
                this.f15598b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        int i112 = ActivityAdb.G;
                        this.f15598b.finish();
                        break;
                    default:
                        int i12 = ActivityAdb.G;
                        ActivityAdb activityAdb = this.f15598b;
                        activityAdb.getClass();
                        if (!fa.h.f5683a.i() && !fa.l.f5712a.isConnected()) {
                            Toaster.show((CharSequence) "没连接adb");
                            break;
                        } else {
                            new ha.z6(activityAdb, activityAdb.A, "是否要断开adb", "", "确定", "取消", new s9.a(2, false)).show();
                            break;
                        }
                        break;
                }
            }
        });
        t0 t0Var = new t0(5);
        this.D = t0Var;
        q.q(R.drawable.tp_wifi2, "临时开启无线adb(适合大部分公签系统)", t0Var);
        q.q(R.drawable.tp_wifi2, "永久开启无线adb(适合大部分公签系统)", this.D);
        q.q(R.drawable.tp_usb6, "USB调试-开/关(原生系统)", this.D);
        q.q(R.drawable.tp_usb6, "USB调试-开/关(某车系统)", this.D);
        q.q(R.drawable.root2, "打开工程模式(仅部分设备)", this.D);
        q.q(R.drawable.tp_adb1, "星途车机(弹出adb授权窗口)", this.D);
        q.q(R.drawable.tp_jl1, "吉利Telnet(手机连车机开adb)", this.D);
        q.q(R.drawable.tp_jl1, "预留位置", this.D);
        q.q(-1, "下面的匹配码adb是高版本系统（手机 或 特殊高版本车机 用的）", this.D);
        q.q(R.drawable.tp_wifi2, "匹配码无线adb（开启/关闭）", this.D);
        q.q(R.drawable.tp_jj2, "修复一直弹窗(在此网络上进行无线调试吗)", this.D);
        q.q(-1, "警告：不要使用下面任何功能，后果自负", this.D);
        q.q(R.drawable.tp_usb6, "USB调试-开/关(未知系统1)", this.D);
        q.q(R.drawable.tp_usb6, "USB调试-开/关(未知系统2)", this.D);
        q.q(R.drawable.tp_usb6, "USB调试-开/关(未知系统3)", this.D);
        q.q(R.drawable.tp_usb6, "USB调试-开/关(未知系统4)", this.D);
        q.q(R.drawable.tp_usb6, "USB调试-开/关(xy L 旧)", this.D);
        q.q(R.drawable.tp_usb6, "USB调试-开/关(xy L 新)", this.D);
        q.q(-1, "警告：不要使用下面任何功能，后果自负", this.D);
        q.q(R.drawable.tp_usb6, "USB调试-开启(大杂烩，不建议点击)", this.D);
        q.q(R.drawable.tp_adb1, "临时开启无线adb(大杂烩，不建议点击)", this.D);
        q.q(R.drawable.tp_adb1, "开启adb(捷途(车联)-新版系统，仅供测试)", this.D);
        this.D.q(new l3(R.drawable.tp_adb1, "开启adb(捷途-新版系统，仅供测试)"));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new QuickGridLayoutManager(this.A, 2));
        this.C.setScrollBarFadeDuration(0);
        this.C.setScrollBarDefaultDelayBeforeFade(0);
        this.C.setAdapter(this.D);
        this.D.f2881e = new ua.d(this, 0);
    }
}
