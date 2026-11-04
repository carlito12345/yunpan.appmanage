package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ta extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f7826g;

    /* renamed from: h, reason: collision with root package name */
    public final androidx.fragment.app.f f7827h;

    public ta(Activity activity, Context context, ArrayList arrayList, androidx.fragment.app.f fVar) {
        super(activity, context, R.layout.dialog_otg_select);
        this.f7826g = arrayList;
        this.f7827h = fVar;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        x9.u3 u3Var = new x9.u3();
        u3Var.E(this.f7826g);
        tvRecyclerView.setAdapter(u3Var);
        u3Var.f2881e = new p7(9, this);
    }
}
