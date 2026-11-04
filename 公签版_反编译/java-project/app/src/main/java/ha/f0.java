package ha;

import android.app.Activity;
import android.content.Context;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final class f0 extends a4 implements View.OnClickListener {

    /* renamed from: g, reason: collision with root package name */
    public final int f6997g;

    /* renamed from: h, reason: collision with root package name */
    public final String f6998h;

    /* renamed from: i, reason: collision with root package name */
    public final e8 f6999i;

    /* renamed from: j, reason: collision with root package name */
    public EditText f7000j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f7001k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public TvRecyclerView f7002m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f7003n;

    /* renamed from: p, reason: collision with root package name */
    public TvRecyclerView f7004p;

    /* renamed from: q, reason: collision with root package name */
    public x9.t2 f7005q;
    public x9.t2 r;

    /* renamed from: s, reason: collision with root package name */
    public c1.a f7006s;

    /* renamed from: t, reason: collision with root package name */
    public SensorManager f7007t;

    public f0(Activity activity, Context context, int i10, e8 e8Var) {
        super(activity, context, R.layout.dialog_add_if_current_light);
        this.f7006s = null;
        this.f7007t = null;
        this.f6997g = i10;
        this.f6999i = e8Var;
        if (i10 == 7000) {
            this.f6998h = "光照亮度";
        } else if (i10 == 7001) {
            this.f6998h = "屏幕亮度";
        } else {
            this.f6998h = "";
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        if (this.f7006s != null) {
            this.f6725b.getContentResolver().unregisterContentObserver(this.f7006s);
        }
        SensorManager sensorManager = this.f7007t;
        if (sensorManager != null) {
            sensorManager.unregisterListener((SensorEventListener) null);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view.getId() == R.id.v_add1 || view.getId() == R.id.v_add2) {
            t8.a(this.f6724a, this.f6725b, -10, false, new d2.w(this, 7, view));
            return;
        }
        if (view.getId() == R.id.v_btn_yes) {
            boolean zIsEmpty = this.f7000j.getText().toString().isEmpty();
            String str = this.f6998h;
            if (zIsEmpty) {
                com.yunpan.appmanage.util.a0.u("请设置" + str);
                return;
            }
            if (this.f7005q.b() == 0 || this.r.b() == 0) {
                com.yunpan.appmanage.util.a0.u("请添加操作");
                return;
            }
            z7.s sVar = new z7.s();
            z7.o oVar = new z7.o();
            sVar.l("int1", Integer.valueOf(this.f7000j.getText().toString()));
            for (int i10 = 0; i10 < this.f7005q.b(); i10++) {
                oVar.k((z7.p) this.f7005q.t(i10));
            }
            sVar.j("maps1", oVar);
            z7.o oVar2 = new z7.o();
            for (int i11 = 0; i11 < this.r.b(); i11++) {
                oVar2.k((z7.p) this.r.t(i11));
            }
            sVar.j("maps2", oVar2);
            sVar.m("name", "判断" + str + "（" + this.f7000j.getText().toString() + "）");
            this.f6999i.k(sVar);
            dismiss();
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.l = (TextView) findViewById(R.id.v_current_value);
        this.f7000j = (EditText) findViewById(R.id.v_edit);
        this.f7001k = (TextView) findViewById(R.id.v_add1);
        this.f7002m = (TvRecyclerView) findViewById(R.id.v_list1);
        this.f7003n = (TextView) findViewById(R.id.v_add2);
        this.f7004p = (TvRecyclerView) findViewById(R.id.v_list2);
        ((TextView) findViewById(R.id.v_btn_yes)).setOnClickListener(this);
        this.f7001k.setOnClickListener(this);
        this.f7003n.setOnClickListener(this);
        this.f7000j.setOnKeyListener(new c0(this, 0));
        TvRecyclerView tvRecyclerView = this.f7002m;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.t2 t2Var = new x9.t2();
        this.f7005q = t2Var;
        this.f7002m.setAdapter(t2Var);
        final int i10 = 0;
        this.f7005q.f2881e = new c6.e(this) { // from class: ha.d0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ f0 f6877b;

            {
                this.f6877b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i11) {
                f0 f0Var = this.f6877b;
                int iC = 0;
                int i12 = 1;
                switch (i10) {
                    case 0:
                        if (((z7.s) f0Var.f7005q.t(i11)).o("gnType").e() != 3) {
                            if (f0Var.f7005q.b() == 1) {
                                f0Var.f7001k.requestFocus();
                            }
                            f0Var.f7005q.C(i11);
                            break;
                        } else {
                            String[] strArr = {"删除", "编辑"};
                            ArrayList arrayList = new ArrayList(2);
                            int iC2 = 0;
                            while (iC2 < 2) {
                                String str = strArr[iC2];
                                iC2 = g.b.c(str, arrayList, str, iC2, 1);
                            }
                            new fa(f0Var.f6724a, f0Var.f6725b, null, Collections.unmodifiableList(arrayList), new e0(f0Var, i11, iC)).show();
                            break;
                        }
                    default:
                        if (((z7.s) f0Var.r.t(i11)).o("gnType").e() != 3) {
                            if (f0Var.r.b() == 1) {
                                f0Var.f7003n.requestFocus();
                            }
                            f0Var.r.C(i11);
                            break;
                        } else {
                            String[] strArr2 = {"删除", "编辑"};
                            ArrayList arrayList2 = new ArrayList(2);
                            while (iC < 2) {
                                String str2 = strArr2[iC];
                                iC = g.b.c(str2, arrayList2, str2, iC, 1);
                            }
                            new fa(f0Var.f6724a, f0Var.f6725b, null, Collections.unmodifiableList(arrayList2), new e0(f0Var, i11, i12)).show();
                            break;
                        }
                }
            }
        };
        this.f7004p.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.t2 t2Var2 = new x9.t2();
        this.r = t2Var2;
        this.f7004p.setAdapter(t2Var2);
        final int i11 = 1;
        this.r.f2881e = new c6.e(this) { // from class: ha.d0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ f0 f6877b;

            {
                this.f6877b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i112) {
                f0 f0Var = this.f6877b;
                int iC = 0;
                int i12 = 1;
                switch (i11) {
                    case 0:
                        if (((z7.s) f0Var.f7005q.t(i112)).o("gnType").e() != 3) {
                            if (f0Var.f7005q.b() == 1) {
                                f0Var.f7001k.requestFocus();
                            }
                            f0Var.f7005q.C(i112);
                            break;
                        } else {
                            String[] strArr = {"删除", "编辑"};
                            ArrayList arrayList = new ArrayList(2);
                            int iC2 = 0;
                            while (iC2 < 2) {
                                String str = strArr[iC2];
                                iC2 = g.b.c(str, arrayList, str, iC2, 1);
                            }
                            new fa(f0Var.f6724a, f0Var.f6725b, null, Collections.unmodifiableList(arrayList), new e0(f0Var, i112, iC)).show();
                            break;
                        }
                    default:
                        if (((z7.s) f0Var.r.t(i112)).o("gnType").e() != 3) {
                            if (f0Var.r.b() == 1) {
                                f0Var.f7003n.requestFocus();
                            }
                            f0Var.r.C(i112);
                            break;
                        } else {
                            String[] strArr2 = {"删除", "编辑"};
                            ArrayList arrayList2 = new ArrayList(2);
                            while (iC < 2) {
                                String str2 = strArr2[iC];
                                iC = g.b.c(str2, arrayList2, str2, iC, 1);
                            }
                            new fa(f0Var.f6724a, f0Var.f6725b, null, Collections.unmodifiableList(arrayList2), new e0(f0Var, i112, i12)).show();
                            break;
                        }
                }
            }
        };
        int i12 = this.f6997g;
        if (i12 != 7000) {
            if (i12 == 7001) {
                this.l.setText(String.valueOf(Settings.System.getInt(context.getContentResolver(), "screen_brightness", 255)));
                this.f7006s = new c1.a(this, new Handler(), 2);
                context.getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_brightness"), true, this.f7006s);
                return;
            }
            return;
        }
        u uVar = new u(1, this);
        try {
            SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
            this.f7007t = sensorManager;
            this.f7007t.registerListener(uVar, sensorManager.getDefaultSensor(5), 3);
        } catch (Exception unused) {
            com.yunpan.appmanage.util.a0.u("此设备无法使用此功能");
            dismiss();
        }
    }
}
