package ha;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
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
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class b5 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TextView f6784g;

    /* renamed from: h, reason: collision with root package name */
    public TvRecyclerView f6785h;

    /* renamed from: i, reason: collision with root package name */
    public final x9.g2 f6786i;

    /* renamed from: j, reason: collision with root package name */
    public TvRecyclerView f6787j;

    /* renamed from: k, reason: collision with root package name */
    public final x9.g0 f6788k;
    public TvRecyclerView l;

    /* renamed from: m, reason: collision with root package name */
    public final x9.e0 f6789m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f6790n;

    /* renamed from: p, reason: collision with root package name */
    public TextView f6791p;

    /* renamed from: q, reason: collision with root package name */
    public LinearLayout f6792q;
    public ImageView r;

    /* renamed from: s, reason: collision with root package name */
    public TextView f6793s;

    /* renamed from: t, reason: collision with root package name */
    public ConstraintLayout f6794t;

    /* renamed from: v, reason: collision with root package name */
    public ua.g6 f6795v;

    /* renamed from: w, reason: collision with root package name */
    public SharedPreferences f6796w;

    /* renamed from: x, reason: collision with root package name */
    public SharedPreferences.Editor f6797x;

    public b5(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_copy_to_dir);
        this.f6786i = new x9.g2();
        this.f6788k = new x9.g0();
        this.f6789m = new x9.e0();
    }

    public final void a() {
        this.f6787j.requestFocus();
        TvRecyclerView tvRecyclerView = this.f6787j;
        x9.g0 g0Var = this.f6788k;
        g.b.x(g0Var, 1, tvRecyclerView);
        this.l.stopScroll();
        this.f6789m.E(new ArrayList());
        b("", 0, false);
        this.f6794t.setVisibility(0);
        new mc.c(0, new d4((x9.w3) g0Var.t(g0Var.b() - 1), 1)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(8, this));
    }

    public final void b(String str, int i10, boolean z) {
        this.f6792q.setVisibility(z ? 0 : 8);
        if (z) {
            this.r.setImageResource(i10);
            this.f6793s.setText(str);
        }
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        x9.g0 g0Var = this.f6788k;
        if (g0Var.b() <= 1) {
            super.onBackPressed();
            return;
        }
        g0Var.C(g0Var.b() - 1);
        g.b.x(g0Var, 1, this.f6787j);
        this.f6787j.requestFocus();
        a();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        final int i10 = 1;
        final int i11 = 2;
        super.onCreate(bundle);
        String name = b5.class.getName();
        Context context = this.f6725b;
        final int i12 = 0;
        SharedPreferences sharedPreferences = context.getSharedPreferences(name, 0);
        this.f6796w = sharedPreferences;
        this.f6797x = sharedPreferences.edit();
        this.f6784g = (TextView) findViewById(R.id.v_title);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_sd);
        this.f6785h = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 0, false));
        TvRecyclerView tvRecyclerView2 = this.f6785h;
        x9.g2 g2Var = this.f6786i;
        tvRecyclerView2.setAdapter(g2Var);
        fa.h0 h0Var = fa.g0.f5682a;
        if (!h0Var.d().isEmpty()) {
            g2Var.q(new x9.w3("内部存储", h0Var.d()));
        }
        g2Var.q(new x9.w3("系统根", "/"));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        Iterator it = com.yunpan.appmanage.util.j.f4033a.f4073v.iterator();
        while (it.hasNext()) {
            g2Var.q(new x9.w3("U盘", (String) it.next()));
        }
        if (g2Var.b() < 2) {
            this.f6785h.setVisibility(8);
        }
        g2Var.f2881e = new z4(this, 0);
        TvRecyclerView tvRecyclerView3 = (TvRecyclerView) findViewById(R.id.v_path);
        this.f6787j = tvRecyclerView3;
        tvRecyclerView3.setLayoutManager(new V7LinearLayoutManager(context, 0, false));
        TvRecyclerView tvRecyclerView4 = this.f6787j;
        x9.g0 g0Var = this.f6788k;
        tvRecyclerView4.setAdapter(g0Var);
        TvRecyclerView tvRecyclerView5 = (TvRecyclerView) findViewById(R.id.v_file);
        this.l = tvRecyclerView5;
        tvRecyclerView5.setLayoutManager(new V7GridLayoutManager(context, 3));
        TvRecyclerView tvRecyclerView6 = this.l;
        x9.e0 e0Var = this.f6789m;
        tvRecyclerView6.setAdapter(e0Var);
        this.f6790n = (TextView) findViewById(R.id.v_btn_yes);
        this.f6791p = (TextView) findViewById(R.id.v_btn_new);
        ((TextView) findViewById(R.id.v_btn_reload)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.a5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ b5 f6730b;

            {
                this.f6730b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i12) {
                    case 0:
                        this.f6730b.a();
                        break;
                    case 1:
                        b5 b5Var = this.f6730b;
                        x9.g0 g0Var2 = b5Var.f6788k;
                        if (g0Var2.b() > 0) {
                            ua.g6 g6Var = b5Var.f6795v;
                            x9.w3 w3Var = (x9.w3) g.b.d(g0Var2, 1);
                            ua.q8 q8Var = (ua.q8) g6Var.f15697c;
                            q8Var.K.setText("已" + ((String) g6Var.f15696b));
                            q8Var.r(w3Var.f18365b);
                        }
                        b5Var.dismiss();
                        break;
                    default:
                        b5 b5Var2 = this.f6730b;
                        b5Var2.getClass();
                        new z6(b5Var2.f6724a, b5Var2.f6725b, "新建文件夹", "", "请输入文件夹名称", "确定", "取消", new h5.m(8, b5Var2)).show();
                        break;
                }
            }
        });
        this.f6790n.setOnClickListener(new View.OnClickListener(this) { // from class: ha.a5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ b5 f6730b;

            {
                this.f6730b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        this.f6730b.a();
                        break;
                    case 1:
                        b5 b5Var = this.f6730b;
                        x9.g0 g0Var2 = b5Var.f6788k;
                        if (g0Var2.b() > 0) {
                            ua.g6 g6Var = b5Var.f6795v;
                            x9.w3 w3Var = (x9.w3) g.b.d(g0Var2, 1);
                            ua.q8 q8Var = (ua.q8) g6Var.f15697c;
                            q8Var.K.setText("已" + ((String) g6Var.f15696b));
                            q8Var.r(w3Var.f18365b);
                        }
                        b5Var.dismiss();
                        break;
                    default:
                        b5 b5Var2 = this.f6730b;
                        b5Var2.getClass();
                        new z6(b5Var2.f6724a, b5Var2.f6725b, "新建文件夹", "", "请输入文件夹名称", "确定", "取消", new h5.m(8, b5Var2)).show();
                        break;
                }
            }
        });
        this.f6791p.setOnClickListener(new View.OnClickListener(this) { // from class: ha.a5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ b5 f6730b;

            {
                this.f6730b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        this.f6730b.a();
                        break;
                    case 1:
                        b5 b5Var = this.f6730b;
                        x9.g0 g0Var2 = b5Var.f6788k;
                        if (g0Var2.b() > 0) {
                            ua.g6 g6Var = b5Var.f6795v;
                            x9.w3 w3Var = (x9.w3) g.b.d(g0Var2, 1);
                            ua.q8 q8Var = (ua.q8) g6Var.f15697c;
                            q8Var.K.setText("已" + ((String) g6Var.f15696b));
                            q8Var.r(w3Var.f18365b);
                        }
                        b5Var.dismiss();
                        break;
                    default:
                        b5 b5Var2 = this.f6730b;
                        b5Var2.getClass();
                        new z6(b5Var2.f6724a, b5Var2.f6725b, "新建文件夹", "", "请输入文件夹名称", "确定", "取消", new h5.m(8, b5Var2)).show();
                        break;
                }
            }
        });
        this.f6792q = (LinearLayout) findViewById(R.id.v_read_ts_lay);
        this.r = (ImageView) findViewById(R.id.v_read_ts_ico);
        this.f6793s = (TextView) findViewById(R.id.v_read_ts_text);
        this.f6792q.setVisibility(8);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_loading);
        this.f6794t = constraintLayout;
        constraintLayout.setVisibility(8);
        g0Var.f2881e = new z4(this, 1);
        e0Var.f2881e = new z4(this, 2);
        this.f6787j.setOnInBorderKeyEventListener(new z4(this, 3));
        this.l.setOnInBorderKeyEventListener(new z4(this, 4));
    }
}
