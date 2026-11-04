package com.yunpan.appmanage.ui;

import android.content.Context;
import android.graphics.Point;
import android.view.View;
import c6.e;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameIcoTypeBean;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import com.yunpan.appmanage.ui.ActivitySidebar;
import com.yunpan.appmanage.ui.ActivitySidebarSet;
import da.b;
import da.g;
import ha.fa;
import java.util.ArrayList;
import java.util.Collections;
import q4.a;
import ua.p6;
import x9.t0;
import x9.t2;
import x9.u0;
import z7.o;
import z7.s;

/* loaded from: classes.dex */
public class ActivitySidebar extends g {
    public static final /* synthetic */ int P = 0;
    public s C;
    public TvRecyclerView D;
    public TvRecyclerView F;
    public TvRecyclerView H;
    public TvRecyclerView K;
    public StrIntBoolBean N;
    public StrIntBoolBean O;
    public final t0 E = new t0(0);
    public final u0 G = new u0();
    public final u0 I = new u0();
    public final t2 L = new t2();
    public int M = -1;

    public final void A(int i10) {
        t2 t2Var = this.L;
        if (t2Var.b() == 1) {
            this.D.requestFocus();
        }
        t2Var.C(i10);
        this.C.o(this.N.strValue).g().p(this.O.value_str2).n(i10);
        a.X(this.A, this.C);
    }

