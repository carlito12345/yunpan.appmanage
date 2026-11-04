package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class r7 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final ua.d8 f7686g;

    /* renamed from: h, reason: collision with root package name */
    public TvRecyclerView f7687h;

    /* renamed from: i, reason: collision with root package name */
    public x9.r2 f7688i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f7689j;

    /* renamed from: k, reason: collision with root package name */
    public com.yunpan.appmanage.util.h f7690k;

    public r7(Activity activity, Context context, ua.d8 d8Var) {
        super(activity, context, R.layout.dialog_ip);
        this.f7686g = d8Var;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f7690k.f4027c.set(true);
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TextView textView = (TextView) findViewById(R.id.v_btn_found);
        this.f7689j = textView;
        textView.setOnKeyListener(new c0(this, 4));
        this.f7690k = new com.yunpan.appmanage.util.h(new h5.m(10, this));
        this.f7689j.setOnClickListener(new com.google.android.material.datepicker.l(this, 24));
        this.f7687h = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7688i = new x9.r2();
        this.f7687h.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        this.f7687h.setAdapter(this.f7688i);
        this.f7688i.r(com.yunpan.appmanage.util.v.f4106a.f4119g);
        this.f7688i.f2881e = new p7(0, this);
        this.f7687h.setOnInBorderKeyEventListener(new g2.c(10));
        this.f7687h.setOnItemListener(new q7());
    }
}
