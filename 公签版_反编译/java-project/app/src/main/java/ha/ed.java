package ha;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class ed extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final dd f6983g;

    /* renamed from: h, reason: collision with root package name */
    public String f6984h;

    /* renamed from: i, reason: collision with root package name */
    public String f6985i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f6986j;

    /* renamed from: k, reason: collision with root package name */
    public String f6987k;
    public String l;

    /* renamed from: m, reason: collision with root package name */
    public String f6988m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f6989n;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f6990p;

    public ed(Activity activity, da.g gVar, boolean z, dd ddVar) {
        super(activity, gVar, R.layout.dialog_switch_app_add);
        this.f6984h = "";
        this.f6985i = "";
        this.f6987k = "";
        this.l = "";
        this.f6988m = "";
        this.f6990p = z;
        this.f6983g = ddVar;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((TextView) findViewById(R.id.v_ts2)).setText(this.f6990p ? "就关闭：" : "就打开：");
        this.f6986j = (TextView) findViewById(R.id.v_text_from_name);
        final int i10 = 0;
        ((TextView) findViewById(R.id.v_btn_from_name)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.bd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ed f6824b;

            {
                this.f6824b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        ed edVar = this.f6824b;
                        edVar.getClass();
                        new q2(edVar.f6724a, edVar.f6725b, 3, new cd(edVar)).show();
                        break;
                    case 1:
                        ed edVar2 = this.f6824b;
                        new t2(edVar2.f6724a, edVar2.f6725b, !edVar2.f6990p, new cd(edVar2)).show();
                        break;
                    default:
                        ed edVar3 = this.f6824b;
                        if (!edVar3.f6984h.isEmpty() && !edVar3.f6987k.isEmpty() && !edVar3.f6985i.isEmpty() && !edVar3.l.isEmpty()) {
                            if (!edVar3.f6990p && edVar3.f6985i.equals(edVar3.l)) {
                                com.yunpan.appmanage.util.a0.t("脑子坏了？");
                                break;
                            } else {
                                edVar3.f6983g.a(edVar3.f6984h, edVar3.f6985i, edVar3.f6987k, edVar3.l, edVar3.f6988m);
                                edVar3.dismiss();
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.t("请先选择好应用");
                            break;
                        }
                }
            }
        });
        this.f6989n = (TextView) findViewById(R.id.v_text_to_name);
        final int i11 = 1;
        ((TextView) findViewById(R.id.v_btn_to_name)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.bd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ed f6824b;

            {
                this.f6824b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        ed edVar = this.f6824b;
                        edVar.getClass();
                        new q2(edVar.f6724a, edVar.f6725b, 3, new cd(edVar)).show();
                        break;
                    case 1:
                        ed edVar2 = this.f6824b;
                        new t2(edVar2.f6724a, edVar2.f6725b, !edVar2.f6990p, new cd(edVar2)).show();
                        break;
                    default:
                        ed edVar3 = this.f6824b;
                        if (!edVar3.f6984h.isEmpty() && !edVar3.f6987k.isEmpty() && !edVar3.f6985i.isEmpty() && !edVar3.l.isEmpty()) {
                            if (!edVar3.f6990p && edVar3.f6985i.equals(edVar3.l)) {
                                com.yunpan.appmanage.util.a0.t("脑子坏了？");
                                break;
                            } else {
                                edVar3.f6983g.a(edVar3.f6984h, edVar3.f6985i, edVar3.f6987k, edVar3.l, edVar3.f6988m);
                                edVar3.dismiss();
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.t("请先选择好应用");
                            break;
                        }
                }
            }
        });
        final int i12 = 2;
        ((TextView) findViewById(R.id.v_btn_yes)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.bd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ed f6824b;

            {
                this.f6824b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i12) {
                    case 0:
                        ed edVar = this.f6824b;
                        edVar.getClass();
                        new q2(edVar.f6724a, edVar.f6725b, 3, new cd(edVar)).show();
                        break;
                    case 1:
                        ed edVar2 = this.f6824b;
                        new t2(edVar2.f6724a, edVar2.f6725b, !edVar2.f6990p, new cd(edVar2)).show();
                        break;
                    default:
                        ed edVar3 = this.f6824b;
                        if (!edVar3.f6984h.isEmpty() && !edVar3.f6987k.isEmpty() && !edVar3.f6985i.isEmpty() && !edVar3.l.isEmpty()) {
                            if (!edVar3.f6990p && edVar3.f6985i.equals(edVar3.l)) {
                                com.yunpan.appmanage.util.a0.t("脑子坏了？");
                                break;
                            } else {
                                edVar3.f6983g.a(edVar3.f6984h, edVar3.f6985i, edVar3.f6987k, edVar3.l, edVar3.f6988m);
                                edVar3.dismiss();
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.t("请先选择好应用");
                            break;
                        }
                }
            }
        });
    }
}
