package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class wb extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f8010g;

    /* renamed from: h, reason: collision with root package name */
    public x9.q2 f8011h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f8012i;

    public wb(Activity activity, Context context, ArrayList arrayList) {
        super(activity, context, R.layout.dialog_select_installer, false);
        this.f8012i = arrayList;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f8010g = (TvRecyclerView) findViewById(R.id.v_list);
        Context context = this.f6725b;
        x9.q2 q2Var = new x9.q2(context);
        this.f8011h = q2Var;
        q2Var.E(this.f8012i);
        this.f8010g.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        this.f8010g.setAdapter(this.f8011h);
        this.f8010g.requestFocus();
        this.f8010g.setSelection(0);
        androidx.recyclerview.widget.y yVar = new androidx.recyclerview.widget.y(context);
        yVar.e(n0.g.e(context, R.drawable.divider));
        this.f8010g.addItemDecoration(yVar);
        this.f8011h.f2881e = new p7(13, this);
        this.f8010g.setOnInBorderKeyEventListener(new g2.c(26));
    }
}
