package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class id extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7220g;

    /* renamed from: h, reason: collision with root package name */
    public final x9.b1 f7221h;

    public id(Activity activity, Context context, x9.b1 b1Var) {
        super(activity, context, R.layout.dialog_system_settings);
        this.f7221h = b1Var;
    }

    public static void a(id idVar, boolean z) {
        idVar.getClass();
        new mc.c(0, new fd(idVar, z, 0)).d(rc.f.f13757b).a(fc.b.a()).b(new m6(5));
    }

    public static void b(id idVar, boolean z) {
        idVar.getClass();
        new mc.c(0, new fd(idVar, z, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new l2(28));
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7220g = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this.f6725b, 5));
        TvRecyclerView tvRecyclerView2 = this.f7220g;
        x9.b1 b1Var = this.f7221h;
        tvRecyclerView2.setAdapter(b1Var);
        b1Var.f2881e = new p7(19, this);
        this.f7220g.setOnInBorderKeyEventListener(new g2.c(28));
        this.f7220g.setOnItemListener(new hd());
    }
}
