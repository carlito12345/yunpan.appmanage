package com.yunpan.appmanage.ui;

import android.content.Context;
import android.os.Looper;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameIcoTypeBean;
import com.yunpan.appmanage.bean.NameValueBean;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.util.a0;
import da.g;
import i6.a;
import java.util.HashMap;
import ua.g5;
import ua.x4;
import x9.h2;
import x9.t0;

/* loaded from: classes.dex */
public class ActivityTextDesaysvVds extends g {
    public static final /* synthetic */ int K = 0;
    public TvRecyclerView C;
    public final t0 D = new t0(0);
    public TvRecyclerView E;
    public h2 F;
    public final u G;
    public final x4 H;
    public boolean I;

    public ActivityTextDesaysvVds() {
        new HashMap();
        this.G = new u(this, Looper.getMainLooper(), 21);
        this.H = new x4(this);
        this.I = false;
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        try {
            a aVarA = a.a();
            x4 x4Var = this.H;
            aVarA.getClass();
            a.f(x4Var);
        } catch (Exception unused) {
        }
        this.G.removeCallbacksAndMessages(null);
        super.onDestroy();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_key_map_logcat;
    }

    @Override // da.g
    public final void u() {
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_gn);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 0, false));
        NameIcoTypeBean nameIcoTypeBean = new NameIcoTypeBean(R.drawable.return2, "返回", 1);
        t0 t0Var = this.D;
        t0Var.q(nameIcoTypeBean);
        this.C.setAdapter(t0Var);
        t0Var.f2881e = new g5(8, this);
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list);
        this.E = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7GridLayoutManager(this.A, 3));
        h2 h2Var = new h2();
        this.F = h2Var;
        h2Var.q(new NameValueBean("主驾门", ""));
        this.F.q(new NameValueBean("副驾门", ""));
        this.F.q(new NameValueBean("左后门", ""));
        this.F.q(new NameValueBean("右后门", ""));
        this.F.q(new NameValueBean("后备箱", ""));
        this.F.q(new NameValueBean("引擎盖", ""));
        this.F.q(new NameValueBean("档位", ""));
        this.F.q(new NameValueBean("速度", ""));
        this.F.q(new NameValueBean("远光灯", ""));
        this.F.q(new NameValueBean("近光灯", ""));
        this.E.setAdapter(this.F);
        if (this.I) {
            return;
        }
        this.I = true;
        try {
            k6.a.a().b(this);
            a.a().b(this);
            a.e(this.H, new int[]{15, 16, 17, 18, 19, 47, 26, 0, 23, 39});
        } catch (Throwable unused) {
            a0.u("该系统不支持此功能");
            finish();
        }
    }
}
