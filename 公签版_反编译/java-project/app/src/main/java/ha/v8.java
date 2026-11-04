package ha;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.ui.ActivityKeyMapEvent;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class v8 extends a4 implements View.OnClickListener {

    /* renamed from: g, reason: collision with root package name */
    public ConstraintLayout f7920g;

    /* renamed from: h, reason: collision with root package name */
    public ImageView f7921h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7922i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f7923j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f7924k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public TvRecyclerView f7925m;

    /* renamed from: n, reason: collision with root package name */
    public x9.t2 f7926n;

    /* renamed from: p, reason: collision with root package name */
    public final z7.s f7927p;

    /* renamed from: q, reason: collision with root package name */
    public final int f7928q;
    public final z7.s r;

    /* renamed from: s, reason: collision with root package name */
    public final ua.j3 f7929s;

    /* renamed from: t, reason: collision with root package name */
    public EditText f7930t;

    /* renamed from: v, reason: collision with root package name */
    public RecyclerView f7931v;

    /* renamed from: w, reason: collision with root package name */
    public x9.l0 f7932w;

    public v8(ActivityKeyMapEvent activityKeyMapEvent, da.g gVar, z7.s sVar, int i10, ua.j3 j3Var) {
        super(activityKeyMapEvent, gVar, R.layout.dialog_key_map_broadcast_add);
        this.f7927p = sVar;
        this.f7928q = i10;
        this.f7929s = j3Var;
        if (i10 != -1) {
            z7.s sVarG = sVar.p("keys").l(i10).g();
            this.r = sVarG;
            PrintStream printStream = System.out;
            sVarG.toString();
            printStream.getClass();
            return;
        }
        z7.s sVar2 = new z7.s();
        this.r = sVar2;
        try {
            sVar2.m("name", "");
            sVar2.k("isOpen", Boolean.TRUE);
            z7.s sVar3 = new z7.s();
            sVar3.l("type", 401);
            sVar3.m("action", "");
            sVar3.j("extras", new z7.o());
            sVar2.j("event", sVar3);
            sVar2.j("click", new z7.o());
        } catch (Exception unused) {
        }
    }

    public final void a() {
        this.f7926n.E(new ArrayList());
        try {
            z7.o oVarP = this.r.p("click");
            if (oVarP.f19478a.isEmpty()) {
                return;
            }
            for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                this.f7926n.q(oVarP.l(i10).g());
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view == null) {
            return;
        }
        if (view.getId() == R.id.v_btn_add_cond) {
            z7.s sVar = new z7.s();
            sVar.l("extraType", 1);
            sVar.m("extraName", "getStringExtra");
            sVar.m("name", "");
            sVar.m("value", "");
            this.f7932w.q(sVar);
            return;
        }
        int id2 = view.getId();
        Context context = this.f6725b;
        if (id2 == R.id.v_btn_add) {
            t8.a(this.f6724a, context, 0, false, new u8(this));
            return;
        }
        int id3 = view.getId();
        ua.j3 j3Var = this.f7929s;
        z7.s sVar2 = this.f7927p;
        int i10 = this.f7928q;
        if (id3 != R.id.v_btn_save) {
            if (view.getId() == R.id.v_btn_delete) {
                if (i10 != -1) {
                    sVar2.p("keys").n(i10);
                    q4.a.S(context, sVar2);
                }
                ta.m.c(context, "UP_KEYMAP_EVENT");
                int i11 = j3Var.f15764a;
                if (i11 != -1) {
                    ActivityKeyMapEvent activityKeyMapEvent = j3Var.f15765b;
                    if (activityKeyMapEvent.D.b() == 1) {
                        activityKeyMapEvent.findViewById(R.id.v_btn_return).requestFocus();
                    }
                    activityKeyMapEvent.D.C(i11);
                    if (p000if.a.h0(AppStart.f3772h, AccService.class)) {
                        new z6(activityKeyMapEvent, activityKeyMapEvent, "提示：删除 自定义广播后，需关闭自动化重新开启方可生效", "").show();
                    }
                }
                dismiss();
                return;
            }
            return;
        }
        String strF = g.b.f(this.f7930t);
        if (strF.isEmpty()) {
            Toaster.show((CharSequence) "请输入广播 action");
            return;
        }
        if (this.f7926n.b() == 0) {
            Toaster.show((CharSequence) "请添加至少一个操作");
            return;
        }
        z7.s sVar3 = new z7.s();
        sVar3.l("type", 401);
        sVar3.m("action", strF);
        String strConcat = "接收广播 ".concat(strF);
        z7.o oVar = new z7.o();
        for (Iterator it = this.f7932w.v().iterator(); it.hasNext(); it = it) {
            z7.s sVar4 = (z7.s) it.next();
            oVar.k(sVar4);
            strConcat = strConcat + "," + sVar4.o("name").i() + "=" + sVar4.o("value").i();
        }
        sVar3.j("extras", oVar);
        z7.s sVar5 = this.r;
        sVar5.j("event", sVar3);
        sVar5.m("name", strConcat);
        sVar5.j("click", new z7.o());
        Iterator it2 = this.f7926n.v().iterator();
        while (it2.hasNext()) {
            sVar5.p("click").k((z7.s) it2.next());
        }
        if (i10 == -1) {
            sVar2.p("keys").k(sVar5);
        } else {
            sVar2.p("keys").o(i10, sVar5);
        }
        q4.a.S(context, sVar2);
        ta.m.c(context, "UP_KEYMAP_EVENT");
        j3Var.getClass();
        int i12 = ActivityKeyMapEvent.F;
        ActivityKeyMapEvent activityKeyMapEvent2 = j3Var.f15765b;
        activityKeyMapEvent2.z();
        if (p000if.a.h0(AppStart.f3772h, AccService.class)) {
            new z6(activityKeyMapEvent2, activityKeyMapEvent2, "提示：添加或修改 自定义广播后，需关闭自动化重新开启方可生效", "").show();
        }
        dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EditText editText = (EditText) findViewById(R.id.v_edit_action);
        this.f7930t = editText;
        z7.s sVar = this.r;
        editText.setText(sVar.q("event").o("action").i());
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list_cond);
        this.f7931v = recyclerView;
        Context context = this.f6725b;
        boolean zB = true;
        recyclerView.setLayoutManager(new LinearLayoutManager(1, false));
        this.f7932w = new x9.l0(this.f6724a, context);
        z7.o oVarP = sVar.q("event").p("extras");
        for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
            this.f7932w.q(oVarP.l(i10).g());
        }
        this.f7931v.setAdapter(this.f7932w);
        this.f7920g = (ConstraintLayout) findViewById(R.id.v_select_open);
        this.f7921h = (ImageView) findViewById(R.id.v_select_open_ico);
        this.f7920g.setOnClickListener(new com.google.android.material.datepicker.l(this, 28));
        TextView textView = (TextView) findViewById(R.id.v_btn_add_cond);
        this.f7922i = textView;
        textView.requestFocus();
        this.f7923j = (TextView) findViewById(R.id.v_btn_add);
        this.f7924k = (TextView) findViewById(R.id.v_btn_save);
        this.l = (TextView) findViewById(R.id.v_btn_delete);
        this.f7922i.setOnClickListener(this);
        this.f7923j.setOnClickListener(this);
        this.f7924k.setOnClickListener(this);
        this.l.setOnClickListener(this);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7925m = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.t2 t2Var = new x9.t2();
        this.f7926n = t2Var;
        t2Var.f18336h = "映射操作：";
        this.f7925m.setAdapter(t2Var);
        d6.a aVar = new d6.a();
        aVar.f4496h = 3;
        aVar.f4495g = false;
        aVar.d(this.f7925m);
        aVar.g(this.f7926n);
        this.f7926n.f2881e = new u8(this);
        try {
            if (sVar.f19480a.containsKey("isOpen")) {
                zB = sVar.o("isOpen").b();
            } else {
                sVar.k("isOpen", Boolean.TRUE);
            }
            this.f7921h.setImageResource(zB ? R.drawable.tp_check1 : R.drawable.tp_check2);
            a();
        } catch (Exception unused) {
        }
    }
}
