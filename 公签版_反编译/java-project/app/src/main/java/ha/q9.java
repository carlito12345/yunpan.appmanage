package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class q9 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final ea.e f7623g;

    /* renamed from: h, reason: collision with root package name */
    public final z7.s f7624h;

    /* renamed from: i, reason: collision with root package name */
    public int f7625i;

    /* renamed from: j, reason: collision with root package name */
    public TvRecyclerView f7626j;

    /* renamed from: k, reason: collision with root package name */
    public final x9.m0 f7627k;
    public TvRecyclerView l;

    /* renamed from: m, reason: collision with root package name */
    public final x9.u0 f7628m;

    /* renamed from: n, reason: collision with root package name */
    public TvRecyclerView f7629n;

    /* renamed from: p, reason: collision with root package name */
    public final x9.t2 f7630p;

    public q9(Activity activity, Context context, h8 h8Var) {
        super(activity, context, R.layout.dialog_keymap_diy, false);
        this.f7624h = new z7.s();
        this.f7625i = -1;
        this.f7627k = new x9.m0();
        this.f7628m = new x9.u0();
        this.f7630p = new x9.t2();
        this.f7623g = h8Var;
    }

    public final void a(int i10) {
        this.f7625i = i10;
        x9.u0 u0Var = this.f7628m;
        u0Var.F(i10);
        z7.o oVarP = this.f7624h.o(String.valueOf(((StrIntBoolBean) u0Var.t(i10)).intValue)).g().p("maps");
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < oVarP.f19478a.size(); i11++) {
            arrayList.add(oVarP.l(i11).g());
        }
        this.f7630p.E(arrayList);
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_gn);
        this.f7626j = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 0, false));
        x9.m0 m0Var = this.f7627k;
        m0Var.q("添加按键");
        m0Var.q("添加常用按键");
        m0Var.q("添加映射操作");
        m0Var.q("确定");
        m0Var.q("取消");
        this.f7626j.setAdapter(m0Var);
        m0Var.f2881e = new o9(this, nh.b.y());
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list_key);
        this.l = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        TvRecyclerView tvRecyclerView3 = this.l;
        x9.u0 u0Var = this.f7628m;
        tvRecyclerView3.setAdapter(u0Var);
        u0Var.f2881e = new p9(this, 0);
        u0Var.f2882f = new p9(this, 1);
        TvRecyclerView tvRecyclerView4 = (TvRecyclerView) findViewById(R.id.v_list_map);
        this.f7629n = tvRecyclerView4;
        tvRecyclerView4.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        TvRecyclerView tvRecyclerView5 = this.f7629n;
        x9.t2 t2Var = this.f7630p;
        tvRecyclerView5.setAdapter(t2Var);
        d6.a aVar = new d6.a();
        aVar.f4496h = 3;
        aVar.f4495g = false;
        aVar.d(this.f7629n);
        aVar.g(t2Var);
        t2Var.f2881e = new p9(this, 2);
        z7.s sVar = this.f7624h;
        if (!sVar.f19480a.isEmpty()) {
            u0Var.E(new ArrayList());
            b8.n nVar = (b8.n) ((b8.l) sVar.f19480a.keySet()).f2638b;
            b8.m mVar = nVar.f2654f.f2642d;
            int i10 = nVar.f2653e;
            while (true) {
                b8.m mVar2 = nVar.f2654f;
                if (mVar != mVar2) {
                    if (mVar == mVar2) {
                        throw new NoSuchElementException();
                    }
                    if (nVar.f2653e != i10) {
                        throw new ConcurrentModificationException();
                    }
                    b8.m mVar3 = mVar.f2642d;
                    String str = (String) mVar.f2644f;
                    u0Var.q(new StrIntBoolBean(sVar.o(str).g().o("name").i(), Integer.parseInt(str)));
                    mVar = mVar3;
                } else if (u0Var.b() > 0) {
                    a(0);
                }
            }
        }
        this.f7626j.setOnInBorderKeyEventListener(new p9(this, 3));
        this.l.setOnInBorderKeyEventListener(new p9(this, 4));
    }

    public q9(Activity activity, Context context, z7.s sVar, n8 n8Var) {
        super(activity, context, R.layout.dialog_keymap_diy, false);
        this.f7624h = new z7.s();
        this.f7625i = -1;
        this.f7627k = new x9.m0();
        this.f7628m = new x9.u0();
        this.f7630p = new x9.t2();
        if (sVar != null) {
            this.f7624h = sVar;
        }
        this.f7623g = n8Var;
    }
}
