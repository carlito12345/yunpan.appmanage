package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class z7 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public ea.c f8158g;

    /* renamed from: h, reason: collision with root package name */
    public TvRecyclerView f8159h;

    /* renamed from: i, reason: collision with root package name */
    public x9.i2 f8160i;

    public z7(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_get_key_car);
    }

    public final void a(ea.c cVar) {
        this.f8158g = cVar;
        show();
        try {
            com.yunpan.appmanage.carsdk.g0.f3810a.a(this.f6725b, true, false, false, false);
        } catch (Exception unused) {
            com.yunpan.appmanage.util.a0.u("不支持您的系统");
            dismiss();
        }
        com.yunpan.appmanage.carsdk.g0.f3810a.f3818g = new y7(this);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        com.yunpan.appmanage.carsdk.g0.f3810a.d();
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f8159h = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        x9.i2 i2Var = new x9.i2();
        this.f8160i = i2Var;
        this.f8159h.setAdapter(i2Var);
        this.f8160i.f2881e = new p7(1, this);
    }
}
