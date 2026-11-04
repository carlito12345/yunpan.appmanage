package ha;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.R;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class o1 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f7500g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f7501h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o1(Activity activity, Context context, Object obj, int i10) {
        super(activity, context, R.layout.dialog_input_time);
        this.f7500g = i10;
        this.f7501h = obj;
    }

    public void a(TextView textView, boolean z) {
        ArrayList arrayList = new ArrayList();
        int i10 = z ? 24 : 60;
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(String.valueOf(i11));
        }
        new fa(this.f6724a, this.f6725b, null, arrayList, new t1(textView, arrayList)).show();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        switch (this.f7500g) {
            case 3:
                try {
                    v8.b.c(String.valueOf(607));
                } catch (Exception unused) {
                }
                super.dismiss();
                break;
            default:
                super.dismiss();
                break;
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) throws PackageManager.NameNotFoundException {
        int i10 = 26;
        int i11 = 10;
        final int i12 = 3;
        final int i13 = 0;
        final int i14 = 1;
        switch (this.f7500g) {
            case 0:
                final int i15 = 0;
                super.onCreate(bundle);
                final ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_zhk1);
                final TextView textView = (TextView) findViewById(R.id.v_zhk1_name);
                ConstraintLayout constraintLayout2 = (ConstraintLayout) findViewById(R.id.v_zhk2);
                final TextView textView2 = (TextView) findViewById(R.id.v_zhk2_name);
                TextView textView3 = (TextView) findViewById(R.id.v_btn_yes);
                final EditText editText = (EditText) findViewById(R.id.v_edit_value);
                EditText editText2 = (EditText) findViewById(R.id.v_edit_key);
                editText2.setOnKeyListener(new View.OnKeyListener() { // from class: ha.i1
                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i16, KeyEvent keyEvent) {
                        switch (i15) {
                            case 0:
                                if (i16 != 20) {
                                    if (i16 == 19) {
                                        constraintLayout.requestFocus();
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    editText.requestFocus();
                                    break;
                                }
                                break;
                            default:
                                if (i16 != 20) {
                                    if (i16 == 19) {
                                        constraintLayout.requestFocus();
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    editText.requestFocus();
                                    break;
                                }
                                break;
                        }
                        return true;
                    }
                });
                editText.setOnKeyListener(new j1(textView3, editText2, 0));
                textView3.setOnClickListener(new k1(this, editText2, editText, textView, textView2));
                final ArrayList arrayList = new ArrayList();
                arrayList.add("System");
                arrayList.add("Secure");
                arrayList.add("Global");
                constraintLayout.setOnClickListener(new View.OnClickListener(this) { // from class: ha.l1

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ o1 f7344b;

                    {
                        this.f7344b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i15) {
                            case 0:
                                o1 o1Var = this.f7344b;
                                o1Var.getClass();
                                ArrayList arrayList2 = arrayList;
                                m1 m1Var = new m1(textView, arrayList2, 0);
                                new fa(o1Var.f6724a, o1Var.f6725b, null, arrayList2, m1Var).show();
                                break;
                            default:
                                o1 o1Var2 = this.f7344b;
                                o1Var2.getClass();
                                ArrayList arrayList3 = arrayList;
                                m1 m1Var2 = new m1(textView, arrayList3, 1);
                                new fa(o1Var2.f6724a, o1Var2.f6725b, null, arrayList3, m1Var2).show();
                                break;
                        }
                    }
                });
                final ArrayList arrayList2 = new ArrayList();
                arrayList2.add("int");
                arrayList2.add("long");
                arrayList2.add("string");
                arrayList2.add("float");
                final int i16 = 1;
                constraintLayout2.setOnClickListener(new View.OnClickListener(this) { // from class: ha.l1

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ o1 f7344b;

                    {
                        this.f7344b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i16) {
                            case 0:
                                o1 o1Var = this.f7344b;
                                o1Var.getClass();
                                ArrayList arrayList22 = arrayList2;
                                m1 m1Var = new m1(textView2, arrayList22, 0);
                                new fa(o1Var.f6724a, o1Var.f6725b, null, arrayList22, m1Var).show();
                                break;
                            default:
                                o1 o1Var2 = this.f7344b;
                                o1Var2.getClass();
                                ArrayList arrayList3 = arrayList2;
                                m1 m1Var2 = new m1(textView2, arrayList3, 1);
                                new fa(o1Var2.f6724a, o1Var2.f6725b, null, arrayList3, m1Var2).show();
                                break;
                        }
                    }
                });
                break;
            case 1:
                super.onCreate(bundle);
                final ConstraintLayout constraintLayout3 = (ConstraintLayout) findViewById(R.id.v_zhk1);
                final TextView textView4 = (TextView) findViewById(R.id.v_zhk1_name);
                ConstraintLayout constraintLayout4 = (ConstraintLayout) findViewById(R.id.v_zhk2);
                final TextView textView5 = (TextView) findViewById(R.id.v_zhk2_name);
                TextView textView6 = (TextView) findViewById(R.id.v_btn_yes);
                final EditText editText3 = (EditText) findViewById(R.id.v_edit_value);
                final EditText editText4 = (EditText) findViewById(R.id.v_edit_key);
                final EditText editText5 = (EditText) findViewById(R.id.v_edit_value_if);
                final EditText editText6 = (EditText) findViewById(R.id.v_edit_value_else);
                editText4.setOnKeyListener(new View.OnKeyListener() { // from class: ha.i1
                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i162, KeyEvent keyEvent) {
                        switch (i14) {
                            case 0:
                                if (i162 != 20) {
                                    if (i162 == 19) {
                                        constraintLayout3.requestFocus();
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    editText3.requestFocus();
                                    break;
                                }
                                break;
                            default:
                                if (i162 != 20) {
                                    if (i162 == 19) {
                                        constraintLayout3.requestFocus();
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    editText3.requestFocus();
                                    break;
                                }
                                break;
                        }
                        return true;
                    }
                });
                editText3.setOnKeyListener(new View.OnKeyListener() { // from class: ha.p1
                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i17, KeyEvent keyEvent) {
                        switch (i13) {
                            case 0:
                                if (i17 != 20) {
                                    if (i17 == 19) {
                                        editText4.requestFocus();
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    editText5.requestFocus();
                                    break;
                                }
                                break;
                            default:
                                if (i17 != 20) {
                                    if (i17 == 19) {
                                        editText4.requestFocus();
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    editText5.requestFocus();
                                    break;
                                }
                                break;
                        }
                        return true;
                    }
                });
                editText5.setOnKeyListener(new View.OnKeyListener() { // from class: ha.p1
                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i17, KeyEvent keyEvent) {
                        switch (i14) {
                            case 0:
                                if (i17 != 20) {
                                    if (i17 == 19) {
                                        editText3.requestFocus();
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    editText6.requestFocus();
                                    break;
                                }
                                break;
                            default:
                                if (i17 != 20) {
                                    if (i17 == 19) {
                                        editText3.requestFocus();
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    editText6.requestFocus();
                                    break;
                                }
                                break;
                        }
                        return true;
                    }
                });
                editText6.setOnKeyListener(new j1(textView6, editText5, 1));
                final int i17 = 0;
                textView6.setOnClickListener(new View.OnClickListener() { // from class: ha.q1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        o1 o1Var = this.f7594a;
                        o1Var.getClass();
                        String strF = g.b.f(editText4);
                        if (strF.isEmpty()) {
                            com.yunpan.appmanage.util.a0.u("key不能为空");
                            return;
                        }
                        String strF2 = g.b.f(editText3);
                        if (strF2.isEmpty()) {
                            com.yunpan.appmanage.util.a0.u("value不能为空");
                            return;
                        }
                        String strF3 = g.b.f(editText5);
                        if (strF3.isEmpty()) {
                            com.yunpan.appmanage.util.a0.u("value不能为空");
                            return;
                        }
                        String strF4 = g.b.f(editText6);
                        if (strF4.isEmpty()) {
                            com.yunpan.appmanage.util.a0.u("value不能为空");
                            return;
                        }
                        String string = textView4.getText().toString();
                        String string2 = textView5.getText().toString();
                        e8 e8Var = (e8) o1Var.f7501h;
                        int i18 = e8Var.f6963b;
                        int i19 = e8Var.f6964c;
                        ea.e eVar = (ea.e) e8Var.f6965d;
                        try {
                            z7.s sVar = new z7.s();
                            sVar.l("keyType", Integer.valueOf(i18));
                            sVar.l("gnType", Integer.valueOf(i19));
                            sVar.m("name", "settings put " + string + " if(" + strF + "!=" + strF2 + "){" + strF + "=" + strF3 + "}else{" + strF + "=" + strF4 + "}");
                            sVar.m("type1", string);
                            sVar.m("type2", string2);
                            sVar.m("key", strF);
                            sVar.m("value", strF2);
                            sVar.m("value_if", strF3);
                            sVar.m("value_else", strF4);
                            eVar.k(sVar);
                        } catch (Exception unused) {
                        }
                        o1Var.dismiss();
                    }
                });
                final ArrayList arrayList3 = new ArrayList();
                arrayList3.add("System");
                arrayList3.add("Secure");
                arrayList3.add("Global");
                constraintLayout3.setOnClickListener(new View.OnClickListener(this) { // from class: ha.r1

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ o1 f7656b;

                    {
                        this.f7656b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i17) {
                            case 0:
                                o1 o1Var = this.f7656b;
                                o1Var.getClass();
                                ArrayList arrayList4 = arrayList3;
                                m1 m1Var = new m1(textView4, arrayList4, 2);
                                new fa(o1Var.f6724a, o1Var.f6725b, null, arrayList4, m1Var).show();
                                break;
                            default:
                                o1 o1Var2 = this.f7656b;
                                o1Var2.getClass();
                                ArrayList arrayList5 = arrayList3;
                                m1 m1Var2 = new m1(textView4, arrayList5, 3);
                                new fa(o1Var2.f6724a, o1Var2.f6725b, null, arrayList5, m1Var2).show();
                                break;
                        }
                    }
                });
                final ArrayList arrayList4 = new ArrayList();
                arrayList4.add("int");
                arrayList4.add("long");
                arrayList4.add("string");
                arrayList4.add("float");
                final int i18 = 1;
                constraintLayout4.setOnClickListener(new View.OnClickListener(this) { // from class: ha.r1

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ o1 f7656b;

                    {
                        this.f7656b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i18) {
                            case 0:
                                o1 o1Var = this.f7656b;
                                o1Var.getClass();
                                ArrayList arrayList42 = arrayList4;
                                m1 m1Var = new m1(textView5, arrayList42, 2);
                                new fa(o1Var.f6724a, o1Var.f6725b, null, arrayList42, m1Var).show();
                                break;
                            default:
                                o1 o1Var2 = this.f7656b;
                                o1Var2.getClass();
                                ArrayList arrayList5 = arrayList4;
                                m1 m1Var2 = new m1(textView5, arrayList5, 3);
                                new fa(o1Var2.f6724a, o1Var2.f6725b, null, arrayList5, m1Var2).show();
                                break;
                        }
                    }
                });
                break;
            case 2:
                super.onCreate(bundle);
                final TextView textView7 = (TextView) findViewById(R.id.v_start_h_name);
                findViewById(R.id.v_start_h).setOnClickListener(new View.OnClickListener(this) { // from class: ha.s1

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ o1 f7722b;

                    {
                        this.f7722b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i13) {
                            case 0:
                                this.f7722b.a(textView7, true);
                                break;
                            case 1:
                                this.f7722b.a(textView7, false);
                                break;
                            case 2:
                                this.f7722b.a(textView7, true);
                                break;
                            default:
                                this.f7722b.a(textView7, false);
                                break;
                        }
                    }
                });
                final TextView textView8 = (TextView) findViewById(R.id.v_start_m_name);
                findViewById(R.id.v_start_m).setOnClickListener(new View.OnClickListener(this) { // from class: ha.s1

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ o1 f7722b;

                    {
                        this.f7722b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i14) {
                            case 0:
                                this.f7722b.a(textView8, true);
                                break;
                            case 1:
                                this.f7722b.a(textView8, false);
                                break;
                            case 2:
                                this.f7722b.a(textView8, true);
                                break;
                            default:
                                this.f7722b.a(textView8, false);
                                break;
                        }
                    }
                });
                final TextView textView9 = (TextView) findViewById(R.id.v_end_h_name);
                final int i19 = 2;
                findViewById(R.id.v_end_h).setOnClickListener(new View.OnClickListener(this) { // from class: ha.s1

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ o1 f7722b;

                    {
                        this.f7722b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i19) {
                            case 0:
                                this.f7722b.a(textView9, true);
                                break;
                            case 1:
                                this.f7722b.a(textView9, false);
                                break;
                            case 2:
                                this.f7722b.a(textView9, true);
                                break;
                            default:
                                this.f7722b.a(textView9, false);
                                break;
                        }
                    }
                });
                final TextView textView10 = (TextView) findViewById(R.id.v_end_m_name);
                findViewById(R.id.v_end_m).setOnClickListener(new View.OnClickListener(this) { // from class: ha.s1

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ o1 f7722b;

                    {
                        this.f7722b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i12) {
                            case 0:
                                this.f7722b.a(textView10, true);
                                break;
                            case 1:
                                this.f7722b.a(textView10, false);
                                break;
                            case 2:
                                this.f7722b.a(textView10, true);
                                break;
                            default:
                                this.f7722b.a(textView10, false);
                                break;
                        }
                    }
                });
                findViewById(R.id.v_btn_yes).setOnClickListener(new k1(this, textView7, textView9, textView8, textView10));
                break;
            case 3:
                super.onCreate(bundle);
                final AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) findViewById(R.id.v_seek_size);
                if (Build.VERSION.SDK_INT >= 26) {
                    appCompatSeekBar.setMin(6);
                }
                appCompatSeekBar.setMax(50);
                appCompatSeekBar.setProgress(20);
                TextView textView11 = (TextView) findViewById(R.id.v_btn1);
                final EditText editText7 = (EditText) findViewById(R.id.v_content);
                final EditText editText8 = (EditText) findViewById(R.id.v_time);
                editText7.setOnKeyListener(new e2(editText8, appCompatSeekBar, i13));
                editText8.setOnKeyListener(new j1(textView11, editText7, 2));
                final int i20 = 0;
                textView11.setOnClickListener(new View.OnClickListener(this) { // from class: ha.f2

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ o1 f7011b;

                    {
                        this.f7011b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i20) {
                            case 0:
                                o1 o1Var = this.f7011b;
                                o1Var.getClass();
                                String string = editText7.getText().toString();
                                if (!string.isEmpty()) {
                                    int i21 = Integer.parseInt(editText8.getText().toString()) * 1000;
                                    if (i21 <= 30000) {
                                        if (i21 < 1000) {
                                            i21 = string.length() > 100 ? 15000 : string.length() > 50 ? 8000 : string.length() > 20 ? 4000 : NoConst.MIN_HEARTBEAT_INTERVAL;
                                        }
                                        int progress = appCompatSeekBar.getProgress();
                                        m8 m8Var = (m8) o1Var.f7501h;
                                        z7.s sVar = m8Var.f7427b;
                                        String str = m8Var.f7428c;
                                        ea.e eVar = m8Var.f7429d;
                                        try {
                                            sVar.m("name", str + "：" + string);
                                            sVar.l("size", Integer.valueOf(progress));
                                            sVar.l("time", Integer.valueOf(i21));
                                            sVar.m("str1", string);
                                            eVar.k(sVar);
                                        } catch (Exception unused) {
                                        }
                                        o1Var.dismiss();
                                        break;
                                    } else {
                                        com.yunpan.appmanage.util.a0.u("疯啦？要显示这么久？");
                                        break;
                                    }
                                } else {
                                    com.yunpan.appmanage.util.a0.u("请输入要显示的消息内容");
                                    break;
                                }
                            default:
                                o1 o1Var2 = this.f7011b;
                                o1Var2.getClass();
                                String string2 = editText7.getText().toString();
                                if (!string2.isEmpty()) {
                                    int i22 = Integer.parseInt(editText8.getText().toString()) * 1000;
                                    if (i22 <= 30000) {
                                        if (i22 < 1000) {
                                            i22 = string2.length() > 100 ? 15000 : string2.length() > 50 ? 8000 : string2.length() > 20 ? 4000 : NoConst.MIN_HEARTBEAT_INTERVAL;
                                        }
                                        v8.b.c(String.valueOf(607));
                                        v8.a aVar = new v8.a(o1Var2.f6724a);
                                        aVar.f16661h = String.valueOf(607);
                                        aVar.j(R.layout.window_show_toast2);
                                        aVar.a(256);
                                        aVar.l(Build.VERSION.SDK_INT >= 28 ? 1 : 0);
                                        float progress2 = appCompatSeekBar.getProgress();
                                        v8.h hVar = aVar.f16656c;
                                        TextView textView12 = (TextView) (hVar == null ? null : hVar.findViewById(R.id.v_msg));
                                        if (textView12 != null) {
                                            textView12.setTextSize(2, progress2);
                                        }
                                        aVar.o(R.id.v_msg, string2);
                                        aVar.r(i22);
                                        aVar.t();
                                        break;
                                    } else {
                                        com.yunpan.appmanage.util.a0.u("疯啦？要显示这么久？");
                                        break;
                                    }
                                } else {
                                    com.yunpan.appmanage.util.a0.u("请输入要显示的消息内容");
                                    break;
                                }
                        }
                    }
                });
                final int i21 = 1;
                findViewById(R.id.v_btn2).setOnClickListener(new View.OnClickListener(this) { // from class: ha.f2

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ o1 f7011b;

                    {
                        this.f7011b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i21) {
                            case 0:
                                o1 o1Var = this.f7011b;
                                o1Var.getClass();
                                String string = editText7.getText().toString();
                                if (!string.isEmpty()) {
                                    int i212 = Integer.parseInt(editText8.getText().toString()) * 1000;
                                    if (i212 <= 30000) {
                                        if (i212 < 1000) {
                                            i212 = string.length() > 100 ? 15000 : string.length() > 50 ? 8000 : string.length() > 20 ? 4000 : NoConst.MIN_HEARTBEAT_INTERVAL;
                                        }
                                        int progress = appCompatSeekBar.getProgress();
                                        m8 m8Var = (m8) o1Var.f7501h;
                                        z7.s sVar = m8Var.f7427b;
                                        String str = m8Var.f7428c;
                                        ea.e eVar = m8Var.f7429d;
                                        try {
                                            sVar.m("name", str + "：" + string);
                                            sVar.l("size", Integer.valueOf(progress));
                                            sVar.l("time", Integer.valueOf(i212));
                                            sVar.m("str1", string);
                                            eVar.k(sVar);
                                        } catch (Exception unused) {
                                        }
                                        o1Var.dismiss();
                                        break;
                                    } else {
                                        com.yunpan.appmanage.util.a0.u("疯啦？要显示这么久？");
                                        break;
                                    }
                                } else {
                                    com.yunpan.appmanage.util.a0.u("请输入要显示的消息内容");
                                    break;
                                }
                            default:
                                o1 o1Var2 = this.f7011b;
                                o1Var2.getClass();
                                String string2 = editText7.getText().toString();
                                if (!string2.isEmpty()) {
                                    int i22 = Integer.parseInt(editText8.getText().toString()) * 1000;
                                    if (i22 <= 30000) {
                                        if (i22 < 1000) {
                                            i22 = string2.length() > 100 ? 15000 : string2.length() > 50 ? 8000 : string2.length() > 20 ? 4000 : NoConst.MIN_HEARTBEAT_INTERVAL;
                                        }
                                        v8.b.c(String.valueOf(607));
                                        v8.a aVar = new v8.a(o1Var2.f6724a);
                                        aVar.f16661h = String.valueOf(607);
                                        aVar.j(R.layout.window_show_toast2);
                                        aVar.a(256);
                                        aVar.l(Build.VERSION.SDK_INT >= 28 ? 1 : 0);
                                        float progress2 = appCompatSeekBar.getProgress();
                                        v8.h hVar = aVar.f16656c;
                                        TextView textView12 = (TextView) (hVar == null ? null : hVar.findViewById(R.id.v_msg));
                                        if (textView12 != null) {
                                            textView12.setTextSize(2, progress2);
                                        }
                                        aVar.o(R.id.v_msg, string2);
                                        aVar.r(i22);
                                        aVar.t();
                                        break;
                                    } else {
                                        com.yunpan.appmanage.util.a0.u("疯啦？要显示这么久？");
                                        break;
                                    }
                                } else {
                                    com.yunpan.appmanage.util.a0.u("请输入要显示的消息内容");
                                    break;
                                }
                        }
                    }
                });
                break;
            case 4:
                super.onCreate(bundle);
                EditText editText9 = (EditText) findViewById(R.id.v_edit_dp);
                TextView textView12 = (TextView) findViewById(R.id.v_btn_yes);
                editText9.setOnKeyListener(new j1(editText9, textView12));
                editText9.setText(String.valueOf(com.yunpan.appmanage.util.v.f4106a.r));
                textView12.setOnClickListener(new c6.c(this, 6, editText9));
                break;
            case 5:
                super.onCreate(bundle);
                EditText editText10 = (EditText) findViewById(R.id.v_edit_port);
                editText10.setText("5555");
                ((TextView) findViewById(R.id.v_btn_yes)).setOnClickListener(new c6.c(this, 9, editText10));
                break;
            case 6:
                super.onCreate(bundle);
                EditText editText11 = (EditText) findViewById(R.id.v_edit);
                fa.e0 e0Var = fa.a.f5647b;
                editText11.setText(e0Var.f5677g.isEmpty() ? com.yunpan.appmanage.util.v.f4106a.Y : e0Var.f5677g);
                ((TextView) findViewById(R.id.v_btn_yes)).setOnClickListener(new c6.c(this, i11, editText11));
                break;
            case 7:
                super.onCreate(bundle);
                ((TextView) findViewById(R.id.v_btn_sm)).setOnClickListener(new com.google.android.material.datepicker.l(this, 23));
                TextView textView13 = (TextView) findViewById(R.id.v_btn);
                EditText editText12 = (EditText) findViewById(R.id.v_edit);
                editText12.setOnKeyListener(new x6(textView13, 3));
                textView13.setOnClickListener(new c6.c(this, 12, editText12));
                break;
            case 8:
                super.onCreate(bundle);
                TextView textView14 = (TextView) findViewById(R.id.v_btn_yes);
                final EditText editText13 = (EditText) findViewById(R.id.v_edit);
                editText13.setOnKeyListener(new x6(textView14, 4));
                textView14.setOnClickListener(new View.OnClickListener(this) { // from class: ha.i7

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ o1 f7200b;

                    {
                        this.f7200b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) throws IOException {
                        switch (i13) {
                            case 0:
                                o1 o1Var = this.f7200b;
                                o1Var.getClass();
                                String strF = g.b.f(editText13);
                                if (!strF.isEmpty()) {
                                    ((ua.t0) o1Var.f7501h).a(strF);
                                    o1Var.dismiss();
                                    break;
                                } else {
                                    com.yunpan.appmanage.util.a0.u("不能为空");
                                    break;
                                }
                            default:
                                EditText editText14 = editText13;
                                o1 o1Var2 = this.f7200b;
                                o1Var2.getClass();
                                try {
                                    ClipboardManager clipboardManager = (ClipboardManager) o1Var2.f6725b.getSystemService("clipboard");
                                    if (clipboardManager != null && clipboardManager.hasPrimaryClip()) {
                                        ClipData.Item itemAt = clipboardManager.getPrimaryClip().getItemAt(0);
                                        if (itemAt.getText() != null) {
                                            editText14.setText(itemAt.getText().toString());
                                            break;
                                        }
                                    }
                                } catch (Exception unused) {
                                    com.yunpan.appmanage.util.a0.u("粘贴失败");
                                }
                                break;
                        }
                    }
                });
                findViewById(R.id.v_btn_zt).setOnClickListener(new View.OnClickListener(this) { // from class: ha.i7

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ o1 f7200b;

                    {
                        this.f7200b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) throws IOException {
                        switch (i14) {
                            case 0:
                                o1 o1Var = this.f7200b;
                                o1Var.getClass();
                                String strF = g.b.f(editText13);
                                if (!strF.isEmpty()) {
                                    ((ua.t0) o1Var.f7501h).a(strF);
                                    o1Var.dismiss();
                                    break;
                                } else {
                                    com.yunpan.appmanage.util.a0.u("不能为空");
                                    break;
                                }
                            default:
                                EditText editText14 = editText13;
                                o1 o1Var2 = this.f7200b;
                                o1Var2.getClass();
                                try {
                                    ClipboardManager clipboardManager = (ClipboardManager) o1Var2.f6725b.getSystemService("clipboard");
                                    if (clipboardManager != null && clipboardManager.hasPrimaryClip()) {
                                        ClipData.Item itemAt = clipboardManager.getPrimaryClip().getItemAt(0);
                                        if (itemAt.getText() != null) {
                                            editText14.setText(itemAt.getText().toString());
                                            break;
                                        }
                                    }
                                } catch (Exception unused) {
                                    com.yunpan.appmanage.util.a0.u("粘贴失败");
                                }
                                break;
                        }
                    }
                });
                break;
            case 9:
                super.onCreate(bundle);
                EditText editText14 = (EditText) findViewById(R.id.v_edit);
                TextView textView15 = (TextView) findViewById(R.id.v_btn_yes);
                textView15.setOnClickListener(new c6.c(this, 15, editText14));
                editText14.setOnKeyListener(new x6(textView15, 6));
                ArrayList arrayList5 = new ArrayList();
                for (int i22 = 1; i22 < 20; i22++) {
                    arrayList5.add((i22 * 100) + "");
                }
                for (int i23 = 2; i23 < 21; i23++) {
                    arrayList5.add((i23 * 1000) + "");
                }
                findViewById(R.id.v_btn_select).setOnClickListener(new s6((a4) this, arrayList5, editText14, 2));
                break;
            case 10:
                super.onCreate(bundle);
                EditText editText15 = (EditText) findViewById(R.id.v_edit);
                editText15.setHint("单位（秒）");
                TextView textView16 = (TextView) findViewById(R.id.v_btn_yes);
                textView16.setOnClickListener(new c6.c(this, 16, editText15));
                editText15.setOnKeyListener(new x6(textView16, 7));
                ArrayList arrayList6 = new ArrayList();
                for (int i24 = 1; i24 <= 300; i24++) {
                    arrayList6.add(String.valueOf(i24));
                }
                findViewById(R.id.v_btn_select).setOnClickListener(new s6((a4) this, arrayList6, editText15, 3));
                break;
            case 11:
                super.onCreate(bundle);
                EditText editText16 = (EditText) findViewById(R.id.v_edit);
                editText16.setText("");
                ((TextView) findViewById(R.id.v_btn_yes)).setOnClickListener(new c6.c(this, 17, editText16));
                break;
            case 12:
                String str = (String) this.f7501h;
                Context context = this.f6725b;
                super.onCreate(bundle);
                TextView textView17 = (TextView) findViewById(R.id.v_content);
                try {
                    textView17.setText(((Object) context.getPackageManager().getApplicationInfo(str, 0).loadLabel(context.getPackageManager())) + "：" + str);
                    findViewById(R.id.v_btn_no).setOnClickListener(new View.OnClickListener(this) { // from class: ha.o7

                        /* renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ o1 f7526b;

                        {
                            this.f7526b = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            switch (i13) {
                                case 0:
                                    this.f7526b.dismiss();
                                    break;
                                default:
                                    o1 o1Var = this.f7526b;
                                    o1Var.dismiss();
                                    p000if.a.z0(o1Var.f6725b, (String) o1Var.f7501h);
                                    break;
                            }
                        }
                    });
                    findViewById(R.id.v_btn_yes).setOnClickListener(new View.OnClickListener(this) { // from class: ha.o7

                        /* renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ o1 f7526b;

                        {
                            this.f7526b = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            switch (i14) {
                                case 0:
                                    this.f7526b.dismiss();
                                    break;
                                default:
                                    o1 o1Var = this.f7526b;
                                    o1Var.dismiss();
                                    p000if.a.z0(o1Var.f6725b, (String) o1Var.f7501h);
                                    break;
                            }
                        }
                    });
                    break;
                } catch (PackageManager.NameNotFoundException unused) {
                    dismiss();
                    return;
                }
            case 13:
                super.onCreate(bundle);
                TextView textView18 = (TextView) findViewById(R.id.v_btn_yes);
                textView18.requestFocus();
                textView18.setOnClickListener(new View.OnClickListener(this) { // from class: ha.ob

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ o1 f7541b;

                    {
                        this.f7541b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        o1 o1Var = this.f7541b;
                        switch (i13) {
                            case 0:
                                o1Var.getClass();
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                kVar.f4040c0 = false;
                                ua.c8 c8Var = (ua.c8) o1Var.f7501h;
                                c8Var.f15619a.f15910i.C(c8Var.f15620b);
                                kVar.f4048g0.submit(new com.gj.server.a(3));
                                o1Var.dismiss();
                                break;
                            default:
                                o1Var.dismiss();
                                break;
                        }
                    }
                });
                ((TextView) findViewById(R.id.v_btn_no)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.ob

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ o1 f7541b;

                    {
                        this.f7541b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        o1 o1Var = this.f7541b;
                        switch (i14) {
                            case 0:
                                o1Var.getClass();
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                kVar.f4040c0 = false;
                                ua.c8 c8Var = (ua.c8) o1Var.f7501h;
                                c8Var.f15619a.f15910i.C(c8Var.f15620b);
                                kVar.f4048g0.submit(new com.gj.server.a(3));
                                o1Var.dismiss();
                                break;
                            default:
                                o1Var.dismiss();
                                break;
                        }
                    }
                });
                break;
            case 14:
                super.onCreate(bundle);
                EditText editText17 = (EditText) findViewById(R.id.v_edit);
                TextView textView19 = (TextView) findViewById(R.id.v_btn);
                ConstraintLayout constraintLayout5 = (ConstraintLayout) findViewById(R.id.v_check_file);
                ImageView imageView = (ImageView) findViewById(R.id.v_check_file_ico);
                ConstraintLayout constraintLayout6 = (ConstraintLayout) findViewById(R.id.v_check_dir);
                ImageView imageView2 = (ImageView) findViewById(R.id.v_check_dir_ico);
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                boolean z = kVar.U;
                int i25 = R.drawable.tp_check2;
                imageView.setImageResource(z ? R.drawable.tp_check1 : R.drawable.tp_check2);
                if (kVar.V) {
                    i25 = R.drawable.tp_check1;
                }
                imageView2.setImageResource(i25);
                constraintLayout5.setOnClickListener(new f(imageView, 4));
                constraintLayout6.setOnClickListener(new f(imageView2, 5));
                editText17.setOnKeyListener(new e2(textView19, constraintLayout6, i14));
                textView19.setOnClickListener(new c6.c(this, 22, editText17));
                break;
            default:
                super.onCreate(bundle);
                ((TextView) findViewById(R.id.v_title)).setText("输入解压密码");
                TextView textView20 = (TextView) findViewById(R.id.v_btn_one);
                EditText editText18 = (EditText) findViewById(R.id.v_edit);
                editText18.setOnKeyListener(new x6(textView20, 10));
                textView20.setOnClickListener(new c6.c(this, i10, editText18));
                findViewById(R.id.v_btn_two).setOnClickListener(new g9(20, this));
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(Activity activity, Context context, pa paVar) {
        super(activity, context, R.layout.dialog_input_adb_port);
        this.f7500g = 5;
        this.f7501h = paVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(Activity activity, Context context, h2.d dVar) {
        super(activity, context, R.layout.dialog_input_adb_shell_password);
        this.f7500g = 6;
        this.f7501h = dVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(Activity activity, Context context, o oVar) {
        super(activity, context, R.layout.dialog_input_vin);
        this.f7500g = 11;
        this.f7501h = oVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(da.g gVar, da.g gVar2, ua.g1 g1Var) {
        super(gVar, gVar2, R.layout.dialog_auto_size_dp);
        this.f7500g = 4;
        this.f7501h = g1Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(Activity activity, Context context, y8 y8Var) {
        super(activity, context, R.layout.dialog_add_time_zd);
        this.f7500g = 2;
        this.f7501h = y8Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(Context context, ua.i1 i1Var) {
        super((Activity) context, context, R.layout.dialog_input);
        this.f7500g = 15;
        this.f7501h = i1Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(Activity activity, Context context, ua.t0 t0Var) {
        super(activity, context, R.layout.dialog_input_shizuku);
        this.f7500g = 8;
        this.f7501h = t0Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(Activity activity, Context context, ua.c8 c8Var) {
        super(activity, context, R.layout.dialog_scan);
        this.f7500g = 13;
        this.f7501h = c8Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(Activity activity, Context context, ua.g6 g6Var) {
        super(activity, context, R.layout.dialog_search_name);
        this.f7500g = 14;
        this.f7501h = g6Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(Activity activity, Context context, e8 e8Var) {
        super(activity, context, R.layout.dialog_add_settings_switch);
        this.f7500g = 1;
        this.f7501h = e8Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(Activity activity, Context context, n1 n1Var) {
        super(activity, context, R.layout.dialog_add_settings_put);
        this.f7500g = 0;
        this.f7501h = n1Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(da.g gVar, da.g gVar2, String str) {
        super(gVar, gVar2, R.layout.dialog_install_success);
        this.f7500g = 12;
        this.f7501h = str;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(Activity activity, Context context, h7 h7Var) {
        super(activity, context, R.layout.dialog_input_shell);
        this.f7500g = 7;
        this.f7501h = h7Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(Activity activity, Context context, m8 m8Var) {
        super(activity, context, R.layout.dialog_add_window_toast);
        this.f7500g = 3;
        this.f7501h = m8Var;
    }
}
