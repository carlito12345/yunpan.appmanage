package com.yunpan.appmanage.ui;

import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityDisplayManager;
import com.yunpan.appmanage.util.a0;
import da.g;
import g.b;
import ha.j5;
import ha.m5;
import ha.u9;
import java.util.ArrayList;
import org.slf4j.Marker;
import ua.m1;
import x9.k3;
import x9.l3;

/* loaded from: classes.dex */
public class ActivityDisplayManager extends g {
    public static final /* synthetic */ int N = 0;
    public TvRecyclerView C;
    public k3 D;
    public Display E;
    public MediaProjectionManager F;
    public final ArrayList G = new ArrayList();
    public final ArrayList H = new ArrayList();
    public boolean I = false;
    public String K = "";
    public int L = -1;
    public final int M = 1001;

    @Override // androidx.fragment.app.j0, androidx.activity.m, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) throws Exception {
        super.onActivityResult(i10, i11, intent);
        if (i10 == this.M && i11 == -1 && Build.VERSION.SDK_INT >= 21) {
            try {
                MediaProjection mediaProjection = this.F.getMediaProjection(i11, intent);
                if (mediaProjection == null) {
                    throw new Exception("无法获取录屏权限");
                }
                if (this.K.isEmpty()) {
                    new j5(this, this, this.L, this.E, mediaProjection).show();
                } else {
                    new m5(this, this, this.L == 9, this.I, this.E, this.K).show();
                }
            } catch (Exception e7) {
                b.s(e7, new StringBuilder("失败："));
            }
        }
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_display;
    }

    @Override // da.g
    public final void u() {
        ArrayList arrayList;
        if (Build.VERSION.SDK_INT < 21) {
            a0.u("不支持低于 Android 5.0 的系统");
            finish();
            return;
        }
        Display[] displays = ((DisplayManager) getSystemService("display")).getDisplays();
        int length = displays.length;
        int i10 = 0;
        while (true) {
            arrayList = this.H;
            if (i10 >= length) {
                break;
            }
            Display display = displays[i10];
            if (display.getDisplayId() != 0) {
                arrayList.add(display);
                DisplayMetrics displayMetrics = new DisplayMetrics();
                display.getMetrics(displayMetrics);
                DisplayMetrics displayMetrics2 = new DisplayMetrics();
                display.getRealMetrics(displayMetrics2);
                int i11 = displayMetrics.widthPixels;
                int i12 = displayMetrics2.widthPixels;
                ArrayList arrayList2 = this.G;
                if (i11 == i12 && displayMetrics.heightPixels == displayMetrics2.heightPixels) {
                    arrayList2.add("ID:" + display.getDisplayId() + "   dpi:" + displayMetrics.densityDpi + "   " + displayMetrics2.widthPixels + Marker.ANY_MARKER + displayMetrics2.heightPixels);
                } else {
                    arrayList2.add("ID:" + display.getDisplayId() + "   dpi:" + displayMetrics.densityDpi + "   " + displayMetrics2.widthPixels + Marker.ANY_MARKER + displayMetrics2.heightPixels + "可视区(" + displayMetrics.widthPixels + Marker.ANY_MARKER + displayMetrics.heightPixels + ")");
                }
            }
            i10++;
        }
        if (arrayList.isEmpty()) {
            a0.u("没有可用的屏幕窗口");
            finish();
            return;
        }
        new u9(this, this.A);
        final int i13 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.l1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityDisplayManager f15797b;

            {
                this.f15797b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i13) {
                    case 0:
                        int i14 = ActivityDisplayManager.N;
                        this.f15797b.finish();
                        break;
                    default:
                        int i15 = ActivityDisplayManager.N;
                        ActivityDisplayManager activityDisplayManager = this.f15797b;
                        activityDisplayManager.getClass();
                        new ha.z6(activityDisplayManager, activityDisplayManager.A, "注：目前此功能仅供娱乐测试、研究用途，请务必遵守法律法规，行车过程中请勿投屏-仪表盘，务必保留仪表盘关键信息（故障标记、时速表、等等行车关键信息）！！！再次声明：此功能仅供学习研究，请勿用于非法用途！！！另外：如果投屏后不显示，那就是原车应用在上层遮挡了，可考虑将原车那个app禁用后即可显示（慎重，不建议这么做，研究测试后，请务必恢复）!!!如果车芯片性能不足，出现卡顿的话，请勿使用", "仪表盘：请务必在车辆停止时测试，请遵守法律法规！！！", "明白", "", new s5.c(4)).show();
                        break;
                }
            }
        });
        final int i14 = 1;
        findViewById(R.id.v_btn_help).setOnClickListener(new View.OnClickListener(this) { // from class: ua.l1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityDisplayManager f15797b;

            {
                this.f15797b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i14) {
                    case 0:
                        int i142 = ActivityDisplayManager.N;
                        this.f15797b.finish();
                        break;
                    default:
                        int i15 = ActivityDisplayManager.N;
                        ActivityDisplayManager activityDisplayManager = this.f15797b;
                        activityDisplayManager.getClass();
                        new ha.z6(activityDisplayManager, activityDisplayManager.A, "注：目前此功能仅供娱乐测试、研究用途，请务必遵守法律法规，行车过程中请勿投屏-仪表盘，务必保留仪表盘关键信息（故障标记、时速表、等等行车关键信息）！！！再次声明：此功能仅供学习研究，请勿用于非法用途！！！另外：如果投屏后不显示，那就是原车应用在上层遮挡了，可考虑将原车那个app禁用后即可显示（慎重，不建议这么做，研究测试后，请务必恢复）!!!如果车芯片性能不足，出现卡顿的话，请勿使用", "仪表盘：请务必在车辆停止时测试，请遵守法律法规！！！", "明白", "", new s5.c(4)).show();
                        break;
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 2));
        k3 k3Var = new k3();
        this.D = k3Var;
        b.p(R.drawable.tp_root6, "同步显示", k3Var);
        b.p(R.drawable.tp_root6, "同步显示-悬浮", this.D);
        b.p(R.drawable.tp_root6, "投屏自身-普通", this.D);
        b.p(R.drawable.tp_root6, "投屏自身-悬浮", this.D);
        b.p(R.drawable.tp_root6, "投屏自身-透明", this.D);
        b.p(R.drawable.tp_root6, "投屏自身-指定位置(中间)", this.D);
        b.p(R.drawable.tp_root6, "投屏自身-顶层-全屏显示", this.D);
        b.p(R.drawable.tp_root6, "投屏自身-顶层-指定位置", this.D);
        b.p(R.drawable.tp_root6, "投屏第三方应用(画中画)", this.D);
        b.p(R.drawable.tp_root6, "投屏第三方应用(画中画)-顶层", this.D);
        b.p(R.drawable.tp_root6, "同步显示-顶级悬浮", this.D);
        b.p(R.drawable.tp_root6, "投屏第三方应用(画中画)-顶级悬浮", this.D);
        b.p(R.drawable.tp_root6, "投屏第三方(adb镜像)", this.D);
        b.p(R.drawable.tp_root6, "同步显示(adb镜像)", this.D);
        b.p(R.drawable.tp_root6, "副屏触控", this.D);
        b.p(R.drawable.tp_root6, "test", this.D);
        b.p(R.drawable.tp_root6, "在副屏启动应用(无需adb)", this.D);
        b.p(R.drawable.tp_root6, "在副屏启动应用(测试一)", this.D);
        b.p(R.drawable.tp_root6, "在副屏启动应用(测试二)", this.D);
        this.D.q(new l3(R.drawable.tp_root6, "在副屏启动应用(测试三)"));
        this.F = tb.b.i(getSystemService("media_projection"));
        this.C.setAdapter(this.D);
        this.D.f2881e = new m1(this);
    }
}
