package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class r5 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7681g;

    /* renamed from: h, reason: collision with root package name */
    public x9.s1 f7682h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f7683i;

    public r5(Activity activity, Context context, ArrayList arrayList) {
        super(activity, context, R.layout.dialog_file_copy_error);
        this.f7683i = arrayList;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        findViewById(R.id.v_btn_yes).setOnClickListener(new com.google.android.material.datepicker.l(this, 14));
        this.f7681g = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7682h = new x9.s1();
        TvRecyclerView tvRecyclerView = this.f7681g;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        this.f7682h.E(this.f7683i);
        this.f7681g.setAdapter(this.f7682h);
        androidx.recyclerview.widget.y yVar = new androidx.recyclerview.widget.y(context);
        yVar.e(n0.g.e(context, R.drawable.divider));
        this.f7681g.addItemDecoration(yVar);
        this.f7682h.f2881e = new a1.d(21, this);
    }
}
