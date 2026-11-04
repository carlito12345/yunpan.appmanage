package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.db.AppBean;

/* loaded from: classes.dex */
public final class v5 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public ConstraintLayout f7908g;

    /* renamed from: h, reason: collision with root package name */
    public ImageView f7909h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7910i;

    /* renamed from: j, reason: collision with root package name */
    public TvRecyclerView f7911j;

    /* renamed from: k, reason: collision with root package name */
    public final x9.h f7912k;
    public TvRecyclerView l;

    /* renamed from: m, reason: collision with root package name */
    public final x9.t1 f7913m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f7914n;

    /* renamed from: p, reason: collision with root package name */
    public x9.w3 f7915p;

    /* renamed from: q, reason: collision with root package name */
    public String f7916q;
    public AppBean r;

    /* renamed from: s, reason: collision with root package name */
    public ua.c8 f7917s;

    /* JADX WARN: Illegal instructions before constructor call */
    public v5(Activity activity, Context context) {
        int i10 = com.yunpan.appmanage.util.v.f4106a.f4126j0;
        super(activity, context, i10 == 0 ? R.layout.dialog_file_menu_center : i10 == 1 ? R.layout.dialog_file_menu_left : R.layout.dialog_file_menu_right);
        this.f7912k = new x9.h();
        this.f7913m = new x9.t1();
        this.f7916q = "";
    }

    public static String b() {
        if (Build.VERSION.SDK_INT < 21) {
            return g.b.l(Build.CPU_ABI, ",", new StringBuilder());
        }
        String strK = "";
        for (String str : Build.SUPPORTED_ABIS) {
            strK = !strK.isEmpty() ? g.b.k(strK, ",", str) : str;
        }
        return strK;
    }

    public final void a(String str) {
        if (!str.endsWith(",")) {
            str = str.concat(",");
        }
        boolean zContains = str.contains("v8a,");
        x9.h hVar = this.f7912k;
        if (zContains && str.contains("v7a,") && str.contains("x86,") && str.contains("x86_64,")) {
            hVar.q(new x9.k5("架构", "通用", false));
            return;
        }
        if (str.contains("all")) {
            hVar.q(new x9.k5("架构", "通用", false));
            return;
        }
        hVar.q(new x9.k5("架构", str, false));
        if (str.equals("v8a,") && !b().contains("v8a")) {
            this.f7910i.setText("不兼容");
            return;
        }
        if (str.equals("x86_64,") && !b().contains("x86_64")) {
            this.f7910i.setText("不兼容");
            return;
        }
        if (str.equals("x86,") && !b().contains("x86")) {
            this.f7910i.setText("不兼容");
        } else {
            if (!str.equals("v7a,") || b().contains("v7a") || b().contains("v8a")) {
                return;
            }
            this.f7910i.setText("不兼容");
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7914n = (TextView) findViewById(R.id.v_cancel_default_text);
        this.f7908g = (ConstraintLayout) findViewById(R.id.v_apk_lay);
        this.f7909h = (ImageView) findViewById(R.id.v_apk_ico);
        this.f7910i = (TextView) findViewById(R.id.v_apk_ts);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_apk_info);
        this.f7911j = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        this.f7911j.setAdapter(this.f7912k);
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list);
        this.l = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7GridLayoutManager(context, 3));
        TvRecyclerView tvRecyclerView3 = this.l;
        x9.t1 t1Var = this.f7913m;
        tvRecyclerView3.setAdapter(t1Var);
        this.l.setOnInBorderKeyEventListener(new g2.c(8));
        t1Var.f2882f = new t5(this, 0);
        t1Var.f2881e = new t5(this, 1);
    }
}
