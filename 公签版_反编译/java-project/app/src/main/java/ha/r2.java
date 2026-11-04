package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.util.List;

/* loaded from: classes.dex */
public final class r2 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7659g;

    /* renamed from: h, reason: collision with root package name */
    public x9.w f7660h;

    /* renamed from: i, reason: collision with root package name */
    public final List f7661i;

    /* renamed from: j, reason: collision with root package name */
    public final o f7662j;

    /* renamed from: k, reason: collision with root package name */
    public final String f7663k;

    public r2(Activity activity, Context context, List list, o oVar) {
        super(activity, context, R.layout.dialog_app_select_home_activity);
        this.f7663k = null;
        this.f7661i = list;
        this.f7662j = oVar;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String str = this.f7663k;
        if (str != null) {
            ((TextView) findViewById(R.id.v_title)).setText(str);
        }
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7659g = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.w wVar = new x9.w(context);
        this.f7660h = wVar;
        wVar.E(this.f7661i);
        this.f7659g.setAdapter(this.f7660h);
        this.f7660h.f2881e = new a1.d(10, this);
    }

    public r2(Activity activity, Context context, String str, List list, o oVar) {
        super(activity, context, R.layout.dialog_app_select_home_activity);
        this.f7661i = list;
        this.f7663k = str;
        this.f7662j = oVar;
    }
}
