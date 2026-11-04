package com.yunpan.appmanage.ui;

import a2.w0;
import android.os.Build;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivitySystemHasWrite;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import da.g;
import fa.b0;
import fc.b;
import ha.u9;
import ha.z6;
import java.text.DecimalFormat;
import mc.c;
import rc.f;
import ua.d7;
import ua.e7;
import ua.f7;
import ua.g7;
import x9.k3;
import x9.l3;

/* loaded from: classes.dex */
public class ActivitySystemHasWrite extends g {
    public static final /* synthetic */ int F = 0;
    public TvRecyclerView C;
    public k3 D;
    public u9 E;

    public static void x(ActivitySystemHasWrite activitySystemHasWrite, String str, boolean z) {
        activitySystemHasWrite.getClass();
        new c(0, new e7(activitySystemHasWrite, str, z, 0)).d(f.f13757b).a(b.a()).b(new f7(activitySystemHasWrite, 1));
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_hsa_write_system;
    }

    @Override // da.g
    public final void u() {
        this.A.getContentResolver();
        ((TextView) findViewById(R.id.v_title)).setText("修改系统，请勿乱用");
        final int i10 = 0;
        findViewById(R.id.v_btn_help).setOnClickListener(new View.OnClickListener(this) { // from class: ua.c7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySystemHasWrite f15618b;

            {
                this.f15618b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivitySystemHasWrite activitySystemHasWrite = this.f15618b;
                switch (i10) {
                    case 0:
                        int i11 = ActivitySystemHasWrite.F;
                        activitySystemHasWrite.getClass();
                        new ha.z6(activitySystemHasWrite, activitySystemHasWrite, activitySystemHasWrite.getString(R.string.ts1), "").show();
                        break;
                    default:
                        int i12 = ActivitySystemHasWrite.F;
                        activitySystemHasWrite.finish();
                        break;
                }
            }
        });
        this.E = new u9(this, this.A);
        final int i11 = 1;
        ((ConstraintLayout) findViewById(R.id.v_btn_return)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.c7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySystemHasWrite f15618b;

            {
                this.f15618b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivitySystemHasWrite activitySystemHasWrite = this.f15618b;
                switch (i11) {
                    case 0:
                        int i112 = ActivitySystemHasWrite.F;
                        activitySystemHasWrite.getClass();
                        new ha.z6(activitySystemHasWrite, activitySystemHasWrite, activitySystemHasWrite.getString(R.string.ts1), "").show();
                        break;
                    default:
                        int i12 = ActivitySystemHasWrite.F;
                        activitySystemHasWrite.finish();
                        break;
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 2));
        k3 k3Var = new k3();
        this.D = k3Var;
        g.b.p(R.drawable.tp_chenjin, "(车机)一键卸载系统自带的高德地图", k3Var);
        g.b.p(R.drawable.tp_kw, "(车机)一键卸载系统自带的酷我音乐", this.D);
        g.b.p(R.drawable.tp_apk2, "(测试)安装为普通系统应用", this.D);
        g.b.p(R.drawable.tp_apk2, "(测试)安装为超级系统应用", this.D);
        g.b.p(R.drawable.tp_apk2, "(测试)将普通应用转为系统应用", this.D);
        this.D.q(new l3(R.drawable.apk, "(测试)将" + getString(R.string.app_name) + "转为系统应用"));
        g.b.p(R.drawable.tp_gd1, "卸载数据(卸载高德后无法再安装时用)", this.D);
        g.b.p(R.drawable.tp_desktop1, "(未开发)(危险)替换开机动画", this.D);
        g.b.p(R.drawable.tp_file3, "(未开发)(危险)替换系统字体", this.D);
        this.C.setAdapter(this.D);
        this.D.f2881e = new d7(this);
    }

    public final void y(boolean z) {
        b0.f5652a.getClass();
        if (!w0.P()) {
            Toaster.show((CharSequence) "请先连接adb");
            return;
        }
        DecimalFormat decimalFormat = k.f4034u0;
        if (!j.f4033a.f4058m) {
            Toaster.show((CharSequence) "无权限：请先提权");
            finish();
            return;
        }
        new z6(this, this.A, "研究发现：部分系统如果直接删除的话，系统不会释放系统分区的空间！\n\n所以建议：先在" + getString(R.string.str_gj) + "的【应用管理】里面卸载此应用，然后重启系统后再来强制删除，这样就会100%释放系统分区的空间", "", "取消", "强制删除", new g7(this, z, 1)).show();
    }

    public final void z(boolean z) {
        if (Build.VERSION.SDK_INT < 21) {
            Toaster.show((CharSequence) "仅支持安卓5.0以上系统");
            return;
        }
        b0.f5652a.getClass();
        if (!w0.P()) {
            Toaster.show((CharSequence) "请先连接adb");
            return;
        }
        DecimalFormat decimalFormat = k.f4034u0;
        if (j.f4033a.f4058m) {
            new z6(this, this, "您确定要这么做？ 请慎重", "如果出现无法开机的话，概不负责", "我知道，确定", "取消", new g7(this, z, 0)).show();
        } else {
            Toaster.show((CharSequence) "无权限：请先提权");
            finish();
        }
    }
}
