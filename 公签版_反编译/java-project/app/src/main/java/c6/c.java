package c6;

import a2.e0;
import a2.w0;
import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbInterface;
import android.os.Build;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.ui.ActivityAutoClickUsbSet;
import com.yunpan.appmanage.ui.ActivityFloatButton;
import com.yunpan.appmanage.ui.ActivityKeyMapEvent;
import com.yunpan.appmanage.ui.ActivityNezha;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.v;
import d2.w;
import fa.b0;
import fa.h;
import fa.l;
import h5.m;
import ha.ba;
import ha.c9;
import ha.da;
import ha.db;
import ha.e5;
import ha.e9;
import ha.fb;
import ha.h3;
import ha.h7;
import ha.h8;
import ha.hb;
import ha.i;
import ha.ie;
import ha.j3;
import ha.j6;
import ha.ja;
import ha.k7;
import ha.l4;
import ha.l6;
import ha.n6;
import ha.n7;
import ha.o;
import ha.o1;
import ha.oa;
import ha.p7;
import ha.pa;
import ha.r0;
import ha.r3;
import ha.vc;
import ha.x0;
import ha.x9;
import ha.y6;
import ha.z6;
import java.util.ArrayList;
import org.slf4j.Marker;
import ua.g6;
import ua.i1;
import ua.i9;
import ua.q8;
import ua.x7;
import wa.t;
import wa.u;
import x9.k3;
import x9.l3;
import x9.w3;
import x9.y0;
import z7.s;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2875a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2876b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2877c;

    public /* synthetic */ c(Object obj, int i10, Object obj2) {
        this.f2875a = i10;
        this.f2876b = obj;
        this.f2877c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws NumberFormatException {
        Object obj = this.f2877c;
        Object obj2 = this.f2876b;
        switch (this.f2875a) {
            case 0:
                int bindingAdapterPosition = ((RecyclerView.ViewHolder) obj2).getBindingAdapterPosition();
                if (bindingAdapterPosition != -1) {
                    ue.d.b(view);
                    g gVar = (g) obj;
                    gVar.getClass();
                    e eVar = gVar.f2881e;
                    if (eVar != null) {
                        eVar.x(gVar, view, bindingAdapterPosition);
                        break;
                    }
                }
                break;
            case 1:
                i iVar = (i) obj2;
                iVar.getClass();
                if (!h.f5683a.i() && !l.f5712a.isConnected()) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add("使用通知栏输入");
                    arrayList.add("手动小窗口输入");
                    if (Build.VERSION.SDK_INT > 24) {
                        arrayList.add("开发者选项(小窗悬浮)");
                    }
                    new ja(iVar.f6724a, iVar.f6725b, (ConstraintLayout) obj, arrayList, new ha.c(iVar)).show();
                    break;
                } else {
                    Toaster.showLong((CharSequence) "adb已连接");
                    break;
                }
            case 2:
                x0 x0Var = (x0) obj2;
                new ie(x0Var.f6724a, x0Var.f6725b, x0Var.f8030v, new w(x0Var, 8, (TextView) obj)).show();
                break;
            case 3:
                int i10 = R.drawable.tp_check1;
                x0 x0Var2 = (x0) obj2;
                boolean z = x0Var2.f8023k;
                x0Var2.f8023k = true ^ z;
                if (z) {
                    i10 = R.drawable.tp_check2;
                }
                ((ImageView) obj).setImageResource(i10);
                break;
            case 4:
                j3 j3Var = (j3) obj2;
                new ie(j3Var.f6724a, j3Var.f6725b, j3Var.F, new w(j3Var, 10, (TextView) obj)).show();
                break;
            case 5:
                r3 r3Var = (r3) obj2;
                new ie(r3Var.f6724a, r3Var.f6725b, r3Var.D, new w(r3Var, 11, (TextView) obj)).show();
                break;
            case 6:
                o1 o1Var = (o1) obj2;
                o1Var.getClass();
                String string = ((EditText) obj).getText().toString();
                if (string.isEmpty()) {
                    string = "960";
                }
                int i11 = Integer.parseInt(string);
                if (i11 >= 240 && i11 <= 5000) {
                    com.yunpan.appmanage.util.w wVar = v.f4106a;
                    if (wVar.r != i11) {
                        wVar.r = i11;
                        try {
                            wVar.f4123i.l("AutoSizeWidthDp", Integer.valueOf(i11));
                        } catch (Exception unused) {
                        }
                        wVar.m();
                        new z6(o1Var.f6724a, o1Var.f6725b, "修改后需要重启本应用方可生效", "", "关闭应用", "", new m(5, o1Var)).show();
                        break;
                    } else {
                        a0.u("值一样，无更改");
                        o1Var.dismiss();
                        break;
                    }
                } else {
                    a0.u("请勿恶意修改");
                    break;
                }
                break;
            case 7:
                e5 e5Var = (e5) obj2;
                new j6(e5Var.f6724a, e5Var.f6725b).a(new a1.d(19, (TextView) obj));
                break;
            case 8:
                n6 n6Var = (n6) obj2;
                n6Var.getClass();
                if (!((TextView) obj).isFocused()) {
                    if (!n6Var.f7466h.getText().equals("监听日志")) {
                        Toaster.show((CharSequence) "请先停止监听日志");
                        break;
                    } else {
                        IPermission systemAlertWindowPermission = PermissionLists.getSystemAlertWindowPermission();
                        Context context = n6Var.f6725b;
                        if (!XXPermissions.isGrantedPermission(context, systemAlertWindowPermission)) {
                            XXPermissions.with(context).permission(PermissionLists.getSystemAlertWindowPermission()).request(new g2.c(9));
                            break;
                        } else {
                            new da(n6Var.f6724a, context, new l6(n6Var, 1)).show();
                            break;
                        }
                    }
                } else {
                    a0.u("禁止遥控器使用此功能");
                    break;
                }
            case 9:
                o1 o1Var2 = (o1) obj2;
                o1Var2.getClass();
                String string2 = ((EditText) obj).getText().toString();
                if (string2.isEmpty()) {
                    string2 = "5555";
                }
                int i12 = Integer.parseInt(string2);
                if (i12 >= 2000) {
                    if (i12 <= 65536) {
                        pa paVar = (pa) o1Var2.f7501h;
                        if (paVar != null) {
                            paVar.f7584a.a(i12);
                        }
                        o1Var2.dismiss();
                        break;
                    } else {
                        a0.u("请勿恶意修改");
                        break;
                    }
                } else {
                    a0.u("请设置大于 2000 的端口号");
                    break;
                }
            case 10:
                o1 o1Var3 = (o1) obj2;
                h2.d dVar = (h2.d) o1Var3.f7501h;
                if (dVar != null) {
                    String string3 = ((EditText) obj).getText().toString();
                    x7 x7Var = (x7) dVar.f6335b;
                    x7Var.getClass();
                    fa.a.f5647b.f5677g = string3;
                    x7Var.o((UsbDevice) dVar.f6336c, (UsbInterface) dVar.f6337d, dVar.f6334a);
                }
                o1Var3.dismiss();
                break;
            case 11:
                z6 z6Var = (z6) obj2;
                z6Var.getClass();
                com.bumptech.glide.c.j(view);
                String strF = g.b.f((EditText) obj);
                if (!strF.isEmpty()) {
                    if (!z6Var.l || (!strF.contains("١") && !strF.contains("/") && !strF.contains(":") && !strF.contains(Marker.ANY_MARKER) && !strF.contains("?") && !strF.contains("\\") && !strF.contains("\"") && !strF.contains("<") && !strF.contains("|") && !strF.contains(">"))) {
                        z6Var.dismiss();
                        ((y6) z6Var.f8156m).n(strF, true);
                        break;
                    } else {
                        a0.u("不能带有特殊符号");
                        break;
                    }
                } else {
                    a0.u("不能为空");
                    break;
                }
                break;
            case 12:
                o1 o1Var4 = (o1) obj2;
                o1Var4.getClass();
                String strTrim = ((EditText) obj).getText().toString().trim();
                if (!strTrim.isEmpty()) {
                    ((h7) o1Var4.f7501h).a(strTrim);
                    o1Var4.dismiss();
                    break;
                } else {
                    a0.u("不能为空");
                    break;
                }
            case 13:
                int i13 = R.drawable.tp_check1;
                k7 k7Var = (k7) obj2;
                boolean z4 = k7Var.f7312j;
                k7Var.f7312j = true ^ z4;
                if (z4) {
                    i13 = R.drawable.tp_check2;
                }
                ((ImageView) obj).setImageResource(i13);
                break;
            case 14:
                k7 k7Var2 = (k7) obj2;
                k7Var2.getClass();
                String strTrim2 = ((EditText) obj).getText().toString().trim();
                if (!strTrim2.isEmpty()) {
                    h8 h8Var = k7Var2.f7309g;
                    boolean z10 = k7Var2.f7312j;
                    try {
                        switch (h8Var.f7154a) {
                            case 3:
                                int i14 = h8Var.f7155b;
                                int i15 = h8Var.f7156c;
                                String str = h8Var.f7157d;
                                ea.e eVar2 = h8Var.f7158e;
                                s sVar = new s();
                                sVar.l("keyType", Integer.valueOf(i14));
                                sVar.l("gnType", Integer.valueOf(i15));
                                sVar.m("name", str + "：" + strTrim2);
                                sVar.m("str1", strTrim2);
                                sVar.k("isBfb", Boolean.valueOf(z10));
                                eVar2.k(sVar);
                                break;
                            default:
                                int i16 = h8Var.f7155b;
                                int i17 = h8Var.f7156c;
                                String str2 = h8Var.f7157d;
                                ea.e eVar3 = h8Var.f7158e;
                                s sVar2 = new s();
                                sVar2.l("keyType", Integer.valueOf(i16));
                                sVar2.l("gnType", Integer.valueOf(i17));
                                sVar2.m("name", str2 + "：" + strTrim2);
                                sVar2.m("str1", strTrim2);
                                eVar3.k(sVar2);
                                break;
                        }
                    } catch (Exception unused2) {
                    }
                    k7Var2.dismiss();
                    break;
                } else {
                    a0.u("不能为空");
                    break;
                }
            case 15:
                o1 o1Var5 = (o1) obj2;
                o1Var5.getClass();
                String strTrim3 = ((EditText) obj).getText().toString().trim();
                if (!strTrim3.isEmpty()) {
                    int i18 = Integer.parseInt(strTrim3);
                    if (i18 >= 1) {
                        n7 n7Var = (n7) o1Var5.f7501h;
                        if (n7Var != null) {
                            n7Var.h(i18);
                        }
                        o1Var5.dismiss();
                        break;
                    } else {
                        a0.u("无语！！！！！！！！！！！！！");
                        break;
                    }
                } else {
                    a0.u("请输入");
                    break;
                }
            case 16:
                o1 o1Var6 = (o1) obj2;
                o1Var6.getClass();
                String strTrim4 = ((EditText) obj).getText().toString().trim();
                if (!strTrim4.isEmpty()) {
                    int i19 = Integer.parseInt(strTrim4);
                    if (i19 >= 1) {
                        c9 c9Var = (c9) o1Var6.f7501h;
                        if (c9Var != null) {
                            e9 e9Var = c9Var.f6861a;
                            y0 y0Var = e9Var.G;
                            int i20 = c9Var.f6862b;
                            ((x9.x0) y0Var.t(i20)).f18384b = !((x9.x0) e9Var.G.t(i20)).f18384b;
                            ((x9.x0) e9Var.G.t(i20)).f18383a = i19 + "秒内仅触发一次";
                            e9Var.G.e(i20);
                            e9Var.A.l("OutTimeOneMap", Integer.valueOf(i19));
                            new z6(e9Var.f6724a, e9Var.f6725b, "特殊用处：某些时候找不到唯一的日志时！比如：某些操作会出现多条相同的日志，而我们刚好就需要这条日志时，那么勾选此项可解决触发多次的烦恼", "注：此功能仅相对于（单击操作）").show();
                        }
                        o1Var6.dismiss();
                        break;
                    } else {
                        a0.u("无语！！！！！！！！！！！！！");
                        break;
                    }
                } else {
                    a0.u("请输入");
                    break;
                }
            case 17:
                o1 o1Var7 = (o1) obj2;
                o1Var7.getClass();
                String string4 = ((EditText) obj).getText().toString();
                if (string4.trim().length() == 1) {
                    o oVar = (o) o1Var7.f7501h;
                    if (oVar != null) {
                        String strTrim5 = string4.trim();
                        int i21 = ActivityNezha.F;
                        ActivityNezha activityNezha = (ActivityNezha) oVar.f7496c;
                        activityNezha.getClass();
                        com.yunpan.appmanage.util.w wVar2 = v.f4106a;
                        wVar2.U = strTrim5;
                        try {
                            wVar2.f4123i.m("Nezha_VIN", strTrim5);
                        } catch (Exception unused3) {
                        }
                        wVar2.m();
                        if (ActivityNezha.y()) {
                            k3 k3Var = activityNezha.D;
                            int i22 = oVar.f7495b;
                            ((l3) k3Var.t(i22)).f18271a = R.drawable.tp_check1;
                            activityNezha.D.e(i22);
                            a0.w("设置成功");
                        } else {
                            a0.t("设置失败");
                        }
                    }
                    o1Var7.dismiss();
                    break;
                } else {
                    a0.u("请输入车架号(VIN)最后一位");
                    break;
                }
            case 18:
                ba baVar = (ba) obj2;
                baVar.getClass();
                if (!((TextView) obj).isFocused()) {
                    if (!baVar.f6809g.getText().equals("开始监听")) {
                        Toaster.show((CharSequence) "请先停止监听日志");
                        break;
                    } else {
                        IPermission systemAlertWindowPermission2 = PermissionLists.getSystemAlertWindowPermission();
                        Context context2 = baVar.f6725b;
                        if (!XXPermissions.isGrantedPermission(context2, systemAlertWindowPermission2)) {
                            XXPermissions.with(context2).permission(PermissionLists.getSystemAlertWindowPermission()).request(new g2.c(18));
                            break;
                        } else {
                            ArrayList arrayList2 = baVar.f6815n;
                            arrayList2.clear();
                            baVar.f6811i.E(arrayList2);
                            baVar.f6813k.setText("0");
                            v8.a aVar = new v8.a(AppStart.f3772h);
                            aVar.j(R.layout.window_logcat);
                            aVar.f16661h = "LogcatDialog";
                            aVar.a(256);
                            aVar.a(512);
                            aVar.l(Build.VERSION.SDK_INT >= 28 ? 1 : 0);
                            aVar.q(new w8.b(0));
                            aVar.p();
                            aVar.m(R.id.v_btn_start, new x9(baVar));
                            aVar.d();
                            break;
                        }
                    }
                } else {
                    a0.u("禁止遥控器使用此功能");
                    break;
                }
            case 19:
                oa oaVar = (oa) obj2;
                oaVar.getClass();
                CheckBox checkBox = (CheckBox) obj;
                if (!checkBox.isChecked()) {
                    checkBox.setText("选择打开方式");
                    break;
                } else if (!oaVar.f7536h.isEmpty()) {
                    checkBox.setText("设为默认打开");
                    break;
                } else {
                    a0.u("此文件无后缀，无法设默认");
                    checkBox.setChecked(false);
                    break;
                }
            case 20:
                fb fbVar = (fb) obj2;
                fbVar.getClass();
                ((LinearLayout) obj).setVisibility(8);
                new fg.b(new db(0, fbVar), 1).start();
                break;
            case 21:
                hb hbVar = (hb) obj2;
                hbVar.getClass();
                com.bumptech.glide.c.j(view);
                String strF2 = g.b.f((EditText) obj);
                if (!strF2.isEmpty()) {
                    w3 w3Var = hbVar.f7166g;
                    if (w3Var.f18364a.equals(strF2)) {
                        hbVar.dismiss();
                    }
                    if (!strF2.contains("١") && !strF2.contains("/") && !strF2.contains(":") && !strF2.contains(Marker.ANY_MARKER) && !strF2.contains("?") && !strF2.contains("\\") && !strF2.contains("\"") && !strF2.contains("<") && !strF2.contains("|") && !strF2.contains(">")) {
                        int i23 = hbVar.f7168i;
                        if (i23 != 0 && i23 != 1) {
                            w0 w0Var = b0.f5652a;
                            String str3 = w3Var.f18365b;
                            w0Var.f347c = new w(hbVar, 22, strF2);
                            u9.d.f15554a.execute(new e0(w0Var, str3, strF2, 8));
                            break;
                        } else {
                            w0 w0Var2 = b0.f5652a;
                            String strU = android.support.v4.media.session.a.u(new StringBuilder(), w3Var.f18365b, "/", strF2);
                            int i24 = 1;
                            boolean z11 = i23 == 1;
                            w0Var2.f347c = new p7(11, hbVar);
                            u9.d.f15554a.execute(new fa.s(w0Var2, strU, z11, i24));
                            break;
                        }
                    } else {
                        a0.u("文件名不能带有特殊符号");
                        break;
                    }
                } else {
                    a0.u("文件名不能为空");
                    break;
                }
                break;
            case 22:
                o1 o1Var8 = (o1) obj2;
                o1Var8.getClass();
                String string5 = ((EditText) obj).getText().toString();
                if (!string5.isEmpty()) {
                    if (!string5.contains("١") && !string5.contains("/") && !string5.contains(":") && !string5.contains(Marker.ANY_MARKER) && !string5.contains("?") && !string5.contains("\\") && !string5.contains("\"") && !string5.contains("<") && !string5.contains("|") && !string5.contains(">")) {
                        o1Var8.dismiss();
                        g6 g6Var = (g6) o1Var8.f7501h;
                        ((q8) g6Var.f15697c).A(true, string5, (ArrayList) g6Var.f15696b);
                        break;
                    } else {
                        Toaster.show((CharSequence) "关键字不能带有特殊符号！");
                        break;
                    }
                } else {
                    Toaster.show((CharSequence) "关键字不能为空");
                    break;
                }
            case 23:
                vc vcVar = (vc) obj2;
                vcVar.getClass();
                new r0(vcVar.f6724a, vcVar.f6725b, 1, new w(vcVar, 25, (TextView) obj)).show();
                break;
            case 24:
                vc vcVar2 = (vc) obj2;
                if (!vcVar2.f7959i.isEmpty()) {
                    String strF3 = g.b.f((EditText) obj);
                    if (!strF3.isEmpty() && strF3.split(",").length != 4) {
                        a0.u("请输入正确的坐标");
                        break;
                    } else {
                        String str4 = vcVar2.f7959i;
                        h8 h8Var2 = vcVar2.f7958h;
                        int i25 = h8Var2.f7155b;
                        int i26 = h8Var2.f7156c;
                        String str5 = h8Var2.f7157d;
                        ea.e eVar4 = h8Var2.f7158e;
                        try {
                            s sVar3 = new s();
                            sVar3.l("keyType", Integer.valueOf(i25));
                            sVar3.l("gnType", Integer.valueOf(i26));
                            sVar3.m("name", str5 + "：" + str4 + " （" + strF3 + ")");
                            sVar3.m("str1", str4);
                            sVar3.m("str2", strF3);
                            eVar4.k(sVar3);
                        } catch (Exception unused4) {
                        }
                        vcVar2.dismiss();
                        break;
                    }
                } else {
                    a0.u("请选择应用");
                    break;
                }
                break;
            case 25:
                ((EditText) obj2).setText("");
                ((EditText) obj).setText("");
                break;
            case 26:
                o1 o1Var9 = (o1) obj2;
                o1Var9.getClass();
                String string6 = ((EditText) obj).getText().toString();
                i1 i1Var = (i1) o1Var9.f7501h;
                switch (i1Var.f15726a) {
                    case 24:
                        ((q8) ((h3) i1Var.f15727b).f7143d).q(string6);
                        break;
                    default:
                        l4 l4Var = (l4) i1Var.f15727b;
                        ((i9) l4Var.f7355e).p(l4Var.f7353c, string6);
                        break;
                }
                o1Var9.dismiss();
                break;
            case 27:
                int i27 = ActivityAutoClickUsbSet.E;
                ActivityAutoClickUsbSet activityAutoClickUsbSet = (ActivityAutoClickUsbSet) obj2;
                activityAutoClickUsbSet.getClass();
                u uVar = t.f17728a;
                boolean z12 = !uVar.W;
                try {
                    uVar.W = z12;
                    uVar.f17731b.k("AutoClick_USB_OTG_AUTHORIZED_BOOTSTART", Boolean.valueOf(z12));
                } catch (Exception unused5) {
                }
                uVar.i();
                ta.m.e(activityAutoClickUsbSet.A);
                ((ImageView) obj).setImageResource(t.f17728a.W ? R.drawable.tp_check1 : R.drawable.tp_check2);
                break;
            case 28:
                ActivityFloatButton activityFloatButton = (ActivityFloatButton) obj2;
                activityFloatButton.C.k("isOpen", Boolean.valueOf(!r1.o("isOpen").b()));
                q4.a.O(activityFloatButton.A, activityFloatButton.C);
                ((ImageView) obj).setImageResource(activityFloatButton.C.o("isOpen").b() ? R.drawable.tp_check1 : R.drawable.tp_check2);
                break;
            default:
                int i28 = ActivityKeyMapEvent.F;
                ActivityKeyMapEvent activityKeyMapEvent = (ActivityKeyMapEvent) obj2;
                activityKeyMapEvent.getClass();
                if (!((ConstraintLayout) obj).isFocused()) {
                    activityKeyMapEvent.y(-1);
                    break;
                } else {
                    a0.u("此功能不支持遥控器点击");
                    break;
                }
        }
    }
}
