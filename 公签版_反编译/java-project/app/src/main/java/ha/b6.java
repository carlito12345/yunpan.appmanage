package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.util.List;

/* loaded from: classes.dex */
public final class b6 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f6798g;

    /* renamed from: h, reason: collision with root package name */
    public x9.f2 f6799h;

    /* renamed from: i, reason: collision with root package name */
    public final List f6800i;

    /* renamed from: j, reason: collision with root package name */
    public final a6 f6801j;

    public b6(Activity activity, Context context, List list, a6 a6Var) {
        super(activity, context, R.layout.dialog_file_select);
        this.f6800i = list;
        this.f6801j = a6Var;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f6798g = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.f2 f2Var = new x9.f2(context);
        this.f6799h = f2Var;
        f2Var.r(this.f6800i);
        this.f6798g.setAdapter(this.f6799h);
        this.f6799h.f2881e = new a1.d(23, this);
    }
}
