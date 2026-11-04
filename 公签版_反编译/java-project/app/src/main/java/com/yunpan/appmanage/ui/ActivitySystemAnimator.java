package com.yunpan.appmanage.ui;

import android.content.Context;
import android.provider.Settings;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c6.e;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivitySystemAnimator;
import da.g;
import fc.b;
import ha.e8;
import mc.c;
import rc.f;
import ua.b7;
import ua.z6;
import x9.c0;
import x9.x0;

/* loaded from: classes.dex */
public class ActivitySystemAnimator extends g {
    public static final /* synthetic */ int K = 0;
    public TextView C;
    public RecyclerView D;
    public c0 E;
    public RecyclerView F;
    public c0 G;
    public RecyclerView H;
    public c0 I;

    @Override // da.g
    public final int t() {
        return R.layout.activity_system_animator;
    }

    @Override // da.g
    public final void u() {
        TextView textView = (TextView) findViewById(R.id.v_btn_return);
        this.C = textView;
        textView.requestFocus();
        this.C.setOnClickListener(new z6(0, this));
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list_type_window);
        this.D = recyclerView;
        recyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 0, false));
        float f10 = Settings.Global.getFloat(getContentResolver(), "window_animation_scale", 1.0f);
        c0 c0Var = new c0();
        this.E = c0Var;
        c0Var.q(new x0("关闭动画", f10 == 0.0f));
        this.E.q(new x0("0.25x", f10 == 0.25f));
        this.E.q(new x0("0.5x", f10 == 0.5f));
        this.E.q(new x0("0.75x", f10 == 0.75f));
        this.E.q(new x0("1.0x", f10 == 1.0f));
        this.E.q(new x0("1.25x", f10 == 1.25f));
        this.E.q(new x0("1.5x", f10 == 1.5f));
        this.D.setAdapter(this.E);
        RecyclerView recyclerView2 = (RecyclerView) findViewById(R.id.v_list_type_transition);
        this.F = recyclerView2;
        recyclerView2.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 0, false));
        float f11 = Settings.Global.getFloat(getContentResolver(), "transition_animation_scale", 1.0f);
        c0 c0Var2 = new c0();
        this.G = c0Var2;
        c0Var2.q(new x0("关闭动画", f11 == 0.0f));
        this.G.q(new x0("0.25x", f11 == 0.25f));
        this.G.q(new x0("0.5x", f11 == 0.5f));
        this.G.q(new x0("0.75x", f11 == 0.75f));
        this.G.q(new x0("1.0x", f11 == 1.0f));
        this.G.q(new x0("1.25x", f11 == 1.25f));
        this.G.q(new x0("1.5x", f11 == 1.5f));
        this.F.setAdapter(this.G);
        RecyclerView recyclerView3 = (RecyclerView) findViewById(R.id.v_list_type_duration);
        this.H = recyclerView3;
        recyclerView3.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 0, false));
        float f12 = Settings.Global.getFloat(getContentResolver(), "animator_duration_scale", 1.0f);
        c0 c0Var3 = new c0();
        this.I = c0Var3;
        c0Var3.q(new x0("关闭动画", f12 == 0.0f));
        this.I.q(new x0("0.25x", f12 == 0.25f));
        this.I.q(new x0("0.5x", f12 == 0.5f));
        this.I.q(new x0("0.75x", f12 == 0.75f));
        this.I.q(new x0("1.0x", f12 == 1.0f));
        this.I.q(new x0("1.25x", f12 == 1.25f));
        this.I.q(new x0("1.5x", f12 == 1.5f));
        this.H.setAdapter(this.I);
        final int i10 = 0;
        this.E.f2881e = new e(this) { // from class: ua.a7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySystemAnimator f15568b;

            {
                this.f15568b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i11) {
                switch (i10) {
                    case 0:
                        ActivitySystemAnimator activitySystemAnimator = this.f15568b;
                        if (!((x9.x0) activitySystemAnimator.E.t(i11)).f18384b) {
                            activitySystemAnimator.x(0, i11);
                            break;
                        }
                        break;
                    case 1:
                        ActivitySystemAnimator activitySystemAnimator2 = this.f15568b;
                        if (!((x9.x0) activitySystemAnimator2.G.t(i11)).f18384b) {
                            activitySystemAnimator2.x(1, i11);
                            break;
                        }
                        break;
                    default:
                        ActivitySystemAnimator activitySystemAnimator3 = this.f15568b;
                        if (!((x9.x0) activitySystemAnimator3.I.t(i11)).f18384b) {
                            activitySystemAnimator3.x(2, i11);
                            break;
                        }
                        break;
                }
            }
        };
        final int i11 = 1;
        this.G.f2881e = new e(this) { // from class: ua.a7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySystemAnimator f15568b;

            {
                this.f15568b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i112) {
                switch (i11) {
                    case 0:
                        ActivitySystemAnimator activitySystemAnimator = this.f15568b;
                        if (!((x9.x0) activitySystemAnimator.E.t(i112)).f18384b) {
                            activitySystemAnimator.x(0, i112);
                            break;
                        }
                        break;
                    case 1:
                        ActivitySystemAnimator activitySystemAnimator2 = this.f15568b;
                        if (!((x9.x0) activitySystemAnimator2.G.t(i112)).f18384b) {
                            activitySystemAnimator2.x(1, i112);
                            break;
                        }
                        break;
                    default:
                        ActivitySystemAnimator activitySystemAnimator3 = this.f15568b;
                        if (!((x9.x0) activitySystemAnimator3.I.t(i112)).f18384b) {
                            activitySystemAnimator3.x(2, i112);
                            break;
                        }
                        break;
                }
            }
        };
        final int i12 = 2;
        this.I.f2881e = new e(this) { // from class: ua.a7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySystemAnimator f15568b;

            {
                this.f15568b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i112) {
                switch (i12) {
                    case 0:
                        ActivitySystemAnimator activitySystemAnimator = this.f15568b;
                        if (!((x9.x0) activitySystemAnimator.E.t(i112)).f18384b) {
                            activitySystemAnimator.x(0, i112);
                            break;
                        }
                        break;
                    case 1:
                        ActivitySystemAnimator activitySystemAnimator2 = this.f15568b;
                        if (!((x9.x0) activitySystemAnimator2.G.t(i112)).f18384b) {
                            activitySystemAnimator2.x(1, i112);
                            break;
                        }
                        break;
                    default:
                        ActivitySystemAnimator activitySystemAnimator3 = this.f15568b;
                        if (!((x9.x0) activitySystemAnimator3.I.t(i112)).f18384b) {
                            activitySystemAnimator3.x(2, i112);
                            break;
                        }
                        break;
                }
            }
        };
    }

    public final void x(int i10, int i11) {
        new c(0, new e8(this, i10, i11)).d(f.f13757b).a(b.a()).b(new b7(this, i10, i11));
    }
}
