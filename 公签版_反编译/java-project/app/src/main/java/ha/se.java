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
public final class se extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final x9.n5 f7768g;

    /* renamed from: h, reason: collision with root package name */
    public final re f7769h;

    /* renamed from: i, reason: collision with root package name */
    public EditText f7770i;

    /* renamed from: j, reason: collision with root package name */
    public EditText f7771j;

    /* renamed from: k, reason: collision with root package name */
    public EditText f7772k;
    public TextView l;

    public se(Activity activity, Context context, x9.n5 n5Var, re reVar) {
        super(activity, context, R.layout.dialog_webdav);
        this.f7769h = reVar;
        this.f7768g = n5Var;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((TextView) findViewById(R.id.v_title)).setText("WebDAV");
        EditText editText = (EditText) findViewById(R.id.v_edit_ip);
        this.f7770i = editText;
        editText.requestFocus();
        this.f7771j = (EditText) findViewById(R.id.v_edit_user);
        this.f7772k = (EditText) findViewById(R.id.v_edit_password);
        this.l = (TextView) findViewById(R.id.v_btn_login);
        EditText editText2 = this.f7770i;
        x9.n5 n5Var = this.f7768g;
        editText2.setText(n5Var.f18292c);
        this.f7771j.setText(n5Var.f18294e);
        this.f7772k.setText(n5Var.f18295f);
        this.l.setOnClickListener(new g9(17, this));
        final int i10 = 0;
        this.l.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.qe

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ se f7648b;

            {
                this.f7648b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i11, KeyEvent keyEvent) {
                switch (i10) {
                    case 0:
                        se seVar = this.f7648b;
                        seVar.getClass();
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
                            seVar.f7772k.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        se seVar2 = this.f7648b;
                        seVar2.getClass();
                        if (keyEvent.getAction() == 0 && i11 == 20) {
                            seVar2.f7771j.requestFocus();
                            break;
                        } else if (i11 == 20 || i11 == 19) {
                        }
                        break;
                    case 2:
                        se seVar3 = this.f7648b;
                        seVar3.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i11 != 20) {
                                if (i11 == 19) {
                                    seVar3.f7770i.requestFocus();
                                    break;
                                }
                            } else {
                                seVar3.f7772k.requestFocus();
                                break;
                            }
                        }
                        if (i11 == 20 || i11 == 19) {
                        }
                        break;
                    default:
                        se seVar4 = this.f7648b;
                        seVar4.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i11 != 20) {
                                if (i11 == 19) {
                                    seVar4.f7771j.requestFocus();
                                    break;
                                }
                            } else {
                                seVar4.l.requestFocus();
                                break;
                            }
                        }
                        if (i11 == 20 || i11 == 19) {
                        }
                        break;
                }
                return true;
            }
        });
        final int i11 = 1;
        this.f7770i.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.qe

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ se f7648b;

            {
                this.f7648b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                switch (i11) {
                    case 0:
                        se seVar = this.f7648b;
                        seVar.getClass();
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
                            seVar.f7772k.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        se seVar2 = this.f7648b;
                        seVar2.getClass();
                        if (keyEvent.getAction() == 0 && i112 == 20) {
                            seVar2.f7771j.requestFocus();
                            break;
                        } else if (i112 == 20 || i112 == 19) {
                        }
                        break;
                    case 2:
                        se seVar3 = this.f7648b;
                        seVar3.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i112 != 20) {
                                if (i112 == 19) {
                                    seVar3.f7770i.requestFocus();
                                    break;
                                }
                            } else {
                                seVar3.f7772k.requestFocus();
                                break;
                            }
                        }
                        if (i112 == 20 || i112 == 19) {
                        }
                        break;
                    default:
                        se seVar4 = this.f7648b;
                        seVar4.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i112 != 20) {
                                if (i112 == 19) {
                                    seVar4.f7771j.requestFocus();
                                    break;
                                }
                            } else {
                                seVar4.l.requestFocus();
                                break;
                            }
                        }
                        if (i112 == 20 || i112 == 19) {
                        }
                        break;
                }
                return true;
            }
        });
        final int i12 = 2;
        this.f7771j.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.qe

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ se f7648b;

            {
                this.f7648b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                switch (i12) {
                    case 0:
                        se seVar = this.f7648b;
                        seVar.getClass();
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
                            seVar.f7772k.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        se seVar2 = this.f7648b;
                        seVar2.getClass();
                        if (keyEvent.getAction() == 0 && i112 == 20) {
                            seVar2.f7771j.requestFocus();
                            break;
                        } else if (i112 == 20 || i112 == 19) {
                        }
                        break;
                    case 2:
                        se seVar3 = this.f7648b;
                        seVar3.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i112 != 20) {
                                if (i112 == 19) {
                                    seVar3.f7770i.requestFocus();
                                    break;
                                }
                            } else {
                                seVar3.f7772k.requestFocus();
                                break;
                            }
                        }
                        if (i112 == 20 || i112 == 19) {
                        }
                        break;
                    default:
                        se seVar4 = this.f7648b;
                        seVar4.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i112 != 20) {
                                if (i112 == 19) {
                                    seVar4.f7771j.requestFocus();
                                    break;
                                }
                            } else {
                                seVar4.l.requestFocus();
                                break;
                            }
                        }
                        if (i112 == 20 || i112 == 19) {
                        }
                        break;
                }
                return true;
            }
        });
        final int i13 = 3;
        this.f7772k.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.qe

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ se f7648b;

            {
                this.f7648b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                switch (i13) {
                    case 0:
                        se seVar = this.f7648b;
                        seVar.getClass();
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
                            seVar.f7772k.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        se seVar2 = this.f7648b;
                        seVar2.getClass();
                        if (keyEvent.getAction() == 0 && i112 == 20) {
                            seVar2.f7771j.requestFocus();
                            break;
                        } else if (i112 == 20 || i112 == 19) {
                        }
                        break;
                    case 2:
                        se seVar3 = this.f7648b;
                        seVar3.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i112 != 20) {
                                if (i112 == 19) {
                                    seVar3.f7770i.requestFocus();
                                    break;
                                }
                            } else {
                                seVar3.f7772k.requestFocus();
                                break;
                            }
                        }
                        if (i112 == 20 || i112 == 19) {
                        }
                        break;
                    default:
                        se seVar4 = this.f7648b;
                        seVar4.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i112 != 20) {
                                if (i112 == 19) {
                                    seVar4.f7771j.requestFocus();
                                    break;
                                }
                            } else {
                                seVar4.l.requestFocus();
                                break;
                            }
                        }
                        if (i112 == 20 || i112 == 19) {
                        }
                        break;
                }
                return true;
            }
        });
    }
}
