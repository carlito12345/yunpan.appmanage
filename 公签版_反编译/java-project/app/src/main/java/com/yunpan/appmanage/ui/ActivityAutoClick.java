package com.yunpan.appmanage.ui;

import android.content.Context;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import da.g;
import ha.g9;
import ph.j;
import wa.t;
import wa.u;
import x9.k3;
import x9.l3;

/* loaded from: classes.dex */
public class ActivityAutoClick extends g {
    public static final /* synthetic */ int E = 0;
    public TvRecyclerView C;
    public k3 D;

    @Override // da.g
    public final int t() {
        return R.layout.activity_auto_click;
    }

    @Override // da.g
    public final void u() {
        findViewById(R.id.v_btn_return).setOnClickListener(new g9(28, this));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this, 1, false));
        k3 k3Var = new k3();
        this.D = k3Var;
        u uVar = t.f17728a;
        boolean z = uVar.V;
        int i10 = R.drawable.tp_check2;
        k3Var.q(new l3(z ? R.drawable.tp_check1 : R.drawable.tp_check2, "自动点确认 (USB请求弹窗、USB调试授权、OTG请求弹窗、无线调试弹窗)"));
        this.D.q(new l3(uVar.Y ? R.drawable.tp_check1 : R.drawable.tp_check2, "自动选桌面 (弹出桌面选择器时自动点击)"));
        k3 k3Var2 = this.D;
        if (uVar.f17732b0) {
            i10 = R.drawable.tp_check1;
        }
        k3Var2.q(new l3(i10, "自动点允许访问一次(读取日志请求弹窗)"));
        this.C.setAdapter(this.D);
        this.D.f2881e = new j(12, this);
    }
}
