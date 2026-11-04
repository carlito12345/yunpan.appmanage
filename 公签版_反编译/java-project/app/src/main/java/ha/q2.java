package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class q2 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7601g;

    /* renamed from: h, reason: collision with root package name */
    public x9.v f7602h;

    /* renamed from: i, reason: collision with root package name */
    public final int f7603i;

    /* renamed from: j, reason: collision with root package name */
    public p2 f7604j;

    public q2(Activity activity, Context context, int i10, p2 p2Var) {
        super(activity, context, R.layout.dialog_app_select, false);
        this.f7603i = i10;
        this.f7604j = p2Var;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_return);
        constraintLayout.requestFocus();
        constraintLayout.setOnClickListener(new com.google.android.material.datepicker.l(this, 8));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7601g = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(context, 6));
        x9.v vVar = new x9.v(context);
        this.f7602h = vVar;
        this.f7601g.setAdapter(vVar);
        this.f7602h.f2881e = new a1.d(9, this);
        nh.b.i0(this.f7603i).b(new p0(3, this));
    }
}
