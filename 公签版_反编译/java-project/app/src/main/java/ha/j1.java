package ha;

import android.text.Selection;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

/* loaded from: classes.dex */
public final /* synthetic */ class j1 implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7234a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f7235b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EditText f7236c;

    public /* synthetic */ j1(EditText editText, TextView textView) {
        this.f7234a = 3;
        this.f7236c = editText;
        this.f7235b = textView;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        switch (this.f7234a) {
            case 0:
                if (i10 != 20) {
                    if (i10 == 19) {
                        this.f7236c.requestFocus();
                        break;
                    }
                } else if (keyEvent.getAction() == 0) {
                    this.f7235b.requestFocus();
                    break;
                }
                break;
            case 1:
                if (i10 != 20) {
                    if (i10 == 19) {
                        this.f7236c.requestFocus();
                        break;
                    }
                } else if (keyEvent.getAction() == 0) {
                    this.f7235b.requestFocus();
                    break;
                }
                break;
            case 2:
                if (keyEvent.getAction() == 1) {
                    if (i10 != 66 && i10 != 20) {
                        if (i10 == 19) {
                            this.f7236c.requestFocus();
                            break;
                        }
                    } else {
                        this.f7235b.requestFocus();
                        break;
                    }
                }
                break;
            case 3:
                if (keyEvent.getAction() == 0) {
                    if (i10 != 20 && i10 != 19) {
                        if (i10 == 22) {
                            EditText editText = this.f7236c;
                            if (Selection.getSelectionStart(editText.getText()) == editText.getText().length() && Selection.getSelectionEnd(editText.getText()) == editText.getText().length()) {
                                this.f7235b.requestFocus();
                                break;
                            }
                        }
                    }
                }
                break;
            case 4:
                if (i10 != 20) {
                    if (i10 == 19) {
                        if (keyEvent.getAction() == 0) {
                            this.f7236c.requestFocus();
                            break;
                        }
                    }
                } else if (keyEvent.getAction() == 0) {
                    this.f7235b.requestFocus();
                    break;
                }
                break;
            default:
                if (i10 != 20) {
                    if (i10 == 19) {
                        if (keyEvent.getAction() == 0) {
                            this.f7236c.requestFocus();
                            break;
                        }
                    }
                } else if (keyEvent.getAction() == 0) {
                    this.f7235b.requestFocus();
                    break;
                }
                break;
        }
        return true;
    }

    public /* synthetic */ j1(TextView textView, EditText editText, int i10) {
        this.f7234a = i10;
        this.f7235b = textView;
        this.f7236c = editText;
    }
}
