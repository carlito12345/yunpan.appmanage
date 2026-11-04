package com.yunpan.appmanage.ui;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import da.g;
import java.util.ArrayList;
import q4.a;
import ua.g1;
import ua.p3;
import x9.m0;
import x9.s2;
import z7.o;
import z7.s;

/* loaded from: classes.dex */
public class ActivityKeymapFlyOS18 extends g {
    public static final /* synthetic */ int K = 0;
    public TvRecyclerView C;
    public TvRecyclerView E;
    public s2 F;
    public ImageView G;
    public final m0 D = new m0();
    public s H = null;
    public final ArrayList I = new ArrayList();

    @Override // da.g, androidx.fragment.app.j0, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.H != null) {
            try {
                this.H = a.r(this.A);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_keymap_general;
    }

    @Override // da.g
    public final void u() {
        ((TextView) findViewById(R.id.v_title)).setText("星愿 Fly 1.7-1.9");
        s sVarR = a.r(this.A);
        this.H = sVarR;
        if (sVarR == null) {
            s sVar = new s();
            this.H = sVar;
            sVar.k("isOn", Boolean.FALSE);
            this.H.j("maps", new o());
            a.T(this.A, this.H);
        }
        findViewById(R.id.v_select_open).setOnClickListener(new g1(this, 16));
        ImageView imageView = (ImageView) findViewById(R.id.v_select_open_ico);
        this.G = imageView;
        imageView.setImageResource(this.H.o("isOn").b() ? R.drawable.tp_check1 : R.drawable.tp_check2);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_gn);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 0, false));
        m0 m0Var = this.D;
        m0Var.q("返回");
        m0Var.q("添加映射");
        m0Var.q("清空");
        m0Var.q("设置");
        m0Var.q("说明");
        this.C.setAdapter(m0Var);
        m0Var.f2881e = new p3(this, 0);
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list);
        this.E = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7GridLayoutManager(this, 3));
        this.F = new s2();
        o oVarP = this.H.p("maps");
        for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
            this.F.q(oVarP.l(i10).g());
        }
        this.E.setAdapter(this.F);
        this.F.f2881e = new p3(this, 1);
    }
}
