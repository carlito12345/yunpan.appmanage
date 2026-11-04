package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.WpPathBean;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class ve extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public RecyclerView f7962g;

    /* renamed from: h, reason: collision with root package name */
    public x9.z5 f7963h;

    /* renamed from: i, reason: collision with root package name */
    public ua.t8 f7964i;

    /* renamed from: j, reason: collision with root package name */
    public x9.n5 f7965j;

    /* renamed from: k, reason: collision with root package name */
    public WpPathBean f7966k;
    public ConstraintLayout l;

    /* renamed from: m, reason: collision with root package name */
    public ConstraintLayout f7967m;

    public ve(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_wp_file_menu);
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_menu);
        this.f7962g = recyclerView;
        recyclerView.setLayoutManager(new GridLayoutManager(2));
        x9.z5 z5Var = new x9.z5();
        this.f7963h = z5Var;
        this.f7962g.setAdapter(z5Var);
        this.f7963h.f2881e = new p7(24, this);
        this.l = (ConstraintLayout) findViewById(R.id.v_btn_play1);
        this.f7967m = (ConstraintLayout) findViewById(R.id.v_btn_play2);
        final int i10 = 0;
        this.l.setOnClickListener(new View.OnClickListener(this) { // from class: ha.ue

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ve f7890b;

            {
                this.f7890b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String strP;
                ve veVar = this.f7890b;
                switch (i10) {
                    case 0:
                        veVar.dismiss();
                        StringBuilder sb2 = new StringBuilder("http://127.0.0.1:");
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                        sb2.append(kVar.f4054j0);
                        sb2.append("/video/");
                        sb2.append(veVar.f7966k.path);
                        String string = sb2.toString();
                        WpPathBean wpPathBean = veVar.f7966k;
                        kVar.G = wpPathBean.size_long;
                        kVar.H = wpPathBean.path;
                        new gf(veVar.f6724a, veVar.f6725b).a(string);
                        break;
                    default:
                        veVar.dismiss();
                        if (veVar.f7965j.f18290a == 7) {
                            int iIndexOf = veVar.f7966k.path.indexOf("/", 10);
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(veVar.f7965j.b());
                            strP = android.support.v4.media.session.a.p(veVar.f7966k.path, iIndexOf, sb3);
                        } else {
                            strP = veVar.f7965j.b() + veVar.f7966k.path;
                        }
                        new gf(veVar.f6724a, veVar.f6725b).a(strP);
                        break;
                }
            }
        });
        final int i11 = 1;
        this.f7967m.setOnClickListener(new View.OnClickListener(this) { // from class: ha.ue

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ve f7890b;

            {
                this.f7890b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String strP;
                ve veVar = this.f7890b;
                switch (i11) {
                    case 0:
                        veVar.dismiss();
                        StringBuilder sb2 = new StringBuilder("http://127.0.0.1:");
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                        sb2.append(kVar.f4054j0);
                        sb2.append("/video/");
                        sb2.append(veVar.f7966k.path);
                        String string = sb2.toString();
                        WpPathBean wpPathBean = veVar.f7966k;
                        kVar.G = wpPathBean.size_long;
                        kVar.H = wpPathBean.path;
                        new gf(veVar.f6724a, veVar.f6725b).a(string);
                        break;
                    default:
                        veVar.dismiss();
                        if (veVar.f7965j.f18290a == 7) {
                            int iIndexOf = veVar.f7966k.path.indexOf("/", 10);
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(veVar.f7965j.b());
                            strP = android.support.v4.media.session.a.p(veVar.f7966k.path, iIndexOf, sb3);
                        } else {
                            strP = veVar.f7965j.b() + veVar.f7966k.path;
                        }
                        new gf(veVar.f6724a, veVar.f6725b).a(strP);
                        break;
                }
            }
        });
    }
}
