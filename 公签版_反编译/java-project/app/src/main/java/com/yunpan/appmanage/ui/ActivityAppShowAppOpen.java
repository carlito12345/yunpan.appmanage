package com.yunpan.appmanage.ui;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.SwitchAppBean;
import com.yunpan.appmanage.ui.ActivityAppShowAppOpen;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.util.w;
import da.g;
import ha.ed;
import ua.y;
import x9.z4;
import z7.o;
import z7.s;

/* loaded from: classes.dex */
public class ActivityAppShowAppOpen extends g {
    public static final /* synthetic */ int G = 0;
    public ConstraintLayout C;
    public ConstraintLayout D;
    public TvRecyclerView E;
    public z4 F;

    @Override // da.g
    public final int t() {
        return R.layout.activity_switch_app;
    }

    @Override // da.g
    public final void u() {
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_return);
        this.C = constraintLayout;
        final int i10 = 0;
        constraintLayout.setOnClickListener(new View.OnClickListener(this) { // from class: ua.w

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppShowAppOpen f16006b;

            {
                this.f16006b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppShowAppOpen activityAppShowAppOpen = this.f16006b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityAppShowAppOpen.G;
                        activityAppShowAppOpen.finish();
                        break;
                    default:
                        int i12 = ActivityAppShowAppOpen.G;
                        activityAppShowAppOpen.getClass();
                        new ed(activityAppShowAppOpen, activityAppShowAppOpen.A, false, new y(activityAppShowAppOpen)).show();
                        break;
                }
            }
        });
        this.C.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.x

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppShowAppOpen f16026b;

            {
                this.f16026b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i11, KeyEvent keyEvent) {
                ActivityAppShowAppOpen activityAppShowAppOpen = this.f16026b;
                switch (i10) {
                    case 0:
                        if (i11 != 20) {
                            int i12 = ActivityAppShowAppOpen.G;
                            activityAppShowAppOpen.getClass();
                            break;
                        } else if (activityAppShowAppOpen.F.b() == 0) {
                        }
                        break;
                    default:
                        if (i11 != 20) {
                            int i13 = ActivityAppShowAppOpen.G;
                            activityAppShowAppOpen.getClass();
                            break;
                        } else if (activityAppShowAppOpen.F.b() == 0) {
                        }
                        break;
                }
                return false;
            }
        });
        ConstraintLayout constraintLayout2 = (ConstraintLayout) findViewById(R.id.v_btn_add);
        this.D = constraintLayout2;
        final int i11 = 1;
        constraintLayout2.setOnClickListener(new View.OnClickListener(this) { // from class: ua.w

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppShowAppOpen f16006b;

            {
                this.f16006b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppShowAppOpen activityAppShowAppOpen = this.f16006b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityAppShowAppOpen.G;
                        activityAppShowAppOpen.finish();
                        break;
                    default:
                        int i12 = ActivityAppShowAppOpen.G;
                        activityAppShowAppOpen.getClass();
                        new ed(activityAppShowAppOpen, activityAppShowAppOpen.A, false, new y(activityAppShowAppOpen)).show();
                        break;
                }
            }
        });
        this.D.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.x

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppShowAppOpen f16026b;

            {
                this.f16026b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                ActivityAppShowAppOpen activityAppShowAppOpen = this.f16026b;
                switch (i11) {
                    case 0:
                        if (i112 != 20) {
                            int i12 = ActivityAppShowAppOpen.G;
                            activityAppShowAppOpen.getClass();
                            break;
                        } else if (activityAppShowAppOpen.F.b() == 0) {
                        }
                        break;
                    default:
                        if (i112 != 20) {
                            int i13 = ActivityAppShowAppOpen.G;
                            activityAppShowAppOpen.getClass();
                            break;
                        } else if (activityAppShowAppOpen.F.b() == 0) {
                        }
                        break;
                }
                return false;
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.E = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this, 1, false));
        this.F = new z4(this);
        o oVar = v.f4106a.K0;
        for (int i12 = 0; i12 < oVar.f19478a.size(); i12++) {
            s sVarG = oVar.l(i12).g();
            this.F.q(new SwitchAppBean(sVarG.o("fromName").i(), sVarG.o("fromPackage").i(), sVarG.o("toName").i(), sVarG.o("toPackage").i(), sVarG.o("toStartClass").i()));
        }
        this.E.setAdapter(this.F);
        this.F.f2881e = new y(this);
    }

    public final void x() {
        o oVar = new o();
        for (SwitchAppBean switchAppBean : this.F.v()) {
            s sVar = new s();
            sVar.m("fromName", switchAppBean.fromAppName);
            sVar.m("fromPackage", switchAppBean.fromAppPack);
            sVar.m("toName", switchAppBean.toAppName);
            sVar.m("toPackage", switchAppBean.toAppPack);
            sVar.m("toStartClass", switchAppBean.toStartClass);
            oVar.k(sVar);
        }
        w wVar = v.f4106a;
        wVar.K0 = oVar;
        try {
            wVar.f4123i.j("Auto_task_switch_app", oVar);
        } catch (Exception unused) {
        }
        wVar.m();
        this.F.b();
    }
}
