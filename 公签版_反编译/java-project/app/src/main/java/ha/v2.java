package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class v2 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7899g;

    /* renamed from: h, reason: collision with root package name */
    public x9.s3 f7900h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f7901i;

    public v2(Activity activity, Context context, ArrayList arrayList) {
        super(activity, context, R.layout.dialog_app_start);
        this.f7901i = arrayList;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7899g = tvRecyclerView;
        tvRecyclerView.setHasFixedSize(true);
        this.f7899g.mHorizontalSpacingWithMargins = 10;
        ArrayList arrayList = this.f7901i;
        int size = arrayList.size();
        Context context = this.f6725b;
        if (size < 7) {
            this.f7899g.setLayoutManager(new V7GridLayoutManager(context, arrayList.size()));
        } else if (arrayList.size() > 10 || arrayList.size() / 6 == 0) {
            this.f7899g.setLayoutManager(new V7GridLayoutManager(context, 6));
        } else if (arrayList.size() / 5 == 0) {
            this.f7899g.setLayoutManager(new V7GridLayoutManager(context, 5));
        } else {
            this.f7899g.setLayoutManager(new V7GridLayoutManager(context, 4));
        }
        x9.s3 s3Var = new x9.s3(getContext());
        this.f7900h = s3Var;
        this.f7899g.setAdapter(s3Var);
        this.f7900h.E(arrayList);
        this.f7899g.setOnItemListener(new u2());
        this.f7899g.setOnInBorderKeyEventListener(new g2.c(5));
        this.f7900h.f2881e = new a1.d(12, this);
        this.f7899g.setFocusable(true);
        this.f7899g.setSelection(0);
        this.f7899g.requestFocus();
    }
}
