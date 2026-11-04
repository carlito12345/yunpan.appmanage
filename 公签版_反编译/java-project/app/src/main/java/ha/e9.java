package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.Selection;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcat;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class e9 extends a4 implements View.OnClickListener, View.OnKeyListener {
    public final z7.s A;
    public final d9 B;
    public String C;
    public String D;
    public String E;
    public TvRecyclerView F;
    public x9.y0 G;

    /* renamed from: g, reason: collision with root package name */
    public EditText f6966g;

    /* renamed from: h, reason: collision with root package name */
    public EditText f6967h;

    /* renamed from: i, reason: collision with root package name */
    public EditText f6968i;

    /* renamed from: j, reason: collision with root package name */
    public EditText f6969j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f6970k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public TextView f6971m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f6972n;

    /* renamed from: p, reason: collision with root package name */
    public TextView f6973p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f6974q;
    public TextView r;

    /* renamed from: s, reason: collision with root package name */
    public TextView f6975s;

    /* renamed from: t, reason: collision with root package name */
    public TextView f6976t;

    /* renamed from: v, reason: collision with root package name */
    public TvRecyclerView f6977v;

    /* renamed from: w, reason: collision with root package name */
    public x9.t2 f6978w;

    /* renamed from: x, reason: collision with root package name */
    public n6 f6979x;

    /* renamed from: y, reason: collision with root package name */
    public final z7.s f6980y;
    public final int z;

    public e9(ActivityKeyMapLogcat activityKeyMapLogcat, da.g gVar, z7.s sVar, int i10, d3.g gVar2) {
        super(activityKeyMapLogcat, gVar, R.layout.dialog_key_map_logcat_add);
        this.C = "";
        this.D = "";
        this.E = "";
        this.f6980y = sVar;
        this.z = i10;
        this.B = gVar2;
        if (i10 != -1) {
            this.A = d.b.b0(sVar.p("keys").l(i10).g().toString()).g();
            return;
        }
        z7.s sVar2 = new z7.s();
        this.A = sVar2;
        try {
            sVar2.m("name", "");
            sVar2.k("isOpen", Boolean.TRUE);
            Boolean bool = Boolean.FALSE;
            sVar2.k("one", bool);
            sVar2.k("waitingUp", bool);
            sVar2.l("OutTimeOneMap", 0);
            sVar2.k("isConsistent", bool);
            sVar2.m("downLogcatBegin", "");
            sVar2.j("downLogcat", new z7.o());
            sVar2.m("upLogcatBegin", "");
            sVar2.j("upLogcat", new z7.o());
            sVar2.m("zhLogcatBegin", "");
            sVar2.j("zhLogcat", new z7.o());
            sVar2.j("click", new z7.o());
            sVar2.j("doubleClick", new z7.o());
            sVar2.j("longClick", new z7.o());
            sVar2.j("zhClick", new z7.o());
        } catch (Exception unused) {
        }
    }

    public final void a(int i10) {
        t8.a(this.f6724a, this.f6725b, i10, false, new b9(this, 0));
    }

    public final void b() {
        z7.s sVar = this.A;
        this.f6978w.E(new ArrayList());
        try {
            z7.o oVarP = sVar.p("click");
            if (!oVarP.f19478a.isEmpty()) {
                for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                    this.f6978w.q(oVarP.l(i10).g());
                }
            }
            z7.o oVarP2 = sVar.p("doubleClick");
            if (!oVarP2.f19478a.isEmpty()) {
                for (int i11 = 0; i11 < oVarP2.f19478a.size(); i11++) {
                    this.f6978w.q(oVarP2.l(i11).g());
                }
            }
            z7.o oVarP3 = sVar.p("longClick");
            if (!oVarP3.f19478a.isEmpty()) {
                for (int i12 = 0; i12 < oVarP3.f19478a.size(); i12++) {
                    this.f6978w.q(oVarP3.l(i12).g());
                }
            }
            z7.o oVarP4 = sVar.p("zhClick");
            if (oVarP4.f19478a.isEmpty()) {
                return;
            }
            for (int i13 = 0; i13 < oVarP4.f19478a.size(); i13++) {
                this.f6978w.q(oVarP4.l(i13).g());
            }
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x046e  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02b7  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onClick(View view) {
        z7.s sVar;
        String strF;
        String strF2;
        String strF3;
        z7.o oVar;
        String string;
        if (view == null) {
            return;
        }
        if (view.getId() == R.id.v_btn_select_down) {
            EditText editText = this.f6967h;
            n6 n6Var = this.f6979x;
            n6Var.f7465g = new d2.w(this, 17, editText);
            n6Var.show();
            return;
        }
        if (view.getId() == R.id.v_btn_select_up) {
            EditText editText2 = this.f6968i;
            n6 n6Var2 = this.f6979x;
            n6Var2.f7465g = new d2.w(this, 17, editText2);
            n6Var2.show();
            return;
        }
        if (view.getId() == R.id.v_btn_select_zh) {
            EditText editText3 = this.f6969j;
            n6 n6Var3 = this.f6979x;
            n6Var3.f7465g = new d2.w(this, 17, editText3);
            n6Var3.show();
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
            if (this.f6968i.getText().toString().trim().isEmpty()) {
                Toaster.show((CharSequence) "需要按键松开日志，方可使用");
                return;
            } else {
                a(2);
                return;
            }
        }
        if (view.getId() == R.id.v_btn_click_zh) {
            if (this.f6969j.getText().toString().trim().isEmpty()) {
                Toaster.show((CharSequence) "需要组合键日志，方可使用");
                return;
            } else {
                a(3);
                return;
            }
        }
        int id2 = view.getId();
        d9 d9Var = this.B;
        int i10 = this.z;
        z7.s sVar2 = this.f6980y;
        Context context = this.f6725b;
        if (id2 != R.id.v_btn_click_save) {
            if (view.getId() == R.id.v_btn_click_delete) {
                if (i10 != -1) {
                    sVar2.p("keys").n(i10);
                    q4.a.V(context, sVar2);
                    ta.m.g(context);
                }
                d9Var.delete();
                dismiss();
                return;
            }
            return;
        }
        if (this.C.isEmpty() || this.C.length() <= 2) {
            String strF4 = g.b.f(this.f6966g);
            if (strF4.isEmpty()) {
                Toaster.show((CharSequence) "请输入按键备注");
            } else {
                String strF5 = g.b.f(this.f6967h);
                z7.o oVarP = sVar2.p("keys");
                if (i10 == -1) {
                    int i11 = 0;
                    while (i11 < oVarP.f19478a.size()) {
                        if (oVarP.l(i11).g().o("name").i().equals(strF4)) {
                            Toaster.showLong((CharSequence) "存在相同的按键备注，请更改");
                            break;
                        }
                        z7.o oVarP2 = oVarP.l(i11).g().p("downLogcat");
                        String str = strF4;
                        String str2 = "";
                        int i12 = 0;
                        while (i12 < oVarP2.f19478a.size()) {
                            if (str2.isEmpty()) {
                                string = oVarP2.l(i12).i();
                                oVar = oVarP2;
                            } else {
                                StringBuilder sbB = d0.f.b(str2, "&&");
                                oVar = oVarP2;
                                sbB.append(oVarP2.l(i12).i());
                                string = sbB.toString();
                            }
                            i12++;
                            oVarP2 = oVar;
                            str2 = string;
                        }
                        if (str2.equals(strF5)) {
                            Toaster.showLong((CharSequence) "存在相同的主键日志，请勿重复添加");
                            break;
                        } else {
                            i11++;
                            strF4 = str;
                        }
                    }
                    if (!this.f6967h.getText().toString().trim().isEmpty()) {
                        Toaster.show((CharSequence) "请输入按下日志");
                    } else if (this.f6978w.b() == 0) {
                        Toaster.show((CharSequence) "请添加至少一个操作");
                    } else if (this.f6968i.getText().toString().trim().isEmpty()) {
                        Iterator it = this.f6978w.v().iterator();
                        while (it.hasNext()) {
                            if (((z7.s) it.next()).o("keyType").e() == 2) {
                                new z6(this.f6724a, this.f6725b, "检测到您没有设置松开日志，但你却设置了长按操作\n请删除长按操作，或者添加松开日志", "", "好的", "", new j2(4)).show();
                                break;
                            }
                        }
                        if (this.f6969j.getText().toString().trim().isEmpty()) {
                            String strF6 = g.b.f(this.f6966g);
                            sVar = this.A;
                            sVar.m("name", strF6);
                            strF = g.b.f(this.f6967h);
                            if (strF.isEmpty()) {
                            }
                            sVar.m("downLogcatBegin", this.C);
                            sVar.j("downLogcat", new z7.o());
                            z7.o oVarP3 = sVar.p("downLogcat");
                            if (!strF.isEmpty()) {
                            }
                            strF2 = g.b.f(this.f6968i);
                            if (strF2.isEmpty()) {
                            }
                            sVar.m("upLogcatBegin", this.D);
                            sVar.j("upLogcat", new z7.o());
                            z7.o oVarP4 = sVar.p("upLogcat");
                            if (!strF2.isEmpty()) {
                            }
                            strF3 = g.b.f(this.f6969j);
                            if (strF3.isEmpty()) {
                            }
                            sVar.m("zhLogcatBegin", this.E);
                            sVar.j("zhLogcat", new z7.o());
                            z7.o oVarP5 = sVar.p("zhLogcat");
                            if (!strF3.isEmpty()) {
                            }
                            if (!sVar.f19480a.containsKey("tag_bs")) {
                            }
                            sVar.k("isOpen", Boolean.valueOf(((x9.x0) this.G.t(0)).f18384b));
                            sVar.k("waitingUp", Boolean.valueOf(((x9.x0) this.G.t(1)).f18384b));
                            sVar.k("one", Boolean.valueOf(((x9.x0) this.G.t(2)).f18384b));
                            sVar.l("OutTimeOneMap", Integer.valueOf(!((x9.x0) this.G.t(3)).f18384b ? Integer.valueOf(((x9.x0) this.G.t(3)).f18383a.substring(0, ((x9.x0) this.G.t(3)).f18383a.indexOf("秒"))).intValue() : 0));
                            sVar.k("isConsistent", Boolean.valueOf(((x9.x0) this.G.t(4)).f18384b));
                            sVar.j("click", new z7.o());
                            sVar.j("doubleClick", new z7.o());
                            sVar.j("longClick", new z7.o());
                            sVar.j("zhClick", new z7.o());
                            while (r1.hasNext()) {
                            }
                            if (i10 != -1) {
                            }
                            q4.a.V(context, sVar2);
                            ta.m.g(context);
                            d9Var.b();
                            dismiss();
                        } else {
                            Iterator it2 = this.f6978w.v().iterator();
                            while (it2.hasNext()) {
                                if (((z7.s) it2.next()).o("keyType").e() == 3) {
                                    new z6(this.f6724a, this.f6725b, "检测到您没有设置组合日志，但你却设置了组合操作\n请删除组合操作，或者添加组合日志", "", "好的", "", new l2(4)).show();
                                    break;
                                }
                            }
                            String strF62 = g.b.f(this.f6966g);
                            sVar = this.A;
                            sVar.m("name", strF62);
                            strF = g.b.f(this.f6967h);
                            if (strF.isEmpty()) {
                                this.C = "";
                            }
                            sVar.m("downLogcatBegin", this.C);
                            sVar.j("downLogcat", new z7.o());
                            z7.o oVarP32 = sVar.p("downLogcat");
                            if (!strF.isEmpty()) {
                                for (String str3 : strF.split("&&")) {
                                    oVarP32.j(str3);
                                }
                            }
                            strF2 = g.b.f(this.f6968i);
                            if (strF2.isEmpty()) {
                                this.D = "";
                            }
                            sVar.m("upLogcatBegin", this.D);
                            sVar.j("upLogcat", new z7.o());
                            z7.o oVarP42 = sVar.p("upLogcat");
                            if (!strF2.isEmpty()) {
                                for (String str4 : strF2.split("&&")) {
                                    oVarP42.j(str4);
                                }
                            }
                            strF3 = g.b.f(this.f6969j);
                            if (strF3.isEmpty()) {
                                this.E = "";
                            }
                            sVar.m("zhLogcatBegin", this.E);
                            sVar.j("zhLogcat", new z7.o());
                            z7.o oVarP52 = sVar.p("zhLogcat");
                            if (!strF3.isEmpty()) {
                                for (String str5 : strF3.split("&&")) {
                                    oVarP52.j(str5);
                                }
                            }
                            if (!sVar.f19480a.containsKey("tag_bs")) {
                                sVar.m("tag_bs", String.valueOf(System.currentTimeMillis()));
                            }
                            sVar.k("isOpen", Boolean.valueOf(((x9.x0) this.G.t(0)).f18384b));
                            sVar.k("waitingUp", Boolean.valueOf(((x9.x0) this.G.t(1)).f18384b));
                            sVar.k("one", Boolean.valueOf(((x9.x0) this.G.t(2)).f18384b));
                            sVar.l("OutTimeOneMap", Integer.valueOf(!((x9.x0) this.G.t(3)).f18384b ? Integer.valueOf(((x9.x0) this.G.t(3)).f18383a.substring(0, ((x9.x0) this.G.t(3)).f18383a.indexOf("秒"))).intValue() : 0));
                            sVar.k("isConsistent", Boolean.valueOf(((x9.x0) this.G.t(4)).f18384b));
                            sVar.j("click", new z7.o());
                            sVar.j("doubleClick", new z7.o());
                            sVar.j("longClick", new z7.o());
                            sVar.j("zhClick", new z7.o());
                            for (z7.s sVar3 : this.f6978w.v()) {
                                int iE = sVar3.o("keyType").e();
                                if (iE == 0) {
                                    sVar.p("click").k(sVar3);
                                } else if (iE == 1) {
                                    sVar.p("doubleClick").k(sVar3);
                                } else if (iE == 2) {
                                    sVar.p("longClick").k(sVar3);
                                } else if (iE == 3) {
                                    sVar.p("zhClick").k(sVar3);
                                }
                            }
                            if (i10 != -1) {
                                sVar2.p("keys").k(sVar);
                            } else {
                                sVar2.p("keys").o(i10, sVar);
                            }
                            q4.a.V(context, sVar2);
                            ta.m.g(context);
                            d9Var.b();
                            dismiss();
                        }
                    } else if (this.f6969j.getText().toString().trim().isEmpty()) {
                    }
                } else if (!this.f6967h.getText().toString().trim().isEmpty()) {
                }
            }
        } else {
            try {
                if (com.yunpan.appmanage.util.v.f4106a.W) {
                    if (this.C.charAt(1) != ' ') {
                        com.yunpan.appmanage.util.a0.u("您勾选了特殊监听模式，不能使用此条日志");
                    }
                } else if (this.C.charAt(1) != '/') {
                    com.yunpan.appmanage.util.a0.u("您勾选了特殊监听模式，不能使用此条日志");
                }
            } catch (Exception unused) {
                com.yunpan.appmanage.util.a0.u("发生错误，请联系开发者");
            }
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z7.s sVar = this.A;
        this.F = (TvRecyclerView) findViewById(R.id.v_list_check);
        boolean z = true;
        x9.y0 y0Var = new x9.y0(true);
        this.G = y0Var;
        y0Var.q(new x9.x0("开启", false));
        this.G.q(new x9.x0("等松开日志", false));
        this.G.q(new x9.x0("仅触发一次", false));
        this.G.q(new x9.x0("N秒内仅触发一次", false));
        this.G.q(new x9.x0("整条一致方可触发", false));
        TvRecyclerView tvRecyclerView = this.F;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 0, false));
        this.F.setAdapter(this.G);
        this.G.f2881e = new b9(this, 1);
        this.f6966g = (EditText) findViewById(R.id.v_edit_name);
        this.f6967h = (EditText) findViewById(R.id.v_edit_down);
        this.f6968i = (EditText) findViewById(R.id.v_edit_up);
        this.f6969j = (EditText) findViewById(R.id.v_edit_zh);
        TextView textView = (TextView) findViewById(R.id.v_btn_select_down);
        this.f6970k = textView;
        textView.requestFocus();
        this.l = (TextView) findViewById(R.id.v_btn_select_up);
        this.f6971m = (TextView) findViewById(R.id.v_btn_select_zh);
        this.f6972n = (TextView) findViewById(R.id.v_btn_click);
        this.f6973p = (TextView) findViewById(R.id.v_btn_click_double);
        this.f6974q = (TextView) findViewById(R.id.v_btn_click_long);
        this.r = (TextView) findViewById(R.id.v_btn_click_zh);
        this.f6975s = (TextView) findViewById(R.id.v_btn_click_save);
        this.f6976t = (TextView) findViewById(R.id.v_btn_click_delete);
        this.f6970k.setOnClickListener(this);
        this.l.setOnClickListener(this);
        this.f6971m.setOnClickListener(this);
        this.f6972n.setOnClickListener(this);
        this.f6973p.setOnClickListener(this);
        this.f6974q.setOnClickListener(this);
        this.r.setOnClickListener(this);
        this.f6975s.setOnClickListener(this);
        this.f6976t.setOnClickListener(this);
        this.f6979x = new n6(this.f6724a, context);
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list);
        this.f6977v = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.t2 t2Var = new x9.t2();
        this.f6978w = t2Var;
        this.f6977v.setAdapter(t2Var);
        d6.a aVar = new d6.a();
        aVar.f4496h = 3;
        aVar.f4495g = false;
        aVar.d(this.f6977v);
        aVar.g(this.f6978w);
        this.f6978w.f2881e = new b9(this, 2);
        this.f6966g.setOnKeyListener(this);
        this.f6967h.setOnKeyListener(this);
        this.f6968i.setOnKeyListener(this);
        this.f6969j.setOnKeyListener(this);
        this.f6972n.setOnKeyListener(this);
        this.f6973p.setOnKeyListener(this);
        this.f6974q.setOnKeyListener(this);
        this.r.setOnKeyListener(this);
        this.f6975s.setOnKeyListener(this);
        this.f6976t.setOnKeyListener(this);
        try {
            EditText editText = this.f6966g;
            z7.p pVarO = sVar.o("name");
            b8.n nVar = sVar.f19480a;
            editText.setText(pVarO.i());
            this.C = sVar.o("downLogcatBegin").i();
            this.D = sVar.o("upLogcatBegin").i();
            this.E = sVar.o("zhLogcatBegin").i();
            if (!nVar.containsKey("isOpen")) {
                sVar.k("isOpen", Boolean.TRUE);
            }
            ((x9.x0) this.G.t(0)).f18384b = sVar.o("isOpen").b();
            this.G.e(0);
            if (nVar.containsKey("waitingUp")) {
                ((x9.x0) this.G.t(1)).f18384b = sVar.o("waitingUp").b();
                this.G.e(1);
            } else {
                sVar.k("waitingUp", Boolean.FALSE);
            }
            int i10 = 2;
            if (nVar.containsKey("one")) {
                ((x9.x0) this.G.t(2)).f18384b = sVar.o("one").b();
                this.G.e(2);
            } else {
                sVar.k("one", Boolean.FALSE);
            }
            if (!nVar.containsKey("OutTimeOneMap") && nVar.containsKey("isOutTimeOneMap")) {
                if (!sVar.o("isOutTimeOneMap").b()) {
                    i10 = 0;
                }
                sVar.l("OutTimeOneMap", Integer.valueOf(i10));
                sVar.r("isOutTimeOneMap");
            } else if (nVar.containsKey("isOutTimeOneMap")) {
                sVar.r("isOutTimeOneMap");
            }
            if (!nVar.containsKey("OutTimeOneMap")) {
                sVar.l("OutTimeOneMap", 0);
            } else if (sVar.o("OutTimeOneMap").e() > 0) {
                x9.x0 x0Var = (x9.x0) this.G.t(3);
                if (sVar.o("OutTimeOneMap").e() <= 0) {
                    z = false;
                }
                x0Var.f18384b = z;
                ((x9.x0) this.G.t(3)).f18383a = sVar.o("OutTimeOneMap").e() + "秒内仅触发一次";
                this.G.e(3);
            }
            if (nVar.containsKey("isConsistent")) {
                ((x9.x0) this.G.t(4)).f18384b = sVar.o("isConsistent").b();
                this.G.e(4);
            } else {
                sVar.k("isConsistent", Boolean.FALSE);
            }
            z7.o oVarP = sVar.p("downLogcat");
            String strI = "";
            if (!oVarP.f19478a.isEmpty()) {
                String strI2 = "";
                for (int i11 = 0; i11 < oVarP.f19478a.size(); i11++) {
                    strI2 = i11 == 0 ? oVarP.l(i11).i() : strI2 + "&&" + oVarP.l(i11).i();
                }
                this.f6967h.setText(strI2);
            }
            z7.o oVarP2 = sVar.p("upLogcat");
            if (!oVarP2.f19478a.isEmpty()) {
                String strI3 = "";
                for (int i12 = 0; i12 < oVarP2.f19478a.size(); i12++) {
                    strI3 = i12 == 0 ? oVarP2.l(i12).i() : strI3 + "&&" + oVarP2.l(i12).i();
                }
                this.f6968i.setText(strI3);
            }
            z7.o oVarP3 = sVar.p("zhLogcat");
            if (!oVarP3.f19478a.isEmpty()) {
                for (int i13 = 0; i13 < oVarP3.f19478a.size(); i13++) {
                    strI = i13 == 0 ? oVarP3.l(i13).i() : strI + "&&" + oVarP3.l(i13).i();
                }
                this.f6969j.setText(strI);
            }
            b();
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
                    if (this.f6966g.getLayout().getLineForOffset(Selection.getSelectionStart(this.f6966g.getText())) != this.f6966g.getLineCount() - 1) {
                        return false;
                    }
                    this.f6967h.requestFocus();
                    return true;
                }
                if (view.getId() == R.id.v_edit_down) {
                    if (this.f6967h.getLayout().getLineForOffset(Selection.getSelectionStart(this.f6967h.getText())) != this.f6967h.getLineCount() - 1) {
                        return false;
                    }
                    this.f6968i.requestFocus();
                    return true;
                }
                if (view.getId() == R.id.v_edit_up) {
                    if (this.f6968i.getLayout().getLineForOffset(Selection.getSelectionStart(this.f6968i.getText())) != this.f6968i.getLineCount() - 1) {
                        return false;
                    }
                    this.f6969j.requestFocus();
                    return true;
                }
                if (view.getId() != R.id.v_edit_zh) {
                    return this.f6978w.b() == 0;
                }
                if (this.f6969j.getLayout().getLineForOffset(Selection.getSelectionStart(this.f6969j.getText())) != this.f6969j.getLineCount() - 1) {
                    return false;
                }
                this.f6972n.requestFocus();
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        if (i10 == 19) {
            if (view.getId() == R.id.v_edit_down) {
                if (this.f6967h.getLayout().getLineForOffset(Selection.getSelectionStart(this.f6967h.getText())) != 0) {
                    return false;
                }
                this.f6966g.requestFocus();
                return true;
            }
            if (view.getId() == R.id.v_edit_up) {
                if (this.f6968i.getLayout().getLineForOffset(Selection.getSelectionStart(this.f6968i.getText())) != 0) {
                    return false;
                }
                this.f6967h.requestFocus();
                return true;
            }
            if (view.getId() != R.id.v_edit_zh) {
                return false;
            }
            if (this.f6969j.getLayout().getLineForOffset(Selection.getSelectionStart(this.f6969j.getText())) != 0) {
                return false;
            }
            this.f6968i.requestFocus();
            return true;
        }
        if (i10 != 22) {
            return false;
        }
        if (view.getId() == R.id.v_edit_name) {
            if (Selection.getSelectionStart(this.f6966g.getText()) != this.f6966g.getText().length() || Selection.getSelectionEnd(this.f6966g.getText()) != this.f6966g.getText().length()) {
                return false;
            }
            this.f6967h.requestFocus();
            return true;
        }
        if (view.getId() == R.id.v_edit_down) {
            if (Selection.getSelectionStart(this.f6967h.getText()) != this.f6967h.getText().length() || Selection.getSelectionEnd(this.f6967h.getText()) != this.f6967h.getText().length()) {
                return false;
            }
            this.f6970k.requestFocus();
            return true;
        }
        if (view.getId() == R.id.v_edit_up) {
            if (Selection.getSelectionStart(this.f6968i.getText()) != this.f6968i.getText().length() || Selection.getSelectionEnd(this.f6968i.getText()) != this.f6968i.getText().length()) {
                return false;
            }
            this.l.requestFocus();
            return true;
        }
        if (view.getId() != R.id.v_edit_zh || Selection.getSelectionStart(this.f6969j.getText()) != this.f6969j.getText().length() || Selection.getSelectionEnd(this.f6969j.getText()) != this.f6969j.getText().length()) {
            return false;
        }
        this.f6971m.requestFocus();
        return true;
    }

    public e9(Activity activity, da.g gVar, z7.s sVar, z7.s sVar2, d9 d9Var) {
        super(activity, gVar, R.layout.dialog_key_map_logcat_add);
        this.C = "";
        this.D = "";
        this.E = "";
        this.f6980y = sVar;
        this.z = -1;
        this.B = d9Var;
        this.A = d.b.b0(sVar2.toString()).g();
    }
}
