package ha;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.text.Selection;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityGjDiy;
import com.yunpan.appmanage.ui.ActivityInstaller;
import java.text.DecimalFormat;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public final class fc extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public EditText f7048g;

    /* renamed from: h, reason: collision with root package name */
    public EditText f7049h;

    /* renamed from: i, reason: collision with root package name */
    public EditText f7050i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f7051j;

    /* renamed from: k, reason: collision with root package name */
    public ConstraintLayout f7052k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f7053m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f7054n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f7055p;

    public fc(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_set);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0053  */
    @Override // android.app.Dialog, android.content.DialogInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void dismiss() {
        boolean z;
        boolean z4;
        boolean z10;
        String strF = g.b.f(this.f7050i);
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        if (!wVar.l.equals(strF)) {
            strF.replace("\"", "'");
            wVar.l = strF;
            try {
                wVar.f4123i.m("AdbShellPassword", strF);
            } catch (Exception unused) {
            }
            wVar.m();
        }
        String strF2 = g.b.f(this.f7049h);
        if (strF2.isEmpty()) {
            strF2 = "5555";
        }
        if (wVar.f4127k != Integer.parseInt(strF2)) {
            try {
                wVar.n(Integer.parseInt(strF2));
            } catch (Exception unused2) {
            }
            fa.b0.f5652a.getClass();
            if (a2.w0.P()) {
                z = false;
            } else {
                com.yunpan.appmanage.util.a0.v("端口已修改，正在尝试连接adb", false);
                z = true;
            }
        }
        if (z) {
            fa.h.f5683a.h(null);
        }
        if (!z && (z10 = com.yunpan.appmanage.util.v.f4106a.f4130m) != this.f7053m && z10) {
            fa.b0.f5652a.getClass();
            if (!a2.w0.P()) {
                com.yunpan.appmanage.util.a0.v("已勾选哪吒S开ADB，正在尝试连接adb", false);
                fa.h.f5683a.h(null);
            }
        }
        if (!z && (z4 = com.yunpan.appmanage.util.v.f4106a.f4132n) != this.f7054n && z4) {
            fa.b0.f5652a.getClass();
            if (!a2.w0.P()) {
                com.yunpan.appmanage.util.a0.v("已勾选领克开ADB，正在尝试连接adb", false);
                fa.h.f5683a.h(null);
            }
        }
        boolean z11 = this.f7055p;
        boolean z12 = com.yunpan.appmanage.util.v.f4106a.f4136p;
        if (z11 != z12 && !z12) {
            ta.m.c(this.f6725b, "UP_INIT_NotUseShizuku");
            fa.n0.f5722a.d();
        }
        kh.e.b().l(this);
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        final int i10;
        final int i11 = 1;
        final int i12 = 0;
        super.onCreate(bundle);
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        this.f7055p = wVar.f4136p;
        ((TextView) findViewById(R.id.v_btn_permissions)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.zb

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ fc f8176b;

            {
                this.f8176b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws PackageManager.NameNotFoundException {
                PackageInfo packageInfo;
                fc fcVar = this.f8176b;
                switch (i12) {
                    case 0:
                        fcVar.getClass();
                        if (Build.VERSION.SDK_INT >= 23) {
                            try {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                packageInfo = kVar.f4037b.getPackageInfo(kVar.f4041d, 12292);
                            } catch (Exception unused) {
                                packageInfo = null;
                            }
                            PackageInfo packageInfo2 = packageInfo;
                            if (packageInfo2 != null) {
                                fcVar.dismiss();
                                new za(fcVar.f6724a, fcVar.f6725b, packageInfo2, Process.myUid(), false).show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "出错，无法打开");
                                break;
                            }
                        } else {
                            Toaster.showLong((CharSequence) "低于安卓6.0无需管理权限");
                            break;
                        }
                    case 1:
                        fcVar.getClass();
                        if (fa.g0.f5682a.d().isEmpty()) {
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                                Toaster.showLong((CharSequence) "既没有sd卡也没有U盘，无法设置");
                                break;
                            }
                        }
                        fcVar.dismiss();
                        new z6(fcVar.f6724a, fcVar.f6725b, "修改" + fcVar.f6725b.getString(R.string.app_name) + "的背景图", "", "选择图片", "恢复默认", new h5.m(14, fcVar)).show();
                        break;
                    default:
                        fcVar.dismiss();
                        fcVar.f6724a.startActivity(new Intent(fcVar.f6725b, (Class<?>) ActivityGjDiy.class));
                        break;
                }
            }
        });
        TextView textView = (TextView) findViewById(R.id.v_btn_background);
        this.f7051j = textView;
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: ha.zb

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ fc f8176b;

            {
                this.f8176b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws PackageManager.NameNotFoundException {
                PackageInfo packageInfo;
                fc fcVar = this.f8176b;
                switch (i11) {
                    case 0:
                        fcVar.getClass();
                        if (Build.VERSION.SDK_INT >= 23) {
                            try {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                packageInfo = kVar.f4037b.getPackageInfo(kVar.f4041d, 12292);
                            } catch (Exception unused) {
                                packageInfo = null;
                            }
                            PackageInfo packageInfo2 = packageInfo;
                            if (packageInfo2 != null) {
                                fcVar.dismiss();
                                new za(fcVar.f6724a, fcVar.f6725b, packageInfo2, Process.myUid(), false).show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "出错，无法打开");
                                break;
                            }
                        } else {
                            Toaster.showLong((CharSequence) "低于安卓6.0无需管理权限");
                            break;
                        }
                    case 1:
                        fcVar.getClass();
                        if (fa.g0.f5682a.d().isEmpty()) {
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                                Toaster.showLong((CharSequence) "既没有sd卡也没有U盘，无法设置");
                                break;
                            }
                        }
                        fcVar.dismiss();
                        new z6(fcVar.f6724a, fcVar.f6725b, "修改" + fcVar.f6725b.getString(R.string.app_name) + "的背景图", "", "选择图片", "恢复默认", new h5.m(14, fcVar)).show();
                        break;
                    default:
                        fcVar.dismiss();
                        fcVar.f6724a.startActivity(new Intent(fcVar.f6725b, (Class<?>) ActivityGjDiy.class));
                        break;
                }
            }
        });
        this.f7053m = wVar.f4130m;
        this.f7054n = wVar.f4132n;
        EditText editText = (EditText) findViewById(R.id.et_adbPort);
        this.f7049h = editText;
        editText.setText("" + wVar.f4127k);
        this.f7049h.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.cc

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ fc f6868b;

            {
                this.f6868b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i13, KeyEvent keyEvent) {
                switch (i11) {
                    case 0:
                        fc fcVar = this.f6868b;
                        fcVar.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i13 != 20) {
                                if (i13 == 19) {
                                    fcVar.f7048g.requestFocus();
                                    break;
                                }
                            } else {
                                fcVar.f7052k.requestFocus();
                                break;
                            }
                        }
                        break;
                    default:
                        fc fcVar2 = this.f6868b;
                        fcVar2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i13 != 20) {
                                if (i13 != 19) {
                                    if (i13 == 22 && Selection.getSelectionStart(fcVar2.f7049h.getText()) == fcVar2.f7049h.getText().length() && Selection.getSelectionEnd(fcVar2.f7049h.getText()) == fcVar2.f7049h.getText().length()) {
                                        fcVar2.f7051j.requestFocus();
                                        break;
                                    }
                                } else {
                                    fcVar2.f7052k.requestFocus();
                                    break;
                                }
                            }
                        }
                        break;
                }
                return true;
            }
        });
        x9.t4 t4Var = new x9.t4();
        t4Var.q(new x9.u4("全屏", false));
        t4Var.q(new x9.u4("沉浸", false));
        t4Var.q(new x9.u4("沉浸2", false));
        t4Var.q(new x9.u4("隐藏状态栏", false));
        t4Var.q(new x9.u4("全屏2", false));
        t4Var.q(new x9.u4("全屏3", false));
        t4Var.q(new x9.u4("沉浸3", false));
        t4Var.F(wVar.f4120g0);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_immersed);
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 0, false));
        tvRecyclerView.setAdapter(t4Var);
        tvRecyclerView.requestFocus();
        t4Var.f2881e = new d2.w(this, 23, t4Var);
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list_check1);
        tvRecyclerView2.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.y0 y0Var = new x9.y0(false);
        y0Var.q(new x9.x0("不使用PM命令安装：也就是不使用root或adb命令来安装应用", wVar.f4152y));
        y0Var.q(new x9.x0("PM命令安装时为应用授予运行时权限 参数-g (如：存储权限 等)", wVar.f4150x));
        y0Var.q(new x9.x0("主动开启无线ADB-方法1(适合大部分系统，如果已永久打开了则不需要)", wVar.z));
        y0Var.q(new x9.x0("主动开启无线ADB-方法2(适合小部分系统，如果已永久打开了则不需要)", wVar.A));
        y0Var.q(new x9.x0("无法启动应用(无法用" + context.getString(R.string.app_name) + "打开应用，则勾选此项，否则不要勾选)", wa.t.f17728a.f17752s));
        ComponentName componentName = new ComponentName(context, (Class<?>) ActivityInstaller.class);
        y0Var.q(new x9.x0("允许第三方应用调用(" + context.getString(R.string.app_name) + ")来安装应用  (个别系统可能不适用)", context.getPackageManager().getComponentEnabledSetting(componentName) == 1));
        y0Var.q(new x9.x0("某款吉利星越L车机需勾选，固定互传IP为：198.18.34.15", wVar.I));
        tvRecyclerView2.setAdapter(y0Var);
        y0Var.f2881e = new com.hjq.permissions.b(this, y0Var, componentName, 6);
        TvRecyclerView tvRecyclerView3 = (TvRecyclerView) findViewById(R.id.v_list_check2);
        tvRecyclerView3.setLayoutManager(new V7GridLayoutManager(context, 3));
        x9.y0 y0Var2 = new x9.y0(true);
        y0Var2.q(new x9.x0("按返回键不关闭", wVar.f4146v));
        y0Var2.q(new x9.x0("不使用root模式", wVar.f4108a0));
        y0Var2.q(new x9.x0("使用管家密码锁", !wVar.f4125j.isEmpty()));
        y0Var2.q(new x9.x0("弹窗显示不完整", wVar.H));
        y0Var2.q(new x9.x0("安装成功后弹窗", wVar.f4148w));
        y0Var2.q(new x9.x0("不提示设备发现", wVar.f4116e0));
        y0Var2.q(new x9.x0("哪吒S自动开ADB", wVar.f4130m));
        y0Var2.q(new x9.x0("领克03自动开ADB", wVar.f4132n));
        y0Var2.q(new x9.x0("shell密码错误提醒", wVar.G));
        y0Var2.q(new x9.x0("adb连接成功提示", wVar.F));
        y0Var2.q(new x9.x0("使用新版adb协议", wVar.f4134o));
        y0Var2.q(new x9.x0("不连接shizuku", wVar.f4136p));
        tvRecyclerView3.setAdapter(y0Var2);
        y0Var2.f2881e = new com.hjq.permissions.b(this, y0Var2, tvRecyclerView3, 7);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_btn_adb_root_no);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.v_btn_adb_root_yes);
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R.id.v_btn_adb_root_su);
        LinearLayout linearLayout4 = (LinearLayout) findViewById(R.id.v_btn_adb_remount_no);
        LinearLayout linearLayout5 = (LinearLayout) findViewById(R.id.v_btn_adb_remount_yes);
        LinearLayout linearLayout6 = (LinearLayout) findViewById(R.id.v_btn_adb_remount_mount);
        final ImageView imageView = (ImageView) findViewById(R.id.v_btn_adb_root_no_ico);
        final ImageView imageView2 = (ImageView) findViewById(R.id.v_btn_adb_root_yes_ico);
        final ImageView imageView3 = (ImageView) findViewById(R.id.v_btn_adb_root_su_ico);
        final ImageView imageView4 = (ImageView) findViewById(R.id.v_btn_adb_remount_no_ico);
        final ImageView imageView5 = (ImageView) findViewById(R.id.v_btn_adb_remount_yes_ico);
        final ImageView imageView6 = (ImageView) findViewById(R.id.v_btn_adb_remount_mount_ico);
        int i13 = wVar.O;
        if (i13 == 1) {
            linearLayout2.requestFocus();
            imageView2.setBackgroundResource(R.drawable.tp_radio_yes1);
        } else if (i13 == 2) {
            linearLayout3.requestFocus();
            imageView3.setBackgroundResource(R.drawable.tp_radio_yes1);
        } else {
            linearLayout.requestFocus();
            imageView.setBackgroundResource(R.drawable.tp_radio_yes1);
        }
        int i14 = wVar.P;
        if (i14 == 1) {
            imageView5.setBackgroundResource(R.drawable.tp_radio_yes1);
            i10 = 2;
        } else {
            i10 = 2;
            if (i14 == 2) {
                imageView6.setBackgroundResource(R.drawable.tp_radio_yes1);
            } else {
                imageView4.setBackgroundResource(R.drawable.tp_radio_yes1);
            }
        }
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: ha.ac
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar2.P != 0) {
                            imageView.setBackgroundResource(R.drawable.tp_radio_yes1);
                            imageView2.setBackgroundResource(R.drawable.tp_radio_no1);
                            imageView3.setBackgroundResource(R.drawable.tp_radio_no1);
                            wVar2.o(0);
                            break;
                        }
                        break;
                    case 1:
                        com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar3.P != 2) {
                            if (!wVar3.J) {
                                imageView.setBackgroundResource(R.drawable.tp_radio_no1);
                                imageView2.setBackgroundResource(R.drawable.tp_radio_no1);
                                imageView3.setBackgroundResource(R.drawable.tp_radio_yes1);
                                wVar3.o(2);
                                break;
                            } else {
                                Toaster.showLong((CharSequence) "已勾选星瑞自动提权，不能再勾选这个");
                                break;
                            }
                        }
                        break;
                    default:
                        com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar4.O != 0) {
                            imageView.setBackgroundResource(R.drawable.tp_radio_yes1);
                            imageView2.setBackgroundResource(R.drawable.tp_radio_no1);
                            imageView3.setBackgroundResource(R.drawable.tp_radio_no1);
                            wVar4.p(0);
                            break;
                        }
                        break;
                }
            }
        });
        final int i15 = 1;
        linearLayout2.setOnClickListener(new View.OnClickListener(this) { // from class: ha.bc

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ fc f6819b;

            {
                this.f6819b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i15) {
                    case 0:
                        fc fcVar = this.f6819b;
                        fcVar.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar2.P != 1) {
                            if (!wVar2.J) {
                                new z6(fcVar.f6724a, fcVar.f6725b, "adb remount挂载系统读写：成功的话即可修改系统文件，删除系统应用等\n如果不了解，请不要勾选，避免您乱删除文件导致系统无法开机等系统性风险", "警告：如果您是小白，怕这怕那的话，请不要开启adb root和adb挂载，免得到时候您怪我喽 ", "我是高手", "取消选择", new dc(fcVar, imageView, imageView2, imageView3, 2)).show();
                                break;
                            } else {
                                Toaster.showLong((CharSequence) "已勾选星瑞自动提权，不能再勾选这个");
                                break;
                            }
                        }
                        break;
                    case 1:
                        fc fcVar2 = this.f6819b;
                        fcVar2.getClass();
                        com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar3.O != 1) {
                            if (!wVar3.J) {
                                new z6(fcVar2.f6724a, fcVar2.f6725b, "adb root：将adb临时提升为root权限(大部分车机、机顶盒支持此功能)\n如果想获得更强功能的话可以选择，如果你设备支持su提权也可以选择su", "\n注：某车机用adb root后会无法使用U盘，那么重启恢复后用su提权", "我要选择", "取消选择", new dc(fcVar2, imageView, imageView2, imageView3, 0)).show();
                                break;
                            } else {
                                Toaster.showLong((CharSequence) "已勾选星瑞自动提权，不能再勾选这个");
                                break;
                            }
                        }
                        break;
                    default:
                        fc fcVar3 = this.f6819b;
                        fcVar3.getClass();
                        com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar4.O != 2) {
                            if (!wVar4.J) {
                                new z6(fcVar3.f6724a, fcVar3.f6725b, "仅极个别系统支持su提权，如果系统已root直接用root模式会更好", "", "我想试试", "取消选择", new dc(fcVar3, imageView, imageView2, imageView3, 1)).show();
                                break;
                            } else {
                                Toaster.showLong((CharSequence) "已勾选星瑞自动提权，不能再勾选这个");
                                break;
                            }
                        }
                        break;
                }
            }
        });
        final int i16 = 2;
        linearLayout3.setOnClickListener(new View.OnClickListener(this) { // from class: ha.bc

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ fc f6819b;

            {
                this.f6819b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i16) {
                    case 0:
                        fc fcVar = this.f6819b;
                        fcVar.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar2.P != 1) {
                            if (!wVar2.J) {
                                new z6(fcVar.f6724a, fcVar.f6725b, "adb remount挂载系统读写：成功的话即可修改系统文件，删除系统应用等\n如果不了解，请不要勾选，避免您乱删除文件导致系统无法开机等系统性风险", "警告：如果您是小白，怕这怕那的话，请不要开启adb root和adb挂载，免得到时候您怪我喽 ", "我是高手", "取消选择", new dc(fcVar, imageView, imageView2, imageView3, 2)).show();
                                break;
                            } else {
                                Toaster.showLong((CharSequence) "已勾选星瑞自动提权，不能再勾选这个");
                                break;
                            }
                        }
                        break;
                    case 1:
                        fc fcVar2 = this.f6819b;
                        fcVar2.getClass();
                        com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar3.O != 1) {
                            if (!wVar3.J) {
                                new z6(fcVar2.f6724a, fcVar2.f6725b, "adb root：将adb临时提升为root权限(大部分车机、机顶盒支持此功能)\n如果想获得更强功能的话可以选择，如果你设备支持su提权也可以选择su", "\n注：某车机用adb root后会无法使用U盘，那么重启恢复后用su提权", "我要选择", "取消选择", new dc(fcVar2, imageView, imageView2, imageView3, 0)).show();
                                break;
                            } else {
                                Toaster.showLong((CharSequence) "已勾选星瑞自动提权，不能再勾选这个");
                                break;
                            }
                        }
                        break;
                    default:
                        fc fcVar3 = this.f6819b;
                        fcVar3.getClass();
                        com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar4.O != 2) {
                            if (!wVar4.J) {
                                new z6(fcVar3.f6724a, fcVar3.f6725b, "仅极个别系统支持su提权，如果系统已root直接用root模式会更好", "", "我想试试", "取消选择", new dc(fcVar3, imageView, imageView2, imageView3, 1)).show();
                                break;
                            } else {
                                Toaster.showLong((CharSequence) "已勾选星瑞自动提权，不能再勾选这个");
                                break;
                            }
                        }
                        break;
                }
            }
        });
        final int i17 = 0;
        linearLayout4.setOnClickListener(new View.OnClickListener() { // from class: ha.ac
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i17) {
                    case 0:
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar2.P != 0) {
                            imageView4.setBackgroundResource(R.drawable.tp_radio_yes1);
                            imageView5.setBackgroundResource(R.drawable.tp_radio_no1);
                            imageView6.setBackgroundResource(R.drawable.tp_radio_no1);
                            wVar2.o(0);
                            break;
                        }
                        break;
                    case 1:
                        com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar3.P != 2) {
                            if (!wVar3.J) {
                                imageView4.setBackgroundResource(R.drawable.tp_radio_no1);
                                imageView5.setBackgroundResource(R.drawable.tp_radio_no1);
                                imageView6.setBackgroundResource(R.drawable.tp_radio_yes1);
                                wVar3.o(2);
                                break;
                            } else {
                                Toaster.showLong((CharSequence) "已勾选星瑞自动提权，不能再勾选这个");
                                break;
                            }
                        }
                        break;
                    default:
                        com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar4.O != 0) {
                            imageView4.setBackgroundResource(R.drawable.tp_radio_yes1);
                            imageView5.setBackgroundResource(R.drawable.tp_radio_no1);
                            imageView6.setBackgroundResource(R.drawable.tp_radio_no1);
                            wVar4.p(0);
                            break;
                        }
                        break;
                }
            }
        });
        final int i18 = 0;
        linearLayout5.setOnClickListener(new View.OnClickListener(this) { // from class: ha.bc

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ fc f6819b;

            {
                this.f6819b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i18) {
                    case 0:
                        fc fcVar = this.f6819b;
                        fcVar.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar2.P != 1) {
                            if (!wVar2.J) {
                                new z6(fcVar.f6724a, fcVar.f6725b, "adb remount挂载系统读写：成功的话即可修改系统文件，删除系统应用等\n如果不了解，请不要勾选，避免您乱删除文件导致系统无法开机等系统性风险", "警告：如果您是小白，怕这怕那的话，请不要开启adb root和adb挂载，免得到时候您怪我喽 ", "我是高手", "取消选择", new dc(fcVar, imageView4, imageView5, imageView6, 2)).show();
                                break;
                            } else {
                                Toaster.showLong((CharSequence) "已勾选星瑞自动提权，不能再勾选这个");
                                break;
                            }
                        }
                        break;
                    case 1:
                        fc fcVar2 = this.f6819b;
                        fcVar2.getClass();
                        com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar3.O != 1) {
                            if (!wVar3.J) {
                                new z6(fcVar2.f6724a, fcVar2.f6725b, "adb root：将adb临时提升为root权限(大部分车机、机顶盒支持此功能)\n如果想获得更强功能的话可以选择，如果你设备支持su提权也可以选择su", "\n注：某车机用adb root后会无法使用U盘，那么重启恢复后用su提权", "我要选择", "取消选择", new dc(fcVar2, imageView4, imageView5, imageView6, 0)).show();
                                break;
                            } else {
                                Toaster.showLong((CharSequence) "已勾选星瑞自动提权，不能再勾选这个");
                                break;
                            }
                        }
                        break;
                    default:
                        fc fcVar3 = this.f6819b;
                        fcVar3.getClass();
                        com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar4.O != 2) {
                            if (!wVar4.J) {
                                new z6(fcVar3.f6724a, fcVar3.f6725b, "仅极个别系统支持su提权，如果系统已root直接用root模式会更好", "", "我想试试", "取消选择", new dc(fcVar3, imageView4, imageView5, imageView6, 1)).show();
                                break;
                            } else {
                                Toaster.showLong((CharSequence) "已勾选星瑞自动提权，不能再勾选这个");
                                break;
                            }
                        }
                        break;
                }
            }
        });
        final int i19 = 1;
        linearLayout6.setOnClickListener(new View.OnClickListener() { // from class: ha.ac
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i19) {
                    case 0:
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar2.P != 0) {
                            imageView4.setBackgroundResource(R.drawable.tp_radio_yes1);
                            imageView5.setBackgroundResource(R.drawable.tp_radio_no1);
                            imageView6.setBackgroundResource(R.drawable.tp_radio_no1);
                            wVar2.o(0);
                            break;
                        }
                        break;
                    case 1:
                        com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar3.P != 2) {
                            if (!wVar3.J) {
                                imageView4.setBackgroundResource(R.drawable.tp_radio_no1);
                                imageView5.setBackgroundResource(R.drawable.tp_radio_no1);
                                imageView6.setBackgroundResource(R.drawable.tp_radio_yes1);
                                wVar3.o(2);
                                break;
                            } else {
                                Toaster.showLong((CharSequence) "已勾选星瑞自动提权，不能再勾选这个");
                                break;
                            }
                        }
                        break;
                    default:
                        com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar4.O != 0) {
                            imageView4.setBackgroundResource(R.drawable.tp_radio_yes1);
                            imageView5.setBackgroundResource(R.drawable.tp_radio_no1);
                            imageView6.setBackgroundResource(R.drawable.tp_radio_no1);
                            wVar4.p(0);
                            break;
                        }
                        break;
                }
            }
        });
        this.f7050i = (EditText) findViewById(R.id.v_edit_adb_shell_password);
        EditText editText2 = (EditText) findViewById(R.id.v_edit_su);
        this.f7048g = editText2;
        editText2.setText(wVar.f4110b0);
        this.f7048g.setOnKeyListener(new e2(this, linearLayout5, 2));
        this.f7048g.addTextChangedListener(new ec());
        this.f7050i.setText(wVar.l);
        final int i20 = 0;
        this.f7050i.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.cc

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ fc f6868b;

            {
                this.f6868b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i132, KeyEvent keyEvent) {
                switch (i20) {
                    case 0:
                        fc fcVar = this.f6868b;
                        fcVar.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i132 != 20) {
                                if (i132 == 19) {
                                    fcVar.f7048g.requestFocus();
                                    break;
                                }
                            } else {
                                fcVar.f7052k.requestFocus();
                                break;
                            }
                        }
                        break;
                    default:
                        fc fcVar2 = this.f6868b;
                        fcVar2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i132 != 20) {
                                if (i132 != 19) {
                                    if (i132 == 22 && Selection.getSelectionStart(fcVar2.f7049h.getText()) == fcVar2.f7049h.getText().length() && Selection.getSelectionEnd(fcVar2.f7049h.getText()) == fcVar2.f7049h.getText().length()) {
                                        fcVar2.f7051j.requestFocus();
                                        break;
                                    }
                                } else {
                                    fcVar2.f7052k.requestFocus();
                                    break;
                                }
                            }
                        }
                        break;
                }
                return true;
            }
        });
        TextView textView2 = (TextView) findViewById(R.id.v_installer_name);
        this.l = textView2;
        int i21 = wVar.f4112c0;
        if (i21 == 0) {
            textView2.setText("管家安装器");
        } else if (i21 == 1) {
            textView2.setText("系统安装器");
        } else if (i21 == 2) {
            textView2.setText("指定安装器");
        } else if (i21 == 3) {
            textView2.setText("由打开方式");
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_installer);
        this.f7052k = constraintLayout;
        constraintLayout.setOnClickListener(new androidx.leanback.widget.h0(2, this));
        TextView textView3 = (TextView) findViewById(R.id.v_btn_ico);
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        if (com.yunpan.appmanage.util.j.f4033a.f4064p.isEmpty() || Build.VERSION.SDK_INT < 21) {
            textView3.setVisibility(8);
        } else {
            final int i22 = 2;
            textView3.setOnClickListener(new View.OnClickListener(this) { // from class: ha.zb

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ fc f8176b;

                {
                    this.f8176b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) throws PackageManager.NameNotFoundException {
                    PackageInfo packageInfo;
                    fc fcVar = this.f8176b;
                    switch (i22) {
                        case 0:
                            fcVar.getClass();
                            if (Build.VERSION.SDK_INT >= 23) {
                                try {
                                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                    packageInfo = kVar.f4037b.getPackageInfo(kVar.f4041d, 12292);
                                } catch (Exception unused) {
                                    packageInfo = null;
                                }
                                PackageInfo packageInfo2 = packageInfo;
                                if (packageInfo2 != null) {
                                    fcVar.dismiss();
                                    new za(fcVar.f6724a, fcVar.f6725b, packageInfo2, Process.myUid(), false).show();
                                    break;
                                } else {
                                    Toaster.show((CharSequence) "出错，无法打开");
                                    break;
                                }
                            } else {
                                Toaster.showLong((CharSequence) "低于安卓6.0无需管理权限");
                                break;
                            }
                        case 1:
                            fcVar.getClass();
                            if (fa.g0.f5682a.d().isEmpty()) {
                                DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                                    Toaster.showLong((CharSequence) "既没有sd卡也没有U盘，无法设置");
                                    break;
                                }
                            }
                            fcVar.dismiss();
                            new z6(fcVar.f6724a, fcVar.f6725b, "修改" + fcVar.f6725b.getString(R.string.app_name) + "的背景图", "", "选择图片", "恢复默认", new h5.m(14, fcVar)).show();
                            break;
                        default:
                            fcVar.dismiss();
                            fcVar.f6724a.startActivity(new Intent(fcVar.f6725b, (Class<?>) ActivityGjDiy.class));
                            break;
                    }
                }
            });
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void show() {
        super.show();
        if (kh.e.b().e(this)) {
            return;
        }
        kh.e.b().j(this);
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(String str) {
    }
}
