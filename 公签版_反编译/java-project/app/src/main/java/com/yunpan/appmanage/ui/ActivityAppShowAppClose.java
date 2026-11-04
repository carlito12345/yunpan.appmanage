package com.yunpan.appmanage.ui;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.SwitchAppBean;
import com.yunpan.appmanage.ui.ActivityAppShowAppClose;
import da.g;
import ha.ed;
import ua.v;
import wa.t;
import wa.u;
import x9.z4;
import z7.o;
import z7.s;

/* loaded from: classes.dex */
public class ActivityAppShowAppClose extends g {
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
        ((TextView) findViewById(R.id.v_title)).setText("某个应用打开时，自动关闭某个应用");
        ((TextView) findViewById(R.id.v_content)).setText("应用场景：比如系统中有两个音乐应用，当打开某个音乐应用时，自动关闭另外一个音乐应用，避免同时播放");
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_return);
        this.C = constraintLayout;
        final int i10 = 0;
        constraintLayout.setOnClickListener(new View.OnClickListener(this) { // from class: ua.t

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppShowAppClose f15957b;

            {
                this.f15957b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppShowAppClose activityAppShowAppClose = this.f15957b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityAppShowAppClose.G;
                        activityAppShowAppClose.finish();
                        break;
                    default:
                        int i12 = ActivityAppShowAppClose.G;
                        activityAppShowAppClose.getClass();
                        new ed(activityAppShowAppClose, activityAppShowAppClose.A, true, new v(activityAppShowAppClose)).show();
                        break;
                }
            }
        });
        this.C.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.u

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppShowAppClose f15975b;

            {
                this.f15975b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i11, KeyEvent keyEvent) {
                ActivityAppShowAppClose activityAppShowAppClose = this.f15975b;
                switch (i10) {
                    case 0:
                        if (i11 != 20) {
                            int i12 = ActivityAppShowAppClose.G;
                            activityAppShowAppClose.getClass();
                            break;
                        } else if (activityAppShowAppClose.F.b() == 0) {
                        }
                        break;
                    default:
                        if (i11 != 20) {
                            int i13 = ActivityAppShowAppClose.G;
                            activityAppShowAppClose.getClass();
                            break;
                        } else if (activityAppShowAppClose.F.b() == 0) {
                        }
                        break;
                }
                return false;
            }
        });
        ConstraintLayout constraintLayout2 = (ConstraintLayout) findViewById(R.id.v_btn_add);
        this.D = constraintLayout2;
        final int i11 = 1;
        constraintLayout2.setOnClickListener(new View.OnClickListener(this) { // from class: ua.t

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppShowAppClose f15957b;

            {
                this.f15957b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppShowAppClose activityAppShowAppClose = this.f15957b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityAppShowAppClose.G;
                        activityAppShowAppClose.finish();
                        break;
                    default:
                        int i12 = ActivityAppShowAppClose.G;
                        activityAppShowAppClose.getClass();
                        new ed(activityAppShowAppClose, activityAppShowAppClose.A, true, new v(activityAppShowAppClose)).show();
                        break;
                }
            }
        });
        this.D.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.u

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppShowAppClose f15975b;

            {
                this.f15975b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                ActivityAppShowAppClose activityAppShowAppClose = this.f15975b;
                switch (i11) {
                    case 0:
                        if (i112 != 20) {
                            int i12 = ActivityAppShowAppClose.G;
                            activityAppShowAppClose.getClass();
                            break;
                        } else if (activityAppShowAppClose.F.b() == 0) {
                        }
                        break;
                    default:
                        if (i112 != 20) {
                            int i13 = ActivityAppShowAppClose.G;
                            activityAppShowAppClose.getClass();
                            break;
                        } else if (activityAppShowAppClose.F.b() == 0) {
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
        o oVar = t.f17728a.M;
        for (int i12 = 0; i12 < oVar.f19478a.size(); i12++) {
            s sVarG = oVar.l(i12).g();
            this.F.q(new SwitchAppBean(sVarG.o("fromName").i(), sVarG.o("fromPackage").i(), sVarG.o("toName").i(), sVarG.o("toPackage").i(), ""));
        }
        this.E.setAdapter(this.F);
        this.F.f2881e = new v(this);
    }

    public final void x() {
        o oVar = new o();
        for (SwitchAppBean switchAppBean : this.F.v()) {
            s sVar = new s();
            sVar.m("fromName", switchAppBean.fromAppName);
            sVar.m("fromPackage", switchAppBean.fromAppPack);
            sVar.m("toName", switchAppBean.toAppName);
            sVar.m("toPackage", switchAppBean.toAppPack);
            oVar.k(sVar);
        }
        u uVar = t.f17728a;
        uVar.getClass();
        try {
            uVar.M = oVar;
            uVar.f17731b.j("AutoTask_app_show_app_close", oVar);
        } catch (Exception unused) {
        }
        uVar.i();
    }
}
