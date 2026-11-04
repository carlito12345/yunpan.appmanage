package com.yunpan.appmanage.ui;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import c6.c;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import da.g;
import java.util.ArrayList;
import q4.a;
import ua.w1;
import ua.y1;
import x9.m0;
import x9.t2;
import x9.u0;
import z7.o;
import z7.s;

/* loaded from: classes.dex */
public class ActivityFloatButton extends g {
    public static final /* synthetic */ int N = 0;
    public s C;
    public TvRecyclerView E;
    public TvRecyclerView G;
    public TvRecyclerView I;
    public ImageView M;
    public int D = -1;
    public final m0 F = new m0();
    public final u0 H = new u0();
    public final t2 K = new t2();
    public int L = -1;

    @Override // da.g, androidx.fragment.app.j0, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.C == null) {
            return;
        }
        s sVarN = a.n(this);
        this.C = sVarN;
        if (sVarN == null) {
            return;
        }
        z();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_float_button;
    }

    @Override // da.g
    public final void u() {
        s sVarN = a.n(this);
        this.C = sVarN;
        if (sVarN == null) {
            this.C = new s();
            for (int i10 = 0; i10 < 7; i10++) {
                this.C.j(String.valueOf(i10), new o());
            }
            s sVar = this.C;
            Boolean bool = Boolean.FALSE;
            sVar.k("isOpen", bool);
            this.C.l("ico", 1);
            this.C.l("size", 100);
            this.C.l("trans", 200);
            s sVar2 = this.C;
            Boolean bool2 = Boolean.TRUE;
            sVar2.k("auto_hide", bool2);
            this.C.k("auto_trans", bool);
            this.C.k("antiBurnScreen", bool);
            this.C.k("bootStartTime", bool2);
            for (int i11 = 0; i11 < 7; i11++) {
                if (i11 == 0) {
                    o oVar = new o();
                    s sVar3 = new s();
                    sVar3.l("keyType", -1);
                    sVar3.l("gnType", 6);
                    sVar3.m("name", "返回键");
                    oVar.k(sVar3);
                    this.C.j(String.valueOf(i11), oVar);
                } else {
                    this.C.j(String.valueOf(i11), new o());
                }
            }
            a.O(this.A, this.C);
        } else if (!sVarN.f19480a.containsKey("ico")) {
            this.C.l("ico", 1);
            this.C.l("size", 100);
            this.C.l("trans", 200);
            s sVar4 = this.C;
            Boolean bool3 = Boolean.TRUE;
            sVar4.k("auto_hide", bool3);
            s sVar5 = this.C;
            Boolean bool4 = Boolean.FALSE;
            sVar5.k("auto_trans", bool4);
            this.C.k("antiBurnScreen", bool4);
            this.C.k("bootStartTime", bool3);
            a.O(this.A, this.C);
        }
        ImageView imageView = (ImageView) findViewById(R.id.v_select_open_ico);
        imageView.setImageResource(this.C.o("isOpen").b() ? R.drawable.tp_check1 : R.drawable.tp_check2);
        findViewById(R.id.v_select_open).setOnClickListener(new c(this, 28, imageView));
        this.M = (ImageView) findViewById(R.id.v_ico);
        z();
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_gn);
        this.E = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 0, false));
        m0 m0Var = this.F;
        m0Var.q("返回");
        m0Var.q("设置");
        m0Var.q("添加映射");
        this.E.setAdapter(m0Var);
        m0Var.f2881e = new w1(this, 0);
        StrIntBoolBean strIntBoolBean = new StrIntBoolBean("单击", 0);
        u0 u0Var = this.H;
        u0Var.q(strIntBoolBean);
        u0Var.q(new StrIntBoolBean("双击", 1));
        u0Var.q(new StrIntBoolBean("长按", 2));
        u0Var.q(new StrIntBoolBean("上滑", 3));
        u0Var.q(new StrIntBoolBean("下滑", 4));
        u0Var.q(new StrIntBoolBean("左滑", 5));
        u0Var.q(new StrIntBoolBean("右滑", 6));
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list_key);
        this.G = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        this.G.setAdapter(u0Var);
        u0Var.f2881e = new w1(this, 1);
        TvRecyclerView tvRecyclerView3 = (TvRecyclerView) findViewById(R.id.v_list_map);
        this.I = tvRecyclerView3;
        tvRecyclerView3.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        TvRecyclerView tvRecyclerView4 = this.I;
        t2 t2Var = this.K;
        tvRecyclerView4.setAdapter(t2Var);
        d6.a aVar = new d6.a();
        aVar.f4496h = 3;
        aVar.f4495g = false;
        aVar.f4497i = new y1(this);
        aVar.d(this.I);
        aVar.g(t2Var);
        t2Var.f2881e = new w1(this, 2);
        y(0);
        this.E.setOnInBorderKeyEventListener(new w1(this, 3));
        this.G.setOnInBorderKeyEventListener(new w1(this, 4));
    }

    public final void x(int i10) {
        t2 t2Var = this.K;
        if (t2Var.b() == 1) {
            this.E.requestFocus();
        }
        t2Var.C(i10);
        this.C.p(String.valueOf(this.D)).n(i10);
        a.O(this.A, this.C);
    }

    public final void y(int i10) {
        this.D = i10;
        this.H.F(i10);
        o oVarF = this.C.o(String.valueOf(i10)).f();
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < oVarF.f19478a.size(); i11++) {
            arrayList.add(oVarF.l(i11).g());
        }
        this.K.E(arrayList);
    }

    public final void z() {
        if (this.C.o("isOpen").b()) {
            this.M.setImageDrawable(null);
            return;
        }
        int iE = this.C.o("ico").e();
        if (iE == -1) {
            this.M.setImageBitmap(BitmapFactory.decodeFile(this.A.getFilesDir() + "/FloatButtonIco"));
            return;
        }
        if (iE == 1) {
            this.M.setImageResource(R.drawable.float_icon_transparent_1);
            return;
        }
        if (iE == 2) {
            this.M.setImageResource(R.drawable.float_icon_transparent_2);
            return;
        }
        if (iE == 3) {
            this.M.setImageResource(R.drawable.float_icon_transparent_3);
            return;
        }
        if (iE == 4) {
            this.M.setImageResource(R.drawable.float_icon_transparent_4);
        } else {
            if (iE == 5) {
                this.M.setImageResource(R.drawable.tp_return5);
                return;
            }
            try {
                this.M.setImageResource(iE);
            } catch (Exception unused) {
                this.M.setImageResource(R.drawable.float_icon_transparent_1);
            }
        }
    }
}
