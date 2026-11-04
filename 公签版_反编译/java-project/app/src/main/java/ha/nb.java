package ha;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityCodeEditor;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class nb extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TextView f7476g;

    /* renamed from: h, reason: collision with root package name */
    public TvRecyclerView f7477h;

    /* renamed from: i, reason: collision with root package name */
    public final x9.g0 f7478i;

    /* renamed from: j, reason: collision with root package name */
    public TvRecyclerView f7479j;

    /* renamed from: k, reason: collision with root package name */
    public final x9.e0 f7480k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public TextView f7481m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f7482n;

    /* renamed from: p, reason: collision with root package name */
    public LinearLayout f7483p;

    /* renamed from: q, reason: collision with root package name */
    public ImageView f7484q;
    public TextView r;

    /* renamed from: s, reason: collision with root package name */
    public ConstraintLayout f7485s;

    /* renamed from: t, reason: collision with root package name */
    public ua.d1 f7486t;

    /* renamed from: v, reason: collision with root package name */
    public EditText f7487v;

    public nb(Activity activity, da.g gVar) {
        super(activity, gVar, R.layout.dialog_save_new_file);
        this.f7478i = new x9.g0();
        this.f7480k = new x9.e0();
    }

    public final void a() {
        this.f7477h.requestFocus();
        TvRecyclerView tvRecyclerView = this.f7477h;
        x9.g0 g0Var = this.f7478i;
        g.b.x(g0Var, 1, tvRecyclerView);
        this.f7479j.stopScroll();
        this.f7480k.E(new ArrayList());
        b("", 0, false);
        this.f7485s.setVisibility(0);
        new mc.c(0, new d4((x9.w3) g0Var.t(g0Var.b() - 1), 3)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(18, this));
    }

    public final void b(String str, int i10, boolean z) {
        this.f7483p.setVisibility(z ? 0 : 8);
        if (z) {
            this.f7484q.setImageResource(i10);
            this.r.setText(str);
        }
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        x9.g0 g0Var = this.f7478i;
        if (g0Var.b() <= 1) {
            super.onBackPressed();
            return;
        }
        g0Var.C(g0Var.b() - 1);
        g.b.x(g0Var, 1, this.f7477h);
        this.f7477h.requestFocus();
        a();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7476g = (TextView) findViewById(R.id.v_title);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_path);
        this.f7477h = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 0, false));
        TvRecyclerView tvRecyclerView2 = this.f7477h;
        x9.g0 g0Var = this.f7478i;
        tvRecyclerView2.setAdapter(g0Var);
        TvRecyclerView tvRecyclerView3 = (TvRecyclerView) findViewById(R.id.v_file);
        this.f7479j = tvRecyclerView3;
        tvRecyclerView3.setLayoutManager(new V7GridLayoutManager(context, 3));
        TvRecyclerView tvRecyclerView4 = this.f7479j;
        x9.e0 e0Var = this.f7480k;
        tvRecyclerView4.setAdapter(e0Var);
        this.l = (TextView) findViewById(R.id.v_btn_yes);
        this.f7481m = (TextView) findViewById(R.id.v_btn_new);
        TextView textView = (TextView) findViewById(R.id.v_btn_reload);
        this.f7482n = textView;
        final int i10 = 0;
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: ha.lb

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ nb f7371b;

            {
                this.f7371b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                nb nbVar = this.f7371b;
                switch (i10) {
                    case 0:
                        nbVar.a();
                        break;
                    case 1:
                        x9.g0 g0Var2 = nbVar.f7478i;
                        if (g0Var2.b() > 0) {
                            if (nbVar.f7487v.getText().toString().isEmpty()) {
                                com.yunpan.appmanage.util.a0.u("请输入文件名");
                                break;
                            } else if (!com.yunpan.appmanage.util.a0.d(((x9.w3) g.b.d(g0Var2, 1)).f18365b)) {
                                com.yunpan.appmanage.util.a0.u("此目录无权限写入文件");
                                break;
                            } else {
                                String str = ((x9.w3) g.b.d(g0Var2, 1)).f18365b + File.separator + nbVar.f7487v.getText().toString();
                                if (com.yunpan.appmanage.util.a0.g(str)) {
                                    com.yunpan.appmanage.util.a0.u("已存在相同文件名的文件");
                                    break;
                                } else {
                                    ua.d1 d1Var = nbVar.f7486t;
                                    d1Var.getClass();
                                    int i11 = ActivityCodeEditor.f3967c1;
                                    ActivityCodeEditor activityCodeEditor = d1Var.f15631b;
                                    activityCodeEditor.getClass();
                                    activityCodeEditor.R = Uri.fromFile(new File(str));
                                    activityCodeEditor.B(false);
                                }
                            }
                        }
                        nbVar.dismiss();
                        break;
                    default:
                        nbVar.getClass();
                        new z6(nbVar.f6724a, nbVar.f6725b, "新建文件夹", "", "请输入文件夹名称", "确定", "取消", new h5.m(13, nbVar)).show();
                        break;
                }
            }
        });
        EditText editText = (EditText) findViewById(R.id.v_edit);
        this.f7487v = editText;
        editText.setOnKeyListener(new c0(this, 5));
        final int i11 = 1;
        this.l.setOnClickListener(new View.OnClickListener(this) { // from class: ha.lb

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ nb f7371b;

            {
                this.f7371b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                nb nbVar = this.f7371b;
                switch (i11) {
                    case 0:
                        nbVar.a();
                        break;
                    case 1:
                        x9.g0 g0Var2 = nbVar.f7478i;
                        if (g0Var2.b() > 0) {
                            if (nbVar.f7487v.getText().toString().isEmpty()) {
                                com.yunpan.appmanage.util.a0.u("请输入文件名");
                                break;
                            } else if (!com.yunpan.appmanage.util.a0.d(((x9.w3) g.b.d(g0Var2, 1)).f18365b)) {
                                com.yunpan.appmanage.util.a0.u("此目录无权限写入文件");
                                break;
                            } else {
                                String str = ((x9.w3) g.b.d(g0Var2, 1)).f18365b + File.separator + nbVar.f7487v.getText().toString();
                                if (com.yunpan.appmanage.util.a0.g(str)) {
                                    com.yunpan.appmanage.util.a0.u("已存在相同文件名的文件");
                                    break;
                                } else {
                                    ua.d1 d1Var = nbVar.f7486t;
                                    d1Var.getClass();
                                    int i112 = ActivityCodeEditor.f3967c1;
                                    ActivityCodeEditor activityCodeEditor = d1Var.f15631b;
                                    activityCodeEditor.getClass();
                                    activityCodeEditor.R = Uri.fromFile(new File(str));
                                    activityCodeEditor.B(false);
                                }
                            }
                        }
                        nbVar.dismiss();
                        break;
                    default:
                        nbVar.getClass();
                        new z6(nbVar.f6724a, nbVar.f6725b, "新建文件夹", "", "请输入文件夹名称", "确定", "取消", new h5.m(13, nbVar)).show();
                        break;
                }
            }
        });
        final int i12 = 2;
        this.f7481m.setOnClickListener(new View.OnClickListener(this) { // from class: ha.lb

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ nb f7371b;

            {
                this.f7371b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                nb nbVar = this.f7371b;
                switch (i12) {
                    case 0:
                        nbVar.a();
                        break;
                    case 1:
                        x9.g0 g0Var2 = nbVar.f7478i;
                        if (g0Var2.b() > 0) {
                            if (nbVar.f7487v.getText().toString().isEmpty()) {
                                com.yunpan.appmanage.util.a0.u("请输入文件名");
                                break;
                            } else if (!com.yunpan.appmanage.util.a0.d(((x9.w3) g.b.d(g0Var2, 1)).f18365b)) {
                                com.yunpan.appmanage.util.a0.u("此目录无权限写入文件");
                                break;
                            } else {
                                String str = ((x9.w3) g.b.d(g0Var2, 1)).f18365b + File.separator + nbVar.f7487v.getText().toString();
                                if (com.yunpan.appmanage.util.a0.g(str)) {
                                    com.yunpan.appmanage.util.a0.u("已存在相同文件名的文件");
                                    break;
                                } else {
                                    ua.d1 d1Var = nbVar.f7486t;
                                    d1Var.getClass();
                                    int i112 = ActivityCodeEditor.f3967c1;
                                    ActivityCodeEditor activityCodeEditor = d1Var.f15631b;
                                    activityCodeEditor.getClass();
                                    activityCodeEditor.R = Uri.fromFile(new File(str));
                                    activityCodeEditor.B(false);
                                }
                            }
                        }
                        nbVar.dismiss();
                        break;
                    default:
                        nbVar.getClass();
                        new z6(nbVar.f6724a, nbVar.f6725b, "新建文件夹", "", "请输入文件夹名称", "确定", "取消", new h5.m(13, nbVar)).show();
                        break;
                }
            }
        });
        this.f7483p = (LinearLayout) findViewById(R.id.v_read_ts_lay);
        this.f7484q = (ImageView) findViewById(R.id.v_read_ts_ico);
        this.r = (TextView) findViewById(R.id.v_read_ts_text);
        this.f7483p.setVisibility(8);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_loading);
        this.f7485s = constraintLayout;
        constraintLayout.setVisibility(8);
        g0Var.f2881e = new mb(this, 0);
        e0Var.f2881e = new mb(this, 1);
        this.f7477h.setOnInBorderKeyEventListener(new mb(this, 2));
        this.f7479j.setOnInBorderKeyEventListener(new mb(this, 3));
    }
}
