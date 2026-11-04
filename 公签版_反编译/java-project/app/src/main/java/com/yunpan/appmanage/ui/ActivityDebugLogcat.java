package com.yunpan.appmanage.ui;

import android.content.Context;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import da.g;
import ph.j;
import ua.g1;
import wa.t;
import wa.u;
import x9.k3;
import x9.l3;

/* loaded from: classes.dex */
public class ActivityDebugLogcat extends g {
    public static final /* synthetic */ int E = 0;
    public TvRecyclerView C;
    public k3 D;

    @Override // da.g
    public final int t() {
        return R.layout.activity_logcat;
    }

    @Override // da.g
    public final void u() {
        ((ConstraintLayout) findViewById(R.id.v_btn_return)).setOnClickListener(new g1(this, 0));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this, 1, false));
        k3 k3Var = new k3();
        this.D = k3Var;
        u uVar = t.f17728a;
        boolean z = uVar.f17753t;
        int i10 = R.drawable.tp_check2;
        k3Var.q(new l3(z ? R.drawable.tp_check1 : R.drawable.tp_check2, "开机任务调试日志（会在[内部存储]里生成日志文件：log-开机日志.txt）"));
        this.D.q(new l3(uVar.f17754u ? R.drawable.tp_check1 : R.drawable.tp_check2, "日志映射调试日志（会在[内部存储]里生成日志文件：log-日志映射.txt）"));
        k3 k3Var2 = this.D;
        if (uVar.f17755v) {
            i10 = R.drawable.tp_check1;
        }
        k3Var2.q(new l3(i10, "adb连接调试日志（会在[内部存储]里生成日志文件：log-adb.txt）"));
        this.C.setAdapter(this.D);
        this.D.f2881e = new j(15, this);
    }
}
