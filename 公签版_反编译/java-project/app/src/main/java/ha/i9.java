package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ServiceManager;
import android.text.Selection;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.hmi.HmiConst;
import com.hsae.autosdk.hmi.IHmi;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityKeyMapNissan;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class i9 extends a4 implements View.OnClickListener, View.OnKeyListener {
    public final z7.s A;
    public final d3.g B;

    /* renamed from: g, reason: collision with root package name */
    public EditText f7203g;

    /* renamed from: h, reason: collision with root package name */
    public ConstraintLayout f7204h;

    /* renamed from: i, reason: collision with root package name */
    public ImageView f7205i;

    /* renamed from: j, reason: collision with root package name */
    public EditText f7206j;

    /* renamed from: k, reason: collision with root package name */
    public EditText f7207k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public TextView f7208m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f7209n;

    /* renamed from: p, reason: collision with root package name */
    public TextView f7210p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f7211q;
    public TextView r;

    /* renamed from: s, reason: collision with root package name */
    public TextView f7212s;

    /* renamed from: t, reason: collision with root package name */
    public TextView f7213t;

    /* renamed from: v, reason: collision with root package name */
    public TvRecyclerView f7214v;

    /* renamed from: w, reason: collision with root package name */
    public x9.t2 f7215w;

    /* renamed from: x, reason: collision with root package name */
    public p6 f7216x;

    /* renamed from: y, reason: collision with root package name */
    public final z7.s f7217y;
    public final int z;

    public i9(ActivityKeyMapNissan activityKeyMapNissan, da.g gVar, z7.s sVar, int i10, d3.g gVar2) {
        super(activityKeyMapNissan, gVar, R.layout.dialog_key_map_nissan_add);
        this.f7217y = sVar;
        this.z = i10;
        this.B = gVar2;
        if (i10 != -1) {
            this.A = sVar.p("keys").l(i10).g();
            return;
        }
        z7.s sVar2 = new z7.s();
        this.A = sVar2;
        try {
            sVar2.m("name", "");
            sVar2.k("isOpen", Boolean.TRUE);
            sVar2.l("keyCode", -1);
            sVar2.l("zhKeyCode", -1);
            sVar2.j("click", new z7.o());
            sVar2.j("doubleClick", new z7.o());
            sVar2.j("longClick", new z7.o());
            sVar2.j("zhClick", new z7.o());
        } catch (Exception unused) {
        }
    }

    public final void a(int i10) {
        t8.a(this.f6724a, this.f6725b, i10, false, new f9(this));
    }

    public final void b(EditText editText) throws Exception {
        p6 p6Var = this.f7216x;
        p6Var.f7571g = new d7(3, editText);
        p6Var.show();
        if (p6Var.f7575k != null) {
            return;
        }
        try {
            IBinder service = ServiceManager.getService(HmiConst.IBINDER_HMI);
            if (service == null) {
                throw new Exception("获取系统服务失败");
            }
            IHmi iHmiAsInterface = IHmi.Stub.asInterface(service);
            p6Var.f7575k = iHmiAsInterface;
            if (iHmiAsInterface == null) {
                throw new Exception("获取系统服务失败");
            }
        } catch (Exception e7) {
            e7.printStackTrace();
            com.yunpan.appmanage.util.a0.u("不支持您的系统");
            p6Var.dismiss();
        }
    }

    public final void c() {
        z7.s sVar = this.A;
        this.f7215w.E(new ArrayList());
        try {
            z7.o oVarP = sVar.p("click");
            if (!oVarP.f19478a.isEmpty()) {
                for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                    this.f7215w.q(oVarP.l(i10).g());
                }
            }
            z7.o oVarP2 = sVar.p("doubleClick");
            if (!oVarP2.f19478a.isEmpty()) {
                for (int i11 = 0; i11 < oVarP2.f19478a.size(); i11++) {
                    this.f7215w.q(oVarP2.l(i11).g());
                }
            }
            z7.o oVarP3 = sVar.p("longClick");
            if (!oVarP3.f19478a.isEmpty()) {
                for (int i12 = 0; i12 < oVarP3.f19478a.size(); i12++) {
                    this.f7215w.q(oVarP3.l(i12).g());
                }
            }
            z7.o oVarP4 = sVar.p("zhClick");
            if (oVarP4.f19478a.isEmpty()) {
                return;
            }
            for (int i13 = 0; i13 < oVarP4.f19478a.size(); i13++) {
                this.f7215w.q(oVarP4.l(i13).g());
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Exception {
        if (view == null) {
            return;
        }
        if (view.getId() == R.id.v_btn_select_zj) {
            b(this.f7206j);
            return;
        }
        if (view.getId() == R.id.v_btn_select_zhj) {
            b(this.f7207k);
            return;
        }
        if (view.getId() == R.id.v_btn_click) {
            a(0);
            return;
        }
        if (view.getId() == R.id.v_btn_click_double) {
            a(1);
            return;
        }
        if (view.getId() == R.id.v_btn_click_long) {
            a(2);
            return;
        }
        if (view.getId() == R.id.v_btn_click_zh) {
            if (this.f7207k.getText().toString().trim().isEmpty()) {
                Toaster.show((CharSequence) "请先设置组合键");
                return;
            } else {
                a(3);
                return;
            }
        }
        int id2 = view.getId();
        d3.g gVar = this.B;
        Context context = this.f6725b;
        int i10 = this.z;
        z7.s sVar = this.f7217y;
        if (id2 != R.id.v_btn_click_save) {
            if (view.getId() == R.id.v_btn_click_delete) {
                if (i10 != -1) {
                    sVar.p("keys").n(i10);
                    q4.a.W(context, sVar);
                }
                ta.m.c(context, "UP_KEYMAP_NISSAN");
                int i11 = gVar.f4436b;
                if (i11 != -1) {
                    ActivityKeyMapNissan activityKeyMapNissan = (ActivityKeyMapNissan) gVar.f4437c;
                    if (activityKeyMapNissan.D.b() == 1) {
                        activityKeyMapNissan.findViewById(R.id.v_btn_return).requestFocus();
                    }
                    activityKeyMapNissan.D.C(i11);
                }
                dismiss();
                return;
            }
            return;
        }
        String strF = g.b.f(this.f7206j);
        if (strF.isEmpty()) {
            Toaster.show((CharSequence) "请先设置主键");
            return;
        }
        int i12 = Integer.parseInt(strF);
        String strF2 = g.b.f(this.f7203g);
        if (strF2.isEmpty()) {
            Toaster.show((CharSequence) "请输入按键备注名");
            return;
        }
        z7.o oVarP = sVar.p("keys");
        if (i10 == -1) {
            for (int i13 = 0; i13 < oVarP.f19478a.size(); i13++) {
                if (oVarP.l(i13).g().o("name").i().equals(strF2)) {
                    Toaster.showLong((CharSequence) "存在相同的按键备注，请更改");
                    return;
                } else {
                    if (android.support.v4.media.session.a.j(oVarP, i13, "keyCode") == i12) {
                        Toaster.showLong((CharSequence) "已存在相同的主键码，请勿重复添加");
                        return;
                    }
                }
            }
        }
        if (this.f7215w.b() == 0) {
            Toaster.show((CharSequence) "请添加至少一个操作");
            return;
        }
        if (this.f7207k.getText().toString().trim().isEmpty()) {
            Iterator it = this.f7215w.v().iterator();
            while (it.hasNext()) {
                if (((z7.s) it.next()).o("keyType").e() == 3) {
                    new z6(this.f6724a, this.f6725b, "检测到您没有设置组合键，但你却设置了组合操作\n请删除组合操作，或者设置组合键", "", "好的", "", new j2(5)).show();
                    return;
                }
            }
        }
        String strF3 = g.b.f(this.f7203g);
        z7.s sVar2 = this.A;
        sVar2.m("name", strF3);
        String strF4 = g.b.f(this.f7206j);
        sVar2.l("keyCode", Integer.valueOf(strF4.isEmpty() ? -1 : Integer.parseInt(strF4)));
        String strF5 = g.b.f(this.f7207k);
        sVar2.l("zhKeyCode", Integer.valueOf(strF5.isEmpty() ? -1 : Integer.parseInt(strF5)));
        sVar2.j("click", new z7.o());
        sVar2.j("doubleClick", new z7.o());
        sVar2.j("longClick", new z7.o());
        sVar2.j("zhClick", new z7.o());
        for (z7.s sVar3 : this.f7215w.v()) {
            int iE = sVar3.o("keyType").e();
            if (iE == 0) {
                sVar2.p("click").k(sVar3);
            } else if (iE == 1) {
                sVar2.p("doubleClick").k(sVar3);
            } else if (iE == 2) {
                sVar2.p("longClick").k(sVar3);
            } else if (iE == 3) {
                sVar2.p("zhClick").k(sVar3);
            }
        }
        if (i10 == -1) {
            sVar.p("keys").k(sVar2);
        } else {
            sVar.p("keys").o(i10, sVar2);
        }
        q4.a.W(context, sVar);
        ta.m.c(context, "UP_KEYMAP_NISSAN");
        gVar.getClass();
        int i14 = ActivityKeyMapNissan.F;
        ((ActivityKeyMapNissan) gVar.f4437c).y();
        dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z7.s sVar = this.A;
        this.f7204h = (ConstraintLayout) findViewById(R.id.v_select_open);
        this.f7205i = (ImageView) findViewById(R.id.v_select_open_ico);
        this.f7204h.setOnClickListener(new g9(0, this));
        this.f7203g = (EditText) findViewById(R.id.v_edit_name);
        this.f7206j = (EditText) findViewById(R.id.v_edit_zj);
        this.f7207k = (EditText) findViewById(R.id.v_edit_zhj);
        TextView textView = (TextView) findViewById(R.id.v_btn_select_zj);
        this.l = textView;
        textView.requestFocus();
        this.f7208m = (TextView) findViewById(R.id.v_btn_select_zhj);
        this.f7209n = (TextView) findViewById(R.id.v_btn_click);
        this.f7210p = (TextView) findViewById(R.id.v_btn_click_double);
        this.f7211q = (TextView) findViewById(R.id.v_btn_click_long);
        this.r = (TextView) findViewById(R.id.v_btn_click_zh);
        this.f7212s = (TextView) findViewById(R.id.v_btn_click_save);
        this.f7213t = (TextView) findViewById(R.id.v_btn_click_delete);
        this.l.setOnClickListener(this);
        this.f7208m.setOnClickListener(this);
        this.f7209n.setOnClickListener(this);
        this.f7210p.setOnClickListener(this);
        this.f7211q.setOnClickListener(this);
        this.r.setOnClickListener(this);
        this.f7212s.setOnClickListener(this);
        this.f7213t.setOnClickListener(this);
        Activity activity = this.f6724a;
        Context context = this.f6725b;
        this.f7216x = new p6(activity, context);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7214v = tvRecyclerView;
        boolean zB = true;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.t2 t2Var = new x9.t2();
        this.f7215w = t2Var;
        this.f7214v.setAdapter(t2Var);
        d6.a aVar = new d6.a();
        aVar.f4496h = 3;
        aVar.f4495g = false;
        aVar.d(this.f7214v);
        aVar.g(this.f7215w);
        this.f7215w.f2881e = new f9(this);
        this.f7203g.setOnKeyListener(this);
        this.f7206j.setOnKeyListener(this);
        this.f7207k.setOnKeyListener(this);
        this.f7209n.setOnKeyListener(this);
        this.f7210p.setOnKeyListener(this);
        this.f7211q.setOnKeyListener(this);
        this.r.setOnKeyListener(this);
        this.f7212s.setOnKeyListener(this);
        this.f7213t.setOnKeyListener(this);
        try {
            this.f7203g.setText(sVar.o("name").i());
            int iE = sVar.o("keyCode").e();
            if (iE != -1) {
                this.f7206j.setText(String.valueOf(iE));
            }
            int iE2 = sVar.o("zhKeyCode").e();
            if (iE2 != -1) {
                this.f7207k.setText(String.valueOf(iE2));
            }
            if (sVar.f19480a.containsKey("isOpen")) {
                zB = sVar.o("isOpen").b();
            } else {
                sVar.k("isOpen", Boolean.TRUE);
            }
            this.f7205i.setImageResource(zB ? R.drawable.tp_check1 : R.drawable.tp_check2);
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
                    if (this.f7203g.getLayout().getLineForOffset(Selection.getSelectionStart(this.f7203g.getText())) != this.f7203g.getLineCount() - 1) {
                        return false;
                    }
                    this.f7206j.requestFocus();
                    return true;
                }
                if (view.getId() == R.id.v_edit_zj) {
                    if (this.f7206j.getLayout().getLineForOffset(Selection.getSelectionStart(this.f7206j.getText())) != this.f7206j.getLineCount() - 1) {
                        return false;
                    }
                    this.f7207k.requestFocus();
                    return true;
                }
                if (view.getId() != R.id.v_edit_zhj) {
                    return this.f7215w.b() == 0;
                }
                if (this.f7207k.getLayout().getLineForOffset(Selection.getSelectionStart(this.f7207k.getText())) != this.f7207k.getLineCount() - 1) {
                    return false;
                }
                this.f7209n.requestFocus();
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        if (i10 == 19) {
            if (view.getId() == R.id.v_edit_zj) {
                if (this.f7206j.getLayout().getLineForOffset(Selection.getSelectionStart(this.f7206j.getText())) != 0) {
                    return false;
                }
                this.f7203g.requestFocus();
                return true;
            }
            if (view.getId() != R.id.v_edit_zhj) {
                return false;
            }
            if (this.f7207k.getLayout().getLineForOffset(Selection.getSelectionStart(this.f7207k.getText())) != 0) {
                return false;
            }
            this.f7206j.requestFocus();
            return true;
        }
        if (i10 != 22) {
            return false;
        }
        if (view.getId() == R.id.v_edit_name) {
            if (Selection.getSelectionStart(this.f7203g.getText()) != this.f7203g.getText().length() || Selection.getSelectionEnd(this.f7203g.getText()) != this.f7203g.getText().length()) {
                return false;
            }
            this.f7206j.requestFocus();
            return true;
        }
        if (view.getId() == R.id.v_edit_zj) {
            if (Selection.getSelectionStart(this.f7206j.getText()) != this.f7206j.getText().length() || Selection.getSelectionEnd(this.f7206j.getText()) != this.f7206j.getText().length()) {
                return false;
            }
            this.l.requestFocus();
            return true;
        }
        if (view.getId() != R.id.v_edit_zhj || Selection.getSelectionStart(this.f7207k.getText()) != this.f7207k.getText().length() || Selection.getSelectionEnd(this.f7207k.getText()) != this.f7207k.getText().length()) {
            return false;
        }
        this.f7208m.requestFocus();
        return true;
    }
}
