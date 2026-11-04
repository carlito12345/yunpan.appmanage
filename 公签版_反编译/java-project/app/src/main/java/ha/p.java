package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class p extends a4 implements View.OnClickListener {
    public final String[] A;
    public final int[] B;
    public TvRecyclerView C;
    public x9.s2 D;
    public x9.d E;
    public n6 F;

    /* renamed from: g, reason: collision with root package name */
    public final z7.s f7546g;

    /* renamed from: h, reason: collision with root package name */
    public RecyclerView f7547h;

    /* renamed from: i, reason: collision with root package name */
    public RecyclerView f7548i;

    /* renamed from: j, reason: collision with root package name */
    public x9.i4 f7549j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f7550k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public EditText f7551m;

    /* renamed from: n, reason: collision with root package name */
    public EditText f7552n;

    /* renamed from: p, reason: collision with root package name */
    public EditText f7553p;

    /* renamed from: q, reason: collision with root package name */
    public EditText f7554q;
    public EditText r;

    /* renamed from: s, reason: collision with root package name */
    public ConstraintLayout f7555s;

    /* renamed from: t, reason: collision with root package name */
    public LinearLayout f7556t;

    /* renamed from: v, reason: collision with root package name */
    public EditText f7557v;

    /* renamed from: w, reason: collision with root package name */
    public EditText f7558w;

    /* renamed from: x, reason: collision with root package name */
    public EditText f7559x;

    /* renamed from: y, reason: collision with root package name */
    public ImageView f7560y;
    public boolean z;

    public p(Activity activity, da.g gVar, z7.s sVar) {
        super(activity, gVar, R.layout.dialog_add_door_log);
        this.z = true;
        this.A = new String[]{"", "", "", "", ""};
        this.B = new int[]{0, 0, 0, 0, 0};
        this.f7546g = sVar;
    }

    public final void a(EditText editText) {
        n6 n6Var = this.F;
        n6Var.f7465g = new d2.w(this, 3, editText);
        n6Var.show();
    }

    public final void b(int i10) {
        this.f7549j.G(i10);
        if (i10 == 0) {
            this.f7550k.setText("门开关日志：");
            this.f7555s.setVisibility(8);
        } else {
            this.f7550k.setText("主驾门日志：");
            this.f7555s.setVisibility(0);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view.getId() == R.id.v_select_open) {
            boolean z = this.z;
            this.z = !z;
            this.f7560y.setImageResource(!z ? R.drawable.tp_check1 : R.drawable.tp_check2);
            return;
        }
        if (view.getId() == R.id.v_btn_select1) {
            a(this.f7551m);
            return;
        }
        if (view.getId() == R.id.v_btn_select2) {
            a(this.f7552n);
            return;
        }
        if (view.getId() == R.id.v_btn_select3) {
            a(this.f7553p);
            return;
        }
        if (view.getId() == R.id.v_btn_select4) {
            a(this.f7554q);
            return;
        }
        if (view.getId() == R.id.v_btn_select5) {
            a(this.r);
            return;
        }
        if (view.getId() == R.id.v_btn_return) {
            dismiss();
            return;
        }
        if (view.getId() == R.id.v_input1) {
            this.f7551m.getText().insert(this.f7551m.getSelectionStart(), "[door1]");
            return;
        }
        if (view.getId() == R.id.v_input2) {
            this.f7552n.getText().insert(this.f7552n.getSelectionStart(), "[door2]");
            return;
        }
        if (view.getId() == R.id.v_input3) {
            this.f7553p.getText().insert(this.f7553p.getSelectionStart(), "[door3]");
            return;
        }
        if (view.getId() == R.id.v_input4) {
            this.f7554q.getText().insert(this.f7554q.getSelectionStart(), "[door4]");
            return;
        }
        if (view.getId() == R.id.v_input5) {
            this.r.getText().insert(this.r.getSelectionStart(), "[door5]");
            return;
        }
        if (view.getId() == R.id.v_btn_yes) {
            if (this.z) {
                if (this.f7549j.F() == 0 && this.f7551m.getText().toString().trim().isEmpty()) {
                    com.yunpan.appmanage.util.a0.u("请设置车门日志");
                    return;
                } else if (this.f7559x.getText().toString().trim().isEmpty()) {
                    com.yunpan.appmanage.util.a0.u("请填写开门值");
                    return;
                }
            }
            z7.s sVar = new z7.s();
            sVar.k("isOpen", Boolean.valueOf(this.z));
            sVar.k("isOneLog", Boolean.valueOf(this.f7549j.F() == 0));
            sVar.m("log1", this.f7551m.getText().toString().trim());
            sVar.m("log2", this.f7552n.getText().toString().trim());
            sVar.m("log3", this.f7553p.getText().toString().trim());
            sVar.m("log4", this.f7554q.getText().toString().trim());
            sVar.m("log5", this.r.getText().toString().trim());
            int[] iArr = this.B;
            sVar.l("logLength1", Integer.valueOf(iArr[0]));
            sVar.l("logLength2", Integer.valueOf(iArr[1]));
            sVar.l("logLength3", Integer.valueOf(iArr[2]));
            sVar.l("logLength4", Integer.valueOf(iArr[3]));
            sVar.l("logLength5", Integer.valueOf(iArr[4]));
            String[] strArr = this.A;
            sVar.m("tag1", strArr[0]);
            sVar.m("tag2", strArr[1]);
            sVar.m("tag3", strArr[2]);
            sVar.m("tag4", strArr[3]);
            sVar.m("tag5", strArr[4]);
            sVar.m("valueDef", this.f7557v.getText().toString().trim());
            sVar.m("valueClose", this.f7558w.getText().toString().trim());
            sVar.m("valueOpen", this.f7559x.getText().toString().trim());
            z7.o oVar = new z7.o();
            for (int i10 = 0; i10 < this.D.b(); i10++) {
                oVar.k((z7.p) this.D.t(i10));
            }
            sVar.j("maps", oVar);
            z7.s sVar2 = this.f7546g;
            sVar2.j("door", sVar);
            Context context = this.f6725b;
            q4.a.V(context, sVar2);
            ta.m.g(context);
            dismiss();
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        Context context;
        super.onCreate(bundle);
        findViewById(R.id.v_select_open).setOnClickListener(this);
        this.f7560y = (ImageView) findViewById(R.id.v_select_open_ico);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_lay_input);
        this.f7556t = linearLayout;
        linearLayout.setVisibility(8);
        this.f7548i = (RecyclerView) findViewById(R.id.v_list_input);
        this.E = new x9.d();
        for (int i10 = 1; i10 < 10; i10++) {
            this.E.q("[door" + i10 + "]");
        }
        this.E.q("[door111]");
        this.E.q("x");
        this.f7548i.setAdapter(this.E);
        final int i11 = 0;
        this.E.f2881e = new c6.e(this) { // from class: ha.m

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ p f7378b;

            {
                this.f7378b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i12) {
                switch (i11) {
                    case 0:
                        p pVar = this.f7378b;
                        if (i12 != pVar.E.b() - 1) {
                            pVar.f7551m.getText().insert(pVar.f7551m.getSelectionStart(), (CharSequence) pVar.E.t(i12));
                            break;
                        } else {
                            pVar.f7556t.setVisibility(8);
                            break;
                        }
                    case 1:
                        p pVar2 = this.f7378b;
                        pVar2.b(i12);
                        pVar2.l.setVisibility(pVar2.f7549j.F() == 0 ? 8 : 0);
                        break;
                    default:
                        p pVar3 = this.f7378b;
                        new s(pVar3.f6724a, pVar3.f6725b, (z7.s) pVar3.D.t(i12), new o(i12, 0, pVar3)).show();
                        break;
                }
            }
        };
        TextView textView = (TextView) findViewById(R.id.v_input1);
        this.l = textView;
        textView.setOnClickListener(this);
        this.l.setVisibility(8);
        findViewById(R.id.v_input2).setOnClickListener(this);
        findViewById(R.id.v_input3).setOnClickListener(this);
        findViewById(R.id.v_input4).setOnClickListener(this);
        findViewById(R.id.v_input5).setOnClickListener(this);
        this.f7547h = (RecyclerView) findViewById(R.id.v_list_mode);
        this.f7555s = (ConstraintLayout) findViewById(R.id.v_lay);
        this.f7550k = (TextView) findViewById(R.id.v_ts1);
        this.f7551m = (EditText) findViewById(R.id.v_edit_log1);
        this.f7552n = (EditText) findViewById(R.id.v_edit_log2);
        this.f7553p = (EditText) findViewById(R.id.v_edit_log3);
        this.f7554q = (EditText) findViewById(R.id.v_edit_log4);
        this.r = (EditText) findViewById(R.id.v_edit_log5);
        findViewById(R.id.v_btn_select1).setOnClickListener(this);
        findViewById(R.id.v_btn_select2).setOnClickListener(this);
        findViewById(R.id.v_btn_select3).setOnClickListener(this);
        findViewById(R.id.v_btn_select4).setOnClickListener(this);
        findViewById(R.id.v_btn_select5).setOnClickListener(this);
        findViewById(R.id.v_btn_return).setOnClickListener(this);
        findViewById(R.id.v_btn_yes).setOnClickListener(this);
        this.f7551m.setOnFocusChangeListener(new n(0, this));
        RecyclerView recyclerView = this.f7547h;
        Context context2 = this.f6725b;
        recyclerView.setLayoutManager(new V7LinearLayoutManager(context2, 0, false));
        x9.i4 i4Var = new x9.i4();
        this.f7549j = i4Var;
        i4Var.q(new x9.x0("一条日志里有四门的值", true));
        this.f7549j.q(new x9.x0("每个车门一条日志", false));
        this.f7547h.setAdapter(this.f7549j);
        final int i12 = 1;
        this.f7549j.f2881e = new c6.e(this) { // from class: ha.m

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ p f7378b;

            {
                this.f7378b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i122) {
                switch (i12) {
                    case 0:
                        p pVar = this.f7378b;
                        if (i122 != pVar.E.b() - 1) {
                            pVar.f7551m.getText().insert(pVar.f7551m.getSelectionStart(), (CharSequence) pVar.E.t(i122));
                            break;
                        } else {
                            pVar.f7556t.setVisibility(8);
                            break;
                        }
                    case 1:
                        p pVar2 = this.f7378b;
                        pVar2.b(i122);
                        pVar2.l.setVisibility(pVar2.f7549j.F() == 0 ? 8 : 0);
                        break;
                    default:
                        p pVar3 = this.f7378b;
                        new s(pVar3.f6724a, pVar3.f6725b, (z7.s) pVar3.D.t(i122), new o(i122, 0, pVar3)).show();
                        break;
                }
            }
        };
        this.f7557v = (EditText) findViewById(R.id.v_edit_value);
        this.f7558w = (EditText) findViewById(R.id.v_edit_value_close);
        this.f7559x = (EditText) findViewById(R.id.v_edit_value_open);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(context2, 3));
        x9.s2 s2Var = new x9.s2();
        this.D = s2Var;
        this.C.setAdapter(s2Var);
        final int i13 = 2;
        this.D.f2881e = new c6.e(this) { // from class: ha.m

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ p f7378b;

            {
                this.f7378b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i122) {
                switch (i13) {
                    case 0:
                        p pVar = this.f7378b;
                        if (i122 != pVar.E.b() - 1) {
                            pVar.f7551m.getText().insert(pVar.f7551m.getSelectionStart(), (CharSequence) pVar.E.t(i122));
                            break;
                        } else {
                            pVar.f7556t.setVisibility(8);
                            break;
                        }
                    case 1:
                        p pVar2 = this.f7378b;
                        pVar2.b(i122);
                        pVar2.l.setVisibility(pVar2.f7549j.F() == 0 ? 8 : 0);
                        break;
                    default:
                        p pVar3 = this.f7378b;
                        new s(pVar3.f6724a, pVar3.f6725b, (z7.s) pVar3.D.t(i122), new o(i122, 0, pVar3)).show();
                        break;
                }
            }
        };
        z7.s sVar = this.f7546g;
        if (sVar.f19480a.containsKey("door")) {
            z7.s sVarQ = sVar.q("door");
            if (sVarQ.f19480a.containsKey("log5")) {
                context = context2;
            } else {
                sVarQ.m("tag5", "");
                sVarQ.m("log5", "");
                context = context2;
                sVarQ.l("logLength5", 0);
            }
            if (!sVarQ.f19480a.containsKey("valueDef")) {
                sVarQ.m("valueDef", "0");
                sVarQ.m("valueClose", "0");
                sVarQ.m("valueOpen", "1");
            }
            this.f7557v.setText(sVarQ.o("valueDef").i());
            this.f7558w.setText(sVarQ.o("valueClose").i());
            this.f7559x.setText(sVarQ.o("valueOpen").i());
            boolean zB = sVarQ.o("isOpen").b();
            this.z = zB;
            this.f7560y.setImageResource(zB ? R.drawable.tp_check1 : R.drawable.tp_check2);
            b(!sVarQ.o("isOneLog").b() ? 1 : 0);
            this.l.setVisibility(this.f7549j.F() == 0 ? 8 : 0);
            this.f7551m.setText(sVarQ.o("log1").i());
            this.f7552n.setText(sVarQ.o("log2").i());
            this.f7553p.setText(sVarQ.o("log3").i());
            this.f7554q.setText(sVarQ.o("log4").i());
            this.r.setText(sVarQ.o("log5").i());
            int iE = sVarQ.o("logLength1").e();
            int[] iArr = this.B;
            iArr[0] = iE;
            iArr[1] = sVarQ.o("logLength2").e();
            iArr[2] = sVarQ.o("logLength3").e();
            iArr[3] = sVarQ.o("logLength4").e();
            iArr[4] = sVarQ.o("logLength5").e();
            String strI = sVarQ.o("tag1").i();
            String[] strArr = this.A;
            strArr[0] = strI;
            strArr[1] = sVarQ.o("tag2").i();
            strArr[2] = sVarQ.o("tag3").i();
            strArr[3] = sVarQ.o("tag4").i();
            strArr[4] = sVarQ.o("tag5").i();
            z7.o oVarP = sVarQ.p("maps");
            if (oVarP.f19478a.size() < 10) {
                z7.s sVar2 = new z7.s();
                Boolean bool = Boolean.FALSE;
                sVar2.k("isOpen", bool);
                sVar2.m("name", "后尾门打开时");
                oVarP.k(sVar2);
                z7.s sVar3 = new z7.s();
                sVar3.k("isOpen", bool);
                sVar3.m("name", "后尾门关闭时");
                oVarP.k(sVar3);
            }
            ArrayList arrayList = oVarP.f19478a;
            if (arrayList.size() < 13) {
                z7.s sVar4 = new z7.s();
                Boolean bool2 = Boolean.FALSE;
                sVar4.k("isOpen", bool2);
                sVar4.m("name", "机舱盖打开时");
                oVarP.k(sVar4);
                z7.s sVar5 = new z7.s();
                sVar5.k("isOpen", bool2);
                sVar5.m("name", "机舱盖关闭时");
                oVarP.k(sVar5);
                z7.s sVar6 = new z7.s();
                sVar6.k("isOpen", bool2);
                sVar6.m("name", "主驾门开锁时");
                oVarP.k(sVar6);
                z7.s sVar7 = new z7.s();
                sVar7.k("isOpen", bool2);
                sVar7.m("name", "主驾门上锁时");
                oVarP.k(sVar7);
                z7.s sVar8 = new z7.s();
                sVar8.k("isOpen", bool2);
                sVar8.m("name", "副驾门开锁时");
                oVarP.k(sVar8);
                z7.s sVar9 = new z7.s();
                sVar9.k("isOpen", bool2);
                sVar9.m("name", "副驾门上锁时");
                oVarP.k(sVar9);
                z7.s sVar10 = new z7.s();
                sVar10.k("isOpen", bool2);
                sVar10.m("name", "尾门开锁时");
                oVarP.k(sVar10);
                z7.s sVar11 = new z7.s();
                sVar11.k("isOpen", bool2);
                sVar11.m("name", "尾门上锁时");
                oVarP.k(sVar11);
            }
            for (int i14 = 0; i14 < arrayList.size(); i14++) {
                this.D.q((z7.s) new z7.m().b(oVarP.l(i14).g()));
            }
        } else {
            context = context2;
            b(0);
            z7.s sVar12 = new z7.s();
            Boolean bool3 = Boolean.FALSE;
            sVar12.k("isOpen", bool3);
            sVar12.m("name", "第一个开门时");
            this.D.q(sVar12);
            z7.s sVar13 = new z7.s();
            Boolean bool4 = Boolean.TRUE;
            sVar13.k("isOpen", bool4);
            sVar13.m("name", "主驾门打开时");
            this.D.q(sVar13);
            z7.s sVar14 = new z7.s();
            sVar14.k("isOpen", bool4);
            sVar14.m("name", "主驾门关闭时");
            this.D.q(sVar14);
            z7.s sVar15 = new z7.s();
            sVar15.k("isOpen", bool4);
            sVar15.m("name", "副驾门打开时");
            this.D.q(sVar15);
            z7.s sVar16 = new z7.s();
            sVar16.k("isOpen", bool4);
            sVar16.m("name", "副驾门关闭时");
            this.D.q(sVar16);
            z7.s sVar17 = new z7.s();
            sVar17.k("isOpen", bool4);
            sVar17.m("name", "左后门打开时");
            this.D.q(sVar17);
            z7.s sVar18 = new z7.s();
            sVar18.k("isOpen", bool4);
            sVar18.m("name", "左后门关闭时");
            this.D.q(sVar18);
            z7.s sVar19 = new z7.s();
            sVar19.k("isOpen", bool4);
            sVar19.m("name", "右后门打开时");
            this.D.q(sVar19);
            z7.s sVar20 = new z7.s();
            sVar20.k("isOpen", bool4);
            sVar20.m("name", "右后门关闭时");
            this.D.q(sVar20);
            z7.s sVar21 = new z7.s();
            sVar21.k("isOpen", bool3);
            sVar21.m("name", "后尾门打开时");
            this.D.q(sVar21);
            z7.s sVar22 = new z7.s();
            sVar22.k("isOpen", bool3);
            sVar22.m("name", "后尾门关闭时");
            this.D.q(sVar22);
            z7.s sVar23 = new z7.s();
            sVar23.k("isOpen", bool3);
            sVar23.m("name", "机舱盖打开时");
            this.D.q(sVar23);
            z7.s sVar24 = new z7.s();
            sVar24.k("isOpen", bool3);
            sVar24.m("name", "机舱盖关闭时");
            this.D.q(sVar24);
            z7.s sVar25 = new z7.s();
            sVar25.k("isOpen", bool3);
            sVar25.m("name", "主驾门解锁时");
            this.D.q(sVar25);
            z7.s sVar26 = new z7.s();
            sVar26.k("isOpen", bool3);
            sVar26.m("name", "主驾门上锁时");
            this.D.q(sVar26);
            z7.s sVar27 = new z7.s();
            sVar27.k("isOpen", bool3);
            sVar27.m("name", "副驾门解锁时");
            this.D.q(sVar27);
            z7.s sVar28 = new z7.s();
            sVar28.k("isOpen", bool3);
            sVar28.m("name", "副驾门上锁时");
            this.D.q(sVar28);
            z7.s sVar29 = new z7.s();
            sVar29.k("isOpen", bool3);
            sVar29.m("name", "尾门解锁时");
            this.D.q(sVar29);
            z7.s sVar30 = new z7.s();
            sVar30.k("isOpen", bool3);
            sVar30.m("name", "尾门上锁时");
            this.D.q(sVar30);
        }
        this.F = new n6(this.f6724a, context);
    }
}
