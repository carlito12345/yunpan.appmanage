package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class n6 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public ea.g f7465g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f7466h;

    /* renamed from: i, reason: collision with root package name */
    public TvRecyclerView f7467i;

    /* renamed from: j, reason: collision with root package name */
    public x9.b3 f7468j;

    /* renamed from: k, reason: collision with root package name */
    public g0.e f7469k;

    public n6(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_get_key_code_logcat);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f7469k.k();
        v8.b.c("Logcat");
        this.f7466h.setText("监听日志");
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7469k = new g0.e();
        final int i10 = 0;
        findViewById(R.id.v_btn_save).setOnClickListener(new View.OnClickListener(this) { // from class: ha.k6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ n6 f7308b;

            {
                this.f7308b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                n6 n6Var = this.f7308b;
                switch (i10) {
                    case 0:
                        if (n6Var.f7468j.b() != 0) {
                            if (fa.g0.f5682a.d().isEmpty()) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                                    com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
                                    break;
                                }
                            }
                            new mc.c(0, new l6(n6Var, 3)).d(rc.f.f13757b).a(fc.b.a()).b(new m6(0));
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("请先监听日志");
                            break;
                        }
                    case 1:
                        n6Var.dismiss();
                        break;
                    default:
                        if (!n6Var.f7466h.getText().equals("监听日志")) {
                            n6Var.f7469k.k();
                            n6Var.f7466h.setText("监听日志");
                            break;
                        } else {
                            new da(n6Var.f6724a, n6Var.f6725b, new l6(n6Var, 2)).show();
                            break;
                        }
                }
            }
        });
        this.f7466h = (TextView) findViewById(R.id.v_btn_start);
        final int i11 = 1;
        findViewById(R.id.v_btn_close).setOnClickListener(new View.OnClickListener(this) { // from class: ha.k6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ n6 f7308b;

            {
                this.f7308b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                n6 n6Var = this.f7308b;
                switch (i11) {
                    case 0:
                        if (n6Var.f7468j.b() != 0) {
                            if (fa.g0.f5682a.d().isEmpty()) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                                    com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
                                    break;
                                }
                            }
                            new mc.c(0, new l6(n6Var, 3)).d(rc.f.f13757b).a(fc.b.a()).b(new m6(0));
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("请先监听日志");
                            break;
                        }
                    case 1:
                        n6Var.dismiss();
                        break;
                    default:
                        if (!n6Var.f7466h.getText().equals("监听日志")) {
                            n6Var.f7469k.k();
                            n6Var.f7466h.setText("监听日志");
                            break;
                        } else {
                            new da(n6Var.f6724a, n6Var.f6725b, new l6(n6Var, 2)).show();
                            break;
                        }
                }
            }
        });
        TextView textView = (TextView) findViewById(R.id.v_btn_xfc);
        textView.setOnClickListener(new c6.c(this, 8, textView));
        final int i12 = 2;
        this.f7466h.setOnClickListener(new View.OnClickListener(this) { // from class: ha.k6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ n6 f7308b;

            {
                this.f7308b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                n6 n6Var = this.f7308b;
                switch (i12) {
                    case 0:
                        if (n6Var.f7468j.b() != 0) {
                            if (fa.g0.f5682a.d().isEmpty()) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                                    com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
                                    break;
                                }
                            }
                            new mc.c(0, new l6(n6Var, 3)).d(rc.f.f13757b).a(fc.b.a()).b(new m6(0));
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("请先监听日志");
                            break;
                        }
                    case 1:
                        n6Var.dismiss();
                        break;
                    default:
                        if (!n6Var.f7466h.getText().equals("监听日志")) {
                            n6Var.f7469k.k();
                            n6Var.f7466h.setText("监听日志");
                            break;
                        } else {
                            new da(n6Var.f6724a, n6Var.f6725b, new l6(n6Var, 2)).show();
                            break;
                        }
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7467i = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        androidx.recyclerview.widget.y yVar = new androidx.recyclerview.widget.y(context);
        yVar.e(n0.g.e(context, R.drawable.divider));
        this.f7467i.addItemDecoration(yVar);
        x9.b3 b3Var = new x9.b3();
        this.f7468j = b3Var;
        this.f7467i.setAdapter(b3Var);
        this.f7468j.f2881e = new l6(this, 0);
    }
}
