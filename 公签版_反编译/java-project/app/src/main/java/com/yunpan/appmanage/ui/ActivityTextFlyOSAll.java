package com.yunpan.appmanage.ui;

import android.content.Context;
import android.os.Looper;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameIcoTypeBean;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.carsdk.x;
import com.yunpan.appmanage.util.a0;
import da.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import ua.g5;
import ua.i1;
import x9.h2;
import x9.t0;

/* loaded from: classes.dex */
public class ActivityTextFlyOSAll extends g {
    public static final /* synthetic */ int L = 0;
    public TvRecyclerView C;
    public TvRecyclerView E;
    public h2 F;
    public x H;
    public final t0 D = new t0(0);
    public final HashMap G = new HashMap();
    public final ArrayList I = new ArrayList();
    public final u K = new u(this, Looper.getMainLooper(), 22);

    public static String x(Object obj) {
        return obj == null ? "null" : obj.getClass().isArray() ? obj instanceof int[] ? Arrays.toString((int[]) obj) : obj instanceof long[] ? Arrays.toString((long[]) obj) : obj instanceof double[] ? Arrays.toString((double[]) obj) : obj instanceof boolean[] ? Arrays.toString((boolean[]) obj) : obj instanceof char[] ? Arrays.toString((char[]) obj) : obj instanceof byte[] ? Arrays.toString((byte[]) obj) : obj instanceof short[] ? Arrays.toString((short[]) obj) : obj instanceof float[] ? Arrays.toString((float[]) obj) : Arrays.deepToString((Object[]) obj) : obj.toString();
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        this.H.m();
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
        t0Var.f2881e = new g5(10, this);
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list);
        this.E = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7GridLayoutManager(this.A, 3));
        h2 h2Var = new h2();
        this.F = h2Var;
        this.E.setAdapter(h2Var);
        try {
            this.H = new x(this.A, true, new i1(22, this));
        } catch (Exception unused) {
            a0.u("该系统不支持此功能");
            finish();
        }
    }
}
