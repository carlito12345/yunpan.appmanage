package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class yb extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public RecyclerView f8103g;

    /* renamed from: h, reason: collision with root package name */
    public x9.s4 f8104h;

    /* renamed from: i, reason: collision with root package name */
    public final xb f8105i;

    public yb(Activity activity, Context context, xb xbVar) {
        super(activity, context, R.layout.dialog_select_keycode);
        this.f8105i = xbVar;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f8103g = (RecyclerView) findViewById(R.id.v_list);
        x9.s4 s4Var = new x9.s4();
        this.f8104h = s4Var;
        s4Var.E(nh.b.y());
        this.f8103g.setLayoutManager(new GridLayoutManager(3));
        this.f8103g.setAdapter(this.f8104h);
        this.f8103g.postDelayed(new db(1, this), 100L);
        this.f8104h.f2881e = new p7(14, this);
    }
}
