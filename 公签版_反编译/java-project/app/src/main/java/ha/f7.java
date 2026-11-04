package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.Selection;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class f7 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f7026g = 0;

    /* renamed from: h, reason: collision with root package name */
    public EditText f7027h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7028i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f7029j;

    /* renamed from: k, reason: collision with root package name */
    public Object f7030k;

    public f7(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_input_multiline);
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        switch (this.f7026g) {
            case 0:
                super.onCreate(bundle);
                this.f7028i = (TextView) findViewById(R.id.v_title);
                this.f7027h = (EditText) findViewById(R.id.v_content);
                TextView textView = (TextView) findViewById(R.id.v_btn_yes);
                this.f7029j = textView;
                textView.setOnClickListener(new com.google.android.material.datepicker.l(this, 21));
                this.f7027h.setOnKeyListener(new c0(this, 3));
                break;
            default:
                super.onCreate(bundle);
                this.f7027h = (EditText) findViewById(R.id.v_content1);
                this.f7029j = (EditText) findViewById(R.id.v_content2);
                TextView textView2 = (TextView) findViewById(R.id.v_btn_yes);
                this.f7028i = textView2;
                textView2.setOnClickListener(new com.google.android.material.datepicker.l(this, 22));
                final int i10 = 0;
                this.f7027h.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.g7

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ f7 f7100b;

                    {
                        this.f7100b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i11, KeyEvent keyEvent) {
                        int length;
                        switch (i10) {
                            case 0:
                                f7 f7Var = this.f7100b;
                                f7Var.getClass();
                                if (keyEvent.getAction() == 0 && i11 == 20 && Selection.getSelectionStart(f7Var.f7027h.getText()) == (length = f7Var.f7027h.getText().length()) && Selection.getSelectionEnd(f7Var.f7027h.getText()) == length) {
                                    ((EditText) f7Var.f7029j).requestFocus();
                                    break;
                                }
                                break;
                            default:
                                f7 f7Var2 = this.f7100b;
                                f7Var2.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i11 != 20) {
                                        if (i11 == 19 && Selection.getSelectionStart(f7Var2.f7027h.getText()) == 0 && Selection.getSelectionEnd(f7Var2.f7027h.getText()) == 0) {
                                            f7Var2.f7027h.requestFocus();
                                            break;
                                        }
                                    } else {
                                        int length2 = f7Var2.f7027h.getText().length();
                                        if (Selection.getSelectionStart(f7Var2.f7027h.getText()) == length2 && Selection.getSelectionEnd(f7Var2.f7027h.getText()) == length2) {
                                            f7Var2.f7028i.requestFocus();
                                            break;
                                        }
                                    }
                                }
                                break;
                        }
                        return true;
                    }
                });
                final int i11 = 1;
                ((EditText) this.f7029j).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.g7

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ f7 f7100b;

                    {
                        this.f7100b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                        int length;
                        switch (i11) {
                            case 0:
                                f7 f7Var = this.f7100b;
                                f7Var.getClass();
                                if (keyEvent.getAction() == 0 && i112 == 20 && Selection.getSelectionStart(f7Var.f7027h.getText()) == (length = f7Var.f7027h.getText().length()) && Selection.getSelectionEnd(f7Var.f7027h.getText()) == length) {
                                    ((EditText) f7Var.f7029j).requestFocus();
                                    break;
                                }
                                break;
                            default:
                                f7 f7Var2 = this.f7100b;
                                f7Var2.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i112 != 20) {
                                        if (i112 == 19 && Selection.getSelectionStart(f7Var2.f7027h.getText()) == 0 && Selection.getSelectionEnd(f7Var2.f7027h.getText()) == 0) {
                                            f7Var2.f7027h.requestFocus();
                                            break;
                                        }
                                    } else {
                                        int length2 = f7Var2.f7027h.getText().length();
                                        if (Selection.getSelectionStart(f7Var2.f7027h.getText()) == length2 && Selection.getSelectionEnd(f7Var2.f7027h.getText()) == length2) {
                                            f7Var2.f7028i.requestFocus();
                                            break;
                                        }
                                    }
                                }
                                break;
                        }
                        return true;
                    }
                });
                break;
        }
    }

    public f7(Activity activity, da.g gVar) {
        super(activity, gVar, R.layout.dialog_input_replace);
    }
}
