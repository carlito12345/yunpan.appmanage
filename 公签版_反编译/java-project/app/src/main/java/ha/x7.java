package ha;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class x7 extends a4 implements View.OnClickListener {

    /* renamed from: g, reason: collision with root package name */
    public TextView f8043g;

    /* renamed from: h, reason: collision with root package name */
    public ConstraintLayout f8044h;

    /* renamed from: i, reason: collision with root package name */
    public ImageView f8045i;

    /* renamed from: j, reason: collision with root package name */
    public EditText f8046j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f8047k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public TextView f8048m;

    /* renamed from: n, reason: collision with root package name */
    public TvRecyclerView f8049n;

    /* renamed from: p, reason: collision with root package name */
    public x9.t2 f8050p;

    /* renamed from: q, reason: collision with root package name */
    public final z7.s f8051q;
    public final w7 r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f8052s;

    public x7(da.g gVar, da.g gVar2, z7.s sVar, w7 w7Var) {
        super(gVar, gVar2, R.layout.dialog_jietu_event_add);
        this.f8052s = true;
        this.r = w7Var;
        this.f8051q = sVar;
    }

    public final void a() {
        this.f8050p.E(new ArrayList());
        try {
            z7.o oVarP = this.f8051q.p("click");
            if (oVarP.f19478a.isEmpty()) {
                return;
            }
            for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                this.f8050p.q(oVarP.l(i10).g());
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view == null) {
            return;
        }
        if (view.getId() == R.id.v_btn_add) {
            t8.a(this.f6724a, this.f6725b, 0, false, new u7(this));
            return;
        }
        int id2 = view.getId();
        w7 w7Var = this.r;
        if (id2 != R.id.v_btn_save) {
            if (view.getId() == R.id.v_btn_delete) {
                w7Var.delete();
                dismiss();
                return;
            }
            return;
        }
        if (this.f8046j.getText().toString().trim().isEmpty()) {
            Toaster.show((CharSequence) "请输入备注名");
            return;
        }
        if (this.f8050p.b() == 0) {
            Toaster.show((CharSequence) "请添加至少一个操作");
            return;
        }
        Boolean boolValueOf = Boolean.valueOf(this.f8052s);
        z7.s sVar = this.f8051q;
        sVar.k("isOpen", boolValueOf);
        sVar.m("eventName", this.f8046j.getText().toString().trim());
        z7.o oVar = new z7.o();
        for (int i10 = 0; i10 < this.f8050p.b(); i10++) {
            oVar.k((z7.p) this.f8050p.t(i10));
        }
        sVar.j("click", oVar);
        w7Var.a(sVar);
        dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z7.s sVar = this.f8051q;
        this.f8044h = (ConstraintLayout) findViewById(R.id.v_select_open);
        this.f8045i = (ImageView) findViewById(R.id.v_select_open_ico);
        this.f8044h.setOnClickListener(new com.google.android.material.datepicker.l(this, 25));
        this.f8043g = (TextView) findViewById(R.id.v_name);
        this.f8046j = (EditText) findViewById(R.id.v_edit_name);
        TextView textView = (TextView) findViewById(R.id.v_btn_add);
        this.f8047k = textView;
        textView.requestFocus();
        this.l = (TextView) findViewById(R.id.v_btn_save);
        this.f8048m = (TextView) findViewById(R.id.v_btn_delete);
        this.f8047k.setOnClickListener(this);
        this.l.setOnClickListener(this);
        this.f8048m.setOnClickListener(this);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f8049n = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        x9.t2 t2Var = new x9.t2();
        this.f8050p = t2Var;
        t2Var.f18336h = "映射操作：";
        this.f8049n.setAdapter(t2Var);
        d6.a aVar = new d6.a();
        aVar.f4496h = 3;
        aVar.f4495g = false;
        aVar.d(this.f8049n);
        aVar.g(this.f8050p);
        this.f8050p.f2881e = new u7(this);
        try {
            this.f8043g.setText(sVar.o("eventName").i());
            this.f8046j.setText(sVar.o("name").i());
            this.f8052s = sVar.o("isOpen").b();
            a();
        } catch (Exception unused) {
        }
        this.f8045i.setImageResource(this.f8052s ? R.drawable.tp_check1 : R.drawable.tp_check2);
    }
}
