package ha;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public final class o5 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final ma.b f7519g;

    /* renamed from: h, reason: collision with root package name */
    public final String f7520h;

    /* renamed from: i, reason: collision with root package name */
    public EditText f7521i;

    /* renamed from: j, reason: collision with root package name */
    public LinearLayout f7522j;

    /* renamed from: k, reason: collision with root package name */
    public LinearLayout f7523k;

    public o5(Activity activity, da.g gVar, String str, ma.b bVar) {
        super(activity, gVar, R.layout.dialog_downfilename);
        this.f7519g = bVar;
        this.f7520h = str;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EditText editText = (EditText) findViewById(R.id.v_edit);
        this.f7521i = editText;
        String str = this.f7520h;
        editText.setText(str);
        this.f7521i.setOnKeyListener(new c0(this, 1));
        ((TextView) findViewById(R.id.v_text)).setText("下载文件");
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_btn_download);
        this.f7522j = linearLayout;
        final int i10 = 0;
        linearLayout.setOnClickListener(new View.OnClickListener(this) { // from class: ha.n5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ o5 f7464b;

            {
                this.f7464b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        o5 o5Var = this.f7464b;
                        String strF = g.b.f(o5Var.f7521i);
                        if (!strF.isEmpty()) {
                            if (!strF.contains("١") && !strF.contains("/") && !strF.contains(":") && !strF.contains(Marker.ANY_MARKER) && !strF.contains("?") && !strF.contains("\\") && !strF.contains("\"") && !strF.contains("<") && !strF.contains("|") && !strF.contains(">")) {
                                o5Var.f7519g.d(strF, false);
                                o5Var.dismiss();
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.u("文件名不能带有特殊符号");
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.u("文件名不能为空");
                            break;
                        }
                        break;
                    default:
                        o5 o5Var2 = this.f7464b;
                        String strF2 = g.b.f(o5Var2.f7521i);
                        if (!strF2.isEmpty()) {
                            if (!strF2.contains("١") && !strF2.contains("/") && !strF2.contains(":") && !strF2.contains(Marker.ANY_MARKER) && !strF2.contains("?") && !strF2.contains("\\") && !strF2.contains("\"") && !strF2.contains("<") && !strF2.contains("|") && !strF2.contains(">")) {
                                o5Var2.f7519g.d(strF2, true);
                                o5Var2.dismiss();
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.u("文件名不能带有特殊符号");
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.u("文件名不能为空");
                            break;
                        }
                        break;
                }
            }
        });
        this.f7523k = (LinearLayout) findViewById(R.id.v_btn_install);
        if (!p000if.a.X(str)) {
            this.f7523k.setVisibility(8);
            this.f7522j.requestFocus();
        } else {
            this.f7523k.requestFocus();
            final int i11 = 1;
            this.f7523k.setOnClickListener(new View.OnClickListener(this) { // from class: ha.n5

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ o5 f7464b;

                {
                    this.f7464b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i11) {
                        case 0:
                            o5 o5Var = this.f7464b;
                            String strF = g.b.f(o5Var.f7521i);
                            if (!strF.isEmpty()) {
                                if (!strF.contains("١") && !strF.contains("/") && !strF.contains(":") && !strF.contains(Marker.ANY_MARKER) && !strF.contains("?") && !strF.contains("\\") && !strF.contains("\"") && !strF.contains("<") && !strF.contains("|") && !strF.contains(">")) {
                                    o5Var.f7519g.d(strF, false);
                                    o5Var.dismiss();
                                    break;
                                } else {
                                    com.yunpan.appmanage.util.a0.u("文件名不能带有特殊符号");
                                    break;
                                }
                            } else {
                                com.yunpan.appmanage.util.a0.u("文件名不能为空");
                                break;
                            }
                            break;
                        default:
                            o5 o5Var2 = this.f7464b;
                            String strF2 = g.b.f(o5Var2.f7521i);
                            if (!strF2.isEmpty()) {
                                if (!strF2.contains("١") && !strF2.contains("/") && !strF2.contains(":") && !strF2.contains(Marker.ANY_MARKER) && !strF2.contains("?") && !strF2.contains("\\") && !strF2.contains("\"") && !strF2.contains("<") && !strF2.contains("|") && !strF2.contains(">")) {
                                    o5Var2.f7519g.d(strF2, true);
                                    o5Var2.dismiss();
                                    break;
                                } else {
                                    com.yunpan.appmanage.util.a0.u("文件名不能带有特殊符号");
                                    break;
                                }
                            } else {
                                com.yunpan.appmanage.util.a0.u("文件名不能为空");
                                break;
                            }
                            break;
                    }
                }
            });
        }
    }
}
