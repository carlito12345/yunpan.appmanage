package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class y5 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final tb.v f8086g;

    /* renamed from: h, reason: collision with root package name */
    public final String f8087h;

    /* renamed from: i, reason: collision with root package name */
    public TvRecyclerView f8088i;

    /* renamed from: j, reason: collision with root package name */
    public x9.u1 f8089j;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f8090k;
    public ProgressBar l;

    /* renamed from: m, reason: collision with root package name */
    public TextView f8091m;

    /* renamed from: n, reason: collision with root package name */
    public final String f8092n;

    /* renamed from: p, reason: collision with root package name */
    public final com.yunpan.appmanage.carsdk.u f8093p;

    public y5(Activity activity, Context context, String str, ArrayList arrayList, tb.v vVar) {
        super(activity, context, R.layout.dialog_multi_file);
        this.f8093p = new com.yunpan.appmanage.carsdk.u(this, Looper.getMainLooper(), 6);
        this.f8086g = vVar;
        this.f8092n = "批量任务";
        this.f8087h = str;
        this.f8090k = arrayList;
    }

    public static void a(y5 y5Var) {
        y5Var.f8086g.getClass();
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((TextView) findViewById(R.id.v_title)).setText(this.f8092n);
        this.l = (ProgressBar) findViewById(R.id.v_loading);
        TextView textView = (TextView) findViewById(R.id.v_btn);
        this.f8091m = textView;
        textView.setOnClickListener(new com.google.android.material.datepicker.l(this, 16));
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f8090k;
            if (i10 >= arrayList.size()) {
                this.f8088i = (TvRecyclerView) findViewById(R.id.v_list);
                this.f8089j = new x9.u1();
                this.f8088i.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
                this.f8089j.E(arrayList);
                this.f8088i.setAdapter(this.f8089j);
                this.f8088i.setOnItemListener(new w5());
                return;
            }
            ((x9.w3) arrayList.get(i10)).f18373j = "";
            i10++;
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void show() {
        super.show();
        new fg.b(new a2.h(25, this), 1).start();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
    }
}
