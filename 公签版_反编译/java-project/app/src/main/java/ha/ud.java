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
public final class ud extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TextView f7878g;

    /* renamed from: h, reason: collision with root package name */
    public TvRecyclerView f7879h;

    /* renamed from: i, reason: collision with root package name */
    public String f7880i;

    /* renamed from: j, reason: collision with root package name */
    public final x9.g0 f7881j;

    /* renamed from: k, reason: collision with root package name */
    public TvRecyclerView f7882k;
    public final x9.e0 l;

    /* renamed from: m, reason: collision with root package name */
    public TextView f7883m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f7884n;

    /* renamed from: p, reason: collision with root package name */
    public LinearLayout f7885p;

    /* renamed from: q, reason: collision with root package name */
    public ImageView f7886q;
    public TextView r;

    /* renamed from: s, reason: collision with root package name */
    public ConstraintLayout f7887s;

    /* renamed from: t, reason: collision with root package name */
    public ua.i8 f7888t;

    public ud(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_move_to_dir);
        this.f7881j = new x9.g0();
        this.l = new x9.e0();
    }

    public final void a() {
        this.f7879h.requestFocus();
        TvRecyclerView tvRecyclerView = this.f7879h;
        x9.g0 g0Var = this.f7881j;
        g.b.x(g0Var, 1, tvRecyclerView);
        this.f7882k.stopScroll();
        this.l.E(new ArrayList());
        b("", 0, false);
        this.f7887s.setVisibility(0);
        x9.w3 w3Var = (x9.w3) g0Var.t(g0Var.b() - 1);
        b9.a.f2665a.a(this);
        l9.a aVar = new l9.a("http://" + this.f7880i + ":9898/file/" + w3Var.f18365b);
        aVar.f11012d = this;
        aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        aVar.b(new ua.r1(2, this));
    }

    public final void b(String str, int i10, boolean z) {
        this.f7885p.setVisibility(z ? 0 : 8);
        if (z) {
            this.f7886q.setImageResource(i10);
            this.r.setText(str);
        }
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        x9.g0 g0Var = this.f7881j;
        if (g0Var.b() <= 1) {
            super.onBackPressed();
            return;
        }
        g0Var.C(g0Var.b() - 1);
        g.b.x(g0Var, 1, this.f7879h);
        this.f7879h.requestFocus();
        a();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7878g = (TextView) findViewById(R.id.v_title);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_path);
        this.f7879h = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 0, false));
        TvRecyclerView tvRecyclerView2 = this.f7879h;
        x9.g0 g0Var = this.f7881j;
        tvRecyclerView2.setAdapter(g0Var);
        TvRecyclerView tvRecyclerView3 = (TvRecyclerView) findViewById(R.id.v_file);
        this.f7882k = tvRecyclerView3;
        tvRecyclerView3.setLayoutManager(new V7GridLayoutManager(context, 3));
        TvRecyclerView tvRecyclerView4 = this.f7882k;
        x9.e0 e0Var = this.l;
        tvRecyclerView4.setAdapter(e0Var);
        this.f7883m = (TextView) findViewById(R.id.v_btn_yes);
        this.f7884n = (TextView) findViewById(R.id.v_btn_new);
        final int i10 = 0;
        ((TextView) findViewById(R.id.v_btn_reload)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.rd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ud f7710b;

            {
                this.f7710b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        this.f7710b.a();
                        break;
                    case 1:
                        ud udVar = this.f7710b;
                        x9.g0 g0Var2 = udVar.f7881j;
                        if (g0Var2.b() > 0) {
                            ua.i8 i8Var = udVar.f7888t;
                            x9.w3 w3Var = (x9.w3) g.b.d(g0Var2, 1);
                            int i11 = 0;
                            while (true) {
                                ua.q8 q8Var = (ua.q8) i8Var.f15742c;
                                if (i11 < q8Var.L.size()) {
                                    q8Var.G((String) i8Var.f15741b, w3Var.f18365b, (x9.w3) q8Var.L.get(i11));
                                    i11++;
                                }
                            }
                        }
                        udVar.dismiss();
                        break;
                    default:
                        ud udVar2 = this.f7710b;
                        udVar2.getClass();
                        new z6(udVar2.f6724a, udVar2.f6725b, "新建文件夹", "", "请输入文件夹名称", "确定", "取消", new h5.m(19, udVar2)).show();
                        break;
                }
            }
        });
        final int i11 = 1;
        this.f7883m.setOnClickListener(new View.OnClickListener(this) { // from class: ha.rd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ud f7710b;

            {
                this.f7710b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        this.f7710b.a();
                        break;
                    case 1:
                        ud udVar = this.f7710b;
                        x9.g0 g0Var2 = udVar.f7881j;
                        if (g0Var2.b() > 0) {
                            ua.i8 i8Var = udVar.f7888t;
                            x9.w3 w3Var = (x9.w3) g.b.d(g0Var2, 1);
                            int i112 = 0;
                            while (true) {
                                ua.q8 q8Var = (ua.q8) i8Var.f15742c;
                                if (i112 < q8Var.L.size()) {
                                    q8Var.G((String) i8Var.f15741b, w3Var.f18365b, (x9.w3) q8Var.L.get(i112));
                                    i112++;
                                }
                            }
                        }
                        udVar.dismiss();
                        break;
                    default:
                        ud udVar2 = this.f7710b;
                        udVar2.getClass();
                        new z6(udVar2.f6724a, udVar2.f6725b, "新建文件夹", "", "请输入文件夹名称", "确定", "取消", new h5.m(19, udVar2)).show();
                        break;
                }
            }
        });
        final int i12 = 2;
        this.f7884n.setOnClickListener(new View.OnClickListener(this) { // from class: ha.rd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ud f7710b;

            {
                this.f7710b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i12) {
                    case 0:
                        this.f7710b.a();
                        break;
                    case 1:
                        ud udVar = this.f7710b;
                        x9.g0 g0Var2 = udVar.f7881j;
                        if (g0Var2.b() > 0) {
                            ua.i8 i8Var = udVar.f7888t;
                            x9.w3 w3Var = (x9.w3) g.b.d(g0Var2, 1);
                            int i112 = 0;
                            while (true) {
                                ua.q8 q8Var = (ua.q8) i8Var.f15742c;
                                if (i112 < q8Var.L.size()) {
                                    q8Var.G((String) i8Var.f15741b, w3Var.f18365b, (x9.w3) q8Var.L.get(i112));
                                    i112++;
                                }
                            }
                        }
                        udVar.dismiss();
                        break;
                    default:
                        ud udVar2 = this.f7710b;
                        udVar2.getClass();
                        new z6(udVar2.f6724a, udVar2.f6725b, "新建文件夹", "", "请输入文件夹名称", "确定", "取消", new h5.m(19, udVar2)).show();
                        break;
                }
            }
        });
        this.f7885p = (LinearLayout) findViewById(R.id.v_read_ts_lay);
        this.f7886q = (ImageView) findViewById(R.id.v_read_ts_ico);
        this.r = (TextView) findViewById(R.id.v_read_ts_text);
        this.f7885p.setVisibility(8);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_loading);
        this.f7887s = constraintLayout;
        constraintLayout.setVisibility(8);
        g0Var.f2881e = new sd(this, 0);
        e0Var.f2881e = new sd(this, 1);
        this.f7879h.setOnInBorderKeyEventListener(new sd(this, 2));
        this.f7882k.setOnInBorderKeyEventListener(new sd(this, 3));
    }
}
