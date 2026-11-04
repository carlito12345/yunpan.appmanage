package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class s extends a4 implements View.OnClickListener {

    /* renamed from: g, reason: collision with root package name */
    public final o f7711g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f7712h;

    /* renamed from: i, reason: collision with root package name */
    public ConstraintLayout f7713i;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f7714j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f7715k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public TvRecyclerView f7716m;

    /* renamed from: n, reason: collision with root package name */
    public x9.t2 f7717n;

    /* renamed from: p, reason: collision with root package name */
    public final z7.s f7718p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f7719q;

    public s(Activity activity, Context context, z7.s sVar, o oVar) {
        super(activity, context, R.layout.dialog_add_door_log_maps);
        this.f7719q = true;
        this.f7718p = sVar;
        this.f7711g = oVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view == null) {
            return;
        }
        if (view.getId() == R.id.v_btn_add) {
            t8.a(this.f6724a, this.f6725b, 0, false, new q(this));
            return;
        }
        if (view.getId() == R.id.v_btn_save) {
            z7.o oVar = new z7.o();
            Iterator it = this.f7717n.v().iterator();
            while (it.hasNext()) {
                oVar.k((z7.s) it.next());
            }
            z7.s sVar = this.f7718p;
            sVar.j("maps", oVar);
            sVar.k("isOpen", Boolean.valueOf(this.f7719q));
            this.f7711g.f(true);
            dismiss();
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z7.s sVar = this.f7718p;
        this.f7713i = (ConstraintLayout) findViewById(R.id.v_select_open);
        this.f7714j = (ImageView) findViewById(R.id.v_select_open_ico);
        this.f7713i.setOnClickListener(new com.google.android.material.datepicker.l(this, 1));
        this.f7712h = (TextView) findViewById(R.id.v_name);
        TextView textView = (TextView) findViewById(R.id.v_btn_add);
        this.f7715k = textView;
        textView.requestFocus();
        this.l = (TextView) findViewById(R.id.v_btn_save);
        this.f7715k.setOnClickListener(this);
        this.l.setOnClickListener(this);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7716m = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        x9.t2 t2Var = new x9.t2();
        this.f7717n = t2Var;
        t2Var.f18336h = "映射：";
        this.f7716m.setAdapter(t2Var);
        d6.a aVar = new d6.a();
        aVar.f4496h = 3;
        aVar.f4495g = false;
        aVar.d(this.f7716m);
        aVar.g(this.f7717n);
        x9.t2 t2Var2 = this.f7717n;
        t2Var2.f2881e = new q(this);
        t2Var2.E(new ArrayList());
        try {
            this.f7712h.setText(sVar.o("name").i());
            boolean zB = sVar.o("isOpen").b();
            this.f7719q = zB;
            this.f7714j.setImageResource(zB ? R.drawable.tp_check1 : R.drawable.tp_check2);
            z7.o oVarP = sVar.p("maps");
            if (oVarP.f19478a.isEmpty()) {
                return;
            }
            for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                this.f7717n.q((z7.s) new z7.m().b(oVarP.l(i10).g()));
            }
        } catch (Exception unused) {
        }
    }
}
