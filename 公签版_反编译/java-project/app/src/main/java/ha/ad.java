package ha;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public final class ad extends Dialog {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f6756a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f6757b;

    /* renamed from: c, reason: collision with root package name */
    public String f6758c;

    /* renamed from: d, reason: collision with root package name */
    public String f6759d;

    /* renamed from: e, reason: collision with root package name */
    public final zc f6760e;

    public ad(Context context, boolean z, boolean z4, zc zcVar) {
        super(context, R.style.Theme);
        this.f6758c = "";
        this.f6759d = "";
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        if (z) {
            setContentView(com.yunpan.appmanage.R.layout.dialog_start_password_tv);
        } else {
            setContentView(z4 ? com.yunpan.appmanage.R.layout.dialog_start_password_set : com.yunpan.appmanage.R.layout.dialog_start_password);
        }
        this.f6756a = z;
        this.f6757b = z4;
        this.f6760e = zcVar;
    }

    public final void a() {
        zc zcVar = this.f6760e;
        if (zcVar != null) {
            zcVar.d(true);
        }
        super.dismiss();
    }

    public final void b(TextView textView) {
        String strJ = "";
        for (int i10 = 0; i10 < this.f6758c.length(); i10++) {
            strJ = g.b.j(strJ, Marker.ANY_MARKER);
        }
        textView.setText(strJ);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        zc zcVar = this.f6760e;
        if (zcVar != null) {
            zcVar.d(false);
        }
        super.dismiss();
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        boolean z = this.f6756a;
        boolean z4 = this.f6757b;
        if (z) {
            TextView textView = (TextView) findViewById(com.yunpan.appmanage.R.id.v_title);
            TextView textView2 = (TextView) findViewById(com.yunpan.appmanage.R.id.v_pwd);
            TextView textView3 = (TextView) findViewById(com.yunpan.appmanage.R.id.v_ts);
            textView2.setText("");
            textView.requestFocus();
            if (z4) {
                textView.setText("请设置管家启动密码");
                textView3.setText("使用按键（上 下 左 右）来设置密码\n\n按OK键确认密码，输错了就长按按OK键");
            } else {
                textView.setText("请输入管家启动密码");
                textView3.setText("");
            }
            textView.setOnLongClickListener(new xc(this, textView2));
            textView.setOnClickListener(new yc(this, textView2, textView));
            textView.setOnKeyListener(new e2(this, textView2, 3));
            return;
        }
        if (!z4) {
            final int i10 = 1;
            findViewById(com.yunpan.appmanage.R.id.v_btn_close).setOnClickListener(new View.OnClickListener(this) { // from class: ha.wc

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ ad f8014b;

                {
                    this.f8014b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i10) {
                        case 0:
                            this.f8014b.dismiss();
                            break;
                        default:
                            this.f8014b.dismiss();
                            break;
                    }
                }
            });
            ((EditText) findViewById(com.yunpan.appmanage.R.id.et_password)).addTextChangedListener(new aa(this, i10));
            return;
        }
        EditText editText = (EditText) findViewById(com.yunpan.appmanage.R.id.et_password1);
        EditText editText2 = (EditText) findViewById(com.yunpan.appmanage.R.id.et_password2);
        TextView textView4 = (TextView) findViewById(com.yunpan.appmanage.R.id.v_btn_yes);
        TextView textView5 = (TextView) findViewById(com.yunpan.appmanage.R.id.v_btn_no);
        TextView textView6 = (TextView) findViewById(com.yunpan.appmanage.R.id.v_btn_reset);
        textView4.setOnClickListener(new s6(this, editText, editText2, 4));
        final int i11 = 0;
        textView5.setOnClickListener(new View.OnClickListener(this) { // from class: ha.wc

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ad f8014b;

            {
                this.f8014b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        this.f8014b.dismiss();
                        break;
                    default:
                        this.f8014b.dismiss();
                        break;
                }
            }
        });
        textView6.setOnClickListener(new c6.c(editText2, 25, editText));
    }
}
