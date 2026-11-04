package ha;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

/* loaded from: classes.dex */
public final /* synthetic */ class k1 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7294a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f7295b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextView f7296c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ a4 f7297d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TextView f7298e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TextView f7299f;

    public /* synthetic */ k1(o1 o1Var, EditText editText, EditText editText2, TextView textView, TextView textView2) {
        this.f7297d = o1Var;
        this.f7298e = editText;
        this.f7299f = editText2;
        this.f7295b = textView;
        this.f7296c = textView2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f7294a) {
            case 0:
                o1 o1Var = (o1) this.f7297d;
                o1Var.getClass();
                String strF = g.b.f((EditText) this.f7298e);
                if (!strF.isEmpty()) {
                    String strF2 = g.b.f((EditText) this.f7299f);
                    if (!strF2.isEmpty()) {
                        ((n1) o1Var.f7501h).e(this.f7295b.getText().toString(), this.f7296c.getText().toString(), strF, strF2);
                        o1Var.dismiss();
                        break;
                    } else {
                        com.yunpan.appmanage.util.a0.u("value不能为空");
                        break;
                    }
                } else {
                    com.yunpan.appmanage.util.a0.u("key不能为空");
                    break;
                }
            default:
                o1 o1Var2 = (o1) this.f7297d;
                o1Var2.getClass();
                TextView textView = this.f7295b;
                String string = textView.getText().toString();
                TextView textView2 = this.f7296c;
                boolean zEquals = string.equals(textView2.getText().toString());
                TextView textView3 = this.f7298e;
                TextView textView4 = this.f7299f;
                if (!zEquals || !textView3.getText().toString().equals(textView4.getText().toString())) {
                    z7.s sVar = new z7.s();
                    sVar.l("type", 501);
                    sVar.m("name", textView.getText().toString() + ":" + textView3.getText().toString() + " 至 " + textView2.getText().toString() + ":" + textView4.getText().toString());
                    sVar.l("startH", Integer.valueOf(textView.getText().toString()));
                    sVar.l("startM", Integer.valueOf(textView3.getText().toString()));
                    sVar.l("endH", Integer.valueOf(textView2.getText().toString()));
                    sVar.l("endM", Integer.valueOf(textView4.getText().toString()));
                    ((y8) o1Var2.f7501h).k(sVar);
                    o1Var2.dismiss();
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.u("警告：您设置的时间相同");
                    break;
                }
                break;
        }
    }

    public /* synthetic */ k1(o1 o1Var, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.f7297d = o1Var;
        this.f7295b = textView;
        this.f7296c = textView2;
        this.f7298e = textView3;
        this.f7299f = textView4;
    }
}
