package com.yunpan.appmanage.ui;

import a2.k;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Looper;
import android.provider.Settings;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.result.d;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.y0;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.carsdk.h0;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.carsdk.x;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.ui.ActivityAutomation;
import com.yunpan.appmanage.util.j;
import da.g;
import g.b;
import java.text.DecimalFormat;
import mc.c;
import p000if.a;
import pa.e;
import rc.f;
import ta.m;
import ua.p0;
import x9.k3;
import x9.l3;

/* loaded from: classes.dex */
public class ActivityAutomation extends g {
    public static final /* synthetic */ int L = 0;
    public ConstraintLayout C;
    public ImageView D;
    public TextView E;
    public TvRecyclerView F;
    public k3 G;
    public d H;
    public final u I = new u(this, Looper.getMainLooper(), 16);
    public final k K = new k(8, this);

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        try {
            unregisterReceiver(this.K);
        } catch (Exception unused) {
        }
        this.I.removeCallbacksAndMessages(null);
        super.onDestroy();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_automation;
    }

    @Override // da.g
    public final void u() throws Exception {
        final int i10 = 0;
        final int i11 = 1;
        final int i12 = 2;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(getPackageName() + ".BROADCAST_TO_ACTIVITY");
        registerReceiver(this.K, intentFilter);
        this.H = this.f813k.c("activity_rq#" + this.f812j.getAndIncrement(), this, new y0(2), new p0(this, i11));
        ((ConstraintLayout) findViewById(R.id.v_btn_return)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.q0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAutomation f15890b;

            {
                this.f15890b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAutomation activityAutomation = this.f15890b;
                int i13 = 1;
                switch (i10) {
                    case 0:
                        int i14 = ActivityAutomation.L;
                        activityAutomation.finish();
                        break;
                    case 1:
                        int i15 = ActivityAutomation.L;
                        activityAutomation.getClass();
                        new ha.v3(activityAutomation, activityAutomation).show();
                        break;
                    default:
                        ActivityAutomation activityAutomation2 = this.f15890b;
                        String string = activityAutomation2.E.getText().toString();
                        if (!string.contains("正在启动中")) {
                            if (!string.contains("服务运行中")) {
                                wa.u uVar = wa.t.f17728a;
                                if (!uVar.N.isEmpty() || !uVar.O.isEmpty()) {
                                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                    if (!XXPermissions.isGrantedPermission(com.yunpan.appmanage.util.j.f4033a.f4035a, PermissionLists.getSystemAlertWindowPermission())) {
                                        new ha.z6(activityAutomation2, activityAutomation2, "需要授权悬浮窗权限【在上层显示】方可使用\n\n如果你已经授权了，请取消授权，重新授权即可", "", "好的", "", new r0(activityAutomation2, i13)).show();
                                        break;
                                    }
                                }
                                activityAutomation2.x(true);
                                break;
                            } else {
                                new ha.z6(activityAutomation2, activityAutomation2.A, "您确定要停止自动化服务吗？", "", "确定", "取消", new r0(activityAutomation2, 0)).show();
                                break;
                            }
                        }
                        break;
                }
            }
        });
        findViewById(R.id.v_btn_set).setOnClickListener(new View.OnClickListener(this) { // from class: ua.q0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAutomation f15890b;

            {
                this.f15890b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAutomation activityAutomation = this.f15890b;
                int i13 = 1;
                switch (i11) {
                    case 0:
                        int i14 = ActivityAutomation.L;
                        activityAutomation.finish();
                        break;
                    case 1:
                        int i15 = ActivityAutomation.L;
                        activityAutomation.getClass();
                        new ha.v3(activityAutomation, activityAutomation).show();
                        break;
                    default:
                        ActivityAutomation activityAutomation2 = this.f15890b;
                        String string = activityAutomation2.E.getText().toString();
                        if (!string.contains("正在启动中")) {
                            if (!string.contains("服务运行中")) {
                                wa.u uVar = wa.t.f17728a;
                                if (!uVar.N.isEmpty() || !uVar.O.isEmpty()) {
                                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                    if (!XXPermissions.isGrantedPermission(com.yunpan.appmanage.util.j.f4033a.f4035a, PermissionLists.getSystemAlertWindowPermission())) {
                                        new ha.z6(activityAutomation2, activityAutomation2, "需要授权悬浮窗权限【在上层显示】方可使用\n\n如果你已经授权了，请取消授权，重新授权即可", "", "好的", "", new r0(activityAutomation2, i13)).show();
                                        break;
                                    }
                                }
                                activityAutomation2.x(true);
                                break;
                            } else {
                                new ha.z6(activityAutomation2, activityAutomation2.A, "您确定要停止自动化服务吗？", "", "确定", "取消", new r0(activityAutomation2, 0)).show();
                                break;
                            }
                        }
                        break;
                }
            }
        });
        this.C = (ConstraintLayout) findViewById(R.id.v_btn_start);
        this.D = (ImageView) findViewById(R.id.v_btn_start_ico);
        this.E = (TextView) findViewById(R.id.v_btn_start_name);
        this.D.setImageResource(R.drawable.tp_check2);
        this.E.setText("开启服务(总开关)");
        try {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        } catch (Exception unused) {
        }
        if (j.f4033a.f4037b.getComponentEnabledSetting(new ComponentName(getPackageName(), AccService.class.getName())) == 2) {
            throw new Exception();
        }
        String string = Settings.Secure.getString(this.A.getContentResolver(), "enabled_accessibility_services");
        if (string == null) {
            string = "";
        }
        if (string.contains(getPackageName() + "/")) {
            m.c(this.A, "ACC_IS_RUNNING");
        }
        if (a.h0(this.A, AccService.class)) {
            this.D.setImageResource(R.drawable.tp_ai1);
            this.E.setText("服务运行中");
        }
        this.C.setOnClickListener(new View.OnClickListener(this) { // from class: ua.q0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAutomation f15890b;

            {
                this.f15890b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAutomation activityAutomation = this.f15890b;
                int i13 = 1;
                switch (i12) {
                    case 0:
                        int i14 = ActivityAutomation.L;
                        activityAutomation.finish();
                        break;
                    case 1:
                        int i15 = ActivityAutomation.L;
                        activityAutomation.getClass();
                        new ha.v3(activityAutomation, activityAutomation).show();
                        break;
                    default:
                        ActivityAutomation activityAutomation2 = this.f15890b;
                        String string2 = activityAutomation2.E.getText().toString();
                        if (!string2.contains("正在启动中")) {
                            if (!string2.contains("服务运行中")) {
                                wa.u uVar = wa.t.f17728a;
                                if (!uVar.N.isEmpty() || !uVar.O.isEmpty()) {
                                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                    if (!XXPermissions.isGrantedPermission(com.yunpan.appmanage.util.j.f4033a.f4035a, PermissionLists.getSystemAlertWindowPermission())) {
                                        new ha.z6(activityAutomation2, activityAutomation2, "需要授权悬浮窗权限【在上层显示】方可使用\n\n如果你已经授权了，请取消授权，重新授权即可", "", "好的", "", new r0(activityAutomation2, i13)).show();
                                        break;
                                    }
                                }
                                activityAutomation2.x(true);
                                break;
                            } else {
                                new ha.z6(activityAutomation2, activityAutomation2.A, "您确定要停止自动化服务吗？", "", "确定", "取消", new r0(activityAutomation2, 0)).show();
                                break;
                            }
                        }
                        break;
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.F = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this, 1, false));
        this.G = new k3();
        if (h0.c(this.A)) {
            b.p(R.drawable.tp_car6, "捷途车机：专用映射，按键、车门、档位、大灯！(基于山海T2)", this.G);
        }
        if (x.h(this.A)) {
            b.p(R.drawable.tp_car6, "吉利星愿：专用映射，按键、档位！(没什么功能)", this.G);
        }
        b.p(R.drawable.tp_yk1, "按键映射：将物理按键映射指定的操作（原生系统驱动）", this.G);
        b.p(R.drawable.tp_yk3, "日志映射：将系统日志映射指定的操作（厂商应用驱动）", this.G);
        b.p(R.drawable.tp_yk2, "事件映射：将某些事件映射指定的操作（系统事件驱动）", this.G);
        b.p(R.drawable.float_icon_transparent_1, "悬浮按钮：悬浮一个按钮，自定义各种映射", this.G);
        b.p(R.drawable.tp_yh6, "侧边手势：左侧、右侧、底部 的各种滑动映射", this.G);
        b.p(R.drawable.tp_click1, "自动点击：如桌面选择时、USB授权时，自动帮你点确定", this.G);
        if (e.b(this.A)) {
            l3 l3Var = new l3(R.drawable.tp_nissan1, "日产车机：映射方向盘按键（与系统SDK对接）");
            if (Build.VERSION.SDK_INT < 28) {
                this.G.q(l3Var);
            } else {
                this.G.p(0, l3Var);
            }
        }
        b.p(R.drawable.tp_rotation, "强制旋转：强制用横屏或竖屏显示应用（强制横屏显示）", this.G);
        b.p(R.drawable.tp_desktop2, "(待开发)个性悬浮：根据不同场景自定义各种各样的悬浮窗口", this.G);
        b.p(R.drawable.tp_add3, "(待开发)个性面板：自定义映射面板，方便在映射里面使用", this.G);
        b.p(R.drawable.tp_add3, "(待开发)Frida：Hook玩法（需root权限或 adb root）", this.G);
        try {
            this.A.getPackageManager().getApplicationInfo("com.iflytek.cutefly.speechclient.hmi", 0);
            if (this.A.getPackageManager().checkPermission("com.iflytek.autofly.EventBus", this.A.getPackageName()) == 0) {
                this.G.q(new l3(R.drawable.tp_add3, "(待开发)加强原车讯飞语音识别（对接）"));
            }
        } catch (Exception unused2) {
        }
        this.F.setAdapter(this.G);
        this.G.f2881e = new p0(this, i12);
        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = j.f4033a;
        g gVar = this.A;
        kVar.getClass();
        com.yunpan.appmanage.util.k.m(gVar, "授权失败，将无法实现开机自动执行任务");
    }

    public final void x(boolean z) {
        this.E.setText("正在启动中");
        new c(0, new p0(this, 0)).d(f.f13757b).a(fc.b.a()).b(new ua.g(this, z, 1));
    }
}
