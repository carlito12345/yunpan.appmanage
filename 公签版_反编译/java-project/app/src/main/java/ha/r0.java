package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class r0 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7651g;

    /* renamed from: h, reason: collision with root package name */
    public x9.v f7652h;

    /* renamed from: i, reason: collision with root package name */
    public final int f7653i;

    /* renamed from: j, reason: collision with root package name */
    public q0 f7654j;

    public r0(Activity activity, Context context, int i10, q0 q0Var) {
        super(activity, context, R.layout.dialog_app_select, false);
        this.f7653i = i10;
        this.f7654j = q0Var;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_return);
        constraintLayout.requestFocus();
        constraintLayout.setOnClickListener(new com.google.android.material.datepicker.l(this, 3));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7651g = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(context, 6));
        x9.v vVar = new x9.v(context);
        this.f7652h = vVar;
        this.f7651g.setAdapter(vVar);
        this.f7652h.f2881e = new n0(this);
        new mc.c(0, new n0(this)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(0, this));
    }
}
