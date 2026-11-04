package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class ma extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7437g;

    /* renamed from: h, reason: collision with root package name */
    public x9.q3 f7438h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f7439i;

    /* renamed from: j, reason: collision with root package name */
    public final HashSet f7440j;

    /* renamed from: k, reason: collision with root package name */
    public la f7441k;

    public ma(Activity activity, Context context, HashSet hashSet, la laVar) {
        super(activity, context, R.layout.dialog_app_select, false);
        this.f7439i = null;
        this.f7440j = hashSet;
        this.f7441k = laVar;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_return);
        constraintLayout.requestFocus();
        constraintLayout.setOnClickListener(new g9(3, this));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7437g = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(context, 6));
        x9.q3 q3Var = new x9.q3(context);
        this.f7438h = q3Var;
        this.f7437g.setAdapter(q3Var);
        this.f7438h.f2881e = new ka(this);
        new mc.c(0, new ka(this)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(16, this));
    }

    public ma(Activity activity, Context context, HashSet hashSet, ArrayList arrayList, la laVar) {
        super(activity, context, R.layout.dialog_app_select, false);
        this.f7440j = hashSet;
        this.f7439i = arrayList;
        this.f7441k = laVar;
    }
}
