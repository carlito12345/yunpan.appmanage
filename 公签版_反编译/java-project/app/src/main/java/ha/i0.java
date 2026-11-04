package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import java.util.Iterator;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final class i0 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final z7.s f7176g;

    /* renamed from: h, reason: collision with root package name */
    public final ea.e f7177h;

    /* renamed from: i, reason: collision with root package name */
    public RecyclerView f7178i;

    /* renamed from: j, reason: collision with root package name */
    public x9.g f7179j;

    /* renamed from: k, reason: collision with root package name */
    public RecyclerView f7180k;
    public x9.i4 l;

    /* renamed from: m, reason: collision with root package name */
    public RecyclerView f7181m;

    /* renamed from: n, reason: collision with root package name */
    public x9.i4 f7182n;

    /* renamed from: p, reason: collision with root package name */
    public NestedScrollView f7183p;

    /* renamed from: q, reason: collision with root package name */
    public EditText f7184q;
    public EditText r;

    /* renamed from: s, reason: collision with root package name */
    public EditText f7185s;

    /* renamed from: t, reason: collision with root package name */
    public EditText f7186t;

    /* renamed from: v, reason: collision with root package name */
    public EditText f7187v;

    /* renamed from: w, reason: collision with root package name */
    public EditText f7188w;

    /* renamed from: x, reason: collision with root package name */
    public EditText f7189x;

    /* renamed from: y, reason: collision with root package name */
    public EditText f7190y;

    public i0(Activity activity, Context context, z7.s sVar, ea.e eVar) {
        super(activity, context, R.layout.dialog_add_intent);
        this.f7176g = sVar;
        this.f7177h = eVar;
        if (sVar == null) {
            this.f7176g = new z7.s();
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7183p = (NestedScrollView) findViewById(R.id.v_scroll);
        this.f7184q = (EditText) findViewById(R.id.v_edit_name);
        z7.s sVar = this.f7176g;
        if (sVar.f19480a.containsKey("name")) {
            this.f7184q.setText(sVar.o("name").i());
        }
        final int i10 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ha.h0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ i0 f7132b;

            {
                this.f7132b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        this.f7132b.dismiss();
                        break;
                    case 1:
                        i0 i0Var = this.f7132b;
                        if (!i0Var.r.getText().toString().trim().isEmpty()) {
                            String strF = g.b.f(i0Var.f7184q);
                            if (!strF.isEmpty()) {
                                z7.s sVar2 = new z7.s();
                                sVar2.m("name", strF);
                                z7.s sVar3 = i0Var.f7176g;
                                if (sVar3.f19480a.containsKey("keyType")) {
                                    sVar2.l("keyType", Integer.valueOf(sVar3.o("keyType").e()));
                                    sVar2.l("gnType", Integer.valueOf(sVar3.o("gnType").e()));
                                }
                                sVar2.l("sendMode", Integer.valueOf(i0Var.l.F()));
                                sVar2.l("sendType", Integer.valueOf(i0Var.f7182n.F()));
                                sVar2.m("action", i0Var.r.getText().toString().trim());
                                String strF2 = g.b.f(i0Var.f7185s);
                                if (!strF2.isEmpty()) {
                                    sVar2.m("category", strF2);
                                }
                                String strF3 = g.b.f(i0Var.f7186t);
                                if (!strF3.isEmpty()) {
                                    sVar2.m("data", strF3);
                                }
                                String strF4 = g.b.f(i0Var.f7187v);
                                if (!strF4.isEmpty()) {
                                    sVar2.m("dataType", strF4);
                                }
                                String strF5 = g.b.f(i0Var.f7188w);
                                if (!strF5.isEmpty()) {
                                    sVar2.m("package", strF5);
                                }
                                String strF6 = g.b.f(i0Var.f7189x);
                                if (!strF6.isEmpty()) {
                                    sVar2.m(Name.LABEL, strF6);
                                }
                                String strF7 = g.b.f(i0Var.f7190y);
                                if (!strF7.isEmpty()) {
                                    sVar2.l("flags", Integer.valueOf(strF7));
                                }
                                if (i0Var.f7179j.b() > 0) {
                                    z7.o oVar = new z7.o();
                                    Iterator it = i0Var.f7179j.v().iterator();
                                    while (it.hasNext()) {
                                        oVar.k((z7.s) it.next());
                                    }
                                    sVar2.j("extras", oVar);
                                }
                                i0Var.f7177h.k(sVar2);
                                i0Var.dismiss();
                                break;
                            } else {
                                Toaster.show((CharSequence) "请输入功能备注名称");
                                break;
                            }
                        } else {
                            Toaster.show((CharSequence) "请输入 action");
                            break;
                        }
                    case 2:
                        i0 i0Var2 = this.f7132b;
                        new z6(i0Var2.f6724a, i0Var2.f6725b, "用途：intent.addCategory()\n\n多个的话，请用逗号分开", "").show();
                        break;
                    case 3:
                        i0 i0Var3 = this.f7132b;
                        new z6(i0Var3.f6724a, i0Var3.f6725b, "用途：intent.setData(Uri.parse(\"您的内容\"))", "").show();
                        break;
                    case 4:
                        i0 i0Var4 = this.f7132b;
                        new j0(i0Var4.f6724a, i0Var4.f6725b, Integer.valueOf(i0Var4.f7190y.getText().toString().trim().isEmpty() ? "0" : g.b.f(i0Var4.f7190y)).intValue(), new g0(i0Var4, 0)).show();
                        break;
                    default:
                        i0 i0Var5 = this.f7132b;
                        i0Var5.getClass();
                        z7.s sVar4 = new z7.s();
                        sVar4.l("extraType", 1);
                        sVar4.m("extraName", "putStringExtra");
                        sVar4.m("name", "");
                        sVar4.m("value", "");
                        i0Var5.f7179j.q(sVar4);
                        i0Var5.f7183p.post(new a2.h(22, i0Var5));
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.v_btn_yes).setOnClickListener(new View.OnClickListener(this) { // from class: ha.h0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ i0 f7132b;

            {
                this.f7132b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        this.f7132b.dismiss();
                        break;
                    case 1:
                        i0 i0Var = this.f7132b;
                        if (!i0Var.r.getText().toString().trim().isEmpty()) {
                            String strF = g.b.f(i0Var.f7184q);
                            if (!strF.isEmpty()) {
                                z7.s sVar2 = new z7.s();
                                sVar2.m("name", strF);
                                z7.s sVar3 = i0Var.f7176g;
                                if (sVar3.f19480a.containsKey("keyType")) {
                                    sVar2.l("keyType", Integer.valueOf(sVar3.o("keyType").e()));
                                    sVar2.l("gnType", Integer.valueOf(sVar3.o("gnType").e()));
                                }
                                sVar2.l("sendMode", Integer.valueOf(i0Var.l.F()));
                                sVar2.l("sendType", Integer.valueOf(i0Var.f7182n.F()));
                                sVar2.m("action", i0Var.r.getText().toString().trim());
                                String strF2 = g.b.f(i0Var.f7185s);
                                if (!strF2.isEmpty()) {
                                    sVar2.m("category", strF2);
                                }
                                String strF3 = g.b.f(i0Var.f7186t);
                                if (!strF3.isEmpty()) {
                                    sVar2.m("data", strF3);
                                }
                                String strF4 = g.b.f(i0Var.f7187v);
                                if (!strF4.isEmpty()) {
                                    sVar2.m("dataType", strF4);
                                }
                                String strF5 = g.b.f(i0Var.f7188w);
                                if (!strF5.isEmpty()) {
                                    sVar2.m("package", strF5);
                                }
                                String strF6 = g.b.f(i0Var.f7189x);
                                if (!strF6.isEmpty()) {
                                    sVar2.m(Name.LABEL, strF6);
                                }
                                String strF7 = g.b.f(i0Var.f7190y);
                                if (!strF7.isEmpty()) {
                                    sVar2.l("flags", Integer.valueOf(strF7));
                                }
                                if (i0Var.f7179j.b() > 0) {
                                    z7.o oVar = new z7.o();
                                    Iterator it = i0Var.f7179j.v().iterator();
                                    while (it.hasNext()) {
                                        oVar.k((z7.s) it.next());
                                    }
                                    sVar2.j("extras", oVar);
                                }
                                i0Var.f7177h.k(sVar2);
                                i0Var.dismiss();
                                break;
                            } else {
                                Toaster.show((CharSequence) "请输入功能备注名称");
                                break;
                            }
                        } else {
                            Toaster.show((CharSequence) "请输入 action");
                            break;
                        }
                    case 2:
                        i0 i0Var2 = this.f7132b;
                        new z6(i0Var2.f6724a, i0Var2.f6725b, "用途：intent.addCategory()\n\n多个的话，请用逗号分开", "").show();
                        break;
                    case 3:
                        i0 i0Var3 = this.f7132b;
                        new z6(i0Var3.f6724a, i0Var3.f6725b, "用途：intent.setData(Uri.parse(\"您的内容\"))", "").show();
                        break;
                    case 4:
                        i0 i0Var4 = this.f7132b;
                        new j0(i0Var4.f6724a, i0Var4.f6725b, Integer.valueOf(i0Var4.f7190y.getText().toString().trim().isEmpty() ? "0" : g.b.f(i0Var4.f7190y)).intValue(), new g0(i0Var4, 0)).show();
                        break;
                    default:
                        i0 i0Var5 = this.f7132b;
                        i0Var5.getClass();
                        z7.s sVar4 = new z7.s();
                        sVar4.l("extraType", 1);
                        sVar4.m("extraName", "putStringExtra");
                        sVar4.m("name", "");
                        sVar4.m("value", "");
                        i0Var5.f7179j.q(sVar4);
                        i0Var5.f7183p.post(new a2.h(22, i0Var5));
                        break;
                }
            }
        });
        b8.n nVar = sVar.f19480a;
        int iE = nVar.containsKey("sendMode") ? sVar.o("sendMode").e() : 1;
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list_mode);
        this.f7180k = recyclerView;
        Context context = this.f6725b;
        recyclerView.setLayoutManager(new LinearLayoutManager(0, false));
        x9.i4 i4Var = new x9.i4();
        this.l = i4Var;
        i4Var.q(new x9.x0("普通发送", iE == 0));
        this.l.q(new x9.x0("后台发送", iE == 1));
        this.f7180k.setAdapter(this.l);
        this.l.f2881e = new g0(this, 1);
        int iE2 = nVar.containsKey("sendType") ? sVar.o("sendType").e() : 1;
        RecyclerView recyclerView2 = (RecyclerView) findViewById(R.id.v_list_type);
        this.f7181m = recyclerView2;
        recyclerView2.setLayoutManager(new LinearLayoutManager(0, false));
        x9.i4 i4Var2 = new x9.i4();
        this.f7182n = i4Var2;
        i4Var2.q(new x9.x0("打开应用", iE2 == 0));
        this.f7182n.q(new x9.x0("发送广播", iE2 == 1));
        this.f7182n.q(new x9.x0("启动服务", iE2 == 2));
        this.f7181m.setAdapter(this.f7182n);
        this.f7182n.f2881e = new g0(this, 2);
        if (this.f7184q.getText().toString().isEmpty()) {
            EditText editText = this.f7184q;
            x9.i4 i4Var3 = this.f7182n;
            editText.setText(((x9.x0) i4Var3.t(i4Var3.F())).f18383a);
        }
        this.r = (EditText) findViewById(R.id.v_edit_action);
        if (nVar.containsKey("action")) {
            this.r.setText(sVar.o("action").i());
        }
        this.f7185s = (EditText) findViewById(R.id.v_edit_category);
        if (nVar.containsKey("category")) {
            this.f7185s.setText(sVar.o("category").i());
        }
        final int i12 = 2;
        ((ImageView) findViewById(R.id.v_ts_category)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.h0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ i0 f7132b;

            {
                this.f7132b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i12) {
                    case 0:
                        this.f7132b.dismiss();
                        break;
                    case 1:
                        i0 i0Var = this.f7132b;
                        if (!i0Var.r.getText().toString().trim().isEmpty()) {
                            String strF = g.b.f(i0Var.f7184q);
                            if (!strF.isEmpty()) {
                                z7.s sVar2 = new z7.s();
                                sVar2.m("name", strF);
                                z7.s sVar3 = i0Var.f7176g;
                                if (sVar3.f19480a.containsKey("keyType")) {
                                    sVar2.l("keyType", Integer.valueOf(sVar3.o("keyType").e()));
                                    sVar2.l("gnType", Integer.valueOf(sVar3.o("gnType").e()));
                                }
                                sVar2.l("sendMode", Integer.valueOf(i0Var.l.F()));
                                sVar2.l("sendType", Integer.valueOf(i0Var.f7182n.F()));
                                sVar2.m("action", i0Var.r.getText().toString().trim());
                                String strF2 = g.b.f(i0Var.f7185s);
                                if (!strF2.isEmpty()) {
                                    sVar2.m("category", strF2);
                                }
                                String strF3 = g.b.f(i0Var.f7186t);
                                if (!strF3.isEmpty()) {
                                    sVar2.m("data", strF3);
                                }
                                String strF4 = g.b.f(i0Var.f7187v);
                                if (!strF4.isEmpty()) {
                                    sVar2.m("dataType", strF4);
                                }
                                String strF5 = g.b.f(i0Var.f7188w);
                                if (!strF5.isEmpty()) {
                                    sVar2.m("package", strF5);
                                }
                                String strF6 = g.b.f(i0Var.f7189x);
                                if (!strF6.isEmpty()) {
                                    sVar2.m(Name.LABEL, strF6);
                                }
                                String strF7 = g.b.f(i0Var.f7190y);
                                if (!strF7.isEmpty()) {
                                    sVar2.l("flags", Integer.valueOf(strF7));
                                }
                                if (i0Var.f7179j.b() > 0) {
                                    z7.o oVar = new z7.o();
                                    Iterator it = i0Var.f7179j.v().iterator();
                                    while (it.hasNext()) {
                                        oVar.k((z7.s) it.next());
                                    }
                                    sVar2.j("extras", oVar);
                                }
                                i0Var.f7177h.k(sVar2);
                                i0Var.dismiss();
                                break;
                            } else {
                                Toaster.show((CharSequence) "请输入功能备注名称");
                                break;
                            }
                        } else {
                            Toaster.show((CharSequence) "请输入 action");
                            break;
                        }
                    case 2:
                        i0 i0Var2 = this.f7132b;
                        new z6(i0Var2.f6724a, i0Var2.f6725b, "用途：intent.addCategory()\n\n多个的话，请用逗号分开", "").show();
                        break;
                    case 3:
                        i0 i0Var3 = this.f7132b;
                        new z6(i0Var3.f6724a, i0Var3.f6725b, "用途：intent.setData(Uri.parse(\"您的内容\"))", "").show();
                        break;
                    case 4:
                        i0 i0Var4 = this.f7132b;
                        new j0(i0Var4.f6724a, i0Var4.f6725b, Integer.valueOf(i0Var4.f7190y.getText().toString().trim().isEmpty() ? "0" : g.b.f(i0Var4.f7190y)).intValue(), new g0(i0Var4, 0)).show();
                        break;
                    default:
                        i0 i0Var5 = this.f7132b;
                        i0Var5.getClass();
                        z7.s sVar4 = new z7.s();
                        sVar4.l("extraType", 1);
                        sVar4.m("extraName", "putStringExtra");
                        sVar4.m("name", "");
                        sVar4.m("value", "");
                        i0Var5.f7179j.q(sVar4);
                        i0Var5.f7183p.post(new a2.h(22, i0Var5));
                        break;
                }
            }
        });
        this.f7186t = (EditText) findViewById(R.id.v_edit_data);
        if (nVar.containsKey("data")) {
            this.f7186t.setText(sVar.o("data").i());
        }
        final int i13 = 3;
        ((ImageView) findViewById(R.id.v_ts_data)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.h0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ i0 f7132b;

            {
                this.f7132b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i13) {
                    case 0:
                        this.f7132b.dismiss();
                        break;
                    case 1:
                        i0 i0Var = this.f7132b;
                        if (!i0Var.r.getText().toString().trim().isEmpty()) {
                            String strF = g.b.f(i0Var.f7184q);
                            if (!strF.isEmpty()) {
                                z7.s sVar2 = new z7.s();
                                sVar2.m("name", strF);
                                z7.s sVar3 = i0Var.f7176g;
                                if (sVar3.f19480a.containsKey("keyType")) {
                                    sVar2.l("keyType", Integer.valueOf(sVar3.o("keyType").e()));
                                    sVar2.l("gnType", Integer.valueOf(sVar3.o("gnType").e()));
                                }
                                sVar2.l("sendMode", Integer.valueOf(i0Var.l.F()));
                                sVar2.l("sendType", Integer.valueOf(i0Var.f7182n.F()));
                                sVar2.m("action", i0Var.r.getText().toString().trim());
                                String strF2 = g.b.f(i0Var.f7185s);
                                if (!strF2.isEmpty()) {
                                    sVar2.m("category", strF2);
                                }
                                String strF3 = g.b.f(i0Var.f7186t);
                                if (!strF3.isEmpty()) {
                                    sVar2.m("data", strF3);
                                }
                                String strF4 = g.b.f(i0Var.f7187v);
                                if (!strF4.isEmpty()) {
                                    sVar2.m("dataType", strF4);
                                }
                                String strF5 = g.b.f(i0Var.f7188w);
                                if (!strF5.isEmpty()) {
                                    sVar2.m("package", strF5);
                                }
                                String strF6 = g.b.f(i0Var.f7189x);
                                if (!strF6.isEmpty()) {
                                    sVar2.m(Name.LABEL, strF6);
                                }
                                String strF7 = g.b.f(i0Var.f7190y);
                                if (!strF7.isEmpty()) {
                                    sVar2.l("flags", Integer.valueOf(strF7));
                                }
                                if (i0Var.f7179j.b() > 0) {
                                    z7.o oVar = new z7.o();
                                    Iterator it = i0Var.f7179j.v().iterator();
                                    while (it.hasNext()) {
                                        oVar.k((z7.s) it.next());
                                    }
                                    sVar2.j("extras", oVar);
                                }
                                i0Var.f7177h.k(sVar2);
                                i0Var.dismiss();
                                break;
                            } else {
                                Toaster.show((CharSequence) "请输入功能备注名称");
                                break;
                            }
                        } else {
                            Toaster.show((CharSequence) "请输入 action");
                            break;
                        }
                    case 2:
                        i0 i0Var2 = this.f7132b;
                        new z6(i0Var2.f6724a, i0Var2.f6725b, "用途：intent.addCategory()\n\n多个的话，请用逗号分开", "").show();
                        break;
                    case 3:
                        i0 i0Var3 = this.f7132b;
                        new z6(i0Var3.f6724a, i0Var3.f6725b, "用途：intent.setData(Uri.parse(\"您的内容\"))", "").show();
                        break;
                    case 4:
                        i0 i0Var4 = this.f7132b;
                        new j0(i0Var4.f6724a, i0Var4.f6725b, Integer.valueOf(i0Var4.f7190y.getText().toString().trim().isEmpty() ? "0" : g.b.f(i0Var4.f7190y)).intValue(), new g0(i0Var4, 0)).show();
                        break;
                    default:
                        i0 i0Var5 = this.f7132b;
                        i0Var5.getClass();
                        z7.s sVar4 = new z7.s();
                        sVar4.l("extraType", 1);
                        sVar4.m("extraName", "putStringExtra");
                        sVar4.m("name", "");
                        sVar4.m("value", "");
                        i0Var5.f7179j.q(sVar4);
                        i0Var5.f7183p.post(new a2.h(22, i0Var5));
                        break;
                }
            }
        });
        this.f7187v = (EditText) findViewById(R.id.v_edit_type);
        if (nVar.containsKey("dataType")) {
            this.f7187v.setText(sVar.o("dataType").i());
        }
        this.f7188w = (EditText) findViewById(R.id.v_edit_pack);
        if (nVar.containsKey("package")) {
            this.f7188w.setText(sVar.o("package").i());
        }
        this.f7189x = (EditText) findViewById(R.id.v_edit_class);
        if (nVar.containsKey(Name.LABEL)) {
            this.f7189x.setText(sVar.o(Name.LABEL).i());
        }
        this.f7190y = (EditText) findViewById(R.id.v_edit_flags);
        if (nVar.containsKey("flags")) {
            this.f7190y.setText(String.valueOf(sVar.o("flags").e()));
        }
        final int i14 = 4;
        ((ImageView) findViewById(R.id.v_ts_flags)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.h0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ i0 f7132b;

            {
                this.f7132b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i14) {
                    case 0:
                        this.f7132b.dismiss();
                        break;
                    case 1:
                        i0 i0Var = this.f7132b;
                        if (!i0Var.r.getText().toString().trim().isEmpty()) {
                            String strF = g.b.f(i0Var.f7184q);
                            if (!strF.isEmpty()) {
                                z7.s sVar2 = new z7.s();
                                sVar2.m("name", strF);
                                z7.s sVar3 = i0Var.f7176g;
                                if (sVar3.f19480a.containsKey("keyType")) {
                                    sVar2.l("keyType", Integer.valueOf(sVar3.o("keyType").e()));
                                    sVar2.l("gnType", Integer.valueOf(sVar3.o("gnType").e()));
                                }
                                sVar2.l("sendMode", Integer.valueOf(i0Var.l.F()));
                                sVar2.l("sendType", Integer.valueOf(i0Var.f7182n.F()));
                                sVar2.m("action", i0Var.r.getText().toString().trim());
                                String strF2 = g.b.f(i0Var.f7185s);
                                if (!strF2.isEmpty()) {
                                    sVar2.m("category", strF2);
                                }
                                String strF3 = g.b.f(i0Var.f7186t);
                                if (!strF3.isEmpty()) {
                                    sVar2.m("data", strF3);
                                }
                                String strF4 = g.b.f(i0Var.f7187v);
                                if (!strF4.isEmpty()) {
                                    sVar2.m("dataType", strF4);
                                }
                                String strF5 = g.b.f(i0Var.f7188w);
                                if (!strF5.isEmpty()) {
                                    sVar2.m("package", strF5);
                                }
                                String strF6 = g.b.f(i0Var.f7189x);
                                if (!strF6.isEmpty()) {
                                    sVar2.m(Name.LABEL, strF6);
                                }
                                String strF7 = g.b.f(i0Var.f7190y);
                                if (!strF7.isEmpty()) {
                                    sVar2.l("flags", Integer.valueOf(strF7));
                                }
                                if (i0Var.f7179j.b() > 0) {
                                    z7.o oVar = new z7.o();
                                    Iterator it = i0Var.f7179j.v().iterator();
                                    while (it.hasNext()) {
                                        oVar.k((z7.s) it.next());
                                    }
                                    sVar2.j("extras", oVar);
                                }
                                i0Var.f7177h.k(sVar2);
                                i0Var.dismiss();
                                break;
                            } else {
                                Toaster.show((CharSequence) "请输入功能备注名称");
                                break;
                            }
                        } else {
                            Toaster.show((CharSequence) "请输入 action");
                            break;
                        }
                    case 2:
                        i0 i0Var2 = this.f7132b;
                        new z6(i0Var2.f6724a, i0Var2.f6725b, "用途：intent.addCategory()\n\n多个的话，请用逗号分开", "").show();
                        break;
                    case 3:
                        i0 i0Var3 = this.f7132b;
                        new z6(i0Var3.f6724a, i0Var3.f6725b, "用途：intent.setData(Uri.parse(\"您的内容\"))", "").show();
                        break;
                    case 4:
                        i0 i0Var4 = this.f7132b;
                        new j0(i0Var4.f6724a, i0Var4.f6725b, Integer.valueOf(i0Var4.f7190y.getText().toString().trim().isEmpty() ? "0" : g.b.f(i0Var4.f7190y)).intValue(), new g0(i0Var4, 0)).show();
                        break;
                    default:
                        i0 i0Var5 = this.f7132b;
                        i0Var5.getClass();
                        z7.s sVar4 = new z7.s();
                        sVar4.l("extraType", 1);
                        sVar4.m("extraName", "putStringExtra");
                        sVar4.m("name", "");
                        sVar4.m("value", "");
                        i0Var5.f7179j.q(sVar4);
                        i0Var5.f7183p.post(new a2.h(22, i0Var5));
                        break;
                }
            }
        });
        final int i15 = 5;
        ((ImageView) findViewById(R.id.v_ts_extras)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.h0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ i0 f7132b;

            {
                this.f7132b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i15) {
                    case 0:
                        this.f7132b.dismiss();
                        break;
                    case 1:
                        i0 i0Var = this.f7132b;
                        if (!i0Var.r.getText().toString().trim().isEmpty()) {
                            String strF = g.b.f(i0Var.f7184q);
                            if (!strF.isEmpty()) {
                                z7.s sVar2 = new z7.s();
                                sVar2.m("name", strF);
                                z7.s sVar3 = i0Var.f7176g;
                                if (sVar3.f19480a.containsKey("keyType")) {
                                    sVar2.l("keyType", Integer.valueOf(sVar3.o("keyType").e()));
                                    sVar2.l("gnType", Integer.valueOf(sVar3.o("gnType").e()));
                                }
                                sVar2.l("sendMode", Integer.valueOf(i0Var.l.F()));
                                sVar2.l("sendType", Integer.valueOf(i0Var.f7182n.F()));
                                sVar2.m("action", i0Var.r.getText().toString().trim());
                                String strF2 = g.b.f(i0Var.f7185s);
                                if (!strF2.isEmpty()) {
                                    sVar2.m("category", strF2);
                                }
                                String strF3 = g.b.f(i0Var.f7186t);
                                if (!strF3.isEmpty()) {
                                    sVar2.m("data", strF3);
                                }
                                String strF4 = g.b.f(i0Var.f7187v);
                                if (!strF4.isEmpty()) {
                                    sVar2.m("dataType", strF4);
                                }
                                String strF5 = g.b.f(i0Var.f7188w);
                                if (!strF5.isEmpty()) {
                                    sVar2.m("package", strF5);
                                }
                                String strF6 = g.b.f(i0Var.f7189x);
                                if (!strF6.isEmpty()) {
                                    sVar2.m(Name.LABEL, strF6);
                                }
                                String strF7 = g.b.f(i0Var.f7190y);
                                if (!strF7.isEmpty()) {
                                    sVar2.l("flags", Integer.valueOf(strF7));
                                }
                                if (i0Var.f7179j.b() > 0) {
                                    z7.o oVar = new z7.o();
                                    Iterator it = i0Var.f7179j.v().iterator();
                                    while (it.hasNext()) {
                                        oVar.k((z7.s) it.next());
                                    }
                                    sVar2.j("extras", oVar);
                                }
                                i0Var.f7177h.k(sVar2);
                                i0Var.dismiss();
                                break;
                            } else {
                                Toaster.show((CharSequence) "请输入功能备注名称");
                                break;
                            }
                        } else {
                            Toaster.show((CharSequence) "请输入 action");
                            break;
                        }
                    case 2:
                        i0 i0Var2 = this.f7132b;
                        new z6(i0Var2.f6724a, i0Var2.f6725b, "用途：intent.addCategory()\n\n多个的话，请用逗号分开", "").show();
                        break;
                    case 3:
                        i0 i0Var3 = this.f7132b;
                        new z6(i0Var3.f6724a, i0Var3.f6725b, "用途：intent.setData(Uri.parse(\"您的内容\"))", "").show();
                        break;
                    case 4:
                        i0 i0Var4 = this.f7132b;
                        new j0(i0Var4.f6724a, i0Var4.f6725b, Integer.valueOf(i0Var4.f7190y.getText().toString().trim().isEmpty() ? "0" : g.b.f(i0Var4.f7190y)).intValue(), new g0(i0Var4, 0)).show();
                        break;
                    default:
                        i0 i0Var5 = this.f7132b;
                        i0Var5.getClass();
                        z7.s sVar4 = new z7.s();
                        sVar4.l("extraType", 1);
                        sVar4.m("extraName", "putStringExtra");
                        sVar4.m("name", "");
                        sVar4.m("value", "");
                        i0Var5.f7179j.q(sVar4);
                        i0Var5.f7183p.post(new a2.h(22, i0Var5));
                        break;
                }
            }
        });
        RecyclerView recyclerView3 = (RecyclerView) findViewById(R.id.v_list_extras);
        this.f7178i = recyclerView3;
        recyclerView3.setLayoutManager(new LinearLayoutManager(1, false));
        this.f7179j = new x9.g(this.f6724a, context);
        if (nVar.containsKey("extras")) {
            z7.o oVarP = sVar.p("extras");
            for (int i16 = 0; i16 < oVarP.f19478a.size(); i16++) {
                this.f7179j.q(oVarP.l(i16).g());
            }
        }
        this.f7178i.setAdapter(this.f7179j);
    }
}
