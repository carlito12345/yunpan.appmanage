package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class b0 extends a4 implements View.OnClickListener {

    /* renamed from: g, reason: collision with root package name */
    public final e8 f6767g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f6768h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f6769i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f6770j;

    /* renamed from: k, reason: collision with root package name */
    public TvRecyclerView f6771k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public TvRecyclerView f6772m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f6773n;

    /* renamed from: p, reason: collision with root package name */
    public x9.t2 f6774p;

    /* renamed from: q, reason: collision with root package name */
    public x9.t2 f6775q;
    public final z7.s r;

    public b0(Activity activity, Context context, e8 e8Var) {
        super(activity, context, R.layout.dialog_add_if_current_app);
        this.r = new z7.s();
        this.f6767g = e8Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int id2 = view.getId();
        Context context = this.f6725b;
        Activity activity = this.f6724a;
        if (id2 == R.id.v_btn_app) {
            new q2(activity, context, 0, new z(this, 2)).show();
            return;
        }
        if (view.getId() == R.id.v_add1 || view.getId() == R.id.v_add2) {
            t8.a(activity, context, -10, false, new d2.w(this, 6, view));
            return;
        }
        if (view.getId() == R.id.v_btn_yes) {
            z7.s sVar = this.r;
            if (!sVar.f19480a.containsKey("app_name")) {
                com.yunpan.appmanage.util.a0.u("请选择应用");
                return;
            }
            if (this.f6774p.b() == 0 || this.f6775q.b() == 0) {
                com.yunpan.appmanage.util.a0.u("请添加操作");
                return;
            }
            z7.o oVar = new z7.o();
            for (int i10 = 0; i10 < this.f6774p.b(); i10++) {
                oVar.k((z7.p) this.f6774p.t(i10));
            }
            sVar.j("maps1", oVar);
            z7.o oVar2 = new z7.o();
            for (int i11 = 0; i11 < this.f6775q.b(); i11++) {
                oVar2.k((z7.p) this.f6775q.t(i11));
            }
            sVar.j("maps2", oVar2);
            sVar.m("name", "如果当前应用：" + sVar.o("app_name").i());
            this.f6767g.k(sVar);
            dismiss();
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f6768h = (TextView) findViewById(R.id.v_name);
        this.f6769i = (TextView) findViewById(R.id.v_btn_app);
        this.f6770j = (TextView) findViewById(R.id.v_add1);
        this.f6771k = (TvRecyclerView) findViewById(R.id.v_list1);
        this.l = (TextView) findViewById(R.id.v_add2);
        this.f6772m = (TvRecyclerView) findViewById(R.id.v_list2);
        this.f6773n = (TextView) findViewById(R.id.v_btn_yes);
        this.f6769i.setOnClickListener(this);
        this.f6773n.setOnClickListener(this);
        this.f6770j.setOnClickListener(this);
        this.l.setOnClickListener(this);
        TvRecyclerView tvRecyclerView = this.f6771k;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.t2 t2Var = new x9.t2();
        this.f6774p = t2Var;
        this.f6771k.setAdapter(t2Var);
        this.f6774p.f2881e = new z(this, 0);
        this.f6772m.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.t2 t2Var2 = new x9.t2();
        this.f6775q = t2Var2;
        this.f6772m.setAdapter(t2Var2);
        this.f6775q.f2881e = new z(this, 1);
    }
}
