package com.yunpan.appmanage.ui;

import android.os.Build;
import android.view.View;
import android.widget.TextView;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityKeyMapNissan;
import com.yunpan.appmanage.ui.ActivityKeyMapNissanSet;
import com.yunpan.appmanage.util.a0;
import da.g;
import ha.i9;
import java.util.ArrayList;
import ph.j;
import q4.a;
import x9.s2;
import z7.o;
import z7.s;

/* loaded from: classes.dex */
public class ActivityKeyMapNissan extends g {
    public static final /* synthetic */ int F = 0;
    public TvRecyclerView C;
    public s2 D;
    public s E;

    @Override // da.g
    public final int t() {
        return R.layout.activity_key_map_acc;
    }

    @Override // da.g
    public final void u() {
        ((TextView) findViewById(R.id.v_title)).setText("日产方向盘按钮映射");
        if (Build.VERSION.SDK_INT < 21) {
            a0.u("此功能不兼容您的系统");
        }
        if (ActivityNissan.y() < 300) {
            a0.u("不适合旧版系统，请用日志映射");
        }
        final int i10 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.n3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityKeyMapNissan f15846b;

            {
                this.f15846b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityKeyMapNissan activityKeyMapNissan = this.f15846b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityKeyMapNissan.F;
                        activityKeyMapNissan.finish();
                        break;
                    case 1:
                        int i12 = ActivityKeyMapNissan.F;
                        activityKeyMapNissan.w(ActivityKeyMapNissanSet.class);
                        break;
                    case 2:
                        ActivityKeyMapNissan activityKeyMapNissan2 = this.f15846b;
                        if (activityKeyMapNissan2.D.b() != 0) {
                            new ha.z6(activityKeyMapNissan2, activityKeyMapNissan2, "确定要删除所有按键吗？", "", "确定", "取消", new i1(9, activityKeyMapNissan2)).show();
                            break;
                        }
                        break;
                    default:
                        int i13 = ActivityKeyMapNissan.F;
                        activityKeyMapNissan.x(-1);
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.v_btn_help).setOnClickListener(new View.OnClickListener(this) { // from class: ua.n3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityKeyMapNissan f15846b;

            {
                this.f15846b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityKeyMapNissan activityKeyMapNissan = this.f15846b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityKeyMapNissan.F;
                        activityKeyMapNissan.finish();
                        break;
                    case 1:
                        int i12 = ActivityKeyMapNissan.F;
                        activityKeyMapNissan.w(ActivityKeyMapNissanSet.class);
                        break;
                    case 2:
                        ActivityKeyMapNissan activityKeyMapNissan2 = this.f15846b;
                        if (activityKeyMapNissan2.D.b() != 0) {
                            new ha.z6(activityKeyMapNissan2, activityKeyMapNissan2, "确定要删除所有按键吗？", "", "确定", "取消", new i1(9, activityKeyMapNissan2)).show();
                            break;
                        }
                        break;
                    default:
                        int i13 = ActivityKeyMapNissan.F;
                        activityKeyMapNissan.x(-1);
                        break;
                }
            }
        });
        final int i12 = 2;
        findViewById(R.id.v_btn_delete_all).setOnClickListener(new View.OnClickListener(this) { // from class: ua.n3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityKeyMapNissan f15846b;

            {
                this.f15846b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityKeyMapNissan activityKeyMapNissan = this.f15846b;
                switch (i12) {
                    case 0:
                        int i112 = ActivityKeyMapNissan.F;
                        activityKeyMapNissan.finish();
                        break;
                    case 1:
                        int i122 = ActivityKeyMapNissan.F;
                        activityKeyMapNissan.w(ActivityKeyMapNissanSet.class);
                        break;
                    case 2:
                        ActivityKeyMapNissan activityKeyMapNissan2 = this.f15846b;
                        if (activityKeyMapNissan2.D.b() != 0) {
                            new ha.z6(activityKeyMapNissan2, activityKeyMapNissan2, "确定要删除所有按键吗？", "", "确定", "取消", new i1(9, activityKeyMapNissan2)).show();
                            break;
                        }
                        break;
                    default:
                        int i13 = ActivityKeyMapNissan.F;
                        activityKeyMapNissan.x(-1);
                        break;
                }
            }
        });
        final int i13 = 3;
        findViewById(R.id.v_btn_add).setOnClickListener(new View.OnClickListener(this) { // from class: ua.n3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityKeyMapNissan f15846b;

            {
                this.f15846b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityKeyMapNissan activityKeyMapNissan = this.f15846b;
                switch (i13) {
                    case 0:
                        int i112 = ActivityKeyMapNissan.F;
                        activityKeyMapNissan.finish();
                        break;
                    case 1:
                        int i122 = ActivityKeyMapNissan.F;
                        activityKeyMapNissan.w(ActivityKeyMapNissanSet.class);
                        break;
                    case 2:
                        ActivityKeyMapNissan activityKeyMapNissan2 = this.f15846b;
                        if (activityKeyMapNissan2.D.b() != 0) {
                            new ha.z6(activityKeyMapNissan2, activityKeyMapNissan2, "确定要删除所有按键吗？", "", "确定", "取消", new i1(9, activityKeyMapNissan2)).show();
                            break;
                        }
                        break;
                    default:
                        int i132 = ActivityKeyMapNissan.F;
                        activityKeyMapNissan.x(-1);
                        break;
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 3));
        s2 s2Var = new s2();
        this.D = s2Var;
        this.C.setAdapter(s2Var);
        this.D.f2881e = new j(24, this);
        y();
    }

    public final void x(int i10) {
        if (i10 < -1 || i10 >= this.D.b()) {
            Toaster.show((CharSequence) "出现离谱的错误");
        } else {
            new i9(this, this.A, this.E, i10, new d3.g(i10, 13, this)).show();
        }
    }

    public final void y() {
        try {
            this.D.E(new ArrayList());
            s sVarT = a.t(this.A);
            this.E = sVarT;
            o oVarP = sVarT.p("keys");
            for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                this.D.q(oVarP.l(i10).g());
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }
}
