package com.yunpan.appmanage.ui;

import android.content.Context;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameIcoTypeBean;
import da.g;
import ha.h3;
import java.util.ArrayList;
import ma.b;
import mc.c;
import ph.j;
import rc.f;
import x9.p2;
import x9.t0;

/* loaded from: classes.dex */
public class ActivityInputMethod extends g {
    public static final /* synthetic */ int C = 0;

    @Override // da.g
    public final int t() {
        return R.layout.activity_key_map_logcat;
    }

    @Override // da.g
    public final void u() {
        TextView textView = (TextView) findViewById(R.id.v_title);
        textView.setText("设置默认输入法");
        textView.setVisibility(0);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_gn);
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this, 0, false));
        t0 t0Var = new t0(0);
        t0Var.q(new NameIcoTypeBean(R.drawable.return2, "返回", 1));
        t0Var.q(new NameIcoTypeBean(R.drawable.root2, "管理键盘", 1));
        t0Var.q(new NameIcoTypeBean(R.drawable.tp_click1, "选择输入法", 1));
        tvRecyclerView.setAdapter(t0Var);
        t0Var.f2881e = new j(19, this);
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list);
        tvRecyclerView2.setLayoutManager(new V7LinearLayoutManager((Context) this, 1, false));
        p2 p2Var = new p2(this);
        tvRecyclerView2.setAdapter(p2Var);
        p2Var.f2881e = new b(this, 19, p2Var);
        ArrayList arrayList = new ArrayList();
        new c(0, new b(this, 20, arrayList)).d(f.f13757b).a(fc.b.a()).b(new h3(p2Var, 11, arrayList));
    }
}
