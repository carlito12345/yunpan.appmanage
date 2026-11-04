package com.yunpan.appmanage.ui;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import com.autolink.app.vehiclemanager.data.JieTKeymapType;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.util.a0;
import da.g;
import ha.x7;
import java.util.ArrayList;
import q4.a;
import ua.g1;
import ua.s3;
import ua.u3;
import x9.m0;
import x9.s2;
import z7.o;
import z7.s;

/* loaded from: classes.dex */
public class ActivityKeymapJieT extends g {
    public static final /* synthetic */ int P = 0;
    public TvRecyclerView C;
    public TvRecyclerView E;
    public s2 F;
    public ImageView G;
    public s H;
    public final m0 D = new m0();
    public final ArrayList I = new ArrayList();
    public final ArrayList K = new ArrayList();
    public final ArrayList L = new ArrayList();
    public final ArrayList M = new ArrayList();
    public final ArrayList N = new ArrayList();
    public final ArrayList O = new ArrayList();

    @Override // da.g
    public final int t() {
        return R.layout.activity_keymap_general;
    }

    @Override // da.g
    public final void u() {
        ((TextView) findViewById(R.id.v_title)).setText("捷途车机专用映射");
        s sVarS = a.s(this.A);
        this.H = sVarS;
        if (sVarS == null) {
            s sVar = new s();
            this.H = sVar;
            sVar.k("isOn", Boolean.FALSE);
            this.H.j("maps", new o());
        }
        findViewById(R.id.v_select_open).setOnClickListener(new g1(this, 17));
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
        m0Var.q("说明");
        this.C.setAdapter(m0Var);
        m0Var.f2881e = new s3(this, 0);
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list);
        this.E = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7GridLayoutManager(this, 3));
        this.F = new s2();
        o oVarP = this.H.p("maps");
        for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
            this.F.q(oVarP.l(i10).g());
        }
        this.E.setAdapter(this.F);
        this.F.f2881e = new s3(this, 1);
    }

    public final boolean x(int i10) {
        o oVarP = this.H.p("maps");
        for (int i11 = 0; i11 < oVarP.f19478a.size(); i11++) {
            if (android.support.v4.media.session.a.j(oVarP, i11, "type") == JieTKeymapType.MAP_TYPE_KEY.getValue() && android.support.v4.media.session.a.j(oVarP, i11, "key1") == i10) {
                a0.u("已存在此按键映射");
                return true;
            }
        }
        return false;
    }

    public final void y(s sVar, int i10) {
        new x7(this, this, sVar, new u3(this, i10, 1)).show();
    }
}
