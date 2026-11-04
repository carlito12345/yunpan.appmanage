package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class c2 extends a4 implements View.OnClickListener {

    /* renamed from: g, reason: collision with root package name */
    public final o f6838g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f6839h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f6840i;

    /* renamed from: j, reason: collision with root package name */
    public TvRecyclerView f6841j;

    /* renamed from: k, reason: collision with root package name */
    public x9.t2 f6842k;
    public final z7.o l;

    public c2(Activity activity, Context context, z7.o oVar, o oVar2) {
        super(activity, context, R.layout.dialog_add_voice_log_match_map);
        this.l = oVar;
        this.f6838g = oVar2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view == null) {
            return;
        }
        if (view.getId() == R.id.v_btn_add) {
            t8.a(this.f6724a, this.f6725b, 0, false, new a2(this));
            return;
        }
        int id2 = view.getId();
        o oVar = this.f6838g;
        if (id2 != R.id.v_btn_save) {
            if (view.getId() == R.id.v_btn_delect) {
                oVar.i(null);
                dismiss();
                return;
            }
            return;
        }
        z7.o oVar2 = new z7.o();
        Iterator it = this.f6842k.v().iterator();
        while (it.hasNext()) {
            oVar2.k((z7.s) it.next());
        }
        oVar.i(oVar2);
        dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TextView textView = (TextView) findViewById(R.id.v_btn_add);
        this.f6839h = textView;
        textView.requestFocus();
        this.f6840i = (TextView) findViewById(R.id.v_btn_save);
        this.f6839h.setOnClickListener(this);
        this.f6840i.setOnClickListener(this);
        findViewById(R.id.v_btn_delect).setOnClickListener(this);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f6841j = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        x9.t2 t2Var = new x9.t2();
        this.f6842k = t2Var;
        t2Var.f18336h = "映射：";
        this.f6841j.setAdapter(t2Var);
        d6.a aVar = new d6.a();
        aVar.f4496h = 3;
        aVar.f4495g = false;
        aVar.d(this.f6841j);
        aVar.g(this.f6842k);
        x9.t2 t2Var2 = this.f6842k;
        t2Var2.f2881e = new a2(this);
        t2Var2.E(new ArrayList());
        z7.o oVar = this.l;
        if (oVar != null) {
            try {
                ArrayList arrayList = oVar.f19478a;
                if (arrayList.isEmpty()) {
                    return;
                }
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    this.f6842k.q((z7.s) new z7.m().b(oVar.l(i10).g()));
                }
            } catch (Exception unused) {
            }
        }
    }
}
