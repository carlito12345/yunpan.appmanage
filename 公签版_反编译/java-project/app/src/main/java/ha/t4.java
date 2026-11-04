package ha;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityCleanMemoryWhitelist;

/* loaded from: classes.dex */
public final class t4 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public RecyclerView f7790g;

    /* renamed from: h, reason: collision with root package name */
    public x9.c0 f7791h;

    /* renamed from: i, reason: collision with root package name */
    public ua.u7 f7792i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f7793j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f7794k;
    public float l;

    public t4(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_clean_mode);
        this.f7794k = false;
        this.l = 0.0f;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f7794k = true;
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7793j = (TextView) findViewById(R.id.v_text_bfb);
        final int i10 = 0;
        findViewById(R.id.v_btn_blacklist).setOnClickListener(new View.OnClickListener(this) { // from class: ha.r4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ t4 f7680b;

            {
                this.f7680b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        t4 t4Var = this.f7680b;
                        t4Var.getClass();
                        Context context = t4Var.f6725b;
                        context.startActivity(new Intent(context, (Class<?>) ActivityCleanMemoryWhitelist.class));
                        break;
                    default:
                        t4 t4Var2 = this.f7680b;
                        t4Var2.getClass();
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar.Z != 4) {
                            fa.b0.f5652a.getClass();
                            if (!a2.w0.N()) {
                                Toaster.show((CharSequence) "使用此模式需连接adb或root或公签");
                                break;
                            }
                        } else if (t4Var2.l < 40.0f) {
                            com.yunpan.appmanage.util.a0.w("内存使用率过低，不建议使用暴力模式");
                            break;
                        }
                        ua.u7 u7Var = t4Var2.f7792i;
                        int i11 = wVar.Z;
                        ua.x7 x7Var = u7Var.f15989b;
                        x7Var.getClass();
                        new q4(x7Var.f4530f, x7Var.f4529e, i11).show();
                        t4Var2.dismiss();
                        break;
                }
            }
        });
        TextView textView = (TextView) findViewById(R.id.v_btn_start);
        textView.requestFocus();
        final int i11 = 1;
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: ha.r4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ t4 f7680b;

            {
                this.f7680b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        t4 t4Var = this.f7680b;
                        t4Var.getClass();
                        Context context = t4Var.f6725b;
                        context.startActivity(new Intent(context, (Class<?>) ActivityCleanMemoryWhitelist.class));
                        break;
                    default:
                        t4 t4Var2 = this.f7680b;
                        t4Var2.getClass();
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar.Z != 4) {
                            fa.b0.f5652a.getClass();
                            if (!a2.w0.N()) {
                                Toaster.show((CharSequence) "使用此模式需连接adb或root或公签");
                                break;
                            }
                        } else if (t4Var2.l < 40.0f) {
                            com.yunpan.appmanage.util.a0.w("内存使用率过低，不建议使用暴力模式");
                            break;
                        }
                        ua.u7 u7Var = t4Var2.f7792i;
                        int i112 = wVar.Z;
                        ua.x7 x7Var = u7Var.f15989b;
                        x7Var.getClass();
                        new q4(x7Var.f4530f, x7Var.f4529e, i112).show();
                        t4Var2.dismiss();
                        break;
                }
            }
        });
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list_type);
        this.f7790g = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(0, false));
        x9.c0 c0Var = new x9.c0();
        this.f7791h = c0Var;
        g.b.w("终结者", false, c0Var);
        g.b.w("车机模式", false, this.f7791h);
        g.b.w("窗口模式", false, this.f7791h);
        g.b.w("温柔模式", false, this.f7791h);
        g.b.w("暴力模式", false, this.f7791h);
        g.b.w("极速", false, this.f7791h);
        this.f7790g.setAdapter(this.f7791h);
        this.f7791h.G(com.yunpan.appmanage.util.v.f4106a.Z);
        new mc.c(0, new s4(this)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(7, this));
        this.f7791h.f2881e = new s4(this);
    }
}
