package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class t2 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7782g;

    /* renamed from: h, reason: collision with root package name */
    public x9.v f7783h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f7784i;

    /* renamed from: j, reason: collision with root package name */
    public cd f7785j;

    public t2(Activity activity, Context context, boolean z, cd cdVar) {
        super(activity, context, R.layout.dialog_app_select, false);
        this.f7784i = z;
        this.f7785j = cdVar;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_return);
        constraintLayout.requestFocus();
        constraintLayout.setOnClickListener(new com.google.android.material.datepicker.l(this, 9));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7782g = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(context, 6));
        x9.v vVar = new x9.v(context);
        this.f7783h = vVar;
        this.f7782g.setAdapter(vVar);
        this.f7783h.f2881e = new a1.d(11, this);
        nh.b.i0(3).b(new p0(4, this));
    }
}
