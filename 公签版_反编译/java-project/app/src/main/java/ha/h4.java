package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class h4 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TextView f7144g;

    /* renamed from: h, reason: collision with root package name */
    public TvRecyclerView f7145h;

    /* renamed from: i, reason: collision with root package name */
    public final x9.g0 f7146i;

    /* renamed from: j, reason: collision with root package name */
    public TvRecyclerView f7147j;

    /* renamed from: k, reason: collision with root package name */
    public final x9.e0 f7148k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public TextView f7149m;

    /* renamed from: n, reason: collision with root package name */
    public LinearLayout f7150n;

    /* renamed from: p, reason: collision with root package name */
    public ImageView f7151p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f7152q;
    public ConstraintLayout r;

    /* renamed from: s, reason: collision with root package name */
    public g4 f7153s;

    public h4(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_move_to_dir);
        this.f7146i = new x9.g0();
        this.f7148k = new x9.e0();
    }

    public final void a() {
        this.f7145h.requestFocus();
        TvRecyclerView tvRecyclerView = this.f7145h;
        x9.g0 g0Var = this.f7146i;
        g.b.x(g0Var, 1, tvRecyclerView);
        this.f7147j.stopScroll();
        this.f7148k.E(new ArrayList());
        b("", 0, false);
        this.r.setVisibility(0);
        new mc.c(0, new d4((x9.w3) g0Var.t(g0Var.b() - 1), 0)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(6, this));
    }

    public final void b(String str, int i10, boolean z) {
        this.f7150n.setVisibility(z ? 0 : 8);
        if (z) {
            this.f7151p.setImageResource(i10);
            this.f7152q.setText(str);
        }
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        x9.g0 g0Var = this.f7146i;
        if (g0Var.b() <= 1) {
            super.onBackPressed();
            return;
        }
        g0Var.C(g0Var.b() - 1);
        g.b.x(g0Var, 1, this.f7145h);
        this.f7145h.requestFocus();
        a();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7144g = (TextView) findViewById(R.id.v_title);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_path);
        this.f7145h = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 0, false));
        TvRecyclerView tvRecyclerView2 = this.f7145h;
        x9.g0 g0Var = this.f7146i;
        tvRecyclerView2.setAdapter(g0Var);
        TvRecyclerView tvRecyclerView3 = (TvRecyclerView) findViewById(R.id.v_file);
        this.f7147j = tvRecyclerView3;
        tvRecyclerView3.setLayoutManager(new V7GridLayoutManager(context, 3));
        TvRecyclerView tvRecyclerView4 = this.f7147j;
        x9.e0 e0Var = this.f7148k;
        tvRecyclerView4.setAdapter(e0Var);
        this.l = (TextView) findViewById(R.id.v_btn_yes);
        this.f7149m = (TextView) findViewById(R.id.v_btn_new);
        final int i10 = 0;
        ((TextView) findViewById(R.id.v_btn_reload)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.e4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ h4 f6938b;

            {
                this.f6938b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        this.f6938b.a();
                        break;
                    case 1:
                        h4 h4Var = this.f6938b;
                        x9.g0 g0Var2 = h4Var.f7146i;
                        if (g0Var2.b() > 0) {
                            h4Var.f7153s.k((x9.w3) g.b.d(g0Var2, 1));
                        }
                        h4Var.dismiss();
                        break;
                    default:
                        h4 h4Var2 = this.f6938b;
                        h4Var2.getClass();
                        new z6(h4Var2.f6724a, h4Var2.f6725b, "新建文件夹", "", "请输入文件夹名称", "确定", "取消", new h5.m(6, h4Var2)).show();
                        break;
                }
            }
        });
        final int i11 = 1;
        this.l.setOnClickListener(new View.OnClickListener(this) { // from class: ha.e4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ h4 f6938b;

            {
                this.f6938b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        this.f6938b.a();
                        break;
                    case 1:
                        h4 h4Var = this.f6938b;
                        x9.g0 g0Var2 = h4Var.f7146i;
                        if (g0Var2.b() > 0) {
                            h4Var.f7153s.k((x9.w3) g.b.d(g0Var2, 1));
                        }
                        h4Var.dismiss();
                        break;
                    default:
                        h4 h4Var2 = this.f6938b;
                        h4Var2.getClass();
                        new z6(h4Var2.f6724a, h4Var2.f6725b, "新建文件夹", "", "请输入文件夹名称", "确定", "取消", new h5.m(6, h4Var2)).show();
                        break;
                }
            }
        });
        final int i12 = 2;
        this.f7149m.setOnClickListener(new View.OnClickListener(this) { // from class: ha.e4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ h4 f6938b;

            {
                this.f6938b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i12) {
                    case 0:
                        this.f6938b.a();
                        break;
                    case 1:
                        h4 h4Var = this.f6938b;
                        x9.g0 g0Var2 = h4Var.f7146i;
                        if (g0Var2.b() > 0) {
                            h4Var.f7153s.k((x9.w3) g.b.d(g0Var2, 1));
                        }
                        h4Var.dismiss();
                        break;
                    default:
                        h4 h4Var2 = this.f6938b;
                        h4Var2.getClass();
                        new z6(h4Var2.f6724a, h4Var2.f6725b, "新建文件夹", "", "请输入文件夹名称", "确定", "取消", new h5.m(6, h4Var2)).show();
                        break;
                }
            }
        });
        this.f7150n = (LinearLayout) findViewById(R.id.v_read_ts_lay);
        this.f7151p = (ImageView) findViewById(R.id.v_read_ts_ico);
        this.f7152q = (TextView) findViewById(R.id.v_read_ts_text);
        this.f7150n.setVisibility(8);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_loading);
        this.r = constraintLayout;
        constraintLayout.setVisibility(8);
        g0Var.f2881e = new f4(this, 0);
        e0Var.f2881e = new f4(this, 1);
        this.f7145h.setOnInBorderKeyEventListener(new f4(this, 2));
        this.f7147j.setOnInBorderKeyEventListener(new f4(this, 3));
    }
}
