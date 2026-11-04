package d2;

import a2.e0;
import a2.g1;
import a2.w0;
import android.app.Activity;
import android.app.AlarmManager;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.content.FileProvider;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.bean.LogcatBean;
import com.yunpan.appmanage.bean.NameContentSelectBean;
import com.yunpan.appmanage.bean.UsbAdbData;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.ui.ActivityCodeEditor;
import f2.i0;
import ha.a9;
import ha.ba;
import ha.d2;
import ha.e5;
import ha.e9;
import ha.ea;
import ha.f0;
import ha.fa;
import ha.fc;
import ha.hb;
import ha.he;
import ha.j3;
import ha.ke;
import ha.m4;
import ha.n7;
import ha.o1;
import ha.oa;
import ha.pe;
import ha.q0;
import ha.qd;
import ha.r0;
import ha.r3;
import ha.vc;
import ha.w1;
import ha.w8;
import ha.x0;
import ha.y8;
import ha.z6;
import j$.nio.charset.StandardCharsets;
import j$.util.DesugarTimeZone;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import x9.j5;
import x9.k5;
import x9.t3;
import x9.t4;
import x9.w3;

/* loaded from: classes.dex */
public final /* synthetic */ class w implements b0, u1.f, ec.d, ea.g, he, ea.e, ea.b, c6.e, ea, n7, fa.w, q0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4348a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4349b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4350c;

    public /* synthetic */ w(Object obj, int i10, Object obj2) {
        this.f4348a = i10;
        this.f4349b = obj;
        this.f4350c = obj2;
    }

    @Override // ea.g
    public void a(String str) {
        switch (this.f4348a) {
            case 3:
                ha.p pVar = (ha.p) this.f4349b;
                pVar.getClass();
                int iIndexOf = str.indexOf(":");
                if (iIndexOf != -1) {
                    String strTrim = str.substring(iIndexOf + 1).trim();
                    EditText editText = (EditText) this.f4350c;
                    editText.setText(strTrim);
                    EditText editText2 = pVar.f7551m;
                    int[] iArr = pVar.B;
                    String[] strArr = pVar.A;
                    if (editText != editText2) {
                        if (editText != pVar.f7552n) {
                            if (editText != pVar.f7553p) {
                                if (editText != pVar.f7554q) {
                                    if (editText == pVar.r) {
                                        strArr[4] = str.substring(0, iIndexOf).trim();
                                        iArr[4] = str.length() - 5;
                                        break;
                                    }
                                } else {
                                    strArr[3] = str.substring(0, iIndexOf).trim();
                                    iArr[3] = str.length() - 5;
                                    break;
                                }
                            } else {
                                strArr[2] = str.substring(0, iIndexOf).trim();
                                iArr[3] = str.length() - 5;
                                break;
                            }
                        } else {
                            strArr[1] = str.substring(0, iIndexOf).trim();
                            iArr[1] = str.length() - 5;
                            break;
                        }
                    } else {
                        strArr[0] = str.substring(0, iIndexOf).trim();
                        iArr[0] = str.length() - 5;
                        break;
                    }
                } else {
                    Toaster.show((CharSequence) "此条日志不符合");
                    break;
                }
                break;
            default:
                e9 e9Var = (e9) this.f4349b;
                e9Var.getClass();
                int iIndexOf2 = str.indexOf(":");
                if (iIndexOf2 != -1) {
                    EditText editText3 = e9Var.f6967h;
                    EditText editText4 = (EditText) this.f4350c;
                    if (editText4 == editText3) {
                        e9Var.C = str.substring(0, iIndexOf2).trim();
                    } else if (editText4 == e9Var.f6968i) {
                        e9Var.D = str.substring(0, iIndexOf2).trim();
                    } else if (editText4 == e9Var.f6969j) {
                        e9Var.E = str.substring(0, iIndexOf2).trim();
                    }
                    editText4.setText(str.substring(iIndexOf2 + 1).trim());
                    break;
                } else {
                    Toaster.show((CharSequence) "此条日志不符合");
                    break;
                }
        }
    }

    @Override // u1.f
    public void accept(Object obj) {
        b2.d dVar = (b2.d) this.f4349b;
        ((i0) obj).l(dVar.f2528a, dVar.f2529b, (f2.y) this.f4350c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ha.he, ha.ea
    public void b(int i10) {
        int i11 = 21;
        int i12 = 0;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        int i13 = 4;
        final int i14 = 1;
        Object obj = this.f4350c;
        Object obj2 = this.f4349b;
        switch (this.f4348a) {
            case 4:
                ha.w wVar = (ha.w) obj2;
                wVar.getClass();
                KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) ((ArrayList) obj).get(i10);
                wVar.f7974n = keyMapSelectBean;
                wVar.f7969h.setText(keyMapSelectBean.gn_name);
                break;
            case 5:
                ha.y yVar = (ha.y) obj2;
                yVar.getClass();
                KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) ((ArrayList) obj).get(i10);
                yVar.f8071m = keyMapSelectBean2;
                yVar.f8069j.setText(keyMapSelectBean2.gn_name);
                break;
            case 6:
            case 7:
            case 9:
            case 12:
            case 13:
            case 15:
            case 17:
            default:
                vc vcVar = (vc) obj2;
                TextView textView = (TextView) obj;
                if (i10 == 0) {
                    vcVar.f7959i = "d";
                    textView.setText("等级：调试  D");
                    break;
                } else if (i10 == 1) {
                    vcVar.f7959i = "i";
                    textView.setText("等级：信息  I");
                    break;
                } else if (i10 == 2) {
                    vcVar.f7959i = "w";
                    textView.setText("等级：警告  W");
                    break;
                } else if (i10 == 3) {
                    vcVar.f7959i = "v";
                    textView.setText("等级：详细  V");
                    break;
                } else if (i10 == 4) {
                    vcVar.f7959i = "e";
                    textView.setText("等级：错误  E");
                    break;
                } else {
                    vcVar.getClass();
                    break;
                }
            case 8:
                x0 x0Var = (x0) obj2;
                KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) x0Var.f8030v.get(i10);
                x0Var.f8024m = keyMapSelectBean3;
                ((TextView) obj).setText(keyMapSelectBean3.gn_name);
                break;
            case 10:
                j3 j3Var = (j3) obj2;
                KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) j3Var.F.get(i10);
                j3Var.f7250w = keyMapSelectBean4;
                ((TextView) obj).setText(keyMapSelectBean4.gn_name);
                break;
            case 11:
                r3 r3Var = (r3) obj2;
                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) r3Var.D.get(i10);
                r3Var.r = keyMapSelectBean5;
                ((TextView) obj).setText(keyMapSelectBean5.gn_name);
                break;
            case 14:
                ((EditText) obj2).setText((CharSequence) ((ArrayList) obj).get(i10));
                break;
            case 16:
                final a9 a9Var = (a9) obj2;
                a9Var.getClass();
                final KeyMapSelectBean keyMapSelectBean6 = (KeyMapSelectBean) ((ArrayList) obj).get(i10);
                int i15 = keyMapSelectBean6.gn_type;
                if (i15 != -1) {
                    if (i15 >= 10002 && i15 < 10100 && Build.VERSION.SDK_INT == 19) {
                        com.yunpan.appmanage.util.a0.t("此功能不适合您的系统（安卓4.4）");
                    }
                    int i16 = keyMapSelectBean6.gn_type;
                    if (i16 != 10003 && i16 != 10005) {
                        Activity activity = a9Var.f6724a;
                        Context context = a9Var.f6725b;
                        if (i16 == 100 || i16 == 101) {
                            new r0(activity, context, 5, new w8(a9Var, keyMapSelectBean6)).show();
                            break;
                        } else if (i16 != 204 && i16 != 205) {
                            z7.s sVar = a9Var.f6745s;
                            if (i16 != 304 && i16 != 305) {
                                if (i16 == 352) {
                                    HashMap<String, UsbDevice> deviceList = ((UsbManager) context.getSystemService("usb")).getDeviceList();
                                    if (deviceList != null && !deviceList.isEmpty()) {
                                        final ArrayList arrayList = new ArrayList();
                                        ArrayList arrayList2 = new ArrayList();
                                        for (UsbDevice usbDevice : deviceList.values()) {
                                            arrayList2.add(usbDevice.getVendorId() + "," + usbDevice.getProductId());
                                            if (Build.VERSION.SDK_INT >= 21) {
                                                arrayList.add(usbDevice.getManufacturerName() + " " + usbDevice.getProductName() + " " + usbDevice.getVendorId() + "," + usbDevice.getProductId());
                                            }
                                        }
                                        new fa(a9Var.f6724a, a9Var.f6725b, "当前已插入的USB设备", Build.VERSION.SDK_INT >= 21 ? arrayList : arrayList2, new ea() { // from class: ha.x8
                                            @Override // ha.ea
                                            public final void b(int i17) {
                                                switch (i14) {
                                                    case 0:
                                                        a9 a9Var2 = a9Var;
                                                        a9Var2.getClass();
                                                        StringBuilder sb2 = new StringBuilder();
                                                        KeyMapSelectBean keyMapSelectBean7 = keyMapSelectBean6;
                                                        sb2.append(keyMapSelectBean7.gn_name);
                                                        sb2.append("（");
                                                        ArrayList arrayList3 = arrayList;
                                                        sb2.append((String) arrayList3.get(i17));
                                                        sb2.append("）");
                                                        String string = sb2.toString();
                                                        a9Var2.b(string);
                                                        z7.s sVar2 = new z7.s();
                                                        sVar2.l("type", Integer.valueOf(keyMapSelectBean7.gn_type));
                                                        sVar2.m("str1", (String) arrayList3.get(i17));
                                                        z7.s sVar3 = a9Var2.f6745s;
                                                        sVar3.m("name", string);
                                                        sVar3.j("event", sVar2);
                                                        break;
                                                    default:
                                                        a9 a9Var3 = a9Var;
                                                        a9Var3.getClass();
                                                        StringBuilder sb3 = new StringBuilder();
                                                        KeyMapSelectBean keyMapSelectBean8 = keyMapSelectBean6;
                                                        sb3.append(keyMapSelectBean8.gn_name);
                                                        sb3.append("（");
                                                        ArrayList arrayList4 = arrayList;
                                                        sb3.append((String) arrayList4.get(i17));
                                                        sb3.append("）");
                                                        String string2 = sb3.toString();
                                                        a9Var3.b(string2);
                                                        z7.s sVar4 = new z7.s();
                                                        sVar4.l("type", Integer.valueOf(keyMapSelectBean8.gn_type));
                                                        sVar4.m("str1", (String) arrayList4.get(i17));
                                                        z7.s sVar5 = a9Var3.f6745s;
                                                        sVar5.m("name", string2);
                                                        sVar5.j("event", sVar4);
                                                        break;
                                                }
                                            }
                                        }).show();
                                        break;
                                    } else {
                                        com.yunpan.appmanage.util.a0.u("请先插入USB设备");
                                        break;
                                    }
                                } else if (i16 != 10002 && i16 != 10007) {
                                    if (i16 == 501) {
                                        new o1(activity, context, new y8(a9Var, i12)).show();
                                        break;
                                    } else if (i16 == 502) {
                                        new ha.w(activity, context, new y8(a9Var, i14)).show();
                                        break;
                                    } else if (i16 == 503) {
                                        new ha.y(activity, context, new y8(a9Var, i13)).show();
                                        break;
                                    } else if (i16 == 506) {
                                        ArrayList arrayList3 = new ArrayList();
                                        for (int i17 = 1; i17 <= 600; i17++) {
                                            arrayList3.add(String.valueOf(i17));
                                        }
                                        new fa(a9Var.f6724a, a9Var.f6725b, null, arrayList3, new w8(a9Var, keyMapSelectBean6)).show();
                                        break;
                                    } else {
                                        z7.s sVar2 = new z7.s();
                                        sVar2.l("type", Integer.valueOf(keyMapSelectBean6.gn_type));
                                        sVar.m("name", keyMapSelectBean6.gn_name);
                                        sVar.j("event", sVar2);
                                        a9Var.b(keyMapSelectBean6.gn_name);
                                        break;
                                    }
                                } else {
                                    String[] strArr = {"OFF", "P", "R", "N", "D", "S", "L", "B"};
                                    new fa(a9Var.f6724a, a9Var.f6725b, "请选择档位", new ArrayList(Arrays.asList(strArr)), new com.hjq.permissions.b(a9Var, keyMapSelectBean6, strArr, i13)).show();
                                    break;
                                }
                            } else {
                                if (Build.VERSION.SDK_INT >= 23) {
                                    ArrayList arrayList4 = new ArrayList();
                                    arrayList4.add(PermissionLists.getAccessCoarseLocationPermission());
                                    arrayList4.add(PermissionLists.getAccessFineLocationPermission());
                                    if (!XXPermissions.isGrantedPermissions(context, arrayList4)) {
                                        XXPermissions.with(context).permissions(arrayList4).request(new g2.c(12));
                                        break;
                                    }
                                }
                                WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
                                if (wifiManager == null) {
                                    com.yunpan.appmanage.util.a0.u("此系统没有WiFi功能？");
                                    break;
                                } else if (wifiManager.isWifiEnabled()) {
                                    WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                                    if (connectionInfo == null) {
                                        com.yunpan.appmanage.util.a0.u("请先连接指定wifi");
                                        break;
                                    } else {
                                        String strReplace = connectionInfo.getSSID().replace("\"", "");
                                        if (strReplace.isEmpty()) {
                                            strReplace = "未知wifi";
                                        }
                                        String str = keyMapSelectBean6.gn_name + "（" + strReplace + "）";
                                        a9Var.b(str);
                                        z7.s sVar3 = new z7.s();
                                        sVar3.l("type", Integer.valueOf(keyMapSelectBean6.gn_type));
                                        sVar3.m("str1", strReplace);
                                        sVar.m("name", str);
                                        sVar.j("event", sVar3);
                                        break;
                                    }
                                } else {
                                    com.yunpan.appmanage.util.a0.u("请先连接指定wifi");
                                    break;
                                }
                            }
                        } else {
                            int i18 = Build.VERSION.SDK_INT;
                            if (i18 >= 23) {
                                ArrayList arrayList5 = new ArrayList();
                                arrayList5.add(PermissionLists.getAccessCoarseLocationPermission());
                                arrayList5.add(PermissionLists.getAccessFineLocationPermission());
                                if (!XXPermissions.isGrantedPermissions(context, arrayList5)) {
                                    XXPermissions.with(context).permissions(arrayList5).request(new g2.c(11));
                                    break;
                                }
                            }
                            BluetoothAdapter adapter = i18 >= 18 ? b1.o.d(wa.t.f17728a.f17735d.getSystemService("bluetooth")).getAdapter() : BluetoothAdapter.getDefaultAdapter();
                            ArrayList arrayList6 = null;
                            if (!adapter.isEnabled()) {
                                com.yunpan.appmanage.util.a0.u("请先打开蓝牙");
                            } else if (adapter.isEnabled()) {
                                Set<BluetoothDevice> bondedDevices = adapter.getBondedDevices();
                                HashSet hashSet = new HashSet();
                                if (!bondedDevices.isEmpty()) {
                                    Iterator<BluetoothDevice> it = bondedDevices.iterator();
                                    while (it.hasNext()) {
                                        String name = it.next().getName();
                                        if (name == null) {
                                            name = "未知设备";
                                        }
                                        hashSet.add(name);
                                    }
                                }
                                if (hashSet.isEmpty()) {
                                    com.yunpan.appmanage.util.a0.u("没找到匹配过的蓝牙设备");
                                }
                                arrayList6 = new ArrayList(hashSet);
                            } else {
                                Toaster.show((CharSequence) "请先打开蓝牙");
                            }
                            final ArrayList arrayList7 = arrayList6;
                            if (arrayList7 != null && !arrayList7.isEmpty()) {
                                final Object[] objArr3 = objArr2 == true ? 1 : 0;
                                new fa(a9Var.f6724a, a9Var.f6725b, "选择匹配过的蓝牙设备", arrayList7, new ea() { // from class: ha.x8
                                    @Override // ha.ea
                                    public final void b(int i172) {
                                        switch (objArr3) {
                                            case 0:
                                                a9 a9Var2 = a9Var;
                                                a9Var2.getClass();
                                                StringBuilder sb2 = new StringBuilder();
                                                KeyMapSelectBean keyMapSelectBean7 = keyMapSelectBean6;
                                                sb2.append(keyMapSelectBean7.gn_name);
                                                sb2.append("（");
                                                ArrayList arrayList32 = arrayList7;
                                                sb2.append((String) arrayList32.get(i172));
                                                sb2.append("）");
                                                String string = sb2.toString();
                                                a9Var2.b(string);
                                                z7.s sVar22 = new z7.s();
                                                sVar22.l("type", Integer.valueOf(keyMapSelectBean7.gn_type));
                                                sVar22.m("str1", (String) arrayList32.get(i172));
                                                z7.s sVar32 = a9Var2.f6745s;
                                                sVar32.m("name", string);
                                                sVar32.j("event", sVar22);
                                                break;
                                            default:
                                                a9 a9Var3 = a9Var;
                                                a9Var3.getClass();
                                                StringBuilder sb3 = new StringBuilder();
                                                KeyMapSelectBean keyMapSelectBean8 = keyMapSelectBean6;
                                                sb3.append(keyMapSelectBean8.gn_name);
                                                sb3.append("（");
                                                ArrayList arrayList42 = arrayList7;
                                                sb3.append((String) arrayList42.get(i172));
                                                sb3.append("）");
                                                String string2 = sb3.toString();
                                                a9Var3.b(string2);
                                                z7.s sVar4 = new z7.s();
                                                sVar4.l("type", Integer.valueOf(keyMapSelectBean8.gn_type));
                                                sVar4.m("str1", (String) arrayList42.get(i172));
                                                z7.s sVar5 = a9Var3.f6745s;
                                                sVar5.m("name", string2);
                                                sVar5.j("event", sVar4);
                                                break;
                                        }
                                    }
                                }).show();
                                break;
                            }
                        }
                    } else {
                        new z6(a9Var.f6724a, a9Var.f6725b, "此功能仅适合短时间下车后又立即上车的情况下", "就是车机还没重启的情况下", "确定", "取消", new g1(i11, a9Var, keyMapSelectBean6, objArr == true ? 1 : 0)).show();
                        break;
                    }
                }
                break;
            case 18:
                ((ba) obj2).f6814m.setText(((String[]) obj)[i10]);
                break;
        }
    }

    @Override // fa.w
    public void c(String str, boolean z) {
        hb hbVar = (hb) this.f4349b;
        hbVar.getClass();
        if (!z) {
            com.yunpan.appmanage.util.a0.s(str, true);
            return;
        }
        w3 w3Var = hbVar.f7166g;
        File file = new File(w3Var.f18365b);
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        ExecutorService executorService = com.yunpan.appmanage.util.j.f4033a.f4048g0;
        String str2 = (String) this.f4350c;
        executorService.submit(new e0(hbVar, file, str2, 10));
        com.yunpan.appmanage.util.a0.v("修改成功", true);
        w3Var.f18364a = str2;
        w3Var.f18365b = file.getParent() + "/" + str2;
        hbVar.f7167h.a(w3Var);
        hbVar.dismiss();
    }

    @Override // ha.q0
    public void d(String str, String str2, String str3) {
        ((vc) this.f4349b).f7959i = str2;
        ((TextView) this.f4350c).setText(da.b.c("打开应用：", str));
    }

    @Override // d2.b0
    public int e(Object obj) {
        q qVar = (q) obj;
        qVar.getClass();
        r1.p pVar = (r1.p) this.f4350c;
        String str = pVar.f13523o;
        String str2 = qVar.f4295b;
        return ((str2.equals(str) || str2.equals(c0.c(pVar))) && qVar.c((Context) this.f4349b, pVar, false) && qVar.d(pVar)) ? 1 : 0;
    }

    @Override // ea.b
    public void f(boolean z) {
        w1 w1Var = (w1) this.f4349b;
        w1Var.getClass();
        if (z) {
            z7.s sVar = (z7.s) this.f4350c;
            String strI = sVar.o("name").i();
            for (int i10 = 0; i10 < w1Var.f7988s.b(); i10++) {
                if (((z7.s) w1Var.f7988s.t(i10)).o("name").i().equals(strI)) {
                    com.yunpan.appmanage.util.a0.u("关键字已存在，请勿重复添加");
                    return;
                }
            }
            w1Var.f7988s.q(sVar);
        }
    }

    @Override // ec.d
    public void g(mc.b bVar) throws IllegalAccessException, InterruptedException, IllegalArgumentException, InvocationTargetException {
        String strP;
        byte[] bArrJ;
        String str;
        y9.f fVar;
        Object obj = this.f4349b;
        Object obj2 = this.f4350c;
        switch (this.f4348a) {
            case 2:
                AppBean appBean = (AppBean) obj2;
                ((w0) obj).getClass();
                try {
                    w0.u(appBean);
                    bVar.b();
                    return;
                } catch (Exception e7) {
                    bVar.d(e7);
                    return;
                }
            case 12:
                m4 m4Var = (m4) obj;
                m4Var.getClass();
                NameContentSelectBean nameContentSelectBean = (NameContentSelectBean) obj2;
                String str2 = !nameContentSelectBean.isSelect ? "default" : "allow";
                w0 w0Var = fa.b0.f5652a;
                StringBuilder sb2 = new StringBuilder("appops set ");
                Context context = m4Var.f6725b;
                sb2.append(context.getPackageName());
                sb2.append(" APP_AUTO_START ");
                sb2.append(str2);
                String string = sb2.toString();
                w0Var.getClass();
                fa.a0 a0VarO = w0.o(2000L, string);
                w0.o(2000L, "appops set " + context.getPackageName() + " APP_ASSOC_START " + str2);
                if (!a0VarO.b()) {
                    if (nameContentSelectBean.isSelect) {
                        com.yunpan.appmanage.util.a0.u("此开关不适合您的设备");
                    }
                    bVar.f(1);
                } else if (nameContentSelectBean.isSelect) {
                    com.yunpan.appmanage.util.a0.u("授权成功");
                }
                bVar.b();
                return;
            case 19:
                ba baVar = (ba) ((com.yunpan.appmanage.carsdk.u) obj).f3894b;
                String string2 = baVar.f6814m.getText().toString();
                boolean zIsEmpty = string2.isEmpty();
                ArrayList arrayList = baVar.f6815n;
                ArrayList arrayList2 = (ArrayList) obj2;
                if (zIsEmpty) {
                    arrayList2.addAll(arrayList);
                    bVar.b();
                    return;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    LogcatBean logcatBean = (LogcatBean) it.next();
                    if (logcatBean.log.contains(string2)) {
                        arrayList2.add(logcatBean);
                    }
                }
                bVar.b();
                return;
            case 21:
                String strF = g.b.f((EditText) ((d2) obj).f6883j);
                if (strF.isEmpty()) {
                    str = "请输入命令";
                } else {
                    fa.e0 e0Var = fa.a.f5647b;
                    if (e0Var.c()) {
                        StringBuffer stringBuffer = (StringBuffer) obj2;
                        if (strF.startsWith("adb shell ") || !strF.startsWith("adb ")) {
                            try {
                                UsbAdbData usbAdbDataA = e0Var.a(10000L, strF.trim());
                                stringBuffer.append(usbAdbDataA.getListStr());
                                stringBuffer.append(SignParameters.NEW_LINE);
                                stringBuffer.append("结果 " + usbAdbDataA.code);
                                stringBuffer.append(SignParameters.NEW_LINE);
                                bVar.b();
                                return;
                            } catch (Exception e10) {
                                bVar.d(e10);
                                return;
                            }
                        }
                        String strTrim = strF.substring(4).trim();
                        int iIndexOf = strTrim.indexOf(" ");
                        if (iIndexOf == -1) {
                            strP = strTrim.concat(":");
                        } else {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(strTrim.substring(0, iIndexOf));
                            sb3.append(":");
                            strP = android.support.v4.media.session.a.p(strTrim, iIndexOf + 1, sb3);
                        }
                        try {
                            z9.d dVarJ = e0Var.f5673c.J(strP);
                            try {
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                do {
                                    try {
                                        bArrJ = dVarJ.J();
                                        if (bArrJ != null && bArrJ.length != 0) {
                                            byteArrayOutputStream.write(bArrJ, 0, bArrJ.length);
                                        }
                                        if (bArrJ != null || bArrJ.length == 0) {
                                            throw new Exception("等待结果超时");
                                        }
                                        stringBuffer.append(new String(byteArrayOutputStream.toByteArray(), Charset.forName(HTTP.UTF_8)));
                                        bVar.b();
                                        dVarJ.close();
                                        return;
                                    } catch (Exception unused) {
                                        throw new Exception("无法读取结果");
                                    }
                                } while (System.currentTimeMillis() - jCurrentTimeMillis < 2688);
                                if (bArrJ != null) {
                                }
                                throw new Exception("等待结果超时");
                            } catch (Throwable th2) {
                                try {
                                    dVarJ.close();
                                } catch (Throwable th3) {
                                    try {
                                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                    } catch (Exception unused2) {
                                    }
                                }
                                throw th2;
                            }
                        } catch (Exception e11) {
                            bVar.d(e11);
                            return;
                        }
                    }
                    str = "adb 连接已断开";
                }
                android.support.v4.media.session.a.B(str, bVar);
                return;
            case 24:
                File file = (File) obj;
                w3 w3Var = (w3) obj2;
                try {
                    if (file.exists()) {
                        file.delete();
                    }
                    if (com.yunpan.appmanage.util.a0.e(w3Var.f18365b, file.getPath())) {
                        bVar.b();
                        return;
                    }
                } catch (Exception unused3) {
                }
                bVar.d(new Exception());
                return;
            case 26:
                w3 w3Var2 = (w3) obj2;
                qd qdVar = (qd) obj;
                AtomicBoolean atomicBoolean = qdVar.f7645q;
                try {
                    fa.p pVar = fa.i0.f5694a;
                    if (!((pVar.f5736c == null || (fVar = pVar.f5737d) == null || fVar.f19008f || pVar.f5738e == null) ? false : true)) {
                        try {
                            atomicBoolean.set(false);
                            gh.c cVar = qdVar.f7644p;
                            Charset charset = StandardCharsets.UTF_8;
                            cVar.write("setprop sys.adb.authed false\n".getBytes(charset));
                            qdVar.f7644p.flush();
                            qdVar.f7644p.write("setprop ro.adb.secure 0\n".getBytes(charset));
                            qdVar.f7644p.flush();
                            if (!pVar.e(qdVar.f7637g.f3252b.getInetAddress().getHostAddress())) {
                                com.yunpan.appmanage.util.a0.t("连接失败");
                                bVar.b();
                                qdVar.f7644p.write("setprop sys.adb.authed true\n".getBytes(charset));
                                qdVar.f7644p.flush();
                                qdVar.f7644p.write("setprop ro.adb.secure 1\n".getBytes(charset));
                                qdVar.f7644p.flush();
                                Thread.sleep(168L);
                                atomicBoolean.set(true);
                                return;
                            }
                            qdVar.f7644p.write("setprop sys.adb.authed true\n".getBytes(charset));
                            qdVar.f7644p.flush();
                            qdVar.f7644p.write("setprop ro.adb.secure 1\n".getBytes(charset));
                            qdVar.f7644p.flush();
                            Thread.sleep(168L);
                            atomicBoolean.set(true);
                        } catch (Throwable th4) {
                            gh.c cVar2 = qdVar.f7644p;
                            Charset charset2 = StandardCharsets.UTF_8;
                            cVar2.write("setprop sys.adb.authed true\n".getBytes(charset2));
                            qdVar.f7644p.flush();
                            qdVar.f7644p.write("setprop ro.adb.secure 1\n".getBytes(charset2));
                            qdVar.f7644p.flush();
                            Thread.sleep(168L);
                            atomicBoolean.set(true);
                            throw th4;
                        }
                    }
                    pVar.k(w3Var2.f18365b);
                    fa.o oVarC = pVar.c("pm install -r -d -t -g /sdcard/.gj123.apk");
                    if (oVarC.f5723a != 0) {
                        oVarC = pVar.c("pm install -r -d -t /sdcard/.gj123.apk");
                    }
                    pVar.c("rm -rf /sdcard/.gj123.apk");
                    if (oVarC.f5723a == 0) {
                        com.yunpan.appmanage.util.a0.w("安装成功");
                    } else {
                        com.yunpan.appmanage.util.a0.t("安装失败：".concat(oVarC.f5724b));
                    }
                } catch (Exception e12) {
                    e12.printStackTrace();
                    g.b.s(e12, new StringBuilder("失败："));
                }
                bVar.b();
                return;
            default:
                String str3 = (String) obj2;
                pe peVar = (pe) obj;
                peVar.getClass();
                Date dateA = pe.a();
                if (dateA != null) {
                    Toaster.show((CharSequence) ("当前北京时间：" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(dateA)));
                }
                Context context2 = peVar.f6725b;
                ContentResolver contentResolver = context2.getContentResolver();
                try {
                    Settings.Global.putInt(contentResolver, "auto_time", 0);
                    Settings.Global.putInt(contentResolver, "auto_time_zone", 0);
                    Settings.Global.putString(contentResolver, "time_zone", "Asia/Hong_Kong");
                    if (str3.isEmpty()) {
                        str3 = "ntp.ntsc.ac.cn";
                    }
                    Settings.Global.putString(contentResolver, "ntp_server", str3);
                } catch (Exception unused4) {
                }
                try {
                    TimeZone.setDefault(DesugarTimeZone.getTimeZone("Asia/Hong_Kong"));
                } catch (Exception unused5) {
                }
                fa.b0.f5652a.getClass();
                w0.h("setprop persist.sys.timezone Asia/Hong_Kong");
                w0.h("settings put global time_zone Asia/Hong_Kong");
                w0.h("service call alarm 3 s16 Asia/Hong_Kong");
                try {
                    AlarmManager alarmManager = (AlarmManager) context2.getSystemService("alarm");
                    alarmManager.setTimeZone("Asia/Hong_Kong");
                    if (dateA != null) {
                        alarmManager.setTime(dateA.getTime());
                    }
                } catch (Exception unused6) {
                    if (dateA != null) {
                        w0 w0Var2 = fa.b0.f5652a;
                        String str4 = "date " + new SimpleDateFormat("MMddHHmmyyyy.ss").format(dateA);
                        w0Var2.getClass();
                        w0.h(str4);
                    }
                }
                Settings.Global.putInt(contentResolver, "auto_time", 1);
                fa.b0.f5652a.getClass();
                w0.h("am broadcast -a android.intent.action.CONFIGURATION_CHANGED");
                bVar.b();
                return;
        }
    }

    @Override // ha.n7
    public void h(int i10) {
        Integer numValueOf = Integer.valueOf(i10);
        z7.s sVar = (z7.s) this.f4349b;
        sVar.l("time", numValueOf);
        sVar.m("name", "延时：" + i10 + " ms");
        ((ea.e) this.f4350c).k(sVar);
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        switch (this.f4348a) {
            case 6:
                ha.b0 b0Var = (ha.b0) this.f4349b;
                b0Var.getClass();
                if (((View) this.f4350c).getId() != R.id.v_add1) {
                    b0Var.f6775q.q(sVar);
                    break;
                } else {
                    b0Var.f6774p.q(sVar);
                    break;
                }
            default:
                f0 f0Var = (f0) this.f4349b;
                f0Var.getClass();
                if (((View) this.f4350c).getId() != R.id.v_add1) {
                    f0Var.r.q(sVar);
                    break;
                } else {
                    f0Var.f7005q.q(sVar);
                    break;
                }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x019b  */
    @Override // c6.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void x(c6.g gVar, View view, int i10) {
        int i11;
        Uri uriFromFile;
        Object obj = this.f4350c;
        Object obj2 = this.f4349b;
        switch (this.f4348a) {
            case 13:
                e5 e5Var = (e5) obj2;
                e5Var.l = i10;
                ((t4) obj).F(i10);
                switch (i10) {
                    case 0:
                        i11 = R.drawable.bg_cursor1;
                        break;
                    case 1:
                        i11 = R.drawable.bg_cursor2;
                        break;
                    case 2:
                        i11 = R.drawable.bg_cursor3;
                        break;
                    case 3:
                        i11 = R.drawable.bg_cursor4;
                        break;
                    case 4:
                        i11 = R.drawable.tp_gb2;
                        break;
                    case 5:
                        i11 = R.drawable.tp_gb3;
                        break;
                    case 6:
                        i11 = R.drawable.tp_gb4;
                        break;
                    case 7:
                        i11 = R.drawable.tp_gb5;
                        break;
                    case 8:
                        i11 = R.drawable.tp_gb6;
                        break;
                    case 9:
                        i11 = R.drawable.tp_gb7;
                        break;
                    case 10:
                        i11 = R.drawable.tp_gb8;
                        break;
                    case 11:
                        i11 = R.drawable.tp_gb9;
                        break;
                    case 12:
                        i11 = R.drawable.tp_gb10;
                        break;
                    case 13:
                        i11 = R.drawable.tp_gb11;
                        break;
                    case 14:
                        i11 = R.drawable.float_icon_transparent_1;
                        break;
                    case 15:
                        i11 = R.drawable.float_icon_transparent_2;
                        break;
                    case 16:
                        i11 = R.drawable.float_icon_transparent_3;
                        break;
                    case 17:
                        i11 = R.drawable.float_icon_transparent_4;
                        break;
                    default:
                        i11 = R.drawable.tp_gb1;
                        break;
                }
                if (i10 < 4) {
                    e5Var.f6940h.setBackgroundResource(i11);
                    e5Var.f6940h.setImageDrawable(null);
                    break;
                } else {
                    e5Var.f6940h.setImageResource(i11);
                    e5Var.f6940h.setBackgroundResource(R.drawable.shape_noback_nofocus);
                    break;
                }
            case 20:
                oa oaVar = (oa) obj2;
                oaVar.getClass();
                com.bumptech.glide.c.j(view);
                t3 t3Var = (t3) oaVar.f7538j.t(i10);
                oaVar.dismiss();
                String str = t3Var.f18339c;
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    int i12 = Build.VERSION.SDK_INT;
                    File file = oaVar.f7535g;
                    String str2 = t3Var.f18340d;
                    Context context = oaVar.f6725b;
                    if (i12 >= 24) {
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                        if (kVar.f4055k) {
                            if (!file.getPath().startsWith("/data/data/")) {
                                if (!file.getPath().startsWith("/data/" + kVar.f4041d + "/")) {
                                    try {
                                        try {
                                            intent.addFlags(67108864);
                                            intent.putExtra("file_path", file.getPath());
                                            intent.putExtra("file_type", com.yunpan.appmanage.util.a0.i(file));
                                            intent.putExtra("pkg", str);
                                            intent.putExtra("cls", str2);
                                            intent.setComponent(new ComponentName("com.gj.openfile", "com.gj.openfile.MainActivity"));
                                            context.startActivity(intent);
                                            if (!((CheckBox) obj).isChecked()) {
                                                String str3 = oaVar.f7536h;
                                                if (!str3.isEmpty()) {
                                                    com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                                                    String str4 = t3Var.f18339c + "----" + str2;
                                                    wVar.getClass();
                                                    try {
                                                        wVar.f4123i.m(str3, str4);
                                                    } catch (Exception unused) {
                                                    }
                                                    wVar.m();
                                                    break;
                                                }
                                            }
                                        } catch (ActivityNotFoundException unused2) {
                                            com.yunpan.appmanage.util.a0.t("公签UID版需安装管家打开插件，否则无法让第三方应用打开文件");
                                            return;
                                        }
                                    } catch (Exception e7) {
                                        e7.printStackTrace();
                                        return;
                                    }
                                }
                            }
                            com.yunpan.appmanage.util.a0.t("公签UID版的文件，第三方应用无权打开");
                            break;
                        } else {
                            uriFromFile = FileProvider.c(context, context.getPackageName() + ".fileprovider", file);
                            intent.addFlags(1);
                            intent.addFlags(2);
                            intent.addFlags(64);
                            intent.addFlags(128);
                        }
                    } else {
                        uriFromFile = Uri.fromFile(file);
                    }
                    intent.addFlags(268435456);
                    intent.setDataAndType(uriFromFile, com.yunpan.appmanage.util.a0.i(file));
                    if (str2.equals(context.getString(R.string.EditorActivity))) {
                        intent.setClass(context, ActivityCodeEditor.class);
                    } else {
                        intent.setComponent(new ComponentName(str, str2));
                    }
                    context.startActivity(intent);
                    if (!((CheckBox) obj).isChecked()) {
                    }
                } catch (Exception e10) {
                    com.yunpan.appmanage.util.a0.s("打开失败", true);
                    e10.printStackTrace();
                    return;
                }
                break;
            case 23:
                fc fcVar = (fc) obj2;
                fcVar.getClass();
                com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                if (wVar2.f4120g0 != i10) {
                    wVar2.f4120g0 = i10;
                    try {
                        wVar2.f4123i.l("mBarMode", Integer.valueOf(i10));
                    } catch (Exception unused3) {
                    }
                    wVar2.m();
                    ((t4) obj).F(com.yunpan.appmanage.util.v.f4106a.f4120g0);
                    p000if.a.A0(fcVar.getWindow(), i10, true);
                    Activity activity = fcVar.f6724a;
                    p000if.a.A0(activity.getWindow(), i10, false);
                    activity.findViewById(R.id.v_menu).getHeight();
                    activity.findViewById(R.id.v_Pager).getHeight();
                    break;
                }
                break;
            default:
                ke keVar = (ke) obj2;
                keVar.getClass();
                com.bumptech.glide.c.j(view);
                j5 j5Var = (j5) obj;
                int iB = j5Var.b();
                for (int i13 = 0; iB > i13; i13++) {
                    k5 k5Var = (k5) j5Var.t(i13);
                    if (i10 == i13) {
                        if (!k5Var.f18265c) {
                            k5Var.f18265c = true;
                            j5Var.D(i13, k5Var);
                        }
                    } else if (k5Var.f18265c) {
                        k5Var.f18265c = false;
                        j5Var.D(i13, k5Var);
                    }
                }
                String str5 = ((k5) j5Var.t(i10)).f18263a;
                keVar.f7336i = str5;
                if (str5.startsWith(".zip")) {
                    keVar.f7336i = ".zip";
                    break;
                }
                break;
        }
    }
}
