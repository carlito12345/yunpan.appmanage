package ha;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.service.AdbPairService;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class i extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f7173g = 3;

    /* renamed from: h, reason: collision with root package name */
    public final Object f7174h;

    /* renamed from: i, reason: collision with root package name */
    public Object f7175i;

    public i(Activity activity, Context context, m8 m8Var) {
        super(activity, context, R.layout.dialog_input_key_code);
        this.f7174h = m8Var;
    }

    public static void a(i iVar) {
        ((h8) iVar.f7174h).e(((AppCompatSeekBar) iVar.f7175i).getProgress());
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        switch (this.f7173g) {
            case 0:
                super.onCreate(bundle);
                Context context = this.f6725b;
                try {
                    context.stopService(new Intent(context, (Class<?>) AdbPairService.class));
                } catch (Exception unused) {
                }
                ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_return);
                constraintLayout.requestFocus();
                final int i10 = 0;
                constraintLayout.setOnClickListener(new View.OnClickListener(this) { // from class: ha.d

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ i f6875b;

                    {
                        this.f6875b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i10) {
                            case 0:
                                this.f6875b.dismiss();
                                break;
                            case 1:
                                i iVar = this.f6875b;
                                iVar.getClass();
                                try {
                                    iVar.f6724a.startActivity(new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS"));
                                    break;
                                } catch (Exception unused2) {
                                    com.yunpan.appmanage.util.a0.t("您没有开启【开发者选项】？？？");
                                    return;
                                }
                            case 2:
                                i iVar2 = this.f6875b;
                                iVar2.getClass();
                                if (!fa.h.f5683a.i()) {
                                    if (!fa.l.f5712a.isConnected()) {
                                        Toaster.show((CharSequence) "请先连接adb");
                                        break;
                                    } else {
                                        new z6(iVar2.f6724a, iVar2.f6725b, "更改成功的话，将会断开无线adb，然后自动连接网络adb", "", "确定", "取消", new g(iVar2, 1)).show();
                                        break;
                                    }
                                } else {
                                    Toaster.showLong((CharSequence) "您本身就是网络adb连接，无需多此一举");
                                    break;
                                }
                            default:
                                i iVar3 = this.f6875b;
                                iVar3.getClass();
                                if (!fa.g0.f5682a.f()) {
                                    fa.b0.f5652a.getClass();
                                    if (!a2.w0.P()) {
                                        if (((TextView) iVar3.f7175i).getText().toString().equals("连接ADB")) {
                                            new mc.c(0, new c(iVar3)).d(rc.f.f13757b).a(fc.b.a()).b(new h(iVar3, 0));
                                            break;
                                        }
                                    } else {
                                        Toaster.show((CharSequence) "已连接");
                                        break;
                                    }
                                } else {
                                    Toaster.showLong((CharSequence) "已root无需连接");
                                    break;
                                }
                                break;
                        }
                    }
                });
                final int i11 = 1;
                findViewById(R.id.v_btn_start).setOnClickListener(new View.OnClickListener(this) { // from class: ha.d

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ i f6875b;

                    {
                        this.f6875b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i11) {
                            case 0:
                                this.f6875b.dismiss();
                                break;
                            case 1:
                                i iVar = this.f6875b;
                                iVar.getClass();
                                try {
                                    iVar.f6724a.startActivity(new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS"));
                                    break;
                                } catch (Exception unused2) {
                                    com.yunpan.appmanage.util.a0.t("您没有开启【开发者选项】？？？");
                                    return;
                                }
                            case 2:
                                i iVar2 = this.f6875b;
                                iVar2.getClass();
                                if (!fa.h.f5683a.i()) {
                                    if (!fa.l.f5712a.isConnected()) {
                                        Toaster.show((CharSequence) "请先连接adb");
                                        break;
                                    } else {
                                        new z6(iVar2.f6724a, iVar2.f6725b, "更改成功的话，将会断开无线adb，然后自动连接网络adb", "", "确定", "取消", new g(iVar2, 1)).show();
                                        break;
                                    }
                                } else {
                                    Toaster.showLong((CharSequence) "您本身就是网络adb连接，无需多此一举");
                                    break;
                                }
                            default:
                                i iVar3 = this.f6875b;
                                iVar3.getClass();
                                if (!fa.g0.f5682a.f()) {
                                    fa.b0.f5652a.getClass();
                                    if (!a2.w0.P()) {
                                        if (((TextView) iVar3.f7175i).getText().toString().equals("连接ADB")) {
                                            new mc.c(0, new c(iVar3)).d(rc.f.f13757b).a(fc.b.a()).b(new h(iVar3, 0));
                                            break;
                                        }
                                    } else {
                                        Toaster.show((CharSequence) "已连接");
                                        break;
                                    }
                                } else {
                                    Toaster.showLong((CharSequence) "已root无需连接");
                                    break;
                                }
                                break;
                        }
                    }
                });
                ConstraintLayout constraintLayout2 = (ConstraintLayout) findViewById(R.id.v_btn_setver);
                constraintLayout2.setOnClickListener(new c6.c(this, 1, constraintLayout2));
                final int i12 = 2;
                findViewById(R.id.v_btn_tcpip).setOnClickListener(new View.OnClickListener(this) { // from class: ha.d

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ i f6875b;

                    {
                        this.f6875b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i12) {
                            case 0:
                                this.f6875b.dismiss();
                                break;
                            case 1:
                                i iVar = this.f6875b;
                                iVar.getClass();
                                try {
                                    iVar.f6724a.startActivity(new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS"));
                                    break;
                                } catch (Exception unused2) {
                                    com.yunpan.appmanage.util.a0.t("您没有开启【开发者选项】？？？");
                                    return;
                                }
                            case 2:
                                i iVar2 = this.f6875b;
                                iVar2.getClass();
                                if (!fa.h.f5683a.i()) {
                                    if (!fa.l.f5712a.isConnected()) {
                                        Toaster.show((CharSequence) "请先连接adb");
                                        break;
                                    } else {
                                        new z6(iVar2.f6724a, iVar2.f6725b, "更改成功的话，将会断开无线adb，然后自动连接网络adb", "", "确定", "取消", new g(iVar2, 1)).show();
                                        break;
                                    }
                                } else {
                                    Toaster.showLong((CharSequence) "您本身就是网络adb连接，无需多此一举");
                                    break;
                                }
                            default:
                                i iVar3 = this.f6875b;
                                iVar3.getClass();
                                if (!fa.g0.f5682a.f()) {
                                    fa.b0.f5652a.getClass();
                                    if (!a2.w0.P()) {
                                        if (((TextView) iVar3.f7175i).getText().toString().equals("连接ADB")) {
                                            new mc.c(0, new c(iVar3)).d(rc.f.f13757b).a(fc.b.a()).b(new h(iVar3, 0));
                                            break;
                                        }
                                    } else {
                                        Toaster.show((CharSequence) "已连接");
                                        break;
                                    }
                                } else {
                                    Toaster.showLong((CharSequence) "已root无需连接");
                                    break;
                                }
                                break;
                        }
                    }
                });
                this.f7175i = (TextView) findViewById(R.id.v_btn_connect_text);
                final int i13 = 3;
                findViewById(R.id.v_btn_connect).setOnClickListener(new View.OnClickListener(this) { // from class: ha.d

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ i f6875b;

                    {
                        this.f6875b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i13) {
                            case 0:
                                this.f6875b.dismiss();
                                break;
                            case 1:
                                i iVar = this.f6875b;
                                iVar.getClass();
                                try {
                                    iVar.f6724a.startActivity(new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS"));
                                    break;
                                } catch (Exception unused2) {
                                    com.yunpan.appmanage.util.a0.t("您没有开启【开发者选项】？？？");
                                    return;
                                }
                            case 2:
                                i iVar2 = this.f6875b;
                                iVar2.getClass();
                                if (!fa.h.f5683a.i()) {
                                    if (!fa.l.f5712a.isConnected()) {
                                        Toaster.show((CharSequence) "请先连接adb");
                                        break;
                                    } else {
                                        new z6(iVar2.f6724a, iVar2.f6725b, "更改成功的话，将会断开无线adb，然后自动连接网络adb", "", "确定", "取消", new g(iVar2, 1)).show();
                                        break;
                                    }
                                } else {
                                    Toaster.showLong((CharSequence) "您本身就是网络adb连接，无需多此一举");
                                    break;
                                }
                            default:
                                i iVar3 = this.f6875b;
                                iVar3.getClass();
                                if (!fa.g0.f5682a.f()) {
                                    fa.b0.f5652a.getClass();
                                    if (!a2.w0.P()) {
                                        if (((TextView) iVar3.f7175i).getText().toString().equals("连接ADB")) {
                                            new mc.c(0, new c(iVar3)).d(rc.f.f13757b).a(fc.b.a()).b(new h(iVar3, 0));
                                            break;
                                        }
                                    } else {
                                        Toaster.show((CharSequence) "已连接");
                                        break;
                                    }
                                } else {
                                    Toaster.showLong((CharSequence) "已root无需连接");
                                    break;
                                }
                                break;
                        }
                    }
                });
                final ImageView imageView = (ImageView) findViewById(R.id.v_btn_auto_enable_wifi_adb_ico);
                com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                boolean z = wVar.B;
                int i14 = R.drawable.tp_check2;
                imageView.setImageResource(z ? R.drawable.tp_check1 : R.drawable.tp_check2);
                final int i15 = 0;
                findViewById(R.id.v_btn_auto_enable_wifi_adb).setOnClickListener(new View.OnClickListener(this) { // from class: ha.e

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ i f6925b;

                    {
                        this.f6925b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i15) {
                            case 0:
                                i iVar = this.f6925b;
                                iVar.getClass();
                                com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                boolean z4 = wVar2.B;
                                ImageView imageView2 = imageView;
                                if (!z4) {
                                    new z6(iVar.f6724a, iVar.f6725b, "如果您的设备是通过配对码连接adb（也就是无线调试）\n\n那么可以勾选此功能，打开管家就会自动连接adb", "如果您系统不是这种方式的话，请勿勾选", "勾选", "取消", new h5.m(1, imageView2)).show();
                                    break;
                                } else {
                                    wVar2.r(false);
                                    imageView2.setImageResource(wVar2.B ? R.drawable.tp_check1 : R.drawable.tp_check2);
                                    break;
                                }
                            default:
                                i iVar2 = this.f6925b;
                                iVar2.getClass();
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                boolean z10 = !wVar3.D;
                                wVar3.D = z10;
                                try {
                                    wVar3.f4123i.k("BoYueLAutoAdb", Boolean.valueOf(z10));
                                } catch (Exception unused2) {
                                }
                                wVar3.m();
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                imageView.setImageResource(wVar4.D ? R.drawable.tp_check1 : R.drawable.tp_check2);
                                if (wVar4.D) {
                                    new z6(iVar2.f6724a, iVar2.f6725b, "提示：首次连接adb，请按下面的方法用匹配码连接，首次连接过后，以后就能自动连接！", "").show();
                                    break;
                                }
                                break;
                        }
                    }
                });
                ImageView imageView2 = (ImageView) findViewById(R.id.v_btn_auto_port_ico);
                imageView2.setImageResource(wVar.C ? R.drawable.tp_check1 : R.drawable.tp_check2);
                findViewById(R.id.v_btn_auto_port).setOnClickListener(new f(imageView2, 0));
                final ImageView imageView3 = (ImageView) findViewById(R.id.v_btn_boyuel_ico);
                if (wVar.D) {
                    i14 = R.drawable.tp_check1;
                }
                imageView3.setImageResource(i14);
                final int i16 = 1;
                findViewById(R.id.v_btn_boyuel).setOnClickListener(new View.OnClickListener(this) { // from class: ha.e

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ i f6925b;

                    {
                        this.f6925b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i16) {
                            case 0:
                                i iVar = this.f6925b;
                                iVar.getClass();
                                com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                boolean z4 = wVar2.B;
                                ImageView imageView22 = imageView3;
                                if (!z4) {
                                    new z6(iVar.f6724a, iVar.f6725b, "如果您的设备是通过配对码连接adb（也就是无线调试）\n\n那么可以勾选此功能，打开管家就会自动连接adb", "如果您系统不是这种方式的话，请勿勾选", "勾选", "取消", new h5.m(1, imageView22)).show();
                                    break;
                                } else {
                                    wVar2.r(false);
                                    imageView22.setImageResource(wVar2.B ? R.drawable.tp_check1 : R.drawable.tp_check2);
                                    break;
                                }
                            default:
                                i iVar2 = this.f6925b;
                                iVar2.getClass();
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                boolean z10 = !wVar3.D;
                                wVar3.D = z10;
                                try {
                                    wVar3.f4123i.k("BoYueLAutoAdb", Boolean.valueOf(z10));
                                } catch (Exception unused2) {
                                }
                                wVar3.m();
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                imageView3.setImageResource(wVar4.D ? R.drawable.tp_check1 : R.drawable.tp_check2);
                                if (wVar4.D) {
                                    new z6(iVar2.f6724a, iVar2.f6725b, "提示：首次连接adb，请按下面的方法用匹配码连接，首次连接过后，以后就能自动连接！", "").show();
                                    break;
                                }
                                break;
                        }
                    }
                });
                break;
            case 1:
                super.onCreate(bundle);
                ArrayList arrayList = new ArrayList();
                KeyMapSelectBean keyMapSelectBean = new KeyMapSelectBean("单击", 1);
                this.f7175i = keyMapSelectBean;
                arrayList.add(keyMapSelectBean);
                arrayList.add(new KeyMapSelectBean("双击", 2));
                arrayList.add(new KeyMapSelectBean("三击", 3));
                TextView textView = (TextView) findViewById(R.id.v_type_name);
                textView.setText(((KeyMapSelectBean) this.f7175i).gn_name);
                findViewById(R.id.v_type).setOnClickListener(new s6(this, arrayList, textView, 1));
                TextView textView2 = (TextView) findViewById(R.id.v_btn_select);
                TextView textView3 = (TextView) findViewById(R.id.v_btn);
                final EditText editText = (EditText) findViewById(R.id.v_edit);
                editText.setOnKeyListener(new x6(textView3, 2));
                final int i17 = 0;
                textView3.setOnClickListener(new View.OnClickListener(this) { // from class: ha.e7

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ i f6960b;

                    {
                        this.f6960b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) throws NumberFormatException {
                        switch (i17) {
                            case 0:
                                i iVar = this.f6960b;
                                iVar.getClass();
                                String strTrim = editText.getText().toString().trim();
                                if (strTrim.isEmpty()) {
                                    com.yunpan.appmanage.util.a0.u("不能为空");
                                    break;
                                } else {
                                    try {
                                        ((m8) iVar.f7174h).c(Integer.parseInt(strTrim), (KeyMapSelectBean) iVar.f7175i);
                                        iVar.dismiss();
                                        break;
                                    } catch (Exception unused2) {
                                        com.yunpan.appmanage.util.a0.u("请输入正确的键码");
                                        return;
                                    }
                                }
                            default:
                                i iVar2 = this.f6960b;
                                iVar2.getClass();
                                new yb(iVar2.f6724a, iVar2.f6725b, new d7(1, editText)).show();
                                break;
                        }
                    }
                });
                final int i18 = 1;
                textView2.setOnClickListener(new View.OnClickListener(this) { // from class: ha.e7

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ i f6960b;

                    {
                        this.f6960b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) throws NumberFormatException {
                        switch (i18) {
                            case 0:
                                i iVar = this.f6960b;
                                iVar.getClass();
                                String strTrim = editText.getText().toString().trim();
                                if (strTrim.isEmpty()) {
                                    com.yunpan.appmanage.util.a0.u("不能为空");
                                    break;
                                } else {
                                    try {
                                        ((m8) iVar.f7174h).c(Integer.parseInt(strTrim), (KeyMapSelectBean) iVar.f7175i);
                                        iVar.dismiss();
                                        break;
                                    } catch (Exception unused2) {
                                        com.yunpan.appmanage.util.a0.u("请输入正确的键码");
                                        return;
                                    }
                                }
                            default:
                                i iVar2 = this.f6960b;
                                iVar2.getClass();
                                new yb(iVar2.f6724a, iVar2.f6725b, new d7(1, editText)).show();
                                break;
                        }
                    }
                });
                break;
            case 2:
                super.onCreate(bundle);
                ((TextView) findViewById(R.id.v_title)).setText((String) this.f7174h);
                ((TextView) findViewById(R.id.v_content)).setText((String) this.f7175i);
                findViewById(R.id.v_btn).setOnClickListener(new g9(5, this));
                ImageView imageView4 = (ImageView) findViewById(R.id.v_btn_check_ico);
                imageView4.setImageResource(com.yunpan.appmanage.util.v.f4106a.f4138q ? R.drawable.tp_check2 : R.drawable.tp_check1);
                findViewById(R.id.v_btn_check).setOnClickListener(new f(imageView4, 2));
                break;
            default:
                super.onCreate(bundle);
                AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) findViewById(R.id.v_seek);
                this.f7175i = appCompatSeekBar;
                appCompatSeekBar.setOnSeekBarChangeListener(new gc());
                ((AppCompatSeekBar) this.f7175i).setProgress(ta.l.h(this.f6725b));
                ((AppCompatSeekBar) this.f7175i).setMax(255);
                ((TextView) findViewById(R.id.v_btn_yes)).setOnClickListener(new g9(9, this));
                break;
        }
    }

    public i(Activity activity, Context context, String str, String str2) {
        super(activity, context, R.layout.dialog_qpts);
        this.f7174h = str;
        this.f7175i = str2;
    }

    public i(Activity activity, Context context, ua.u7 u7Var) {
        super(activity, context, R.layout.dialog_adb_pair, false);
        this.f7174h = u7Var;
    }

    public i(Activity activity, Context context, h8 h8Var) {
        super(activity, context, R.layout.dialog_screen_brightness_set);
        this.f7174h = h8Var;
    }
}
