package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class da extends a4 implements View.OnClickListener {

    /* renamed from: g, reason: collision with root package name */
    public final l6 f6911g;

    /* renamed from: h, reason: collision with root package name */
    public EditText f6912h;

    public da(Activity activity, Context context, l6 l6Var) {
        super(activity, context, R.layout.dialog_logcat_filter);
        this.f6911g = l6Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f6912h.setText(((TextView) view).getText().toString());
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TextView textView = (TextView) findViewById(R.id.v_btn_one);
        textView.requestFocus();
        TextView textView2 = (TextView) findViewById(R.id.v_btn_two);
        EditText editText = (EditText) findViewById(R.id.v_edit);
        this.f6912h = editText;
        editText.setOnKeyListener(new x6(textView, 8));
        final int i10 = 0;
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: ha.ca

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ da f6864b;

            {
                this.f6864b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        da daVar = this.f6864b;
                        daVar.getClass();
                        com.bumptech.glide.c.j(view);
                        String string = daVar.f6912h.getText().toString();
                        daVar.dismiss();
                        daVar.f6911g.a(string, true);
                        break;
                    default:
                        da daVar2 = this.f6864b;
                        daVar2.getClass();
                        com.bumptech.glide.c.j(view);
                        daVar2.dismiss();
                        daVar2.f6911g.a("", false);
                        break;
                }
            }
        });
        final int i11 = 1;
        textView2.setOnClickListener(new View.OnClickListener(this) { // from class: ha.ca

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ da f6864b;

            {
                this.f6864b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        da daVar = this.f6864b;
                        daVar.getClass();
                        com.bumptech.glide.c.j(view);
                        String string = daVar.f6912h.getText().toString();
                        daVar.dismiss();
                        daVar.f6911g.a(string, true);
                        break;
                    default:
                        da daVar2 = this.f6864b;
                        daVar2.getClass();
                        com.bumptech.glide.c.j(view);
                        daVar2.dismiss();
                        daVar2.f6911g.a("", false);
                        break;
                }
            }
        });
        findViewById(R.id.v_gjz_1).setOnClickListener(this);
        findViewById(R.id.v_gjz_2).setOnClickListener(this);
        findViewById(R.id.v_gjz_3).setOnClickListener(this);
        findViewById(R.id.v_gjz_4).setOnClickListener(this);
        findViewById(R.id.v_gjz_5).setOnClickListener(this);
        findViewById(R.id.v_gjz_6).setOnClickListener(this);
        findViewById(R.id.v_gjz_7).setOnClickListener(this);
        findViewById(R.id.v_gjz_8).setOnClickListener(this);
        findViewById(R.id.v_gjz_9).setOnClickListener(this);
        findViewById(R.id.v_gjz_10).setOnClickListener(this);
        findViewById(R.id.v_gjz_11).setOnClickListener(this);
        findViewById(R.id.v_gjz_12).setOnClickListener(this);
        findViewById(R.id.v_gjz_13).setOnClickListener(this);
        findViewById(R.id.v_gjz_14).setOnClickListener(this);
        findViewById(R.id.v_gjz_15).setOnClickListener(this);
        findViewById(R.id.v_gjz_16).setOnClickListener(this);
        findViewById(R.id.v_gjz_17).setOnClickListener(this);
        findViewById(R.id.v_gjz_18).setOnClickListener(this);
        findViewById(R.id.v_gjz_19).setOnClickListener(this);
        findViewById(R.id.v_gjz_20).setOnClickListener(this);
        findViewById(R.id.v_gjz_21).setOnClickListener(this);
        findViewById(R.id.v_gjz_22).setOnClickListener(this);
        findViewById(R.id.v_gjz_23).setOnClickListener(this);
        findViewById(R.id.v_gjz_24).setOnClickListener(this);
        findViewById(R.id.v_gjz_25).setOnClickListener(this);
        findViewById(R.id.v_gjz_26).setOnClickListener(this);
    }
}
