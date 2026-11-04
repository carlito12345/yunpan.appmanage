package ua;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.os.Build;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.SignatureBean;
import com.yunpan.appmanage.ui.ActivityHome;
import ha.fa;
import ha.sa;
import java.text.DecimalFormat;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class x7 extends da.h {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f16040g;

    /* renamed from: h, reason: collision with root package name */
    public final x9.b1 f16041h = new x9.b1();

    /* renamed from: i, reason: collision with root package name */
    public final x9.b1 f16042i = new x9.b1();

    /* renamed from: j, reason: collision with root package name */
    public TextView f16043j;

    @Override // da.h
    public final int j() {
        return R.layout.fragment_cmd;
    }

    @Override // da.h
    public final void k() {
        this.f16043j = (TextView) i(R.id.v_ts);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) i(R.id.v_list);
        this.f16040g = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this.f4529e, 8));
        this.f16040g.setOnItemListener(new w7());
        u7 u7Var = new u7(this, 4);
        x9.b1 b1Var = this.f16041h;
        b1Var.f2882f = u7Var;
        b1Var.f2881e = new u7(this, 5);
        this.f16040g.setOnInBorderKeyEventListener(new t6(5));
        new mc.c(0, new u7(this, 3)).d(rc.f.f13757b).a(fc.b.a()).b(new v7(this, 0));
    }

    public final void n(UsbManager usbManager, UsbDevice usbDevice, UsbInterface usbInterface, boolean z) {
        if (!usbManager.hasPermission(usbDevice)) {
            usbManager.requestPermission(usbDevice, PendingIntent.getBroadcast(this.f4529e.getApplicationContext(), 0, new Intent("appmanage.usb.permission"), 67108864));
            return;
        }
        fa.e0 e0Var = fa.a.f5647b;
        if (e0Var.c()) {
            new sa(this.f4530f, this.f4529e).show();
        } else if (e0Var.f5676f && e0Var.f5675e.getDeviceId() == usbDevice.getDeviceId()) {
            new ha.o1(this.f4530f, this.f4529e, new h2.d(this, usbDevice, usbInterface, z)).show();
        } else {
            o(usbDevice, usbInterface, z);
        }
    }

    public final void o(UsbDevice usbDevice, UsbInterface usbInterface, boolean z) {
        int i10 = 0;
        fa.e0 e0Var = fa.a.f5647b;
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        e0Var.f5671a = (UsbManager) com.yunpan.appmanage.util.j.f4033a.f4035a.getSystemService("usb");
        e0Var.f5675e = usbDevice;
        new mc.c(i10, new fa.c0(i10, usbDevice, usbInterface, z)).d(rc.f.f13757b).a(fc.b.a()).b(new v7(this, 3));
    }

    public final void p() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("应用 | 占用空间分析");
        arrayList.add("应用 | 使用流量分析");
        arrayList.add("应用 | 安装时间排序");
        arrayList.add("应用 | 近期使用记录");
        arrayList.add("设备 | 详细使用记录");
        arrayList.add("设备 | 系统日志分析");
        new fa(this.f4530f, this.f4529e, null, arrayList, new u7(this, 2)).show();
    }

    public final void q() {
        SignatureBean signatureBean;
        com.yunpan.appmanage.util.k kVar;
        if (this.f16043j.getText().toString().trim().isEmpty()) {
            StringBuffer stringBuffer = new StringBuffer();
            StringBuilder sb2 = new StringBuilder("当前使用的版本：v");
            com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
            sb2.append(wVar.f4111c);
            sb2.append("_");
            sb2.append(wVar.f4113d);
            sb2.append(" ");
            stringBuffer.append(sb2.toString());
            String strH = d.b.H();
            boolean zContains = false;
            try {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                kVar = com.yunpan.appmanage.util.j.f4033a;
            } catch (Exception unused) {
            }
            boolean z = kVar.f4035a.getPackageManager().getActivityInfo(new ComponentName(kVar.f4035a, (Class<?>) ActivityHome.class), 128).screenOrientation == 1;
            String str = "";
            if (Build.VERSION.SDK_INT >= 19) {
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                zContains = com.yunpan.appmanage.util.j.f4033a.f4035a.getApplicationInfo().nativeLibraryDir.contains("x86");
            } else {
                String strL = g.b.l(Build.CPU_ABI, "", new StringBuilder());
                if (strL.contains("x86") && !strL.contains("v")) {
                    zContains = true;
                }
            }
            if (!strH.isEmpty()) {
                if (this.f4529e.getPackageName().equals("com.huawei.gjservice")) {
                    stringBuffer.append("海信版");
                } else if (this.f4529e.getPackageName().equals("com.yunpan.appmanage")) {
                    if (strH.equals("d2cba57296ebebe2")) {
                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                        stringBuffer.append(com.yunpan.appmanage.util.j.f4033a.f4055k ? "公签UID版" : "公签版");
                        stringBuffer.append("(飞思卡尔)");
                    } else if (strH.equals("b3998086d056cffa")) {
                        if (z) {
                            stringBuffer.append("哪吒v(强制竖屏)");
                        } else {
                            DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                            stringBuffer.append(com.yunpan.appmanage.util.j.f4033a.f4055k ? "公签UID版(原生安卓)" : "公签版");
                        }
                    } else if (strH.equals("936eacbe07f201df")) {
                        DecimalFormat decimalFormat5 = com.yunpan.appmanage.util.k.f4034u0;
                        stringBuffer.append(com.yunpan.appmanage.util.j.f4033a.f4055k ? "公签UID版" : "公签版");
                        stringBuffer.append("(展讯SC9853)");
                    } else if (strH.equals("92a528c773d7a141")) {
                        DecimalFormat decimalFormat6 = com.yunpan.appmanage.util.k.f4034u0;
                        stringBuffer.append(com.yunpan.appmanage.util.j.f4033a.f4055k ? "公签UID版" : "公签版");
                        stringBuffer.append("(瑞芯微RK3288)");
                    } else if (strH.equals("dd9f672ad5cb3cb2")) {
                        DecimalFormat decimalFormat7 = com.yunpan.appmanage.util.k.f4034u0;
                        stringBuffer.append(com.yunpan.appmanage.util.j.f4033a.f4055k ? "公签UID版" : "公签版");
                        stringBuffer.append("(高通)");
                    } else if (strH.equals("c8e2fec5ee08adf5")) {
                        DecimalFormat decimalFormat8 = com.yunpan.appmanage.util.k.f4034u0;
                        stringBuffer.append(com.yunpan.appmanage.util.j.f4033a.f4055k ? "公签UID版" : "公签版");
                        stringBuffer.append("(诺威达)");
                    }
                } else {
                    stringBuffer.append("修改版");
                }
            }
            DecimalFormat decimalFormat9 = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
            if (!kVar2.f4053j && (signatureBean = kVar2.f4066q) != null) {
                if (signatureBean.str_number.equals("b3998086d056cffa")) {
                    str = "公签版";
                } else if (kVar2.f4066q.str_number.equals("ea73f1e4d2cbcee0")) {
                    str = "公签版(方易通7870)";
                } else if (kVar2.f4066q.str_number.equals("d2cba57296ebebe2")) {
                    str = "公签版(飞思卡尔)";
                } else if (kVar2.f4066q.str_number.equals("dd9f672ad5cb3cb2")) {
                    str = "公签版(高通)";
                } else if (kVar2.f4066q.str_number.equals("c8e2fec5ee08adf5")) {
                    str = "公签版(诺威达)";
                } else if (kVar2.f4066q.str_number.equals("936eacbe07f201df")) {
                    str = "公签版(展讯SC9853)";
                } else if (kVar2.f4066q.str_number.equals("92a528c773d7a141")) {
                    str = "公签版(瑞芯微RK3288)";
                }
                if (zContains) {
                    stringBuffer.append("-x86");
                }
                if (!str.isEmpty()) {
                    stringBuffer.append("    ");
                    stringBuffer.append("您的系统适合安装：".concat(str));
                }
            } else if (zContains) {
                stringBuffer.append("-x86");
            }
            this.f16043j.setText(stringBuffer.toString());
        }
    }

    public final void r(String str) {
        new ha.z6(this.f4530f, this.f4529e, str, "", "知道了", "", new s9.a(15, false)).show();
    }
}
