package ha;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class j6 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final Handler f7265g;

    /* renamed from: h, reason: collision with root package name */
    public final a2.k f7266h;

    /* renamed from: i, reason: collision with root package name */
    public ea.c f7267i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f7268j;

    /* renamed from: k, reason: collision with root package name */
    public TvRecyclerView f7269k;
    public x9.i2 l;

    /* renamed from: m, reason: collision with root package name */
    public int f7270m;

    public j6(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_get_key_code_acc);
        this.f7265g = new Handler();
        this.f7266h = new a2.k(2, this);
        this.f7270m = 5;
    }

    public final void a(ea.c cVar) {
        this.f7267i = cVar;
        IntentFilter intentFilter = new IntentFilter();
        Context context = this.f6725b;
        intentFilter.addAction(context.getPackageName() + ".BROADCAST_ACC_KEY_CODE");
        context.registerReceiver(this.f7266h, intentFilter);
        show();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f7265g.removeCallbacksAndMessages(null);
        this.f7268j.setText("开始监听按键");
        Context context = this.f6725b;
        ta.m.b(context, false);
        context.unregisterReceiver(this.f7266h);
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TextView textView = (TextView) findViewById(R.id.v_btn_start);
        this.f7268j = textView;
        textView.setOnClickListener(new com.google.android.material.datepicker.l(this, 18));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7269k = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        x9.i2 i2Var = new x9.i2();
        this.l = i2Var;
        this.f7269k.setAdapter(i2Var);
        this.l.f2881e = new a1.d(25, this);
    }
}
