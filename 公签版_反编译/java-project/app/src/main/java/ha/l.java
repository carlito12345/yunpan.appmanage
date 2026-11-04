package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class l extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final h8 f7337g;

    /* renamed from: h, reason: collision with root package name */
    public x9.c f7338h;

    /* renamed from: i, reason: collision with root package name */
    public TvRecyclerView f7339i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f7340j;

    public l(Activity activity, Context context, h8 h8Var) {
        super(activity, context, R.layout.dialog_add_app_switch_list);
        this.f7337g = h8Var;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7339i = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        x9.c cVar = new x9.c();
        this.f7338h = cVar;
        this.f7339i.setAdapter(cVar);
        this.f7338h.f2881e = new j(this);
        TextView textView = (TextView) findViewById(R.id.v_btn_add);
        this.f7340j = textView;
        textView.requestFocus();
        final int i10 = 0;
        this.f7340j.setOnClickListener(new View.OnClickListener(this) { // from class: ha.k

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ l f7291b;

            {
                this.f7291b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        l lVar = this.f7291b;
                        lVar.getClass();
                        new q2(lVar.f6724a, lVar.f6725b, 3, new j(lVar)).show();
                        break;
                    default:
                        l lVar2 = this.f7291b;
                        if (lVar2.f7338h.b() >= 2) {
                            List listV = lVar2.f7338h.v();
                            h8 h8Var = lVar2.f7337g;
                            String str = h8Var.f7157d;
                            int i11 = h8Var.f7155b;
                            int i12 = h8Var.f7156c;
                            ea.e eVar = h8Var.f7158e;
                            try {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(str);
                                sb2.append("：");
                                Iterator it = listV.iterator();
                                while (it.hasNext()) {
                                    sb2.append(((x9.n3) it.next()).f18286a);
                                    sb2.append(" , ");
                                }
                                z7.s sVar = new z7.s();
                                sVar.l("keyType", Integer.valueOf(i11));
                                sVar.l("gnType", Integer.valueOf(i12));
                                sVar.m("name", sb2.toString());
                                z7.o oVar = new z7.o();
                                Iterator it2 = listV.iterator();
                                while (it2.hasNext()) {
                                    oVar.j(((x9.n3) it2.next()).f18287b);
                                }
                                sVar.j("appList", oVar);
                                eVar.k(sVar);
                            } catch (Exception unused) {
                            }
                            lVar2.dismiss();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("请添加至少两个应用");
                            break;
                        }
                }
            }
        });
        final int i11 = 1;
        ((TextView) findViewById(R.id.v_btn_yes)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.k

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ l f7291b;

            {
                this.f7291b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        l lVar = this.f7291b;
                        lVar.getClass();
                        new q2(lVar.f6724a, lVar.f6725b, 3, new j(lVar)).show();
                        break;
                    default:
                        l lVar2 = this.f7291b;
                        if (lVar2.f7338h.b() >= 2) {
                            List listV = lVar2.f7338h.v();
                            h8 h8Var = lVar2.f7337g;
                            String str = h8Var.f7157d;
                            int i112 = h8Var.f7155b;
                            int i12 = h8Var.f7156c;
                            ea.e eVar = h8Var.f7158e;
                            try {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(str);
                                sb2.append("：");
                                Iterator it = listV.iterator();
                                while (it.hasNext()) {
                                    sb2.append(((x9.n3) it.next()).f18286a);
                                    sb2.append(" , ");
                                }
                                z7.s sVar = new z7.s();
                                sVar.l("keyType", Integer.valueOf(i112));
                                sVar.l("gnType", Integer.valueOf(i12));
                                sVar.m("name", sb2.toString());
                                z7.o oVar = new z7.o();
                                Iterator it2 = listV.iterator();
                                while (it2.hasNext()) {
                                    oVar.j(((x9.n3) it2.next()).f18287b);
                                }
                                sVar.j("appList", oVar);
                                eVar.k(sVar);
                            } catch (Exception unused) {
                            }
                            lVar2.dismiss();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("请添加至少两个应用");
                            break;
                        }
                }
            }
        });
    }
}