    @Override // da.g, androidx.fragment.app.j0, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.C == null) {
            return;
        }
        this.C = a.x(this.A);
        x();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_sidebar;
    }

    @Override // da.g
    public final void u() {
        s sVarX = a.x(this.A);
        this.C = sVarX;
        if (sVarX == null) {
            s sVar = new s();
            this.C = sVar;
            Boolean bool = Boolean.FALSE;
            sVar.k("isOn", bool);
            s sVar2 = this.C;
            Boolean bool2 = Boolean.TRUE;
            sVar2.k("leftOn", bool2);
            this.C.k("rightOn", bool);
            this.C.k("bottomOn", bool);
            this.C.k("topOn", bool);
            Point pointR = p000if.a.R(this.A);
            int i10 = pointR.x / 40;
            int i11 = pointR.y / 24;
            this.C.l("leftSize", Integer.valueOf(i10));
            this.C.l("rightSize", Integer.valueOf(i10));
            this.C.l("bottomSize", Integer.valueOf(i11));
            this.C.l("topSize", Integer.valueOf(i11));
            this.C.l("leftSplit", 1);
            this.C.l("rightSplit", 1);
            this.C.l("bottomSplit", 1);
            this.C.l("topSplit", 1);
            this.C.l("animation", 1);
            this.C.k("showView", bool);
            this.C.k("avoidInputMethod", bool2);
            this.C.k("autoCloseWhenScreenOff", bool2);
            this.C.l("effect", 1);
            this.C.m("effectName", "边缘多彩光效");
            s sVar3 = new s();
            for (int i12 = 1; i12 < 4; i12++) {
                sVar3.j(b.a(i12, "右滑"), new o());
                sVar3.j("上滑" + i12, new o());
                sVar3.j("下滑" + i12, new o());
                sVar3.j("单击" + i12, new o());
                sVar3.j("长按" + i12, new o());
            }
            this.C.j("左侧", sVar3);
            s sVar4 = new s();
            for (int i13 = 1; i13 < 4; i13++) {
                sVar4.j(b.a(i13, "左滑"), new o());
                sVar4.j("上滑" + i13, new o());
                sVar4.j("下滑" + i13, new o());
                sVar4.j("单击" + i13, new o());
                sVar4.j("长按" + i13, new o());
            }
            this.C.j("右侧", sVar4);
            s sVar5 = new s();
            for (int i14 = 1; i14 < 4; i14++) {
                sVar5.j(b.a(i14, "上滑"), new o());
                sVar5.j("左滑" + i14, new o());
                sVar5.j("右滑" + i14, new o());
                sVar5.j("单击" + i14, new o());
                sVar5.j("长按" + i14, new o());
            }
            this.C.j("底部", sVar5);
            s sVar6 = new s();
            for (int i15 = 1; i15 < 4; i15++) {
                sVar6.j(b.a(i15, "下滑"), new o());
                sVar6.j("左滑" + i15, new o());
                sVar6.j("右滑" + i15, new o());
                sVar6.j("单击" + i15, new o());
                sVar6.j("长按" + i15, new o());
            }
            this.C.j("顶部", sVar6);
            a.X(this.A, this.C);
        }
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_top);
        this.D = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 0, false));
        NameIcoTypeBean nameIcoTypeBean = new NameIcoTypeBean(R.drawable.return2, "返回", 1);
        t0 t0Var = this.E;
        t0Var.q(nameIcoTypeBean);
        t0Var.q(new NameIcoTypeBean(R.drawable.shezhi3, "设置", 1));
        t0Var.q(new NameIcoTypeBean(this.C.o("isOn").b() ? R.drawable.tp_check1 : R.drawable.tp_check2, "开启侧边手势", 2));
        t0Var.q(new NameIcoTypeBean(R.drawable.add1, "添加映射", 1));
        this.D.setAdapter(t0Var);
        final int i16 = 0;
        t0Var.f2881e = new e(this) { // from class: ua.n6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySidebar f15849b;

            {
                this.f15849b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i17) {
                ActivitySidebar activitySidebar = this.f15849b;
                int iC = 0;
                switch (i16) {
                    case 0:
                        int i18 = ActivitySidebar.P;
                        if (i17 == 0) {
                            activitySidebar.finish();
                            break;
                        } else if (i17 == 1) {
                            activitySidebar.w(ActivitySidebarSet.class);
                            break;
                        } else if (i17 == 2) {
                            if (activitySidebar.I.b() == 0 && !activitySidebar.C.o("isOn").b()) {
                                com.yunpan.appmanage.util.a0.u("先去设置里面开启您需要的侧边");
                                break;
                            } else {
                                z7.s sVar7 = activitySidebar.C;
                                sVar7.k("isOn", Boolean.valueOf(true ^ sVar7.o("isOn").b()));
                                q4.a.X(activitySidebar.A, activitySidebar.C);
                                x9.t0 t0Var2 = activitySidebar.E;
                                ((NameIcoTypeBean) t0Var2.t(i17)).resId = activitySidebar.C.o("isOn").b() ? R.drawable.tp_check1 : R.drawable.tp_check2;
                                t0Var2.e(i17);
                                break;
                            }
                        } else if (i17 == 3) {
                            ha.t8.a(activitySidebar, activitySidebar.A, -1, false, new i1(16, activitySidebar));
                            break;
                        } else {
                            activitySidebar.getClass();
                            break;
                        }
                        break;
                    case 1:
                        x9.u0 u0Var = activitySidebar.G;
                        u0Var.F(i17);
                        activitySidebar.N = (StrIntBoolBean) u0Var.t(i17);
                        activitySidebar.y();
                        break;
                    case 2:
                        x9.u0 u0Var2 = activitySidebar.I;
                        u0Var2.F(i17);
                        activitySidebar.O = (StrIntBoolBean) u0Var2.t(i17);
                        activitySidebar.z();
                        break;
                    default:
                        ActivitySidebar activitySidebar2 = this.f15849b;
                        if (((z7.s) activitySidebar2.L.t(i17)).o("gnType").e() != 3) {
                            activitySidebar2.A(i17);
                            break;
                        } else {
                            da.g gVar2 = activitySidebar2.A;
                            String[] strArr = {"删除", "编辑"};
                            ArrayList arrayList = new ArrayList(2);
                            while (iC < 2) {
                                String str = strArr[iC];
                                iC = g.b.c(str, arrayList, str, iC, 1);
                            }
                            new fa(activitySidebar2, gVar2, null, Collections.unmodifiableList(arrayList), new o6(activitySidebar2, i17)).show();
                            break;
                        }
                }
            }
        };
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list_cb);
        this.F = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        TvRecyclerView tvRecyclerView3 = this.F;
        u0 u0Var = this.G;
        tvRecyclerView3.setAdapter(u0Var);
        final int i17 = 1;
        u0Var.f2881e = new e(this) { // from class: ua.n6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySidebar f15849b;

            {
                this.f15849b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i172) {
                ActivitySidebar activitySidebar = this.f15849b;
                int iC = 0;
                switch (i17) {
                    case 0:
                        int i18 = ActivitySidebar.P;
                        if (i172 == 0) {
                            activitySidebar.finish();
                            break;
                        } else if (i172 == 1) {
                            activitySidebar.w(ActivitySidebarSet.class);
                            break;
                        } else if (i172 == 2) {
                            if (activitySidebar.I.b() == 0 && !activitySidebar.C.o("isOn").b()) {
                                com.yunpan.appmanage.util.a0.u("先去设置里面开启您需要的侧边");
                                break;
                            } else {
                                z7.s sVar7 = activitySidebar.C;
                                sVar7.k("isOn", Boolean.valueOf(true ^ sVar7.o("isOn").b()));
                                q4.a.X(activitySidebar.A, activitySidebar.C);
                                x9.t0 t0Var2 = activitySidebar.E;
                                ((NameIcoTypeBean) t0Var2.t(i172)).resId = activitySidebar.C.o("isOn").b() ? R.drawable.tp_check1 : R.drawable.tp_check2;
                                t0Var2.e(i172);
                                break;
                            }
                        } else if (i172 == 3) {
                            ha.t8.a(activitySidebar, activitySidebar.A, -1, false, new i1(16, activitySidebar));
                            break;
                        } else {
                            activitySidebar.getClass();
                            break;
                        }
                        break;
                    case 1:
                        x9.u0 u0Var2 = activitySidebar.G;
                        u0Var2.F(i172);
                        activitySidebar.N = (StrIntBoolBean) u0Var2.t(i172);
                        activitySidebar.y();
                        break;
                    case 2:
                        x9.u0 u0Var22 = activitySidebar.I;
                        u0Var22.F(i172);
                        activitySidebar.O = (StrIntBoolBean) u0Var22.t(i172);
                        activitySidebar.z();
                        break;
                    default:
                        ActivitySidebar activitySidebar2 = this.f15849b;
                        if (((z7.s) activitySidebar2.L.t(i172)).o("gnType").e() != 3) {
                            activitySidebar2.A(i172);
                            break;
                        } else {
                            da.g gVar2 = activitySidebar2.A;
                            String[] strArr = {"删除", "编辑"};
                            ArrayList arrayList = new ArrayList(2);
                            while (iC < 2) {
                                String str = strArr[iC];
                                iC = g.b.c(str, arrayList, str, iC, 1);
                            }
                            new fa(activitySidebar2, gVar2, null, Collections.unmodifiableList(arrayList), new o6(activitySidebar2, i172)).show();
                            break;
                        }
                }
            }
        };
        TvRecyclerView tvRecyclerView4 = (TvRecyclerView) findViewById(R.id.v_list_key);
        this.H = tvRecyclerView4;
        tvRecyclerView4.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        TvRecyclerView tvRecyclerView5 = this.H;
        u0 u0Var2 = this.I;
        tvRecyclerView5.setAdapter(u0Var2);
        final int i18 = 2;
        u0Var2.f2881e = new e(this) { // from class: ua.n6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySidebar f15849b;

            {
                this.f15849b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i172) {
                ActivitySidebar activitySidebar = this.f15849b;
                int iC = 0;
                switch (i18) {
                    case 0:
                        int i182 = ActivitySidebar.P;
                        if (i172 == 0) {
                            activitySidebar.finish();
                            break;
                        } else if (i172 == 1) {
                            activitySidebar.w(ActivitySidebarSet.class);
                            break;
                        } else if (i172 == 2) {
                            if (activitySidebar.I.b() == 0 && !activitySidebar.C.o("isOn").b()) {
                                com.yunpan.appmanage.util.a0.u("先去设置里面开启您需要的侧边");
                                break;
                            } else {
                                z7.s sVar7 = activitySidebar.C;
                                sVar7.k("isOn", Boolean.valueOf(true ^ sVar7.o("isOn").b()));
                                q4.a.X(activitySidebar.A, activitySidebar.C);
                                x9.t0 t0Var2 = activitySidebar.E;
                                ((NameIcoTypeBean) t0Var2.t(i172)).resId = activitySidebar.C.o("isOn").b() ? R.drawable.tp_check1 : R.drawable.tp_check2;
                                t0Var2.e(i172);
                                break;
                            }
                        } else if (i172 == 3) {
                            ha.t8.a(activitySidebar, activitySidebar.A, -1, false, new i1(16, activitySidebar));
                            break;
                        } else {
                            activitySidebar.getClass();
                            break;
                        }
                        break;
                    case 1:
                        x9.u0 u0Var22 = activitySidebar.G;
                        u0Var22.F(i172);
                        activitySidebar.N = (StrIntBoolBean) u0Var22.t(i172);
                        activitySidebar.y();
                        break;
                    case 2:
                        x9.u0 u0Var222 = activitySidebar.I;
                        u0Var222.F(i172);
                        activitySidebar.O = (StrIntBoolBean) u0Var222.t(i172);
                        activitySidebar.z();
                        break;
                    default:
                        ActivitySidebar activitySidebar2 = this.f15849b;
                        if (((z7.s) activitySidebar2.L.t(i172)).o("gnType").e() != 3) {
                            activitySidebar2.A(i172);
                            break;
                        } else {
                            da.g gVar2 = activitySidebar2.A;
                            String[] strArr = {"删除", "编辑"};
                            ArrayList arrayList = new ArrayList(2);
                            while (iC < 2) {
                                String str = strArr[iC];
                                iC = g.b.c(str, arrayList, str, iC, 1);
                            }
                            new fa(activitySidebar2, gVar2, null, Collections.unmodifiableList(arrayList), new o6(activitySidebar2, i172)).show();
                            break;
                        }
                }
            }
        };
        TvRecyclerView tvRecyclerView6 = (TvRecyclerView) findViewById(R.id.v_list_map);
        this.K = tvRecyclerView6;
        tvRecyclerView6.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        TvRecyclerView tvRecyclerView7 = this.K;
        t2 t2Var = this.L;
        tvRecyclerView7.setAdapter(t2Var);
        d6.a aVar = new d6.a();
        aVar.f4496h = 3;
        aVar.f4495g = false;
        aVar.f4497i = new p6(this);
        aVar.d(this.K);
        aVar.g(t2Var);
        final int i19 = 3;
        t2Var.f2881e = new e(this) { // from class: ua.n6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySidebar f15849b;

            {
                this.f15849b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i172) {
                ActivitySidebar activitySidebar = this.f15849b;
                int iC = 0;
                switch (i19) {
                    case 0:
                        int i182 = ActivitySidebar.P;
                        if (i172 == 0) {
                            activitySidebar.finish();
                            break;
                        } else if (i172 == 1) {
                            activitySidebar.w(ActivitySidebarSet.class);
                            break;
                        } else if (i172 == 2) {
                            if (activitySidebar.I.b() == 0 && !activitySidebar.C.o("isOn").b()) {
                                com.yunpan.appmanage.util.a0.u("先去设置里面开启您需要的侧边");
                                break;
                            } else {
                                z7.s sVar7 = activitySidebar.C;
                                sVar7.k("isOn", Boolean.valueOf(true ^ sVar7.o("isOn").b()));
                                q4.a.X(activitySidebar.A, activitySidebar.C);
                                x9.t0 t0Var2 = activitySidebar.E;
                                ((NameIcoTypeBean) t0Var2.t(i172)).resId = activitySidebar.C.o("isOn").b() ? R.drawable.tp_check1 : R.drawable.tp_check2;
                                t0Var2.e(i172);
                                break;
                            }
                        } else if (i172 == 3) {
                            ha.t8.a(activitySidebar, activitySidebar.A, -1, false, new i1(16, activitySidebar));
                            break;
                        } else {
                            activitySidebar.getClass();
                            break;
                        }
                        break;
                    case 1:
                        x9.u0 u0Var22 = activitySidebar.G;
                        u0Var22.F(i172);
                        activitySidebar.N = (StrIntBoolBean) u0Var22.t(i172);
                        activitySidebar.y();
                        break;
                    case 2:
                        x9.u0 u0Var222 = activitySidebar.I;
                        u0Var222.F(i172);
                        activitySidebar.O = (StrIntBoolBean) u0Var222.t(i172);
                        activitySidebar.z();
                        break;
                    default:
                        ActivitySidebar activitySidebar2 = this.f15849b;
                        if (((z7.s) activitySidebar2.L.t(i172)).o("gnType").e() != 3) {
                            activitySidebar2.A(i172);
                            break;
                        } else {
                            da.g gVar2 = activitySidebar2.A;
                            String[] strArr = {"删除", "编辑"};
                            ArrayList arrayList = new ArrayList(2);
                            while (iC < 2) {
                                String str = strArr[iC];
                                iC = g.b.c(str, arrayList, str, iC, 1);
                            }
                            new fa(activitySidebar2, gVar2, null, Collections.unmodifiableList(arrayList), new o6(activitySidebar2, i172)).show();
                            break;
                        }
                }
            }
        };
        x();
    }

    public final void x() {
        ArrayList arrayList = new ArrayList();
        u0 u0Var = this.G;
        u0Var.E(arrayList);
        if (this.C.o("leftOn").b()) {
            u0Var.q(new StrIntBoolBean("左侧"));
        }
        if (this.C.o("rightOn").b()) {
            u0Var.q(new StrIntBoolBean("右侧"));
        }
        if (this.C.o("bottomOn").b()) {
            u0Var.q(new StrIntBoolBean("底部"));
        }
        if (this.C.o("topOn").b()) {
            u0Var.q(new StrIntBoolBean("顶部"));
        }
        if (u0Var.b() == 0) {
            this.I.E(new ArrayList());
            this.L.E(new ArrayList());
            return;
        }
        StrIntBoolBean strIntBoolBean = (StrIntBoolBean) u0Var.t(0);
        this.N = strIntBoolBean;
        strIntBoolBean.boolValue = true;
        u0Var.e(0);
        y();
    }

    public final void y() {
        ActivitySidebar activitySidebar = this;
        ArrayList arrayList = new ArrayList();
        u0 u0Var = activitySidebar.I;
        u0Var.E(arrayList);
        if (activitySidebar.N.strValue.startsWith("左")) {
            if (activitySidebar.C.o("leftSplit").e() == 1) {
                u0Var.q(new StrIntBoolBean("右滑", "右滑1"));
                u0Var.q(new StrIntBoolBean("上滑", "上滑1"));
                u0Var.q(new StrIntBoolBean("下滑", "下滑1"));
                u0Var.q(new StrIntBoolBean("单击", "单击1"));
                u0Var.q(new StrIntBoolBean("长按", "长按1"));
                activitySidebar = this;
            } else {
                u0Var.q(new StrIntBoolBean("右滑(上)", "右滑1"));
                u0Var.q(new StrIntBoolBean("上滑(上)", "上滑1"));
                u0Var.q(new StrIntBoolBean("下滑(上)", "下滑1"));
                u0Var.q(new StrIntBoolBean("单击(上)", "单击1"));
                u0Var.q(new StrIntBoolBean("长按(上)", "长按1"));
                u0Var.q(new StrIntBoolBean("右滑(下)", "右滑2"));
                u0Var.q(new StrIntBoolBean("上滑(下)", "上滑2"));
                u0Var.q(new StrIntBoolBean("下滑(下)", "下滑2"));
                u0Var.q(new StrIntBoolBean("单击(下)", "单击2"));
                u0Var.q(new StrIntBoolBean("长按(下)", "长按2"));
                activitySidebar = this;
                if (activitySidebar.C.o("leftSplit").e() == 3) {
                    u0Var.q(new StrIntBoolBean("右滑(中)", "右滑3"));
                    u0Var.q(new StrIntBoolBean("上滑(中)", "上滑3"));
                    u0Var.q(new StrIntBoolBean("下滑(中)", "下滑3"));
                    u0Var.q(new StrIntBoolBean("单击(中)", "单击3"));
                    u0Var.q(new StrIntBoolBean("长按(中)", "长按3"));
                }
            }
        } else if (activitySidebar.N.strValue.startsWith("右")) {
            if (activitySidebar.C.o("rightSplit").e() == 1) {
                u0Var.q(new StrIntBoolBean("左滑", "左滑1"));
                u0Var.q(new StrIntBoolBean("上滑", "上滑1"));
                u0Var.q(new StrIntBoolBean("下滑", "下滑1"));
                u0Var.q(new StrIntBoolBean("单击", "单击1"));
                u0Var.q(new StrIntBoolBean("长按", "长按1"));
            } else {
                u0Var.q(new StrIntBoolBean("左滑(上)", "左滑1"));
                u0Var.q(new StrIntBoolBean("上滑(上)", "上滑1"));
                u0Var.q(new StrIntBoolBean("下滑(上)", "下滑1"));
                u0Var.q(new StrIntBoolBean("单击(上)", "单击1"));
                u0Var.q(new StrIntBoolBean("长按(上)", "长按1"));
                u0Var.q(new StrIntBoolBean("左滑(下)", "左滑2"));
                u0Var.q(new StrIntBoolBean("上滑(下)", "上滑2"));
                u0Var.q(new StrIntBoolBean("下滑(下)", "下滑2"));
                u0Var.q(new StrIntBoolBean("单击(下)", "单击2"));
                u0Var.q(new StrIntBoolBean("长按(下)", "长按2"));
                if (activitySidebar.C.o("rightSplit").e() == 3) {
                    u0Var.q(new StrIntBoolBean("左滑(中)", "左滑3"));
                    u0Var.q(new StrIntBoolBean("上滑(中)", "上滑3"));
                    u0Var.q(new StrIntBoolBean("下滑(中)", "下滑3"));
                    u0Var.q(new StrIntBoolBean("单击(中)", "单击3"));
                    u0Var.q(new StrIntBoolBean("长按(中)", "长按3"));
                }
            }
        } else if (activitySidebar.N.strValue.startsWith("底")) {
            if (activitySidebar.C.o("bottomSplit").e() == 1) {
                u0Var.q(new StrIntBoolBean("上滑", "上滑1"));
                u0Var.q(new StrIntBoolBean("左滑", "左滑1"));
                u0Var.q(new StrIntBoolBean("右滑", "右滑1"));
                u0Var.q(new StrIntBoolBean("单击", "单击1"));
                u0Var.q(new StrIntBoolBean("长按", "长按1"));
            } else {
                u0Var.q(new StrIntBoolBean("上滑(左)", "上滑1"));
                u0Var.q(new StrIntBoolBean("左滑(左)", "左滑1"));
                u0Var.q(new StrIntBoolBean("右滑(左)", "右滑1"));
                u0Var.q(new StrIntBoolBean("单击(左)", "单击1"));
                u0Var.q(new StrIntBoolBean("长按(左)", "长按1"));
                u0Var.q(new StrIntBoolBean("上滑(右)", "上滑2"));
                u0Var.q(new StrIntBoolBean("左滑(右)", "左滑2"));
                u0Var.q(new StrIntBoolBean("右滑(右)", "右滑2"));
                u0Var.q(new StrIntBoolBean("单击(右)", "单击2"));
                u0Var.q(new StrIntBoolBean("长按(右)", "长按2"));
                if (activitySidebar.C.o("bottomSplit").e() == 3) {
                    u0Var.q(new StrIntBoolBean("上滑(中)", "上滑3"));
                    u0Var.q(new StrIntBoolBean("左滑(中)", "左滑3"));
                    u0Var.q(new StrIntBoolBean("右滑(中)", "右滑3"));
                    u0Var.q(new StrIntBoolBean("单击(中)", "单击3"));
                    u0Var.q(new StrIntBoolBean("长按(中)", "长按3"));
                }
            }
        } else if (activitySidebar.N.strValue.startsWith("顶")) {
            if (activitySidebar.C.o("topSplit").e() == 1) {
                u0Var.q(new StrIntBoolBean("下滑", "下滑1"));
                u0Var.q(new StrIntBoolBean("左滑", "左滑1"));
                u0Var.q(new StrIntBoolBean("右滑", "右滑1"));
                u0Var.q(new StrIntBoolBean("单击", "单击1"));
                u0Var.q(new StrIntBoolBean("长按", "长按1"));
            } else {
                u0Var.q(new StrIntBoolBean("下滑(左)", "下滑1"));
                u0Var.q(new StrIntBoolBean("左滑(左)", "左滑1"));
                u0Var.q(new StrIntBoolBean("右滑(左)", "右滑1"));
                u0Var.q(new StrIntBoolBean("单击(左)", "单击1"));
                u0Var.q(new StrIntBoolBean("长按(左)", "长按1"));
                u0Var.q(new StrIntBoolBean("下滑(右)", "下滑2"));
                u0Var.q(new StrIntBoolBean("左滑(右)", "左滑2"));
                u0Var.q(new StrIntBoolBean("右滑(右)", "右滑2"));
                u0Var.q(new StrIntBoolBean("单击(右)", "单击2"));
                u0Var.q(new StrIntBoolBean("长按(右)", "长按2"));
                if (activitySidebar.C.o("topSplit").e() == 3) {
                    u0Var.q(new StrIntBoolBean("下滑(中)", "下滑3"));
                    u0Var.q(new StrIntBoolBean("左滑(中)", "左滑3"));
                    u0Var.q(new StrIntBoolBean("右滑(中)", "右滑3"));
                    u0Var.q(new StrIntBoolBean("单击(中)", "单击3"));
                    u0Var.q(new StrIntBoolBean("长按(中)", "长按3"));
                }
            }
        }
        StrIntBoolBean strIntBoolBean = (StrIntBoolBean) u0Var.t(0);
        activitySidebar.O = strIntBoolBean;
        strIntBoolBean.boolValue = true;
        u0Var.e(0);
        z();
    }

    public final void z() {
        ArrayList arrayList = new ArrayList();
        t2 t2Var = this.L;
        t2Var.E(arrayList);
        o oVarP = this.C.q(this.N.strValue).p(this.O.value_str2);
        for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
            t2Var.q(oVarP.l(i10).g());
        }
    }
}
