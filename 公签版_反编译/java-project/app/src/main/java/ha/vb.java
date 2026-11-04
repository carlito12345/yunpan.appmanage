package ha;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class vb extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TextView f7947g;

    /* renamed from: h, reason: collision with root package name */
    public TvRecyclerView f7948h;

    /* renamed from: i, reason: collision with root package name */
    public final x9.g2 f7949i;

    /* renamed from: j, reason: collision with root package name */
    public TvRecyclerView f7950j;

    /* renamed from: k, reason: collision with root package name */
    public final x9.g0 f7951k;
    public TvRecyclerView l;

    /* renamed from: m, reason: collision with root package name */
    public x9.f0 f7952m;

    /* renamed from: n, reason: collision with root package name */
    public LinearLayout f7953n;

    /* renamed from: p, reason: collision with root package name */
    public ImageView f7954p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f7955q;
    public ConstraintLayout r;

    /* renamed from: s, reason: collision with root package name */
    public ea.f f7956s;

    public vb(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_select_file);
        this.f7949i = new x9.g2();
        this.f7951k = new x9.g0();
    }

    public final void a() {
        this.f7950j.requestFocus();
        TvRecyclerView tvRecyclerView = this.f7950j;
        x9.g0 g0Var = this.f7951k;
        g.b.x(g0Var, 1, tvRecyclerView);
        this.l.stopScroll();
        this.f7952m.E(new ArrayList());
        b("", 0, false);
        this.r.setVisibility(0);
        new mc.c(0, new d4((x9.w3) g0Var.t(g0Var.b() - 1), 4)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(20, this));
    }

    public final void b(String str, int i10, boolean z) {
        this.f7953n.setVisibility(z ? 0 : 8);
        if (z) {
            this.f7954p.setImageResource(i10);
            this.f7955q.setText(str);
        }
    }

    public final void c(String str, ea.f fVar) {
        show();
        x9.g2 g2Var = this.f7949i;
        if (g2Var.b() == 0) {
            Toaster.show((CharSequence) "未找到存储设备");
            dismiss();
            return;
        }
        this.f7956s = fVar;
        this.f7947g.setText(str);
        this.f7951k.q((x9.w3) g2Var.t(0));
        a();
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        x9.g0 g0Var = this.f7951k;
        if (g0Var.b() <= 1) {
            super.onBackPressed();
            return;
        }
        g0Var.C(g0Var.b() - 1);
        g.b.x(g0Var, 1, this.f7950j);
        this.f7950j.requestFocus();
        a();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_root2);
        ViewGroup.LayoutParams layoutParams = constraintLayout.getLayoutParams();
        Context context = this.f6725b;
        Point pointR = p000if.a.R(context);
        int i10 = 2;
        int i11 = 3;
        layoutParams.width = (pointR.x * 2) / 3;
        layoutParams.height = (pointR.y * 3) / 4;
        constraintLayout.setLayoutParams(layoutParams);
        this.f7947g = (TextView) findViewById(R.id.v_title);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_sd);
        this.f7948h = tvRecyclerView;
        int i12 = 0;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 0, false));
        TvRecyclerView tvRecyclerView2 = this.f7948h;
        x9.g2 g2Var = this.f7949i;
        tvRecyclerView2.setAdapter(g2Var);
        fa.h0 h0Var = fa.g0.f5682a;
        if (!h0Var.d().isEmpty()) {
            g2Var.q(new x9.w3("内部存储", h0Var.d()));
        }
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        Iterator it = com.yunpan.appmanage.util.j.f4033a.f4073v.iterator();
        while (it.hasNext()) {
            g2Var.q(new x9.w3("U盘", (String) it.next()));
        }
        if (g2Var.b() < 2) {
            this.f7948h.setVisibility(8);
        }
        g2Var.f2881e = new ub(this, i12);
        TvRecyclerView tvRecyclerView3 = (TvRecyclerView) findViewById(R.id.v_path);
        this.f7950j = tvRecyclerView3;
        tvRecyclerView3.setLayoutManager(new V7LinearLayoutManager(context, 0, false));
        TvRecyclerView tvRecyclerView4 = this.f7950j;
        x9.g0 g0Var = this.f7951k;
        tvRecyclerView4.setAdapter(g0Var);
        TvRecyclerView tvRecyclerView5 = (TvRecyclerView) findViewById(R.id.v_file);
        this.l = tvRecyclerView5;
        tvRecyclerView5.setLayoutManager(new V7GridLayoutManager(context, 2));
        x9.f0 f0Var = new x9.f0(context);
        this.f7952m = f0Var;
        this.l.setAdapter(f0Var);
        this.f7953n = (LinearLayout) findViewById(R.id.v_read_ts_lay);
        this.f7954p = (ImageView) findViewById(R.id.v_read_ts_ico);
        this.f7955q = (TextView) findViewById(R.id.v_read_ts_text);
        this.f7953n.setVisibility(8);
        ConstraintLayout constraintLayout2 = (ConstraintLayout) findViewById(R.id.v_loading);
        this.r = constraintLayout2;
        constraintLayout2.setVisibility(8);
        g0Var.f2881e = new ub(this, 1);
        this.f7952m.f2881e = new ub(this, i10);
        this.f7950j.setOnInBorderKeyEventListener(new ub(this, i11));
    }
}
