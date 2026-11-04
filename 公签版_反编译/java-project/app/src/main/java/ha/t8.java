package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.Selection;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityKeyMapAcc;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class t8 extends a4 implements View.OnClickListener, View.OnKeyListener {
    public TextView A;
    public TextView B;
    public TextView C;
    public TvRecyclerView D;
    public x9.t2 E;
    public j6 F;
    public final z7.s G;
    public final int H;
    public final z7.s I;
    public final d3.g K;
    public boolean L;
    public boolean M;
    public boolean N;

    /* renamed from: g, reason: collision with root package name */
    public EditText f7805g;

    /* renamed from: h, reason: collision with root package name */
    public ConstraintLayout f7806h;

    /* renamed from: i, reason: collision with root package name */
    public ImageView f7807i;

    /* renamed from: j, reason: collision with root package name */
    public EditText f7808j;

    /* renamed from: k, reason: collision with root package name */
    public EditText f7809k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public TextView f7810m;

    /* renamed from: n, reason: collision with root package name */
    public ConstraintLayout f7811n;

    /* renamed from: p, reason: collision with root package name */
    public ImageView f7812p;

    /* renamed from: q, reason: collision with root package name */
    public ConstraintLayout f7813q;
    public ImageView r;

    /* renamed from: s, reason: collision with root package name */
    public ConstraintLayout f7814s;

    /* renamed from: t, reason: collision with root package name */
    public ImageView f7815t;

    /* renamed from: v, reason: collision with root package name */
    public ConstraintLayout f7816v;

    /* renamed from: w, reason: collision with root package name */
    public ImageView f7817w;

    /* renamed from: x, reason: collision with root package name */
    public TextView f7818x;

    /* renamed from: y, reason: collision with root package name */
    public TextView f7819y;
    public TextView z;

    public t8(ActivityKeyMapAcc activityKeyMapAcc, da.g gVar, z7.s sVar, int i10, d3.g gVar2) {
        super(activityKeyMapAcc, gVar, R.layout.dialog_key_map_acc_add);
        this.G = sVar;
        this.H = i10;
        this.K = gVar2;
        if (i10 != -1) {
            this.I = sVar.p("keys").l(i10).g();
            return;
        }
        z7.s sVar2 = new z7.s();
        this.I = sVar2;
        try {
            sVar2.m("name", "");
            Boolean bool = Boolean.TRUE;
            sVar2.k("isOpen", bool);
            sVar2.l("keyCode", -1);
            sVar2.l("zhKeyCode", -1);
            sVar2.k("zhModeDown", Boolean.FALSE);
            sVar2.k("ljKey", bool);
            sVar2.k("ljZhKey", bool);
            sVar2.j("click", new z7.o());
            sVar2.j("doubleClick", new z7.o());
            sVar2.j("longClick", new z7.o());
            sVar2.j("zhClick", new z7.o());
        } catch (Exception unused) {
        }
    }

    public static void a(Activity activity, Context context, int i10, boolean z, ea.e eVar) {
        new t9(activity, context, z, new f2.e0(activity, context, i10, eVar, 1)).show();
    }

    public final void b(int i10) {
        a(this.f6724a, this.f6725b, i10, true, new i8(this));
    }

    public final void c() {
        z7.s sVar = this.I;
        this.E.E(new ArrayList());
        try {
            z7.o oVarP = sVar.p("click");
            if (!oVarP.f19478a.isEmpty()) {
                for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                    this.E.q(oVarP.l(i10).g());
                }
            }
            z7.o oVarP2 = sVar.p("doubleClick");
            if (!oVarP2.f19478a.isEmpty()) {
                for (int i11 = 0; i11 < oVarP2.f19478a.size(); i11++) {
                    this.E.q(oVarP2.l(i11).g());
                }
            }
            z7.o oVarP3 = sVar.p("longClick");
            if (!oVarP3.f19478a.isEmpty()) {
                for (int i12 = 0; i12 < oVarP3.f19478a.size(); i12++) {
                    this.E.q(oVarP3.l(i12).g());
                }
            }
            z7.o oVarP4 = sVar.p("zhClick");
            if (oVarP4.f19478a.isEmpty()) {
                return;
            }
            for (int i13 = 0; i13 < oVarP4.f19478a.size(); i13++) {
                this.E.q(oVarP4.l(i13).g());
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws NumberFormatException {
        Iterator it;
        if (view == null) {
            return;
        }
        if (view.getId() == R.id.v_btn_select_zj) {
            this.F.a(new d7(2, this.f7808j));
            return;
        }
        if (view.getId() == R.id.v_btn_select_zhj) {
            this.F.a(new d7(2, this.f7809k));
            return;
        }
        if (view.getId() == R.id.v_btn_click) {
            b(0);
            return;
        }
        if (view.getId() == R.id.v_btn_click_double) {
            b(1);
            return;
        }
        if (view.getId() == R.id.v_btn_click_long) {
            b(2);
            return;
        }
        if (view.getId() == R.id.v_btn_click_zh) {
            if (this.f7809k.getText().toString().trim().isEmpty()) {
                Toaster.show((CharSequence) "请先设置组合键");
                return;
            } else {
                b(3);
                return;
            }
        }
        int id2 = view.getId();
        d3.g gVar = this.K;
        Context context = this.f6725b;
        int i10 = this.H;
        z7.s sVar = this.G;
        if (id2 != R.id.v_btn_click_save) {
            if (view.getId() == R.id.v_btn_click_delete) {
                if (i10 != -1) {
                    sVar.p("keys").n(i10);
                    q4.a.Q(context, sVar);
                }
                ta.m.c(context, "UP_KEYMAP_ACC");
                int i11 = gVar.f4436b;
                if (i11 != -1) {
                    ActivityKeyMapAcc activityKeyMapAcc = (ActivityKeyMapAcc) gVar.f4437c;
                    if (activityKeyMapAcc.D.b() == 1) {
                        activityKeyMapAcc.findViewById(R.id.v_btn_return).requestFocus();
                    }
                    activityKeyMapAcc.D.C(i11);
                }
                dismiss();
                return;
            }
            if (view.getId() == R.id.v_btn_zh_mode_up) {
                if (this.L) {
                    this.L = false;
                    this.f7812p.setImageResource(R.drawable.tp_radio_yes1);
                    this.r.setImageResource(R.drawable.tp_radio_no1);
                    return;
                }
                return;
            }
            if (view.getId() == R.id.v_btn_zh_mode_down) {
                if (this.L) {
                    return;
                }
                this.L = true;
                this.f7812p.setImageResource(R.drawable.tp_radio_no1);
                this.r.setImageResource(R.drawable.tp_radio_yes1);
                return;
            }
            int id3 = view.getId();
            int i12 = R.drawable.tp_check2;
            if (id3 == R.id.v_btn_lj_zj) {
                boolean z = this.M;
                this.M = true ^ z;
                ImageView imageView = this.f7815t;
                if (!z) {
                    i12 = R.drawable.tp_check1;
                }
                imageView.setImageResource(i12);
                return;
            }
            if (view.getId() == R.id.v_btn_lj_zhj) {
                boolean z4 = this.N;
                this.N = true ^ z4;
                ImageView imageView2 = this.f7817w;
                if (!z4) {
                    i12 = R.drawable.tp_check1;
                }
                imageView2.setImageResource(i12);
                return;
            }
            return;
        }
        String strF = g.b.f(this.f7808j);
        if (strF.isEmpty()) {
            Toaster.show((CharSequence) "请先设置主键");
            return;
        }
        int i13 = Integer.parseInt(strF);
        String strF2 = g.b.f(this.f7805g);
        if (strF2.isEmpty()) {
            Toaster.show((CharSequence) "请输入按键备注名");
            return;
        }
        z7.o oVarP = sVar.p("keys");
        if (i10 == -1) {
            for (int i14 = 0; i14 < oVarP.f19478a.size(); i14++) {
                if (oVarP.l(i14).g().o("name").i().equals(strF2)) {
                    Toaster.showLong((CharSequence) "存在相同的按键备注，请更改");
                    return;
                } else {
                    if (android.support.v4.media.session.a.j(oVarP, i14, "keyCode") == i13) {
                        Toaster.showLong((CharSequence) "已设置过此键码，请勿重复添加");
                        return;
                    }
                }
            }
        }
        if (this.E.b() == 0) {
            Toaster.show((CharSequence) "请添加至少一个操作");
            return;
        }
        if (this.f7809k.getText().toString().trim().isEmpty()) {
            Iterator it2 = this.E.v().iterator();
            while (it2.hasNext()) {
                if (((z7.s) it2.next()).o("keyType").e() == 3) {
                    new z6(this.f6724a, this.f6725b, "检测到您没有设置组合键，但你却设置了组合操作\n请删除组合操作，或者设置组合键", "", "好的", "", new l2(3)).show();
                    return;
                }
            }
        }
        String strF3 = g.b.f(this.f7805g);
        z7.s sVar2 = this.I;
        sVar2.m("name", strF3);
        String strF4 = g.b.f(this.f7808j);
        sVar2.l("keyCode", Integer.valueOf(strF4.isEmpty() ? -1 : Integer.parseInt(strF4)));
        String strF5 = g.b.f(this.f7809k);
        sVar2.l("zhKeyCode", Integer.valueOf(strF5.isEmpty() ? -1 : Integer.parseInt(strF5)));
        sVar2.k("zhModeDown", Boolean.valueOf(this.L));
        sVar2.k("ljKey", Boolean.valueOf(this.M));
        sVar2.k("ljZhKey", Boolean.valueOf(this.N));
        sVar2.j("click", new z7.o());
        sVar2.j("doubleClick", new z7.o());
        sVar2.j("longClick", new z7.o());
        sVar2.j("zhClick", new z7.o());
        for (Iterator it3 = this.E.v().iterator(); it3.hasNext(); it3 = it) {
            z7.s sVar3 = (z7.s) it3.next();
            int iE = sVar3.o("keyType").e();
            if (iE == 0) {
                sVar2.p("click").k(sVar3);
                it = it3;
            } else {
                it = it3;
                if (iE == 1) {
                    sVar2.p("doubleClick").k(sVar3);
                } else if (iE == 2) {
                    sVar2.p("longClick").k(sVar3);
                } else {
                    if (iE == 3) {
                        sVar2.p("zhClick").k(sVar3);
                    }
                }
            }
        }
        if (i10 == -1) {
            sVar.p("keys").k(sVar2);
        } else {
            sVar.p("keys").o(i10, sVar2);
        }
        q4.a.Q(context, sVar);
        ta.m.c(context, "UP_KEYMAP_ACC");
        gVar.getClass();
        int i15 = ActivityKeyMapAcc.F;
        ((ActivityKeyMapAcc) gVar.f4437c).y();
        dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z7.s sVar = this.I;
        boolean zB = true;
        if (this.H != -1) {
            this.L = sVar.o("zhModeDown").b();
            this.M = sVar.o("ljKey").b();
            this.N = sVar.o("ljZhKey").b();
        } else {
            this.L = false;
            this.M = true;
            this.N = true;
        }
        this.f7806h = (ConstraintLayout) findViewById(R.id.v_select_open);
        this.f7807i = (ImageView) findViewById(R.id.v_select_open_ico);
        this.f7806h.setOnClickListener(new com.google.android.material.datepicker.l(this, 27));
        this.f7805g = (EditText) findViewById(R.id.v_edit_name);
        this.f7808j = (EditText) findViewById(R.id.v_edit_zj);
        this.f7809k = (EditText) findViewById(R.id.v_edit_zhj);
        TextView textView = (TextView) findViewById(R.id.v_btn_select_zj);
        this.l = textView;
        textView.requestFocus();
        this.f7810m = (TextView) findViewById(R.id.v_btn_select_zhj);
        this.f7811n = (ConstraintLayout) findViewById(R.id.v_btn_zh_mode_up);
        this.f7812p = (ImageView) findViewById(R.id.v_btn_zh_mode_up_ico);
        this.f7813q = (ConstraintLayout) findViewById(R.id.v_btn_zh_mode_down);
        this.r = (ImageView) findViewById(R.id.v_btn_zh_mode_down_ico);
        this.f7811n.setOnClickListener(this);
        this.f7813q.setOnClickListener(this);
        ImageView imageView = this.f7812p;
        boolean z = this.L;
        int i10 = R.drawable.tp_radio_yes1;
        imageView.setImageResource(z ? R.drawable.tp_radio_no1 : R.drawable.tp_radio_yes1);
        ImageView imageView2 = this.r;
        if (!this.L) {
            i10 = R.drawable.tp_radio_no1;
        }
        imageView2.setImageResource(i10);
        this.f7814s = (ConstraintLayout) findViewById(R.id.v_btn_lj_zj);
        this.f7815t = (ImageView) findViewById(R.id.v_btn_lj_zj_ico);
        this.f7816v = (ConstraintLayout) findViewById(R.id.v_btn_lj_zhj);
        this.f7817w = (ImageView) findViewById(R.id.v_btn_lj_zhj_ico);
        this.f7814s.setOnClickListener(this);
        this.f7816v.setOnClickListener(this);
        ImageView imageView3 = this.f7815t;
        boolean z4 = this.M;
        int i11 = R.drawable.tp_check2;
        imageView3.setImageResource(z4 ? R.drawable.tp_check1 : R.drawable.tp_check2);
        this.f7817w.setImageResource(this.N ? R.drawable.tp_check1 : R.drawable.tp_check2);
        this.f7818x = (TextView) findViewById(R.id.v_btn_click);
        this.f7819y = (TextView) findViewById(R.id.v_btn_click_double);
        this.z = (TextView) findViewById(R.id.v_btn_click_long);
        this.A = (TextView) findViewById(R.id.v_btn_click_zh);
        this.B = (TextView) findViewById(R.id.v_btn_click_save);
        this.C = (TextView) findViewById(R.id.v_btn_click_delete);
        this.l.setOnClickListener(this);
        this.f7810m.setOnClickListener(this);
        this.f7818x.setOnClickListener(this);
        this.f7819y.setOnClickListener(this);
        this.z.setOnClickListener(this);
        this.A.setOnClickListener(this);
        this.B.setOnClickListener(this);
        this.C.setOnClickListener(this);
        Activity activity = this.f6724a;
        Context context = this.f6725b;
        this.F = new j6(activity, context);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.D = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.t2 t2Var = new x9.t2();
        this.E = t2Var;
        this.D.setAdapter(t2Var);
        d6.a aVar = new d6.a();
        aVar.f4496h = 3;
        aVar.f4495g = false;
        aVar.d(this.D);
        aVar.g(this.E);
        this.E.f2881e = new i8(this);
        this.f7805g.setOnKeyListener(this);
        this.f7808j.setOnKeyListener(this);
        this.f7809k.setOnKeyListener(this);
        this.f7818x.setOnKeyListener(this);
        this.f7819y.setOnKeyListener(this);
        this.z.setOnKeyListener(this);
        this.A.setOnKeyListener(this);
        this.B.setOnKeyListener(this);
        this.C.setOnKeyListener(this);
        try {
            this.f7805g.setText(sVar.o("name").i());
            int iE = sVar.o("keyCode").e();
            if (iE != -1) {
                this.f7808j.setText(String.valueOf(iE));
            }
            int iE2 = sVar.o("zhKeyCode").e();
            if (iE2 != -1) {
                this.f7809k.setText(String.valueOf(iE2));
            }
            if (sVar.f19480a.containsKey("isOpen")) {
                zB = sVar.o("isOpen").b();
            } else {
                sVar.k("isOpen", Boolean.TRUE);
            }
            ImageView imageView4 = this.f7807i;
            if (zB) {
                i11 = R.drawable.tp_check1;
            }
            imageView4.setImageResource(i11);
            c();
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        if (i10 == 20) {
            try {
                if (view.getId() == R.id.v_edit_name) {
                    if (this.f7805g.getLayout().getLineForOffset(Selection.getSelectionStart(this.f7805g.getText())) != this.f7805g.getLineCount() - 1) {
                        return false;
                    }
                    this.f7808j.requestFocus();
                    return true;
                }
                if (view.getId() == R.id.v_edit_zj) {
                    if (this.f7808j.getLayout().getLineForOffset(Selection.getSelectionStart(this.f7808j.getText())) != this.f7808j.getLineCount() - 1) {
                        return false;
                    }
                    this.f7809k.requestFocus();
                    return true;
                }
                if (view.getId() != R.id.v_edit_zhj) {
                    return this.E.b() == 0;
                }
                if (this.f7809k.getLayout().getLineForOffset(Selection.getSelectionStart(this.f7809k.getText())) != this.f7809k.getLineCount() - 1) {
                    return false;
                }
                this.f7818x.requestFocus();
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        if (i10 == 19) {
            if (view.getId() == R.id.v_edit_zj) {
                if (this.f7808j.getLayout().getLineForOffset(Selection.getSelectionStart(this.f7808j.getText())) != 0) {
                    return false;
                }
                this.f7805g.requestFocus();
                return true;
            }
            if (view.getId() != R.id.v_edit_zhj) {
                return false;
            }
            if (this.f7809k.getLayout().getLineForOffset(Selection.getSelectionStart(this.f7809k.getText())) != 0) {
                return false;
            }
            this.f7808j.requestFocus();
            return true;
        }
        if (i10 != 22) {
            return false;
        }
        if (view.getId() == R.id.v_edit_name) {
            if (Selection.getSelectionStart(this.f7805g.getText()) != this.f7805g.getText().length() || Selection.getSelectionEnd(this.f7805g.getText()) != this.f7805g.getText().length()) {
                return false;
            }
            this.f7808j.requestFocus();
            return true;
        }
        if (view.getId() == R.id.v_edit_zj) {
            if (Selection.getSelectionStart(this.f7808j.getText()) != this.f7808j.getText().length() || Selection.getSelectionEnd(this.f7808j.getText()) != this.f7808j.getText().length()) {
                return false;
            }
            this.l.requestFocus();
            return true;
        }
        if (view.getId() != R.id.v_edit_zhj || Selection.getSelectionStart(this.f7809k.getText()) != this.f7809k.getText().length() || Selection.getSelectionEnd(this.f7809k.getText()) != this.f7809k.getText().length()) {
            return false;
        }
        this.f7810m.requestFocus();
        return true;
    }
}
