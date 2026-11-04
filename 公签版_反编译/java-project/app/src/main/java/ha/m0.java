package ha;

import android.content.Context;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameIcoTypeBean;
import com.yunpan.appmanage.ui.ActivityKeymapFlyOS18;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class m0 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TextView f7379g;

    /* renamed from: h, reason: collision with root package name */
    public EditText f7380h;

    /* renamed from: i, reason: collision with root package name */
    public RecyclerView f7381i;

    /* renamed from: j, reason: collision with root package name */
    public final x9.t0 f7382j;

    /* renamed from: k, reason: collision with root package name */
    public TvRecyclerView f7383k;
    public x9.t2 l;

    /* renamed from: m, reason: collision with root package name */
    public final z7.s f7384m;

    /* renamed from: n, reason: collision with root package name */
    public final ua.q3 f7385n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f7386p;

    public m0(ActivityKeymapFlyOS18 activityKeymapFlyOS18, ActivityKeymapFlyOS18 activityKeymapFlyOS182, z7.s sVar, ua.q3 q3Var) {
        super(activityKeymapFlyOS18, activityKeymapFlyOS182, R.layout.dialog_add_key_event);
        this.f7382j = new x9.t0(0);
        this.f7386p = true;
        this.f7385n = q3Var;
        this.f7384m = sVar;
    }

    public final void a() {
        z7.s sVar = this.f7384m;
        this.l.E(new ArrayList());
        try {
            z7.o oVarP = sVar.p("click");
            if (!oVarP.f19478a.isEmpty()) {
                for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                    this.l.q(oVarP.l(i10).g());
                }
            }
            if (sVar.f19480a.containsKey("doubleClick")) {
                z7.o oVarP2 = sVar.p("doubleClick");
                if (!oVarP2.f19478a.isEmpty()) {
                    for (int i11 = 0; i11 < oVarP2.f19478a.size(); i11++) {
                        this.l.q(oVarP2.l(i11).g());
                    }
                }
            }
            if (sVar.f19480a.containsKey("longClick")) {
                z7.o oVarP3 = sVar.p("longClick");
                if (oVarP3.f19478a.isEmpty()) {
                    return;
                }
                for (int i12 = 0; i12 < oVarP3.f19478a.size(); i12++) {
                    this.l.q(oVarP3.l(i12).g());
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z7.s sVar = this.f7384m;
        this.f7379g = (TextView) findViewById(R.id.v_name);
        this.f7380h = (EditText) findViewById(R.id.v_edit_name);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list_gn);
        this.f7381i = recyclerView;
        Context context = this.f6725b;
        recyclerView.setLayoutManager(new LinearLayoutManager(0, false));
        NameIcoTypeBean nameIcoTypeBean = new NameIcoTypeBean(R.drawable.return2, "开启", 2);
        x9.t0 t0Var = this.f7382j;
        t0Var.q(nameIcoTypeBean);
        t0Var.q(new NameIcoTypeBean(0, "+单击操作", 3));
        t0Var.q(new NameIcoTypeBean(0, "+双击操作", 3));
        t0Var.q(new NameIcoTypeBean(0, "+长按操作", 3));
        t0Var.q(new NameIcoTypeBean(0, "保存", 3));
        t0Var.q(new NameIcoTypeBean(0, "删除", 3));
        this.f7381i.setAdapter(t0Var);
        this.f7381i.requestFocus();
        t0Var.f2881e = new k0(this, 0);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7383k = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.t2 t2Var = new x9.t2();
        this.l = t2Var;
        this.f7383k.setAdapter(t2Var);
        d6.a aVar = new d6.a();
        aVar.f4496h = 3;
        aVar.f4495g = false;
        aVar.d(this.f7383k);
        aVar.g(this.l);
        this.l.f2881e = new k0(this, 1);
        try {
            this.f7379g.setText(sVar.o("eventName").i());
            this.f7380h.setText(sVar.o("name").i());
            this.f7386p = sVar.o("isOpen").b();
            a();
        } catch (Exception unused) {
        }
        ((NameIcoTypeBean) t0Var.t(0)).resId = this.f7386p ? R.drawable.tp_check1 : R.drawable.tp_check2;
        t0Var.e(0);
    }
}
