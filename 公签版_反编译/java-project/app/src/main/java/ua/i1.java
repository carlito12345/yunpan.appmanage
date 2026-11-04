package ua;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.widget.TextView;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.bean.ImageData;
import com.yunpan.appmanage.bean.NameValueBean;
import com.yunpan.appmanage.ui.ActivityDesktop;
import com.yunpan.appmanage.ui.ActivityDownload;
import com.yunpan.appmanage.ui.ActivityHome;
import com.yunpan.appmanage.ui.ActivityImage;
import com.yunpan.appmanage.ui.ActivityImage2;
import com.yunpan.appmanage.ui.ActivityKeyMapAcc;
import com.yunpan.appmanage.ui.ActivityKeyMapEvent;
import com.yunpan.appmanage.ui.ActivityKeyMapNissan;
import com.yunpan.appmanage.ui.ActivityKeymapAiOnY;
import com.yunpan.appmanage.ui.ActivityKeymapFlyOS18;
import com.yunpan.appmanage.ui.ActivityLaboratory;
import com.yunpan.appmanage.ui.ActivityNissan;
import com.yunpan.appmanage.ui.ActivityOuShang;
import com.yunpan.appmanage.ui.ActivityOuShangStatusBarNoRoot;
import com.yunpan.appmanage.ui.ActivitySidebar;
import com.yunpan.appmanage.ui.ActivitySystemHasWrite;
import com.yunpan.appmanage.ui.ActivityTextAiOnY;
import com.yunpan.appmanage.ui.ActivityTextFlyOS18;
import com.yunpan.appmanage.ui.ActivityTextFlyOSAll;
import ha.qa;
import ha.wd;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class i1 implements wd, ma.k, xa.c, ea.e, com.yunpan.appmanage.carsdk.d, com.yunpan.appmanage.carsdk.v, w.h2, u9.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15726a;

    /* renamed from: b, reason: collision with root package name */
    public Object f15727b;

    public /* synthetic */ i1(int i10, Object obj) {
        this.f15726a = i10;
        this.f15727b = obj;
    }

    @Override // ha.wd
    public void D() {
        int i10 = 0;
        switch (this.f15726a) {
            case 0:
                ActivityDesktop activityDesktop = (ActivityDesktop) ((ha.s2) this.f15727b).f7726d;
                int i11 = ActivityDesktop.G;
                qf.c.Z(activityDesktop.A);
                break;
            case 1:
                ((ActivityDownload) this.f15727b).finish();
                break;
            case 2:
            case 5:
            case 6:
            case 16:
            default:
                XXPermissions.with((x7) this.f15727b).permission(PermissionLists.getReadPhoneStatePermission()).request(new g5(13, this));
                break;
            case 3:
                if (Build.VERSION.SDK_INT >= 23) {
                    Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                    com.yunpan.appmanage.carsdk.u uVar = (com.yunpan.appmanage.carsdk.u) this.f15727b;
                    intent.setData(Uri.fromParts("package", ((ActivityHome) uVar.f3894b).getPackageName(), null));
                    try {
                        ((ActivityHome) uVar.f3894b).startActivity(intent);
                        break;
                    } catch (Exception unused) {
                        Toaster.showShort((CharSequence) "无法获取授权");
                        return;
                    }
                }
                break;
            case 4:
                int i12 = ActivityHome.O;
                ((ActivityHome) this.f15727b).F();
                break;
            case 7:
                ActivityKeyMapAcc activityKeyMapAcc = (ActivityKeyMapAcc) this.f15727b;
                activityKeyMapAcc.D.E(new ArrayList());
                z7.s sVar = new z7.s();
                activityKeyMapAcc.E = sVar;
                sVar.j("keys", new z7.o());
                q4.a.Q(activityKeyMapAcc.A, activityKeyMapAcc.E);
                ta.m.c(activityKeyMapAcc.A, "UP_KEYMAP_ACC");
                break;
            case 8:
                ActivityKeyMapEvent activityKeyMapEvent = (ActivityKeyMapEvent) this.f15727b;
                activityKeyMapEvent.D.E(new ArrayList());
                z7.s sVar2 = new z7.s();
                activityKeyMapEvent.E = sVar2;
                sVar2.j("keys", new z7.o());
                q4.a.S(activityKeyMapEvent.A, activityKeyMapEvent.E);
                ta.m.c(activityKeyMapEvent.A, "UP_KEYMAP_EVENT");
                break;
            case 9:
                ActivityKeyMapNissan activityKeyMapNissan = (ActivityKeyMapNissan) this.f15727b;
                activityKeyMapNissan.D.E(new ArrayList());
                z7.s sVar3 = new z7.s();
                activityKeyMapNissan.E = sVar3;
                sVar3.j("keys", new z7.o());
                q4.a.W(activityKeyMapNissan.A, activityKeyMapNissan.E);
                ta.m.c(activityKeyMapNissan.A, "UP_KEYMAP_NISSAN");
                break;
            case 10:
                ActivityKeymapAiOnY activityKeymapAiOnY = (ActivityKeymapAiOnY) this.f15727b;
                activityKeymapAiOnY.F.E(new ArrayList());
                activityKeymapAiOnY.H.j("maps", new z7.o());
                q4.a.R(activityKeymapAiOnY.A, activityKeymapAiOnY.H);
                ta.m.c(activityKeymapAiOnY.A, "UP_INIT_AIONY");
                break;
            case 11:
                ActivityKeymapFlyOS18 activityKeymapFlyOS18 = (ActivityKeymapFlyOS18) this.f15727b;
                activityKeymapFlyOS18.F.E(new ArrayList());
                activityKeymapFlyOS18.H.j("maps", new z7.o());
                q4.a.T(activityKeymapFlyOS18.A, activityKeymapFlyOS18.H);
                break;
            case 12:
                ActivityLaboratory.x(((x3) this.f15727b).f16033c, false);
                break;
            case 13:
                break;
            case 14:
                try {
                    ((ActivityNissan) ((x4) this.f15727b).f16035f).getClass();
                    throw null;
                } catch (Exception e7) {
                    com.yunpan.appmanage.util.a0.u("失败：" + e7.getMessage());
                    return;
                }
            case 15:
                ((ActivityOuShang) this.f15727b).w(ActivityOuShangStatusBarNoRoot.class);
                break;
            case 17:
                break;
            case 18:
                g7 g7Var = (g7) this.f15727b;
                ActivitySystemHasWrite activitySystemHasWrite = g7Var.f15700c;
                int i13 = ActivitySystemHasWrite.F;
                activitySystemHasWrite.getClass();
                new mc.c(i10, new qa(7, g7Var.f15699b)).d(rc.f.f13757b).a(fc.b.a()).b(new f7(activitySystemHasWrite, 2));
                break;
        }
    }

    @Override // com.yunpan.appmanage.carsdk.v
    public void F(Object obj, int i10, int i11, int i12) {
        switch (this.f15726a) {
            case 21:
                StringBuilder sbO = ta.q.o(i10, i11, "propertyId=", ", areaId=", ", status=");
                sbO.append(i12);
                sbO.append(", rawValue=");
                sbO.append(obj);
                ActivityTextFlyOS18.x((ActivityTextFlyOS18) this.f15727b, sbO.toString());
                break;
            default:
                ActivityTextFlyOSAll activityTextFlyOSAll = (ActivityTextFlyOSAll) this.f15727b;
                try {
                    if (activityTextFlyOSAll.G.get(Integer.valueOf(i10)) != null) {
                        try {
                            String strX = ActivityTextFlyOSAll.x(obj);
                            if (strX.length() <= 10) {
                                int iIntValue = ((Integer) activityTextFlyOSAll.G.get(Integer.valueOf(i10))).intValue();
                                NameValueBean nameValueBean = (NameValueBean) activityTextFlyOSAll.F.t(iIntValue);
                                if (i11 == 0 && i12 == 0) {
                                    nameValueBean.value = strX;
                                } else {
                                    nameValueBean.value = i11 + "  " + i12 + "  " + strX;
                                }
                                activityTextFlyOSAll.F.e(iIntValue);
                                break;
                            } else {
                                break;
                            }
                        } catch (Exception unused) {
                            return;
                        }
                    }
                } catch (Exception e7) {
                    com.yunpan.appmanage.util.a0.u("出错" + e7.getMessage());
                }
                break;
        }
    }

    @Override // com.yunpan.appmanage.carsdk.v
    public void J(Object obj, int i10, int i11, int i12) {
        switch (this.f15726a) {
            case 21:
                StringBuilder sbO = ta.q.o(i11, i10, "propertyId=", ", wrappedId=", ", state=");
                sbO.append(i12);
                sbO.append(", rawValue=");
                sbO.append(obj);
                ActivityTextFlyOS18.x((ActivityTextFlyOS18) this.f15727b, sbO.toString());
                break;
        }
    }

    @Override // com.yunpan.appmanage.carsdk.d
    public void a(boolean z) {
        ((ActivityTextAiOnY) this.f15727b).Z.setText("大灯状态: ".concat(z ? "开启" : "关闭"));
    }

    @Override // com.yunpan.appmanage.carsdk.d
    public void b(int i10) {
        ActivityTextAiOnY activityTextAiOnY = (ActivityTextAiOnY) this.f15727b;
        TextView textView = activityTextAiOnY.f3990h0;
        activityTextAiOnY.getClass();
        textView.setText("档位: ".concat(i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? "-" : "P" : "R" : "N" : "D"));
    }

    @Override // w.h2
    public void c(v.k kVar, v.m mVar) {
        v.e eVar = (v.e) this.f15727b;
        eVar.f16203f.removeCallbacksAndMessages(null);
        ArrayList arrayList = eVar.f16205h;
        int size = arrayList.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                i10 = -1;
                break;
            } else if (kVar == ((v.d) arrayList.get(i10)).f16197b) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 == -1) {
            return;
        }
        int i11 = i10 + 1;
        eVar.f16203f.postAtTime(new com.yunpan.appmanage.util.p(this, i11 < arrayList.size() ? (v.d) arrayList.get(i11) : null, mVar, kVar, 2), kVar, SystemClock.uptimeMillis() + 200);
    }

    @Override // xa.c
    public void d() {
        switch (this.f15726a) {
            case 5:
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                ImageData imageData = com.yunpan.appmanage.util.j.f4033a.f4076y;
                if (imageData.userInfo == null) {
                    imageData.position++;
                    int i10 = ActivityImage.f3974t0;
                    ((ActivityImage) this.f15727b).y();
                    break;
                }
                break;
            default:
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                int i11 = ActivityImage2.M0;
                ((ActivityImage2) this.f15727b).y();
                break;
        }
    }

    @Override // ma.k
    public void e(int i10, String str) {
        boolean zEquals = str.equals("下载中");
        y7.b bVar = (y7.b) this.f15727b;
        if (zEquals) {
            ((x9.u5) bVar.f18972b).f18351h = g.b.i("多屏互动：", i10, "%");
        } else {
            ((x9.u5) bVar.f18972b).f18351h = str;
        }
        ActivityDownload.y((ActivityDownload) bVar.f18973c, (x9.u5) bVar.f18972b);
    }

    @Override // xa.c
    public void f() {
        switch (this.f15726a) {
            case 5:
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                if (com.yunpan.appmanage.util.j.f4033a.f4076y.userInfo == null) {
                    r0.position--;
                    int i10 = ActivityImage.f3974t0;
                    ((ActivityImage) this.f15727b).y();
                    break;
                }
                break;
            default:
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                ImageData imageData = com.yunpan.appmanage.util.j.f4033a.f4076y;
                imageData.position--;
                int i11 = ActivityImage2.M0;
                ((ActivityImage2) this.f15727b).y();
                break;
        }
    }

    @Override // com.yunpan.appmanage.carsdk.d
    public void g(int i10, int i11) {
        String str;
        ActivityTextAiOnY activityTextAiOnY = (ActivityTextAiOnY) this.f15727b;
        TextView textView = activityTextAiOnY.N0;
        StringBuilder sb2 = new StringBuilder("车窗状态: ");
        activityTextAiOnY.getClass();
        switch (i10) {
            case 241:
                str = "左前窗";
                break;
            case CarSettingID.Recv.RF_WIN_POSITION /* 242 */:
                str = "右前窗";
                break;
            case 243:
                str = "左后窗";
                break;
            case 244:
                str = "右后窗";
                break;
            default:
                str = "未知车窗";
                break;
        }
        sb2.append(str);
        sb2.append(" 开度: ");
        sb2.append(i11);
        sb2.append("%");
        textView.setText(sb2.toString());
    }

    @Override // xa.c
    public void h() {
        switch (this.f15726a) {
            case 5:
                long jCurrentTimeMillis = System.currentTimeMillis();
                ActivityImage activityImage = (ActivityImage) this.f15727b;
                if (jCurrentTimeMillis - activityImage.Z < 2000) {
                    int i10 = activityImage.f3975h0 + 1;
                    activityImage.f3975h0 = i10;
                    if (i10 > 3) {
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar.G0) {
                            activityImage.Y.removeMessages(0);
                            wVar.w(false);
                            activityImage.P.setChecked(false);
                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                        }
                    }
                } else {
                    activityImage.Z = System.currentTimeMillis();
                    activityImage.f3975h0 = 0;
                }
                if (activityImage.D.getVisibility() != 0) {
                    activityImage.A();
                    break;
                } else {
                    activityImage.x();
                    break;
                }
            default:
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                ActivityImage2 activityImage2 = (ActivityImage2) this.f15727b;
                if (jCurrentTimeMillis2 - activityImage2.f3976h0 < 2000) {
                    int i11 = activityImage2.f3977t0 + 1;
                    activityImage2.f3977t0 = i11;
                    if (i11 > 3) {
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar2.G0) {
                            activityImage2.Z.removeMessages(0);
                            wVar2.w(false);
                            activityImage2.P.setChecked(false);
                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                        }
                    }
                } else {
                    activityImage2.f3976h0 = System.currentTimeMillis();
                    activityImage2.f3977t0 = 0;
                }
                if (activityImage2.D.getVisibility() != 0) {
                    activityImage2.D.setVisibility(0);
                    activityImage2.I.setVisibility(0);
                    break;
                } else {
                    activityImage2.x();
                    break;
                }
        }
    }

    @Override // com.yunpan.appmanage.carsdk.d
    public void i(int i10) {
        ActivityTextAiOnY activityTextAiOnY = (ActivityTextAiOnY) this.f15727b;
        TextView textView = activityTextAiOnY.f3991t0;
        activityTextAiOnY.getClass();
        textView.setText("驾驶模式: ".concat(i10 != 0 ? i10 != 1 ? i10 != 2 ? i10 != 4 ? "-" : "自定义" : "运动" : "ECO" : "普通"));
    }

    @Override // ma.k
    public void j() {
        y7.b bVar = (y7.b) this.f15727b;
        x9.u5 u5Var = (x9.u5) bVar.f18972b;
        u5Var.f18351h = "请选择【同意】";
        ActivityDownload.y((ActivityDownload) bVar.f18973c, u5Var);
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        ActivitySidebar activitySidebar = (ActivitySidebar) this.f15727b;
        activitySidebar.L.q(sVar);
        activitySidebar.C.o(activitySidebar.N.strValue).g().p(activitySidebar.O.value_str2).k(sVar);
        q4.a.X(activitySidebar.A, activitySidebar.C);
    }

    @Override // com.yunpan.appmanage.carsdk.d
    public void l(int i10) {
        ((ActivityTextAiOnY) this.f15727b).O0.setText("车速: " + i10 + " km/h");
    }

    @Override // w.h2
    public void m(v.k kVar, v.m mVar) {
        ((v.e) this.f15727b).f16203f.removeCallbacksAndMessages(kVar);
    }

    @Override // u9.b
    public void n(androidx.room.s sVar) {
        this.f15727b = sVar;
    }

    @Override // com.yunpan.appmanage.carsdk.d
    public void o(int i10) {
        ta.q.s("钥匙状态  ", i10, ((ActivityTextAiOnY) this.f15727b).P0);
    }

    @Override // com.yunpan.appmanage.carsdk.d
    public void p(int i10) {
        ta.q.s("尾门状态  ", i10, ((ActivityTextAiOnY) this.f15727b).Q0);
    }

    @Override // com.yunpan.appmanage.carsdk.v
    public void q() {
        switch (this.f15726a) {
            case 21:
                break;
            default:
                int i10 = ActivityTextFlyOSAll.L;
                ActivityTextFlyOSAll activityTextFlyOSAll = (ActivityTextFlyOSAll) this.f15727b;
                activityTextFlyOSAll.getClass();
                try {
                    activityTextFlyOSAll.H.getClass();
                    Iterator it = com.yunpan.appmanage.carsdk.x.f().iterator();
                    int i11 = 0;
                    while (it.hasNext()) {
                        com.yunpan.appmanage.carsdk.w wVar = (com.yunpan.appmanage.carsdk.w) it.next();
                        int i12 = wVar.f3898d;
                        int i13 = wVar.f3895a;
                        if (i12 == 0) {
                            activityTextFlyOSAll.G.put(Integer.valueOf(i13), Integer.valueOf(i11));
                            i11++;
                            activityTextFlyOSAll.I.add(new NameValueBean(String.valueOf(i13), ""));
                        }
                    }
                    activityTextFlyOSAll.K.sendEmptyMessage(1);
                    break;
                } catch (Exception e7) {
                    com.yunpan.appmanage.util.a0.u("读取属性失败:" + e7.getMessage());
                }
        }
    }

    @Override // ma.k
    public void r() {
        y7.b bVar = (y7.b) this.f15727b;
        x9.u5 u5Var = (x9.u5) bVar.f18972b;
        u5Var.f18346c = "安装失败";
        u5Var.f18351h = "系统正在安装其它应用";
        ActivityDownload.y((ActivityDownload) bVar.f18973c, u5Var);
    }

    @Override // com.yunpan.appmanage.carsdk.d
    public void s(int i10, boolean z) {
        String str;
        ActivityTextAiOnY activityTextAiOnY = (ActivityTextAiOnY) this.f15727b;
        TextView textView = activityTextAiOnY.M0;
        StringBuilder sb2 = new StringBuilder("车门状态: ");
        activityTextAiOnY.getClass();
        switch (i10) {
            case CarSettingID.Recv.LF_DOOR_STATUS /* 233 */:
                str = "左前门";
                break;
            case 234:
                str = "右前门";
                break;
            case 235:
                str = "左后门";
                break;
            case CarSettingID.Recv.RR_DOOR_STATUS /* 236 */:
                str = "右后门";
                break;
            default:
                str = "未知车门";
                break;
        }
        sb2.append(str);
        sb2.append(z ? " 开" : " 关");
        textView.setText(sb2.toString());
    }

    @Override // ha.wd
    public void t() {
        int i10 = 0;
        int i11 = 1;
        switch (this.f15726a) {
            case 4:
                int i12 = ActivityHome.O;
                ((ActivityHome) this.f15727b).F();
                break;
            case 12:
                ActivityLaboratory.x(((x3) this.f15727b).f16033c, true);
                break;
            case 13:
                ActivityLaboratory activityLaboratory = ((w3) this.f15727b).f16014b;
                int i13 = ActivityLaboratory.I;
                activityLaboratory.getClass();
                if (!fa.h.f5683a.i() && !fa.l.f5712a.isConnected()) {
                    Toaster.show((CharSequence) "请先连接adb");
                    break;
                } else {
                    new mc.c(i10, new v0(14)).d(rc.f.f13757b).a(fc.b.a()).b(new x3(activityLaboratory, 6));
                    break;
                }
                break;
            case 17:
                ((x6) this.f15727b).f16039b.getClass();
                Toaster.showLong((CharSequence) "尝试中...");
                new mc.c(i10, new t6(i11)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.l2(28));
                break;
        }
    }

    @Override // com.yunpan.appmanage.carsdk.v
    public void v(String str, Throwable th2) {
        switch (this.f15726a) {
            case 21:
                ActivityTextFlyOS18.x((ActivityTextFlyOS18) this.f15727b, "Error where=" + str + ", error=" + th2);
                break;
            default:
                com.yunpan.appmanage.util.a0.u(String.valueOf(th2.getMessage()));
                break;
        }
    }

    public i1() {
        this.f15726a = 28;
    }

    public i1(CodeEditor codeEditor) {
        this.f15726a = 29;
        ue.d.e(codeEditor, "editor");
        this.f15727b = codeEditor;
        new db.p(codeEditor.f8717i).e(db.e.class, new g5(16, this));
    }

    private final void A() {
    }

    private final void B() {
    }

    private final void C() {
    }

    private final void E() {
    }

    private final void G() {
    }

    private final void H() {
    }

    private final void I() {
    }

    private final void K() {
    }

    private final void L() {
    }

    private final void M() {
    }

    private final void N() {
    }

    private final void u() {
    }

    private final void x() {
    }

    private final void y() {
    }

    private final void z() {
    }

    private final void w(Object obj, int i10, int i11, int i12) {
    }
}
