package com.yunpan.appmanage.ui;

import android.content.ContentResolver;
import android.os.Build;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.carsdk.f;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import da.g;
import fa.g0;
import fc.b;
import ha.h2;
import ha.u9;
import java.text.DecimalFormat;
import mc.c;
import pa.e;
import ua.g1;
import ua.u4;
import ua.v4;
import ua.x4;
import x9.k3;
import x9.l3;

/* loaded from: classes.dex */
public class ActivityNissan extends g {
    public static final /* synthetic */ int I = 0;
    public TvRecyclerView C;
    public k3 D;
    public ContentResolver E;
    public u9 F;
    public final f G = new f(5, this);
    public final x4 H = new x4(this);

    public static void x(ActivityNissan activityNissan, boolean z) {
        activityNissan.getClass();
        if (g0.f5682a.d().isEmpty()) {
            a0.y("不适合您的系统，请勿乱用");
        } else {
            new c(0, new h2(activityNissan, z, 5)).d(rc.f.f13757b).a(b.a()).b(new v4(activityNissan, 5));
        }
    }

    public static int y() {
        try {
            String str = Build.DISPLAY;
            return Integer.parseInt(str.substring(str.lastIndexOf("P") + 1));
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_laboratory;
    }

    @Override // da.g
    public final void u() {
        this.E = this.A.getContentResolver();
        ((TextView) findViewById(R.id.v_title)).setText("日产飞思卡尔芯片，禁止用于非法/商业用途，仅作技术研究");
        this.F = new u9(this, this.A);
        ((ConstraintLayout) findViewById(R.id.v_btn_return)).setOnClickListener(new g1(this, 20));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 2));
        k3 k3Var = new k3();
        this.D = k3Var;
        g.b.p(R.drawable.tp_wifi1, "临时开启无线ADB", k3Var);
        g.b.p(R.drawable.tp_wifi1, "永久开启无线ADB(不适合>=510的系统)", this.D);
        g.b.p(R.drawable.tp_adb1, "开启USB调试", this.D);
        g.b.p(R.drawable.tp_adb1, "关闭USB调试", this.D);
        g.b.p(R.drawable.tp_root6, "adb临时提权", this.D);
        g.b.p(R.drawable.tp_root6, "预留", this.D);
        g.b.p(R.drawable.tp_audio1, "修复方向盘不能调节高德音量、大灯联动", this.D);
        g.b.p(R.drawable.tp_audio1, "修复方向盘不能调节高德音量(二)", this.D);
        g.b.p(R.drawable.tp_wz25, "修复因使用360工具箱导致车机隔一段时间就会黑屏", this.D);
        k3 k3Var2 = this.D;
        StringBuilder sb2 = new StringBuilder("升级语音识别：可语音打开");
        DecimalFormat decimalFormat = k.f4034u0;
        sb2.append(j.f4033a.f4039c);
        k3Var2.q(new l3(R.drawable.tp_upload1, sb2.toString()));
        g.b.p(R.drawable.tp_nissan1, "日产sdk功能测试", this.D);
        g.b.p(R.drawable.tp_nissan1, "日产sdk回调监听1", this.D);
        g.b.p(R.drawable.tp_nissan1, "日产sdk回调监听2", this.D);
        this.C.setAdapter(this.D);
        this.D.f2881e = new u4(this, 0);
        if (e.b(this.A)) {
            return;
        }
        a0.s("不是日产车机，不要使用此功能", false);
    }
}
