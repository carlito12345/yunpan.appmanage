package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class z1 extends a4 implements View.OnClickListener {

    /* renamed from: g, reason: collision with root package name */
    public EditText f8121g;

    /* renamed from: h, reason: collision with root package name */
    public final ea.b f8122h;

    /* renamed from: i, reason: collision with root package name */
    public ConstraintLayout f8123i;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f8124j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f8125k;
    public TvRecyclerView l;

    /* renamed from: m, reason: collision with root package name */
    public x9.t2 f8126m;

    /* renamed from: n, reason: collision with root package name */
    public final z7.s f8127n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f8128p;

    public z1(Activity activity, Context context, z7.s sVar, ea.b bVar) {
        super(activity, context, R.layout.dialog_add_voice_log_maps);
        this.f8128p = true;
        this.f8127n = sVar;
        this.f8122h = bVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view == null) {
            return;
        }
        if (view.getId() == R.id.v_btn_add) {
            t8.a(this.f6724a, this.f6725b, 0, false, new x1(this));
            return;
        }
        int id2 = view.getId();
        ea.b bVar = this.f8122h;
        if (id2 != R.id.v_btn_save) {
            if (view.getId() == R.id.v_btn_delect) {
                bVar.f(false);
                dismiss();
                return;
            }
            return;
        }
        if (this.f8121g.getText().toString().trim().isEmpty()) {
            com.yunpan.appmanage.util.a0.u("请输入关键字");
            return;
        }
        if (this.f8126m.b() == 0) {
            com.yunpan.appmanage.util.a0.u("请添加映射");
            return;
        }
        Boolean boolValueOf = Boolean.valueOf(this.f8128p);
        z7.s sVar = this.f8127n;
        sVar.k("isOpen", boolValueOf);
        sVar.m("name", this.f8121g.getText().toString().trim());
        z7.o oVar = new z7.o();
        Iterator it = this.f8126m.v().iterator();
        while (it.hasNext()) {
            oVar.k((z7.s) it.next());
        }
        sVar.j("maps", oVar);
        bVar.f(true);
        dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z7.s sVar = this.f8127n;
        this.f8121g = (EditText) findViewById(R.id.v_edit);
        this.f8123i = (ConstraintLayout) findViewById(R.id.v_select_open);
        this.f8124j = (ImageView) findViewById(R.id.v_select_open_ico);
        this.f8123i.setOnClickListener(new com.google.android.material.datepicker.l(this, 5));
        TextView textView = (TextView) findViewById(R.id.v_btn_add);
        this.f8125k = textView;
        textView.requestFocus();
        this.f8125k.setOnClickListener(this);
        findViewById(R.id.v_btn_save).setOnClickListener(this);
        findViewById(R.id.v_btn_delect).setOnClickListener(this);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.l = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        x9.t2 t2Var = new x9.t2();
        this.f8126m = t2Var;
        t2Var.f18336h = "映射：";
        this.l.setAdapter(t2Var);
        d6.a aVar = new d6.a();
        aVar.f4496h = 3;
        aVar.f4495g = false;
        aVar.d(this.l);
        aVar.g(this.f8126m);
        x9.t2 t2Var2 = this.f8126m;
        t2Var2.f2881e = new x1(this);
        t2Var2.E(new ArrayList());
        try {
            this.f8121g.setText(sVar.o("name").i());
            boolean zB = sVar.o("isOpen").b();
            this.f8128p = zB;
            this.f8124j.setImageResource(zB ? R.drawable.tp_check1 : R.drawable.tp_check2);
            z7.o oVarP = sVar.p("maps");
            if (oVarP.f19478a.isEmpty()) {
                return;
            }
            for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                this.f8126m.q(oVarP.l(i10).g());
            }
        } catch (Exception unused) {
        }
    }
}
