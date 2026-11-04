package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.autolink.app.vehiclemanager.data.JieTKeymapType;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyCodeBean;
import com.yunpan.appmanage.ui.ActivityKeymapJieT;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class d8 extends a4 implements View.OnClickListener {
    public final ArrayList A;

    /* renamed from: g, reason: collision with root package name */
    public boolean f6896g;

    /* renamed from: h, reason: collision with root package name */
    public EditText f6897h;

    /* renamed from: i, reason: collision with root package name */
    public ConstraintLayout f6898i;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f6899j;

    /* renamed from: k, reason: collision with root package name */
    public KeyCodeBean f6900k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public TextView f6901m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f6902n;

    /* renamed from: p, reason: collision with root package name */
    public TextView f6903p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f6904q;
    public TextView r;

    /* renamed from: s, reason: collision with root package name */
    public TextView f6905s;

    /* renamed from: t, reason: collision with root package name */
    public TextView f6906t;

    /* renamed from: v, reason: collision with root package name */
    public TextView f6907v;

    /* renamed from: w, reason: collision with root package name */
    public TvRecyclerView f6908w;

    /* renamed from: x, reason: collision with root package name */
    public x9.t2 f6909x;

    /* renamed from: y, reason: collision with root package name */
    public final z7.s f6910y;
    public final c8 z;

    public d8(ActivityKeymapJieT activityKeymapJieT, ActivityKeymapJieT activityKeymapJieT2, KeyCodeBean keyCodeBean, ua.t3 t3Var) {
        super(activityKeymapJieT, activityKeymapJieT2, R.layout.dialog_jietu_key_add);
        this.f6896g = true;
        this.f6900k = null;
        this.A = new ArrayList();
        this.z = t3Var;
        z7.s sVar = new z7.s();
        this.f6910y = sVar;
        try {
            sVar.m("name", keyCodeBean.keyName);
            sVar.k("isOpen", Boolean.TRUE);
            sVar.l("type", Integer.valueOf(JieTKeymapType.MAP_TYPE_KEY.getValue()));
            sVar.l("key1", Integer.valueOf(keyCodeBean.keyCode));
            sVar.m("key1_name", keyCodeBean.keyName);
            sVar.l("key2", -1);
            sVar.m("key2_name", "");
            sVar.j("click", new z7.o());
            sVar.j("doubleClick", new z7.o());
            sVar.j("longClick", new z7.o());
            sVar.j("zhClick", new z7.o());
        } catch (Exception unused) {
        }
    }

    public final void a(int i10) {
        t8.a(this.f6724a, this.f6725b, i10, false, new a8(this));
    }

    public final void b() {
        z7.s sVar = this.f6910y;
        this.f6909x.E(new ArrayList());
        try {
            z7.o oVarP = sVar.p("click");
            if (!oVarP.f19478a.isEmpty()) {
                for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                    this.f6909x.q(oVarP.l(i10).g());
                }
            }
            z7.o oVarP2 = sVar.p("doubleClick");
            if (!oVarP2.f19478a.isEmpty()) {
                for (int i11 = 0; i11 < oVarP2.f19478a.size(); i11++) {
                    this.f6909x.q(oVarP2.l(i11).g());
                }
            }
            z7.o oVarP3 = sVar.p("longClick");
            if (!oVarP3.f19478a.isEmpty()) {
                for (int i12 = 0; i12 < oVarP3.f19478a.size(); i12++) {
                    this.f6909x.q(oVarP3.l(i12).g());
                }
            }
            z7.o oVarP4 = sVar.p("zhClick");
            if (oVarP4.f19478a.isEmpty()) {
                return;
            }
            for (int i13 = 0; i13 < oVarP4.f19478a.size(); i13++) {
                this.f6909x.q(oVarP4.l(i13).g());
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view == null) {
            return;
        }
        int id2 = view.getId();
        z7.s sVar = this.f6910y;
        if (id2 == R.id.v_btn_select) {
            ArrayList arrayList = this.A;
            if (arrayList.isEmpty()) {
                arrayList.add(new KeyCodeBean(-1, "取消组合键"));
                int iE = sVar.o("key1").e();
                JieTKeymapType jieTKeymapType = JieTKeymapType.KEYCODE_L_UP;
                if (iE != jieTKeymapType.getValue()) {
                    arrayList.add(new KeyCodeBean(jieTKeymapType.getValue(), jieTKeymapType.getDesc()));
                }
                JieTKeymapType jieTKeymapType2 = JieTKeymapType.KEYCODE_L_DOWN;
                if (iE != jieTKeymapType2.getValue()) {
                    arrayList.add(new KeyCodeBean(jieTKeymapType2.getValue(), jieTKeymapType2.getDesc()));
                }
                JieTKeymapType jieTKeymapType3 = JieTKeymapType.KEYCODE_L_LEFT;
                if (iE != jieTKeymapType3.getValue()) {
                    arrayList.add(new KeyCodeBean(jieTKeymapType3.getValue(), jieTKeymapType3.getDesc()));
                }
                JieTKeymapType jieTKeymapType4 = JieTKeymapType.KEYCODE_L_RIGHT;
                if (iE != jieTKeymapType4.getValue()) {
                    arrayList.add(new KeyCodeBean(jieTKeymapType4.getValue(), jieTKeymapType4.getDesc()));
                }
                JieTKeymapType jieTKeymapType5 = JieTKeymapType.KEYCODE_R_MODE;
                if (iE != jieTKeymapType5.getValue()) {
                    arrayList.add(new KeyCodeBean(jieTKeymapType5.getValue(), jieTKeymapType5.getDesc()));
                }
                JieTKeymapType jieTKeymapType6 = JieTKeymapType.KEYCODE_R_VOICE;
                if (iE != jieTKeymapType6.getValue()) {
                    arrayList.add(new KeyCodeBean(jieTKeymapType6.getValue(), jieTKeymapType6.getDesc()));
                }
                JieTKeymapType jieTKeymapType7 = JieTKeymapType.KEYCODE_R_PREVIOUS;
                if (iE != jieTKeymapType7.getValue()) {
                    arrayList.add(new KeyCodeBean(jieTKeymapType7.getValue(), jieTKeymapType7.getDesc()));
                }
                JieTKeymapType jieTKeymapType8 = JieTKeymapType.KEYCODE_R_NEXT;
                if (iE != jieTKeymapType8.getValue()) {
                    arrayList.add(new KeyCodeBean(jieTKeymapType8.getValue(), jieTKeymapType8.getDesc()));
                }
                JieTKeymapType jieTKeymapType9 = JieTKeymapType.KEYCODE_R_UP;
                if (iE != jieTKeymapType9.getValue()) {
                    arrayList.add(new KeyCodeBean(jieTKeymapType9.getValue(), jieTKeymapType9.getDesc()));
                }
                JieTKeymapType jieTKeymapType10 = JieTKeymapType.KEYCODE_R_DOWN;
                if (iE != jieTKeymapType10.getValue()) {
                    arrayList.add(new KeyCodeBean(jieTKeymapType10.getValue(), jieTKeymapType10.getDesc()));
                }
                JieTKeymapType jieTKeymapType11 = JieTKeymapType.KEYCODE_R_MUTE;
                if (iE != jieTKeymapType11.getValue()) {
                    arrayList.add(new KeyCodeBean(jieTKeymapType11.getValue(), jieTKeymapType11.getDesc()));
                }
                JieTKeymapType jieTKeymapType12 = JieTKeymapType.KEYCODE_R_STAR;
                if (iE != jieTKeymapType12.getValue()) {
                    arrayList.add(new KeyCodeBean(jieTKeymapType12.getValue(), jieTKeymapType12.getDesc()));
                }
                arrayList.add(new KeyCodeBean(-2, "手动抓取键码"));
            }
            new ha(this.f6724a, this.f6725b, null, arrayList, new a8(this)).show();
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
            if (this.f6900k.keyCode == -1) {
                Toaster.show((CharSequence) "请先设置组合键");
                return;
            } else {
                a(3);
                return;
            }
        }
        int id3 = view.getId();
        c8 c8Var = this.z;
        if (id3 != R.id.v_btn_click_save) {
            if (view.getId() == R.id.v_btn_click_delete) {
                c8Var.delete();
                dismiss();
                return;
            }
            return;
        }
        if (this.f6909x.b() == 0) {
            Toaster.show((CharSequence) "请添加至少一个操作");
            return;
        }
        if (this.f6900k.keyCode == -1) {
            Iterator it = this.f6909x.v().iterator();
            while (it.hasNext()) {
                if (((z7.s) it.next()).o("keyType").e() == 3) {
                    new z6(this.f6724a, this.f6725b, "检测到您没有设置组合键，但你却设置了组合操作\n请删除组合操作，或者设置组合键", "", "好的", "", new j2(3)).show();
                    return;
                }
            }
        }
        sVar.m("name", this.f6897h.getText().toString().trim());
        sVar.k("isOpen", Boolean.valueOf(this.f6896g));
        sVar.l("key2", Integer.valueOf(this.f6900k.keyCode));
        sVar.m("key2_name", this.f6900k.keyName);
        sVar.j("click", new z7.o());
        sVar.j("doubleClick", new z7.o());
        sVar.j("longClick", new z7.o());
        sVar.j("zhClick", new z7.o());
        for (z7.s sVar2 : this.f6909x.v()) {
            int iE2 = sVar2.o("keyType").e();
            if (iE2 == 0) {
                sVar.p("click").k(sVar2);
            } else if (iE2 == 1) {
                sVar.p("doubleClick").k(sVar2);
            } else if (iE2 == 2) {
                sVar.p("longClick").k(sVar2);
            } else if (iE2 == 3) {
                sVar.p("zhClick").k(sVar2);
            }
        }
        c8Var.a(sVar);
        dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z7.s sVar = this.f6910y;
        this.f6898i = (ConstraintLayout) findViewById(R.id.v_select_open);
        this.f6899j = (ImageView) findViewById(R.id.v_select_open_ico);
        this.f6898i.setOnClickListener(new com.google.android.material.datepicker.l(this, 26));
        this.f6897h = (EditText) findViewById(R.id.v_edit_name);
        this.l = (TextView) findViewById(R.id.v_key1);
        this.f6901m = (TextView) findViewById(R.id.v_key2);
        TextView textView = (TextView) findViewById(R.id.v_btn_select);
        this.f6902n = textView;
        textView.requestFocus();
        this.f6903p = (TextView) findViewById(R.id.v_btn_click);
        this.f6904q = (TextView) findViewById(R.id.v_btn_click_double);
        this.r = (TextView) findViewById(R.id.v_btn_click_long);
        this.f6905s = (TextView) findViewById(R.id.v_btn_click_zh);
        this.f6906t = (TextView) findViewById(R.id.v_btn_click_save);
        this.f6907v = (TextView) findViewById(R.id.v_btn_click_delete);
        this.f6902n.setOnClickListener(this);
        this.f6903p.setOnClickListener(this);
        this.f6904q.setOnClickListener(this);
        this.r.setOnClickListener(this);
        this.f6905s.setOnClickListener(this);
        this.f6906t.setOnClickListener(this);
        this.f6907v.setOnClickListener(this);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f6908w = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        x9.t2 t2Var = new x9.t2();
        this.f6909x = t2Var;
        this.f6908w.setAdapter(t2Var);
        d6.a aVar = new d6.a();
        aVar.f4496h = 3;
        aVar.f4495g = false;
        aVar.d(this.f6908w);
        aVar.g(this.f6909x);
        this.f6909x.f2881e = new a8(this);
        try {
            boolean zB = sVar.o("isOpen").b();
            this.f6896g = zB;
            this.f6899j.setImageResource(zB ? R.drawable.tp_check1 : R.drawable.tp_check2);
            this.f6897h.setText(sVar.o("name").i());
            this.l.setText(sVar.o("key1_name").i() + "(" + sVar.o("key1").e() + ")");
            KeyCodeBean keyCodeBean = new KeyCodeBean(sVar.o("key2").e(), sVar.o("key2_name").i());
            this.f6900k = keyCodeBean;
            if (keyCodeBean.keyCode != -1) {
                this.f6901m.setText(this.f6900k.keyName + "(" + this.f6900k.keyCode + ")");
            }
            b();
        } catch (Exception e7) {
            g.b.s(e7, new StringBuilder(""));
        }
    }

    public d8(Activity activity, Context context, z7.s sVar, ua.u3 u3Var) {
        super(activity, context, R.layout.dialog_jietu_key_add);
        this.f6896g = true;
        this.f6900k = null;
        this.A = new ArrayList();
        this.z = u3Var;
        this.f6910y = sVar;
    }
}
