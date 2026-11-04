package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.view.MyProgressViewTest;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class z6 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f8151g = 2;

    /* renamed from: h, reason: collision with root package name */
    public String f8152h;

    /* renamed from: i, reason: collision with root package name */
    public Object f8153i;

    /* renamed from: j, reason: collision with root package name */
    public Object f8154j;

    /* renamed from: k, reason: collision with root package name */
    public Object f8155k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public final Object f8156m;

    /* renamed from: n, reason: collision with root package name */
    public Object f8157n;

    public z6(Activity activity, Context context, String str, String str2, String str3, String str4, wd wdVar) {
        super(activity, context, R.layout.dialog_ts1);
        this.l = false;
        this.f8157n = new com.yunpan.appmanage.carsdk.u(this, Looper.getMainLooper(), 10);
        this.f8152h = str;
        this.f8153i = str2;
        this.f8154j = str3;
        this.f8155k = str4;
        this.f8156m = wdVar;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        switch (this.f8151g) {
            case 0:
                super.onCreate(bundle);
                ((TextView) findViewById(R.id.v_title)).setText(this.f8152h);
                TextView textView = (TextView) findViewById(R.id.v_btn_one);
                textView.setText((String) this.f8155k);
                textView.requestFocus();
                TextView textView2 = (TextView) findViewById(R.id.v_btn_two);
                String str = (String) this.f8157n;
                if (str == null || str.isEmpty()) {
                    textView2.setVisibility(8);
                } else {
                    textView2.setText(str);
                }
                EditText editText = (EditText) findViewById(R.id.v_edit);
                editText.setText((String) this.f8153i);
                editText.setHint((String) this.f8154j);
                editText.setOnKeyListener(new x6(textView, 0));
                textView.setOnClickListener(new c6.c(this, 11, editText));
                textView2.setOnClickListener(new com.google.android.material.datepicker.l(this, 20));
                break;
            case 1:
                super.onCreate(bundle);
                boolean z = this.l;
                String str2 = this.f8152h;
                if (str2 != null && !str2.isEmpty()) {
                    TextView textView3 = (TextView) findViewById(R.id.v_text_one);
                    if (z) {
                        textView3.setGravity(3);
                    }
                    textView3.setText(str2);
                }
                String str3 = (String) this.f8153i;
                if (str3 != null && !str3.isEmpty()) {
                    TextView textView4 = (TextView) findViewById(R.id.v_text_two);
                    if (z) {
                        textView4.setGravity(3);
                    }
                    textView4.setText(str3);
                    textView4.setVisibility(0);
                }
                TextView textView5 = (TextView) findViewById(R.id.v_btn_yes);
                String str4 = (String) this.f8154j;
                if (str4 == null || str4.isEmpty()) {
                    textView5.setVisibility(8);
                } else {
                    textView5.setText(str4);
                }
                TextView textView6 = (TextView) findViewById(R.id.v_btn_no);
                String str5 = (String) this.f8155k;
                if (str5 == null || str5.isEmpty()) {
                    textView6.setVisibility(8);
                } else {
                    textView6.setText(str5);
                }
                if (((wd) this.f8156m) == null) {
                    ((com.yunpan.appmanage.carsdk.u) this.f8157n).sendEmptyMessageDelayed(0, PopupConst.DURATION_POPUP_SHORT);
                    break;
                } else {
                    final int i10 = 0;
                    textView5.setOnClickListener(new View.OnClickListener(this) { // from class: ha.vd

                        /* renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ z6 f7961b;

                        {
                            this.f7961b = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            switch (i10) {
                                case 0:
                                    z6 z6Var = this.f7961b;
                                    ((wd) z6Var.f8156m).D();
                                    z6Var.dismiss();
                                    break;
                                default:
                                    z6 z6Var2 = this.f7961b;
                                    ((wd) z6Var2.f8156m).t();
                                    z6Var2.dismiss();
                                    break;
                            }
                        }
                    });
                    final int i11 = 1;
                    textView6.setOnClickListener(new View.OnClickListener(this) { // from class: ha.vd

                        /* renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ z6 f7961b;

                        {
                            this.f7961b = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            switch (i11) {
                                case 0:
                                    z6 z6Var = this.f7961b;
                                    ((wd) z6Var.f8156m).D();
                                    z6Var.dismiss();
                                    break;
                                default:
                                    z6 z6Var2 = this.f7961b;
                                    ((wd) z6Var2.f8156m).t();
                                    z6Var2.dismiss();
                                    break;
                            }
                        }
                    });
                    break;
                }
                break;
            default:
                super.onCreate(bundle);
                LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_dialog_btn_no);
                this.f8157n = linearLayout;
                final int i12 = 0;
                linearLayout.setOnClickListener(new View.OnClickListener(this) { // from class: ha.le

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ z6 f7376b;

                    {
                        this.f7376b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        int i13 = 0;
                        z6 z6Var = this.f7376b;
                        switch (i12) {
                            case 0:
                                z6Var.dismiss();
                                break;
                            default:
                                z6Var.getClass();
                                com.bumptech.glide.c.i(1000, view);
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                z6Var.f8152h = kVar.f4069s;
                                z6Var.l = !r2.isEmpty();
                                if (z6Var.f8152h.isEmpty() && !kVar.f4073v.isEmpty()) {
                                    z6Var.f8152h = g.b.l((String) kVar.f4073v.iterator().next(), "/Download", new StringBuilder());
                                    z6Var.l = true;
                                }
                                if (z6Var.f8152h.isEmpty()) {
                                    z6Var.f8152h = z6Var.f6725b.getCacheDir().getPath();
                                    if (!kVar.f4058m) {
                                        new z6(z6Var.f6724a, z6Var.f6725b, "检测到您的设备没有SD卡也没有插入U盘，也没有系统写入权，所以无法使用自动更新，请自行下载安装", "没有SD卡的设备强烈建议您插入U盘使用", "好的", "", new h5.m(20, z6Var)).show();
                                        break;
                                    }
                                }
                                try {
                                    new File(z6Var.f8152h).mkdirs();
                                } catch (Exception unused) {
                                }
                                z6Var.f8152h = g.b.l(z6Var.f8152h, "/updata.apk", new StringBuilder());
                                ((LinearLayout) z6Var.f8157n).requestFocus();
                                ((LinearLayout) z6Var.f8155k).setVisibility(8);
                                ((MyProgressViewTest) z6Var.f8153i).setVisibility(0);
                                ((TextView) z6Var.f8154j).setText("");
                                ((TextView) z6Var.f8154j).setVisibility(0);
                                new mc.c(i13, new p7(22, z6Var)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(25, z6Var));
                                break;
                        }
                    }
                });
                ba.o oVar = (ba.o) this.f8156m;
                if (!oVar.f2730e.isEmpty()) {
                    ((TextView) findViewById(R.id.v_update_text)).setText(oVar.f2730e);
                }
                ((TextView) findViewById(R.id.v_dialog_version)).setText("当前版本：v" + oVar.f2727b + "_" + oVar.f2726a + "\n最新版本：v" + oVar.f2729d + "_" + oVar.f2728c);
                TextView textView7 = (TextView) findViewById(R.id.v_dialog_progress_text);
                this.f8154j = textView7;
                textView7.setVisibility(8);
                MyProgressViewTest myProgressViewTest = (MyProgressViewTest) findViewById(R.id.v_dialog_progress);
                this.f8153i = myProgressViewTest;
                myProgressViewTest.setMaxCount(100.0f);
                ((MyProgressViewTest) this.f8153i).setCurrentCount(0.0f);
                ((MyProgressViewTest) this.f8153i).setVisibility(8);
                LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.v_dialog_btn_yes);
                this.f8155k = linearLayout2;
                final int i13 = 1;
                linearLayout2.setOnClickListener(new View.OnClickListener(this) { // from class: ha.le

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ z6 f7376b;

                    {
                        this.f7376b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        int i132 = 0;
                        z6 z6Var = this.f7376b;
                        switch (i13) {
                            case 0:
                                z6Var.dismiss();
                                break;
                            default:
                                z6Var.getClass();
                                com.bumptech.glide.c.i(1000, view);
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                z6Var.f8152h = kVar.f4069s;
                                z6Var.l = !r2.isEmpty();
                                if (z6Var.f8152h.isEmpty() && !kVar.f4073v.isEmpty()) {
                                    z6Var.f8152h = g.b.l((String) kVar.f4073v.iterator().next(), "/Download", new StringBuilder());
                                    z6Var.l = true;
                                }
                                if (z6Var.f8152h.isEmpty()) {
                                    z6Var.f8152h = z6Var.f6725b.getCacheDir().getPath();
                                    if (!kVar.f4058m) {
                                        new z6(z6Var.f6724a, z6Var.f6725b, "检测到您的设备没有SD卡也没有插入U盘，也没有系统写入权，所以无法使用自动更新，请自行下载安装", "没有SD卡的设备强烈建议您插入U盘使用", "好的", "", new h5.m(20, z6Var)).show();
                                        break;
                                    }
                                }
                                try {
                                    new File(z6Var.f8152h).mkdirs();
                                } catch (Exception unused) {
                                }
                                z6Var.f8152h = g.b.l(z6Var.f8152h, "/updata.apk", new StringBuilder());
                                ((LinearLayout) z6Var.f8157n).requestFocus();
                                ((LinearLayout) z6Var.f8155k).setVisibility(8);
                                ((MyProgressViewTest) z6Var.f8153i).setVisibility(0);
                                ((TextView) z6Var.f8154j).setText("");
                                ((TextView) z6Var.f8154j).setVisibility(0);
                                new mc.c(i132, new p7(22, z6Var)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(25, z6Var));
                                break;
                        }
                    }
                });
                break;
        }
    }

    @Override // ha.a4, android.app.Dialog
    public void show() {
        switch (this.f8151g) {
            case 2:
                super.show();
                ((LinearLayout) this.f8155k).requestFocus();
                break;
            default:
                super.show();
                break;
        }
    }

    public z6(Activity activity, Context context, String str, String str2, String str3, String str4, String str5, y6 y6Var) {
        super(activity, context, R.layout.dialog_input);
        this.l = true;
        this.f8152h = str;
        this.f8153i = str2;
        this.f8154j = str3;
        this.f8155k = str4;
        this.f8157n = str5;
        this.f8156m = y6Var;
    }

    public z6(Activity activity, Context context, String str, String str2, String str3, String str4, wd wdVar, int i10) {
        super(activity, context, R.layout.dialog_ts1);
        this.l = false;
        this.f8157n = new com.yunpan.appmanage.carsdk.u(this, Looper.getMainLooper(), 10);
        this.f8152h = str;
        this.f8153i = str2;
        this.f8154j = str3;
        this.f8155k = str4;
        this.l = true;
        this.f8156m = wdVar;
    }

    public z6(Activity activity, Context context, String str, y6 y6Var) {
        super(activity, context, R.layout.dialog_input);
        this.l = true;
        this.f8152h = "显示提示";
        this.f8153i = "";
        this.f8154j = str;
        this.f8155k = "确定";
        this.f8157n = "";
        this.f8156m = y6Var;
    }

    public z6(Activity activity, Context context, ba.o oVar) {
        super(activity, context, R.layout.dialog_updata);
        this.f8152h = "";
        this.f8156m = oVar;
    }

    public z6(Activity activity, Context context, String str, String str2) {
        super(activity, context, R.layout.dialog_ts1);
        this.l = false;
        this.f8157n = new com.yunpan.appmanage.carsdk.u(this, Looper.getMainLooper(), 10);
        this.f8152h = str;
        this.f8153i = str2;
        this.f8154j = "好的";
        this.f8155k = "";
        this.f8156m = new l2(6);
    }
}
