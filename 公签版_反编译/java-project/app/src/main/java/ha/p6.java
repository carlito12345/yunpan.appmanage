package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import com.hsae.autosdk.hmi.IHmi;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class p6 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public d7 f7571g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f7572h;

    /* renamed from: i, reason: collision with root package name */
    public TvRecyclerView f7573i;

    /* renamed from: j, reason: collision with root package name */
    public x9.i2 f7574j;

    /* renamed from: k, reason: collision with root package name */
    public IHmi f7575k;
    public final o6 l;

    public p6(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_get_key_code_acc);
        this.l = new o6(this);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f7572h.setText("开始监听按键");
        IHmi iHmi = this.f7575k;
        if (iHmi != null) {
            try {
                iHmi.unregisterHmiCallback(this.l);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TextView textView = (TextView) findViewById(R.id.v_btn_start);
        this.f7572h = textView;
        textView.setOnClickListener(new com.google.android.material.datepicker.l(this, 19));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7573i = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        x9.i2 i2Var = new x9.i2();
        this.f7574j = i2Var;
        this.f7573i.setAdapter(i2Var);
        this.f7574j.f2881e = new a1.d(26, this);
    }
}
