package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class d2 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f6880g = 2;

    /* renamed from: h, reason: collision with root package name */
    public Object f6881h;

    /* renamed from: i, reason: collision with root package name */
    public Object f6882i;

    /* renamed from: j, reason: collision with root package name */
    public Object f6883j;

    public d2(Activity activity, Context context, String str, u1 u1Var) {
        super(activity, context, R.layout.dialog_add_voice_log_set);
        this.f6882i = u1Var;
        this.f6881h = str;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        switch (this.f6880g) {
            case 0:
                super.onCreate(bundle);
                EditText editText = (EditText) findViewById(R.id.v_edit_map);
                this.f6883j = editText;
                editText.setText((String) this.f6881h);
                findViewById(R.id.v_btn_yes).setOnClickListener(new com.google.android.material.datepicker.l(this, 6));
                break;
            case 1:
                super.onCreate(bundle);
                final ArrayList arrayList = new ArrayList();
                arrayList.add(new KeyMapSelectBean("长按", 0));
                KeyMapSelectBean keyMapSelectBean = new KeyMapSelectBean("单击", 1);
                this.f6882i = keyMapSelectBean;
                arrayList.add(keyMapSelectBean);
                arrayList.add(new KeyMapSelectBean("双击", 2));
                arrayList.add(new KeyMapSelectBean("三击", 3));
                final TextView textView = (TextView) findViewById(R.id.v_type_name);
                textView.setText(((KeyMapSelectBean) this.f6882i).gn_name);
                final int i10 = 1;
                findViewById(R.id.v_type).setOnClickListener(new View.OnClickListener(this) { // from class: ha.a7

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ d2 f6732b;

                    {
                        this.f6732b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i10) {
                            case 0:
                                final d2 d2Var = this.f6732b;
                                d2Var.getClass();
                                final ArrayList arrayList2 = arrayList;
                                final TextView textView2 = textView;
                                final int i11 = 0;
                                new ie(d2Var.f6724a, d2Var.f6725b, arrayList2, new he() { // from class: ha.c7
                                    @Override // ha.he, ha.ea
                                    public final void b(int i12) {
                                        switch (i11) {
                                            case 0:
                                                d2 d2Var2 = d2Var;
                                                d2Var2.getClass();
                                                KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList2.get(i12);
                                                d2Var2.f6883j = keyMapSelectBean2;
                                                textView2.setText(keyMapSelectBean2.gn_name);
                                                break;
                                            default:
                                                d2 d2Var3 = d2Var;
                                                d2Var3.getClass();
                                                KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList2.get(i12);
                                                d2Var3.f6882i = keyMapSelectBean3;
                                                textView2.setText(keyMapSelectBean3.gn_name);
                                                break;
                                        }
                                    }
                                }).show();
                                break;
                            default:
                                final d2 d2Var2 = this.f6732b;
                                d2Var2.getClass();
                                final ArrayList arrayList3 = arrayList;
                                final TextView textView3 = textView;
                                final int i12 = 1;
                                new ie(d2Var2.f6724a, d2Var2.f6725b, arrayList3, new he() { // from class: ha.c7
                                    @Override // ha.he, ha.ea
                                    public final void b(int i122) {
                                        switch (i12) {
                                            case 0:
                                                d2 d2Var22 = d2Var2;
                                                d2Var22.getClass();
                                                KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList3.get(i122);
                                                d2Var22.f6883j = keyMapSelectBean2;
                                                textView3.setText(keyMapSelectBean2.gn_name);
                                                break;
                                            default:
                                                d2 d2Var3 = d2Var2;
                                                d2Var3.getClass();
                                                KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList3.get(i122);
                                                d2Var3.f6882i = keyMapSelectBean3;
                                                textView3.setText(keyMapSelectBean3.gn_name);
                                                break;
                                        }
                                    }
                                }).show();
                                break;
                        }
                    }
                });
                final ArrayList arrayList2 = new ArrayList();
                KeyMapSelectBean keyMapSelectBean2 = new KeyMapSelectBean("方法一", 1);
                this.f6883j = keyMapSelectBean2;
                arrayList2.add(keyMapSelectBean2);
                arrayList2.add(new KeyMapSelectBean("方法二", 2));
                final TextView textView2 = (TextView) findViewById(R.id.v_api_name);
                textView2.setText(((KeyMapSelectBean) this.f6883j).gn_name);
                final int i11 = 0;
                findViewById(R.id.v_api).setOnClickListener(new View.OnClickListener(this) { // from class: ha.a7

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ d2 f6732b;

                    {
                        this.f6732b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i11) {
                            case 0:
                                final d2 d2Var = this.f6732b;
                                d2Var.getClass();
                                final ArrayList arrayList22 = arrayList2;
                                final TextView textView22 = textView2;
                                final int i112 = 0;
                                new ie(d2Var.f6724a, d2Var.f6725b, arrayList22, new he() { // from class: ha.c7
                                    @Override // ha.he, ha.ea
                                    public final void b(int i122) {
                                        switch (i112) {
                                            case 0:
                                                d2 d2Var22 = d2Var;
                                                d2Var22.getClass();
                                                KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList22.get(i122);
                                                d2Var22.f6883j = keyMapSelectBean22;
                                                textView22.setText(keyMapSelectBean22.gn_name);
                                                break;
                                            default:
                                                d2 d2Var3 = d2Var;
                                                d2Var3.getClass();
                                                KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList22.get(i122);
                                                d2Var3.f6882i = keyMapSelectBean3;
                                                textView22.setText(keyMapSelectBean3.gn_name);
                                                break;
                                        }
                                    }
                                }).show();
                                break;
                            default:
                                final d2 d2Var2 = this.f6732b;
                                d2Var2.getClass();
                                final ArrayList arrayList3 = arrayList2;
                                final TextView textView3 = textView2;
                                final int i12 = 1;
                                new ie(d2Var2.f6724a, d2Var2.f6725b, arrayList3, new he() { // from class: ha.c7
                                    @Override // ha.he, ha.ea
                                    public final void b(int i122) {
                                        switch (i12) {
                                            case 0:
                                                d2 d2Var22 = d2Var2;
                                                d2Var22.getClass();
                                                KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList3.get(i122);
                                                d2Var22.f6883j = keyMapSelectBean22;
                                                textView3.setText(keyMapSelectBean22.gn_name);
                                                break;
                                            default:
                                                d2 d2Var3 = d2Var2;
                                                d2Var3.getClass();
                                                KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList3.get(i122);
                                                d2Var3.f6882i = keyMapSelectBean3;
                                                textView3.setText(keyMapSelectBean3.gn_name);
                                                break;
                                        }
                                    }
                                }).show();
                                break;
                        }
                    }
                });
                TextView textView3 = (TextView) findViewById(R.id.v_btn_select);
                TextView textView4 = (TextView) findViewById(R.id.v_btn);
                final EditText editText2 = (EditText) findViewById(R.id.v_edit);
                editText2.setOnKeyListener(new x6(textView4, 1));
                final int i12 = 0;
                textView4.setOnClickListener(new View.OnClickListener(this) { // from class: ha.b7

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ d2 f6803b;

                    {
                        this.f6803b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) throws NumberFormatException {
                        switch (i12) {
                            case 0:
                                d2 d2Var = this.f6803b;
                                d2Var.getClass();
                                String strTrim = editText2.getText().toString().trim();
                                if (strTrim.isEmpty()) {
                                    com.yunpan.appmanage.util.a0.u("不能为空");
                                    break;
                                } else {
                                    try {
                                        ((m8) d2Var.f6881h).e((KeyMapSelectBean) d2Var.f6883j, Integer.parseInt(strTrim), (KeyMapSelectBean) d2Var.f6882i);
                                        d2Var.dismiss();
                                        break;
                                    } catch (Exception unused) {
                                        com.yunpan.appmanage.util.a0.u("请输入正确的键码");
                                        return;
                                    }
                                }
                            default:
                                d2 d2Var2 = this.f6803b;
                                d2Var2.getClass();
                                new yb(d2Var2.f6724a, d2Var2.f6725b, new d7(0, editText2)).show();
                                break;
                        }
                    }
                });
                final int i13 = 1;
                textView3.setOnClickListener(new View.OnClickListener(this) { // from class: ha.b7

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ d2 f6803b;

                    {
                        this.f6803b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) throws NumberFormatException {
                        switch (i13) {
                            case 0:
                                d2 d2Var = this.f6803b;
                                d2Var.getClass();
                                String strTrim = editText2.getText().toString().trim();
                                if (strTrim.isEmpty()) {
                                    com.yunpan.appmanage.util.a0.u("不能为空");
                                    break;
                                } else {
                                    try {
                                        ((m8) d2Var.f6881h).e((KeyMapSelectBean) d2Var.f6883j, Integer.parseInt(strTrim), (KeyMapSelectBean) d2Var.f6882i);
                                        d2Var.dismiss();
                                        break;
                                    } catch (Exception unused) {
                                        com.yunpan.appmanage.util.a0.u("请输入正确的键码");
                                        return;
                                    }
                                }
                            default:
                                d2 d2Var2 = this.f6803b;
                                d2Var2.getClass();
                                new yb(d2Var2.f6724a, d2Var2.f6725b, new d7(0, editText2)).show();
                                break;
                        }
                    }
                });
                break;
            case 2:
                super.onCreate(bundle);
                this.f6883j = (EditText) findViewById(R.id.v_cmd);
                this.f6882i = (EditText) findViewById(R.id.v_out);
                TextView textView5 = (TextView) findViewById(R.id.v_btn_yes);
                this.f6881h = textView5;
                final int i14 = 0;
                textView5.setOnClickListener(new View.OnClickListener(this) { // from class: ha.ua

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ d2 f7873b;

                    {
                        this.f7873b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i14) {
                            case 0:
                                d2 d2Var = this.f7873b;
                                if (((TextView) d2Var.f6881h).getText().toString().equals("执行")) {
                                    StringBuffer stringBuffer = new StringBuffer();
                                    new mc.c(0, new d2.w(d2Var, 21, stringBuffer)).d(rc.f.f13757b).a(fc.b.a()).b(new h3(d2Var, 7, stringBuffer));
                                    break;
                                }
                                break;
                            case 1:
                                this.f7873b.dismiss();
                                break;
                            case 2:
                                ((EditText) this.f7873b.f6883j).setText("");
                                break;
                            default:
                                ((EditText) this.f7873b.f6883j).setText("");
                                break;
                        }
                    }
                });
                final int i15 = 1;
                findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ha.ua

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ d2 f7873b;

                    {
                        this.f7873b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i15) {
                            case 0:
                                d2 d2Var = this.f7873b;
                                if (((TextView) d2Var.f6881h).getText().toString().equals("执行")) {
                                    StringBuffer stringBuffer = new StringBuffer();
                                    new mc.c(0, new d2.w(d2Var, 21, stringBuffer)).d(rc.f.f13757b).a(fc.b.a()).b(new h3(d2Var, 7, stringBuffer));
                                    break;
                                }
                                break;
                            case 1:
                                this.f7873b.dismiss();
                                break;
                            case 2:
                                ((EditText) this.f7873b.f6883j).setText("");
                                break;
                            default:
                                ((EditText) this.f7873b.f6883j).setText("");
                                break;
                        }
                    }
                });
                final int i16 = 2;
                findViewById(R.id.v_btn_delete).setOnClickListener(new View.OnClickListener(this) { // from class: ha.ua

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ d2 f7873b;

                    {
                        this.f7873b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i16) {
                            case 0:
                                d2 d2Var = this.f7873b;
                                if (((TextView) d2Var.f6881h).getText().toString().equals("执行")) {
                                    StringBuffer stringBuffer = new StringBuffer();
                                    new mc.c(0, new d2.w(d2Var, 21, stringBuffer)).d(rc.f.f13757b).a(fc.b.a()).b(new h3(d2Var, 7, stringBuffer));
                                    break;
                                }
                                break;
                            case 1:
                                this.f7873b.dismiss();
                                break;
                            case 2:
                                ((EditText) this.f7873b.f6883j).setText("");
                                break;
                            default:
                                ((EditText) this.f7873b.f6883j).setText("");
                                break;
                        }
                    }
                });
                final int i17 = 3;
                findViewById(R.id.v_btn_past).setOnClickListener(new View.OnClickListener(this) { // from class: ha.ua

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ d2 f7873b;

                    {
                        this.f7873b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i17) {
                            case 0:
                                d2 d2Var = this.f7873b;
                                if (((TextView) d2Var.f6881h).getText().toString().equals("执行")) {
                                    StringBuffer stringBuffer = new StringBuffer();
                                    new mc.c(0, new d2.w(d2Var, 21, stringBuffer)).d(rc.f.f13757b).a(fc.b.a()).b(new h3(d2Var, 7, stringBuffer));
                                    break;
                                }
                                break;
                            case 1:
                                this.f7873b.dismiss();
                                break;
                            case 2:
                                ((EditText) this.f7873b.f6883j).setText("");
                                break;
                            default:
                                ((EditText) this.f7873b.f6883j).setText("");
                                break;
                        }
                    }
                });
                break;
            default:
                super.onCreate(bundle);
                final TextView textView6 = (TextView) findViewById(R.id.v_ts1);
                final TextView textView7 = (TextView) findViewById(R.id.v_ts2);
                TextView textView8 = (TextView) findViewById(R.id.v_btn_select1);
                TextView textView9 = (TextView) findViewById(R.id.v_btn_select2);
                final int i18 = 0;
                textView8.setOnClickListener(new View.OnClickListener(this) { // from class: ha.rc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ d2 f7707b;

                    {
                        this.f7707b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i18) {
                            case 0:
                                final d2 d2Var = this.f7707b;
                                d2Var.getClass();
                                final TextView textView10 = textView6;
                                final int i19 = 1;
                                new r0(d2Var.f6724a, d2Var.f6725b, 1, new q0() { // from class: ha.sc
                                    @Override // ha.q0
                                    public final void d(String str, String str2, String str3) {
                                        switch (i19) {
                                            case 0:
                                                d2Var.f6883j = str2;
                                                textView10.setText(da.b.c("应用二：", str));
                                                break;
                                            default:
                                                d2Var.f6881h = str2;
                                                textView10.setText(da.b.c("应用一：", str));
                                                break;
                                        }
                                    }
                                }).show();
                                break;
                            default:
                                final d2 d2Var2 = this.f7707b;
                                d2Var2.getClass();
                                final TextView textView11 = textView6;
                                final int i20 = 0;
                                new r0(d2Var2.f6724a, d2Var2.f6725b, 1, new q0() { // from class: ha.sc
                                    @Override // ha.q0
                                    public final void d(String str, String str2, String str3) {
                                        switch (i20) {
                                            case 0:
                                                d2Var2.f6883j = str2;
                                                textView11.setText(da.b.c("应用二：", str));
                                                break;
                                            default:
                                                d2Var2.f6881h = str2;
                                                textView11.setText(da.b.c("应用一：", str));
                                                break;
                                        }
                                    }
                                }).show();
                                break;
                        }
                    }
                });
                final int i19 = 1;
                textView9.setOnClickListener(new View.OnClickListener(this) { // from class: ha.rc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ d2 f7707b;

                    {
                        this.f7707b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i19) {
                            case 0:
                                final d2 d2Var = this.f7707b;
                                d2Var.getClass();
                                final TextView textView10 = textView7;
                                final int i192 = 1;
                                new r0(d2Var.f6724a, d2Var.f6725b, 1, new q0() { // from class: ha.sc
                                    @Override // ha.q0
                                    public final void d(String str, String str2, String str3) {
                                        switch (i192) {
                                            case 0:
                                                d2Var.f6883j = str2;
                                                textView10.setText(da.b.c("应用二：", str));
                                                break;
                                            default:
                                                d2Var.f6881h = str2;
                                                textView10.setText(da.b.c("应用一：", str));
                                                break;
                                        }
                                    }
                                }).show();
                                break;
                            default:
                                final d2 d2Var2 = this.f7707b;
                                d2Var2.getClass();
                                final TextView textView11 = textView7;
                                final int i20 = 0;
                                new r0(d2Var2.f6724a, d2Var2.f6725b, 1, new q0() { // from class: ha.sc
                                    @Override // ha.q0
                                    public final void d(String str, String str2, String str3) {
                                        switch (i20) {
                                            case 0:
                                                d2Var2.f6883j = str2;
                                                textView11.setText(da.b.c("应用二：", str));
                                                break;
                                            default:
                                                d2Var2.f6881h = str2;
                                                textView11.setText(da.b.c("应用一：", str));
                                                break;
                                        }
                                    }
                                }).show();
                                break;
                        }
                    }
                });
                findViewById(R.id.v_btn_yes).setOnClickListener(new g9(14, this));
                break;
        }
    }

    public d2(Activity activity, Context context, h8 h8Var) {
        super(activity, context, R.layout.dialog_split_screen_selete_app);
        this.f6881h = "";
        this.f6883j = "";
        this.f6882i = h8Var;
    }

    public d2(Activity activity, Context context, m8 m8Var) {
        super(activity, context, R.layout.dialog_input_keycode_and_api);
        this.f6881h = m8Var;
    }

    public d2(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_otg_shell, false);
    }
}
