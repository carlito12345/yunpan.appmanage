package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.CheckBox;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class oa extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final File f7535g;

    /* renamed from: h, reason: collision with root package name */
    public final String f7536h;

    /* renamed from: i, reason: collision with root package name */
    public TvRecyclerView f7537i;

    /* renamed from: j, reason: collision with root package name */
    public x9.s3 f7538j;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f7539k;

    public oa(Activity activity, Context context, String str, String str2, ArrayList arrayList) {
        super(activity, context, R.layout.dialog_open);
        this.f7536h = "";
        this.f7535g = new File(str);
        this.f7539k = arrayList;
        this.f7536h = str2;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        CheckBox checkBox = (CheckBox) findViewById(R.id.v_check);
        checkBox.setOnClickListener(new c6.c(this, 19, checkBox));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7537i = tvRecyclerView;
        tvRecyclerView.setHasFixedSize(true);
        ArrayList arrayList = this.f7539k;
        int size = arrayList.size();
        Context context = this.f6725b;
        if (size < 7) {
            this.f7537i.setLayoutManager(new V7GridLayoutManager(context, arrayList.isEmpty() ? 1 : arrayList.size()));
        } else if (arrayList.size() > 10 || arrayList.size() / 6 == 0) {
            this.f7537i.setLayoutManager(new V7GridLayoutManager(context, 6));
        } else if (arrayList.size() / 5 == 0) {
            this.f7537i.setLayoutManager(new V7GridLayoutManager(context, 5));
        } else {
            this.f7537i.setLayoutManager(new V7GridLayoutManager(context, 4));
        }
        x9.s3 s3Var = new x9.s3(getContext());
        this.f7538j = s3Var;
        this.f7537i.setAdapter(s3Var);
        this.f7538j.E(arrayList);
        this.f7537i.setOnItemListener(new na());
        this.f7537i.setOnInBorderKeyEventListener(new g2.c(19));
        this.f7538j.f2881e = new d2.w(this, 20, checkBox);
        this.f7537i.setFocusable(true);
        this.f7537i.setSelection(0);
        this.f7537i.requestFocus();
    }
}
