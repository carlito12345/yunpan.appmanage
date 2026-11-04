package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
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
public final class k9 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7318g;

    /* renamed from: h, reason: collision with root package name */
    public final x9.g0 f7319h;

    /* renamed from: i, reason: collision with root package name */
    public TvRecyclerView f7320i;

    /* renamed from: j, reason: collision with root package name */
    public final x9.u2 f7321j;

    /* renamed from: k, reason: collision with root package name */
    public LinearLayout f7322k;
    public ImageView l;

    /* renamed from: m, reason: collision with root package name */
    public TextView f7323m;

    /* renamed from: n, reason: collision with root package name */
    public ConstraintLayout f7324n;

    /* renamed from: p, reason: collision with root package name */
    public h5.m f7325p;

    public k9(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_key_selector);
        this.f7319h = new x9.g0();
        this.f7321j = new x9.u2();
    }

    public final void a() {
        this.f7318g.requestFocus();
        TvRecyclerView tvRecyclerView = this.f7318g;
        x9.g0 g0Var = this.f7319h;
        g.b.x(g0Var, 1, tvRecyclerView);
        this.f7320i.stopScroll();
        this.f7321j.E(new ArrayList());
        b("", 0, false);
        this.f7324n.setVisibility(0);
        new mc.c(0, new d4((x9.w3) g0Var.t(g0Var.b() - 1), 2)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(14, this));
    }

    public final void b(String str, int i10, boolean z) {
        this.f7322k.setVisibility(z ? 0 : 8);
        if (z) {
            this.l.setImageResource(i10);
            this.f7323m.setText(str);
        }
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        x9.g0 g0Var = this.f7319h;
        if (g0Var.b() <= 1) {
            super.onBackPressed();
            return;
        }
        g0Var.C(g0Var.b() - 1);
        g.b.x(g0Var, 1, this.f7318g);
        this.f7318g.requestFocus();
        a();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_path);
        this.f7318g = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 0, false));
        TvRecyclerView tvRecyclerView2 = this.f7318g;
        x9.g0 g0Var = this.f7319h;
        tvRecyclerView2.setAdapter(g0Var);
        TvRecyclerView tvRecyclerView3 = (TvRecyclerView) findViewById(R.id.v_file);
        this.f7320i = tvRecyclerView3;
        tvRecyclerView3.setLayoutManager(new V7GridLayoutManager(context, 2));
        TvRecyclerView tvRecyclerView4 = this.f7320i;
        x9.u2 u2Var = this.f7321j;
        tvRecyclerView4.setAdapter(u2Var);
        this.f7322k = (LinearLayout) findViewById(R.id.v_read_ts_lay);
        this.l = (ImageView) findViewById(R.id.v_read_ts_ico);
        this.f7323m = (TextView) findViewById(R.id.v_read_ts_text);
        this.f7322k.setVisibility(8);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_loading);
        this.f7324n = constraintLayout;
        constraintLayout.setVisibility(8);
        g0Var.f2881e = new j9(this, 0);
        u2Var.f2881e = new j9(this, 1);
        this.f7318g.setOnInBorderKeyEventListener(new j9(this, 2));
    }
}
