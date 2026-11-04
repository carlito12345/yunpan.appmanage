package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class ye extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final xe f8110g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f8111h;

    /* renamed from: i, reason: collision with root package name */
    public EditText f8112i;

    /* renamed from: j, reason: collision with root package name */
    public EditText f8113j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f8114k;
    public final String l;

    /* renamed from: m, reason: collision with root package name */
    public final x9.n5 f8115m;

    public ye(Activity activity, Context context, x9.n5 n5Var, xe xeVar) {
        super(activity, context, R.layout.dialog_login_wp);
        this.f8110g = xeVar;
        this.f8115m = n5Var;
        this.l = "";
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f8114k = (TextView) findViewById(R.id.v_text_ts);
        String str = this.l;
        if (str == null || str.isEmpty()) {
            this.f8114k.setVisibility(8);
        } else {
            this.f8114k.setText(str);
        }
        this.f8112i = (EditText) findViewById(R.id.v_edit_user);
        this.f8113j = (EditText) findViewById(R.id.v_edit_password);
        this.f8111h = (TextView) findViewById(R.id.v_btn_login);
        final int i10 = 0;
        this.f8112i.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.we

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ye f8016b;

            {
                this.f8016b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i11, KeyEvent keyEvent) {
                switch (i10) {
                    case 0:
                        ye yeVar = this.f8016b;
                        yeVar.getClass();
                        if (keyEvent.getAction() == 0 && i11 == 20) {
                            yeVar.f8113j.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        ye yeVar2 = this.f8016b;
                        yeVar2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i11 != 20) {
                                if (i11 == 19) {
                                    yeVar2.f8112i.requestFocus();
                                    break;
                                }
                            } else {
                                yeVar2.f8111h.requestFocus();
                                break;
                            }
                        }
                        break;
                    default:
                        ye yeVar3 = this.f8016b;
                        yeVar3.getClass();
                        if (i11 != 19) {
                            if (i11 != 21) {
                                if (i11 != 22) {
                                    if (i11 == 20) {
                                        if (keyEvent.getAction() == 0) {
                                            s1.g.Z(331, view);
                                            break;
                                        }
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    s1.g.W(332, view);
                                    break;
                                }
                            } else if (keyEvent.getAction() == 0) {
                                s1.g.W(333, view);
                                break;
                            }
                        } else if (keyEvent.getAction() == 0) {
                            yeVar3.f8113j.requestFocus();
                            break;
                        }
                        break;
                }
                return true;
            }
        });
        final int i11 = 1;
        this.f8113j.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.we

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ye f8016b;

            {
                this.f8016b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                switch (i11) {
                    case 0:
                        ye yeVar = this.f8016b;
                        yeVar.getClass();
                        if (keyEvent.getAction() == 0 && i112 == 20) {
                            yeVar.f8113j.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        ye yeVar2 = this.f8016b;
                        yeVar2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i112 != 20) {
                                if (i112 == 19) {
                                    yeVar2.f8112i.requestFocus();
                                    break;
                                }
                            } else {
                                yeVar2.f8111h.requestFocus();
                                break;
                            }
                        }
                        break;
                    default:
                        ye yeVar3 = this.f8016b;
                        yeVar3.getClass();
                        if (i112 != 19) {
                            if (i112 != 21) {
                                if (i112 != 22) {
                                    if (i112 == 20) {
                                        if (keyEvent.getAction() == 0) {
                                            s1.g.Z(331, view);
                                            break;
                                        }
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    s1.g.W(332, view);
                                    break;
                                }
                            } else if (keyEvent.getAction() == 0) {
                                s1.g.W(333, view);
                                break;
                            }
                        } else if (keyEvent.getAction() == 0) {
                            yeVar3.f8113j.requestFocus();
                            break;
                        }
                        break;
                }
                return true;
            }
        });
        EditText editText = this.f8112i;
        x9.n5 n5Var = this.f8115m;
        editText.setText(n5Var.f18294e);
        this.f8113j.setText(n5Var.f18295f);
        this.f8111h.setOnClickListener(new g9(19, this));
        final int i12 = 2;
        this.f8111h.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.we

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ye f8016b;

            {
                this.f8016b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                switch (i12) {
                    case 0:
                        ye yeVar = this.f8016b;
                        yeVar.getClass();
                        if (keyEvent.getAction() == 0 && i112 == 20) {
                            yeVar.f8113j.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        ye yeVar2 = this.f8016b;
                        yeVar2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i112 != 20) {
                                if (i112 == 19) {
                                    yeVar2.f8112i.requestFocus();
                                    break;
                                }
                            } else {
                                yeVar2.f8111h.requestFocus();
                                break;
                            }
                        }
                        break;
                    default:
                        ye yeVar3 = this.f8016b;
                        yeVar3.getClass();
                        if (i112 != 19) {
                            if (i112 != 21) {
                                if (i112 != 22) {
                                    if (i112 == 20) {
                                        if (keyEvent.getAction() == 0) {
                                            s1.g.Z(331, view);
                                            break;
                                        }
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    s1.g.W(332, view);
                                    break;
                                }
                            } else if (keyEvent.getAction() == 0) {
                                s1.g.W(333, view);
                                break;
                            }
                        } else if (keyEvent.getAction() == 0) {
                            yeVar3.f8113j.requestFocus();
                            break;
                        }
                        break;
                }
                return true;
            }
        });
    }
}
