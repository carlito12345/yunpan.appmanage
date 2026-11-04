package com.yunpan.appmanage.ui;

import ag.h;
import android.content.ContentResolver;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import da.g;
import fa.b0;
import fa.l;
import fc.b;
import ha.h2;
import ha.l2;
import ha.m6;
import ha.qa;
import ha.u9;
import ha.z6;
import java.text.DecimalFormat;
import kh.e;
import mc.c;
import org.greenrobot.eventbus.ThreadMode;
import rc.f;
import ua.g1;
import ua.v0;
import ua.v3;
import ua.x3;
import x9.k3;
import x9.l3;

/* loaded from: classes.dex */
public class ActivityLaboratory extends g {
    public static final /* synthetic */ int I = 0;
    public boolean C = false;
    public int D = 0;
    public TvRecyclerView E;
    public k3 F;
    public ContentResolver G;
    public u9 H;

    public static void A(ActivityLaboratory activityLaboratory, boolean z) {
        activityLaboratory.getClass();
        new c(0, new qa(4, z)).d(f.f13757b).a(b.a()).b(new m6(13));
    }

    public static void x(ActivityLaboratory activityLaboratory, boolean z) {
        activityLaboratory.getClass();
        if (z) {
            DecimalFormat decimalFormat = k.f4034u0;
            if (j.f4033a.f4058m) {
                new z6(activityLaboratory, activityLaboratory.A, "您确定要设置为强制模式吗？", "开启强制模式后可能无法获得系统写入权", "确定", "", new h(z)).show();
                return;
            }
        }
        b0.f5652a.g("setenforce ".concat(z ? "1" : "0"), new v0(16));
    }

    public static void y(ActivityLaboratory activityLaboratory, boolean z) {
        activityLaboratory.getClass();
        new c(0, new qa(3, z)).d(f.f13757b).a(b.a()).b(new l2(28));
    }

    public static void z(ActivityLaboratory activityLaboratory, boolean z) {
        activityLaboratory.getClass();
        new c(0, new h2(activityLaboratory, z, 4)).d(f.f13757b).a(b.a()).b(new l2(28));
    }

    public final void B(boolean z) {
        DecimalFormat decimalFormat = k.f4034u0;
        if (j.f4033a.f4058m) {
            a0.w("你已拥有系统写入权，无需重新挂载");
        } else if (!fa.h.f5683a.i() && !l.f5712a.isConnected()) {
            Toaster.show((CharSequence) "请先连接adb");
        } else {
            new c(0, new qa(5, z)).d(f.f13757b).a(b.a()).b(new x3(this, 1));
        }
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        e.b().l(this);
        super.onDestroy();
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(String str) {
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_laboratory;
    }

    @Override // da.g
    public final void u() {
        e.b().j(this);
        this.G = this.A.getContentResolver();
        new c(0, new v0(19)).d(f.f13757b).a(b.a()).b(new l2(28));
        this.H = new u9(this, this.A);
        ((ConstraintLayout) findViewById(R.id.v_btn_return)).setOnClickListener(new g1(this, 18));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.E = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 2));
        k3 k3Var = new k3();
        this.F = k3Var;
        g.b.p(R.drawable.tp_jl1, "银河系统-E02芯", k3Var);
        g.b.p(R.drawable.tp_jl1, "吉利车机(E01)", this.F);
        g.b.p(R.drawable.tp_nissan1, "日产车机(飞思卡尔芯片)", this.F);
        g.b.p(R.drawable.tp_ou_shang, "欧尚车机专区", this.F);
        g.b.p(R.drawable.tp_nezha, "哪吒车机专区", this.F);
        g.b.p(R.drawable.tp_upload1, "TCL电视无法安装应用", this.F);
        g.b.p(R.drawable.tp_changan1, "预留", this.F);
        g.b.p(R.drawable.tp_sb1, "修复因用其它工具app导致系统间歇息屏", this.F);
        g.b.p(R.drawable.tp_desktop2, "桌面管理：禁用系统桌面(不懂慎用)", this.F);
        g.b.p(R.drawable.tp_animator1, "调整系统动画（加快系统流畅性）", this.F);
        g.b.p(R.drawable.tp_root6, "一键root(本人自用，不适合您的系统)", this.F);
        g.b.p(R.drawable.tp_time1, "系统时间校正(北京时间)", this.F);
        g.b.p(R.drawable.suo4, "adb提权(su) 并 挂载系统读写", this.F);
        g.b.p(R.drawable.suo4, "adb提权(adb root) 并 挂载写入权", this.F);
        g.b.p(R.drawable.suo4, "shell提升为root权限(用处不大)", this.F);
        g.b.p(R.drawable.suo4, "adb提权 并 挂载写入权(试验2)", this.F);
        g.b.p(R.drawable.tp_sb1, "已获得系统写入权的专用功能", this.F);
        g.b.p(R.drawable.tp_sb1, "预留功能", this.F);
        g.b.p(R.drawable.suo4, "adb提权(适合部分tcl电视)", this.F);
        g.b.p(R.drawable.tp_dp1, "设置SELinux模式（强制/宽容）", this.F);
        g.b.p(R.drawable.tp_suo6, "关闭分区检测(adb root | adb disable-verity)", this.F);
        g.b.p(R.drawable.tp_suo7, "(危险)开启分区检测(adb root | adb enable-verity)", this.F);
        g.b.p(R.drawable.tp_adb1, "adb连接授权弹窗(关闭/开启)", this.F);
        g.b.p(R.drawable.tp_adb1, "关闭adb授权过期限限(设备支持的话)", this.F);
        g.b.p(R.drawable.tp_wifi_no1, "屏蔽网络 / 解除屏蔽", this.F);
        g.b.p(R.drawable.tp_rename1, "设置输入法", this.F);
        this.F.q(new l3(R.drawable.tp_cache3, "重置自身(" + getString(R.string.app_name) + ")"));
        this.F.q(new l3(R.drawable.tp_delete3, "卸载自身(" + getString(R.string.app_name) + ")"));
        g.b.p(R.drawable.tp_suo11, "允许访问非 SDK 接口", this.F);
        g.b.p(R.drawable.tp_suo11, "修改系统安全设置settings", this.F);
        g.b.p(R.drawable.tp_suo11, "多用户管理 (不懂勿用)", this.F);
        g.b.p(R.drawable.tp_file3, "开发者调试记录（请勿勾选）", this.F);
        this.E.setAdapter(this.F);
        this.F.f2881e = new v3(this, 0);
    }
}
