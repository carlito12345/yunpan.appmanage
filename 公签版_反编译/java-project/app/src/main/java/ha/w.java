package ha;

import android.app.Activity;
import android.content.Context;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.view.MyProgressViewTest;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class w extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f7968g = 2;

    /* renamed from: h, reason: collision with root package name */
    public TextView f7969h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7970i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f7971j;

    /* renamed from: k, reason: collision with root package name */
    public Object f7972k;
    public Object l;

    /* renamed from: m, reason: collision with root package name */
    public View f7973m;

    /* renamed from: n, reason: collision with root package name */
    public Object f7974n;

    /* renamed from: p, reason: collision with root package name */
    public Object f7975p;

    /* renamed from: q, reason: collision with root package name */
    public Object f7976q;

    public w(Activity activity, Context context, y8 y8Var) {
        super(activity, context, R.layout.dialog_add_event_light);
        this.f7976q = new u(0, this);
        this.f7972k = y8Var;
    }

    public void a() {
        mc.g gVarA;
        ((TextView) this.f7974n).setText("取消下载");
        ((MyProgressViewTest) this.f7973m).setCurrentCount(0.0f);
        this.f7971j.setText("解析中");
        x9.n5 n5Var = (x9.n5) this.f7972k;
        int i10 = n5Var.f18290a;
        if (i10 == 1 || i10 == 2 || i10 == 20 || i10 == 21) {
            if (i10 == 1) {
                gVarA = new mc.c(0, new ba.e((WpPathBean) this.l, n5Var, (String) this.f7976q, 3)).d(rc.f.f13757b).a(fc.b.a());
            } else if (i10 == 2) {
                gVarA = new mc.c(0, new ba.e((WpPathBean) this.l, n5Var, (String) this.f7976q, 5)).d(rc.f.f13757b).a(fc.b.a());
            } else if (i10 == 21) {
                gVarA = new mc.c(0, new ba.e((WpPathBean) this.l, n5Var, (String) this.f7976q, 0)).d(rc.f.f13757b).a(fc.b.a());
            } else {
                gVarA = new mc.c(0, new ba.e((WpPathBean) this.l, n5Var, (String) this.f7976q, 7)).d(rc.f.f13757b).a(fc.b.a());
            }
            gVarA.b(new p0(27, this));
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        switch (this.f7968g) {
            case 0:
                ((SensorManager) this.f7975p).unregisterListener((u) this.f7976q);
                super.dismiss();
                break;
            case 1:
            default:
                super.dismiss();
                break;
            case 2:
                super.dismiss();
                ((WpPathBean) this.l).isStopDown = true;
                break;
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        switch (this.f7968g) {
            case 0:
                super.onCreate(bundle);
                AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) findViewById(R.id.v_seek);
                this.l = appCompatSeekBar;
                appCompatSeekBar.setMax(1000);
                ((AppCompatSeekBar) this.l).setProgress(50);
                final int i10 = 0;
                ((AppCompatSeekBar) this.l).setOnSeekBarChangeListener(new v(0, this));
                this.f7973m = (ConstraintLayout) findViewById(R.id.v_type_vol);
                this.f7969h = (TextView) findViewById(R.id.v_type_vol_name);
                this.f7970i = (TextView) findViewById(R.id.v_btn_yes);
                this.f7971j = (TextView) findViewById(R.id.v_current_value);
                KeyMapSelectBean keyMapSelectBean = new KeyMapSelectBean("光照亮度上升到 50 以上的时候", 0);
                this.f7974n = keyMapSelectBean;
                this.f7969h.setText(keyMapSelectBean.gn_name);
                ((ConstraintLayout) this.f7973m).setOnClickListener(new View.OnClickListener(this) { // from class: ha.t

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ w f7774b;

                    {
                        this.f7774b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i10) {
                            case 0:
                                w wVar = this.f7774b;
                                wVar.getClass();
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new KeyMapSelectBean("光照亮度上升到 " + ((AppCompatSeekBar) wVar.l).getProgress() + " 以上的时候", 0));
                                arrayList.add(new KeyMapSelectBean("光照亮度下降到 " + ((AppCompatSeekBar) wVar.l).getProgress() + " 以下的时候", 1));
                                new ie(wVar.f6724a, wVar.f6725b, arrayList, new d2.w(wVar, 4, arrayList)).show();
                                break;
                            default:
                                w wVar2 = this.f7774b;
                                wVar2.getClass();
                                z7.s sVar = new z7.s();
                                sVar.l("type", 502);
                                sVar.m("name", ((KeyMapSelectBean) wVar2.f7974n).gn_name);
                                sVar.k("isDesc", Boolean.valueOf(((KeyMapSelectBean) wVar2.f7974n).gn_type == 1));
                                sVar.l("value", Integer.valueOf(((AppCompatSeekBar) wVar2.l).getProgress()));
                                ((y8) wVar2.f7972k).k(sVar);
                                wVar2.dismiss();
                                break;
                        }
                    }
                });
                try {
                    SensorManager sensorManager = (SensorManager) this.f6725b.getSystemService("sensor");
                    this.f7975p = sensorManager;
                    ((SensorManager) this.f7975p).registerListener((u) this.f7976q, sensorManager.getDefaultSensor(5), 3);
                    final int i11 = 1;
                    this.f7970i.setOnClickListener(new View.OnClickListener(this) { // from class: ha.t

                        /* renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ w f7774b;

                        {
                            this.f7774b = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            switch (i11) {
                                case 0:
                                    w wVar = this.f7774b;
                                    wVar.getClass();
                                    ArrayList arrayList = new ArrayList();
                                    arrayList.add(new KeyMapSelectBean("光照亮度上升到 " + ((AppCompatSeekBar) wVar.l).getProgress() + " 以上的时候", 0));
                                    arrayList.add(new KeyMapSelectBean("光照亮度下降到 " + ((AppCompatSeekBar) wVar.l).getProgress() + " 以下的时候", 1));
                                    new ie(wVar.f6724a, wVar.f6725b, arrayList, new d2.w(wVar, 4, arrayList)).show();
                                    break;
                                default:
                                    w wVar2 = this.f7774b;
                                    wVar2.getClass();
                                    z7.s sVar = new z7.s();
                                    sVar.l("type", 502);
                                    sVar.m("name", ((KeyMapSelectBean) wVar2.f7974n).gn_name);
                                    sVar.k("isDesc", Boolean.valueOf(((KeyMapSelectBean) wVar2.f7974n).gn_type == 1));
                                    sVar.l("value", Integer.valueOf(((AppCompatSeekBar) wVar2.l).getProgress()));
                                    ((y8) wVar2.f7972k).k(sVar);
                                    wVar2.dismiss();
                                    break;
                            }
                        }
                    });
                    break;
                } catch (Exception unused) {
                    com.yunpan.appmanage.util.a0.u("此设备无法使用此功能");
                    dismiss();
                    return;
                }
            case 1:
                super.onCreate(bundle);
                TextView textView = (TextView) findViewById(R.id.v_title);
                x9.n5 n5Var = (x9.n5) this.f7972k;
                int i12 = n5Var.f18290a;
                if (i12 == 4) {
                    textView.setText("FTP");
                } else if (i12 == 5) {
                    textView.setText("FTPS");
                }
                EditText editText = (EditText) findViewById(R.id.v_edit_ip);
                this.f7973m = editText;
                editText.requestFocus();
                this.f7974n = (EditText) findViewById(R.id.v_edit_port);
                this.f7975p = (EditText) findViewById(R.id.v_edit_user);
                this.f7976q = (EditText) findViewById(R.id.v_edit_password);
                this.f7969h = (TextView) findViewById(R.id.v_text_key);
                this.f7970i = (TextView) findViewById(R.id.v_btn_key);
                this.f7971j = (TextView) findViewById(R.id.v_btn_login);
                ((EditText) this.f7973m).setText(n5Var.f18292c);
                ((EditText) this.f7974n).setText(n5Var.f18293d + "");
                ((EditText) this.f7975p).setText(n5Var.f18294e);
                ((EditText) this.f7976q).setText(n5Var.f18295f);
                if (!n5Var.D.isEmpty()) {
                    this.f7969h.setText("密钥：" + new File(n5Var.D).getName());
                }
                this.f7970i.setOnClickListener(new androidx.leanback.widget.h0(3, this));
                this.f7971j.setOnClickListener(new g9(10, this));
                final int i13 = 0;
                this.f7971j.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.hc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ w f7170b;

                    {
                        this.f7170b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i14, KeyEvent keyEvent) {
                        switch (i13) {
                            case 0:
                                w wVar = this.f7170b;
                                wVar.getClass();
                                if (i14 != 19) {
                                    if (i14 != 21) {
                                        if (i14 != 22) {
                                            if (i14 == 20) {
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
                                    wVar.f7970i.requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                w wVar2 = this.f7170b;
                                wVar2.getClass();
                                if (keyEvent.getAction() == 0 && i14 == 20) {
                                    ((EditText) wVar2.f7974n).requestFocus();
                                    break;
                                } else if (i14 == 20 || i14 == 19) {
                                }
                                break;
                            case 2:
                                w wVar3 = this.f7170b;
                                wVar3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i14 != 20) {
                                        if (i14 == 19) {
                                            ((EditText) wVar3.f7973m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) wVar3.f7975p).requestFocus();
                                        break;
                                    }
                                }
                                if (i14 == 20 || i14 == 19) {
                                }
                                break;
                            case 3:
                                w wVar4 = this.f7170b;
                                wVar4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i14 != 20) {
                                        if (i14 == 19) {
                                            ((EditText) wVar4.f7974n).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) wVar4.f7976q).requestFocus();
                                        break;
                                    }
                                }
                                if (i14 == 20 || i14 == 19) {
                                }
                                break;
                            case 4:
                                w wVar5 = this.f7170b;
                                wVar5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i14 != 20) {
                                        if (i14 == 19) {
                                            ((EditText) wVar5.f7975p).requestFocus();
                                            break;
                                        }
                                    } else {
                                        wVar5.f7970i.requestFocus();
                                        break;
                                    }
                                }
                                if (i14 == 20 || i14 == 19) {
                                }
                                break;
                            default:
                                w wVar6 = this.f7170b;
                                wVar6.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i14 != 20) {
                                        if (i14 == 19) {
                                            ((EditText) wVar6.f7976q).requestFocus();
                                            break;
                                        }
                                    } else {
                                        wVar6.f7971j.requestFocus();
                                        break;
                                    }
                                }
                                if (i14 == 20 || i14 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                final int i14 = 1;
                ((EditText) this.f7973m).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.hc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ w f7170b;

                    {
                        this.f7170b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i142, KeyEvent keyEvent) {
                        switch (i14) {
                            case 0:
                                w wVar = this.f7170b;
                                wVar.getClass();
                                if (i142 != 19) {
                                    if (i142 != 21) {
                                        if (i142 != 22) {
                                            if (i142 == 20) {
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
                                    wVar.f7970i.requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                w wVar2 = this.f7170b;
                                wVar2.getClass();
                                if (keyEvent.getAction() == 0 && i142 == 20) {
                                    ((EditText) wVar2.f7974n).requestFocus();
                                    break;
                                } else if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            case 2:
                                w wVar3 = this.f7170b;
                                wVar3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar3.f7973m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) wVar3.f7975p).requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            case 3:
                                w wVar4 = this.f7170b;
                                wVar4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar4.f7974n).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) wVar4.f7976q).requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            case 4:
                                w wVar5 = this.f7170b;
                                wVar5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar5.f7975p).requestFocus();
                                            break;
                                        }
                                    } else {
                                        wVar5.f7970i.requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            default:
                                w wVar6 = this.f7170b;
                                wVar6.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar6.f7976q).requestFocus();
                                            break;
                                        }
                                    } else {
                                        wVar6.f7971j.requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                final int i15 = 2;
                ((EditText) this.f7974n).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.hc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ w f7170b;

                    {
                        this.f7170b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i142, KeyEvent keyEvent) {
                        switch (i15) {
                            case 0:
                                w wVar = this.f7170b;
                                wVar.getClass();
                                if (i142 != 19) {
                                    if (i142 != 21) {
                                        if (i142 != 22) {
                                            if (i142 == 20) {
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
                                    wVar.f7970i.requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                w wVar2 = this.f7170b;
                                wVar2.getClass();
                                if (keyEvent.getAction() == 0 && i142 == 20) {
                                    ((EditText) wVar2.f7974n).requestFocus();
                                    break;
                                } else if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            case 2:
                                w wVar3 = this.f7170b;
                                wVar3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar3.f7973m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) wVar3.f7975p).requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            case 3:
                                w wVar4 = this.f7170b;
                                wVar4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar4.f7974n).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) wVar4.f7976q).requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            case 4:
                                w wVar5 = this.f7170b;
                                wVar5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar5.f7975p).requestFocus();
                                            break;
                                        }
                                    } else {
                                        wVar5.f7970i.requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            default:
                                w wVar6 = this.f7170b;
                                wVar6.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar6.f7976q).requestFocus();
                                            break;
                                        }
                                    } else {
                                        wVar6.f7971j.requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                final int i16 = 3;
                ((EditText) this.f7975p).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.hc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ w f7170b;

                    {
                        this.f7170b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i142, KeyEvent keyEvent) {
                        switch (i16) {
                            case 0:
                                w wVar = this.f7170b;
                                wVar.getClass();
                                if (i142 != 19) {
                                    if (i142 != 21) {
                                        if (i142 != 22) {
                                            if (i142 == 20) {
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
                                    wVar.f7970i.requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                w wVar2 = this.f7170b;
                                wVar2.getClass();
                                if (keyEvent.getAction() == 0 && i142 == 20) {
                                    ((EditText) wVar2.f7974n).requestFocus();
                                    break;
                                } else if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            case 2:
                                w wVar3 = this.f7170b;
                                wVar3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar3.f7973m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) wVar3.f7975p).requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            case 3:
                                w wVar4 = this.f7170b;
                                wVar4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar4.f7974n).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) wVar4.f7976q).requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            case 4:
                                w wVar5 = this.f7170b;
                                wVar5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar5.f7975p).requestFocus();
                                            break;
                                        }
                                    } else {
                                        wVar5.f7970i.requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            default:
                                w wVar6 = this.f7170b;
                                wVar6.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar6.f7976q).requestFocus();
                                            break;
                                        }
                                    } else {
                                        wVar6.f7971j.requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                final int i17 = 4;
                ((EditText) this.f7976q).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.hc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ w f7170b;

                    {
                        this.f7170b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i142, KeyEvent keyEvent) {
                        switch (i17) {
                            case 0:
                                w wVar = this.f7170b;
                                wVar.getClass();
                                if (i142 != 19) {
                                    if (i142 != 21) {
                                        if (i142 != 22) {
                                            if (i142 == 20) {
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
                                    wVar.f7970i.requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                w wVar2 = this.f7170b;
                                wVar2.getClass();
                                if (keyEvent.getAction() == 0 && i142 == 20) {
                                    ((EditText) wVar2.f7974n).requestFocus();
                                    break;
                                } else if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            case 2:
                                w wVar3 = this.f7170b;
                                wVar3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar3.f7973m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) wVar3.f7975p).requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            case 3:
                                w wVar4 = this.f7170b;
                                wVar4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar4.f7974n).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) wVar4.f7976q).requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            case 4:
                                w wVar5 = this.f7170b;
                                wVar5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar5.f7975p).requestFocus();
                                            break;
                                        }
                                    } else {
                                        wVar5.f7970i.requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            default:
                                w wVar6 = this.f7170b;
                                wVar6.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar6.f7976q).requestFocus();
                                            break;
                                        }
                                    } else {
                                        wVar6.f7971j.requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                final int i18 = 5;
                this.f7970i.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.hc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ w f7170b;

                    {
                        this.f7170b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i142, KeyEvent keyEvent) {
                        switch (i18) {
                            case 0:
                                w wVar = this.f7170b;
                                wVar.getClass();
                                if (i142 != 19) {
                                    if (i142 != 21) {
                                        if (i142 != 22) {
                                            if (i142 == 20) {
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
                                    wVar.f7970i.requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                w wVar2 = this.f7170b;
                                wVar2.getClass();
                                if (keyEvent.getAction() == 0 && i142 == 20) {
                                    ((EditText) wVar2.f7974n).requestFocus();
                                    break;
                                } else if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            case 2:
                                w wVar3 = this.f7170b;
                                wVar3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar3.f7973m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) wVar3.f7975p).requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            case 3:
                                w wVar4 = this.f7170b;
                                wVar4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar4.f7974n).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) wVar4.f7976q).requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            case 4:
                                w wVar5 = this.f7170b;
                                wVar5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar5.f7975p).requestFocus();
                                            break;
                                        }
                                    } else {
                                        wVar5.f7970i.requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                            default:
                                w wVar6 = this.f7170b;
                                wVar6.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i142 != 20) {
                                        if (i142 == 19) {
                                            ((EditText) wVar6.f7976q).requestFocus();
                                            break;
                                        }
                                    } else {
                                        wVar6.f7971j.requestFocus();
                                        break;
                                    }
                                }
                                if (i142 == 20 || i142 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                break;
            default:
                super.onCreate(bundle);
                this.f7969h = (TextView) findViewById(R.id.v_file_name);
                this.f7970i = (TextView) findViewById(R.id.v_file_size);
                this.f7973m = (MyProgressViewTest) findViewById(R.id.v_progress);
                this.f7971j = (TextView) findViewById(R.id.v_progress_text);
                TextView textView2 = (TextView) findViewById(R.id.v_btn_down);
                this.f7974n = textView2;
                textView2.setOnClickListener(new g9(18, this));
                break;
        }
    }

    public w(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_wp_down);
    }

    public w(Activity activity, Context context, x9.n5 n5Var, ic icVar) {
        super(activity, context, R.layout.dialog_login_sftp);
        this.l = icVar;
        this.f7972k = n5Var;
    }
}
