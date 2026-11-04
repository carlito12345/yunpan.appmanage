package g2;

import android.os.Build;
import android.view.View;
import com.hjq.permissions.OnPermissionCallback;
import com.hsae.autosdk.core.NoConst;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.bean.UsbAdbData;
import com.yunpan.appmanage.service.StartService;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import fa.e0;
import fa.l;
import fa.m;
import ha.t9;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;
import s1.g;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements t7.d, ec.d, OnPermissionCallback, TvRecyclerView.OnInBorderKeyEventListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5981a;

    public /* synthetic */ c(int i10) {
        this.f5981a = i10;
    }

    @Override // t7.d
    public Object apply(Object obj) {
        i3.a aVar = (i3.a) obj;
        switch (this.f5981a) {
            case 0:
                return Long.valueOf(aVar.f8485b);
            default:
                return Long.valueOf(aVar.f8486c);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0135  */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws InterruptedException {
        boolean z;
        String next;
        StringBuilder sb2;
        k kVar;
        String str = "";
        switch (this.f5981a) {
            case 2:
                m mVar = l.f5712a;
                mVar.O("adb tcpip 5555");
                Thread.sleep(1000L);
                if (!mVar.isConnected()) {
                    bVar.b();
                    break;
                } else {
                    android.support.v4.media.session.a.B("", bVar);
                    break;
                }
            case 20:
                fa.a.f5647b.a(PopupConst.DURATION_POPUP_SHORT, "setprop ctl.restart adbd");
                Thread.sleep(1000L);
                bVar.b();
                break;
            default:
                e0 e0Var = fa.a.f5647b;
                StringBuilder sb3 = new StringBuilder("pm grant ");
                DecimalFormat decimalFormat = k.f4034u0;
                k kVar2 = j.f4033a;
                UsbAdbData usbAdbDataA = e0Var.a(888L, g.b.l(kVar2.f4041d, " android.permission.WRITE_SECURE_SETTINGS", sb3));
                if (usbAdbDataA.code != 0) {
                    bVar.d(new Exception(usbAdbDataA.getListStr()));
                    break;
                } else {
                    UsbAdbData usbAdbDataA2 = e0Var.a(888L, g.b.l(kVar2.f4041d, " WRITE_SETTINGS", new StringBuilder("cmd appops set ")));
                    if (usbAdbDataA2.code == 0 || !usbAdbDataA2.getListStr().contains("found")) {
                        z = true;
                    } else {
                        e0Var.a(888L, g.b.l(kVar2.f4041d, " WRITE_SETTINGS", new StringBuilder("appops set ")));
                        z = false;
                    }
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(z ? "cmd " : "");
                    sb4.append("appops set ");
                    e0Var.a(888L, g.b.l(kVar2.f4041d, " REQUEST_INSTALL_PACKAGES", sb4));
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(z ? "cmd " : "");
                    sb5.append("appops set ");
                    e0Var.a(888L, g.b.l(kVar2.f4041d, " GET_USAGE_STATS", sb5));
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append(z ? "cmd " : "");
                    sb6.append("appops set ");
                    e0Var.a(888L, g.b.l(kVar2.f4041d, " SYSTEM_ALERT_WINDOW", sb6));
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append(z ? "cmd " : "");
                    sb7.append("appops set ");
                    e0Var.a(888L, g.b.l(kVar2.f4041d, " ANSWER_PHONE_CALLS", sb7));
                    e0Var.a(888L, g.b.l(kVar2.f4041d, " android.permission.DUMP", new StringBuilder("pm grant ")));
                    e0Var.a(888L, g.b.l(kVar2.f4041d, " android.permission.READ_LOGS", new StringBuilder("pm grant ")));
                    if (Build.VERSION.SDK_INT >= 18) {
                        UsbAdbData usbAdbDataA3 = e0Var.a(888L, "settings get secure enabled_notification_listeners");
                        if (usbAdbDataA3.code == 0) {
                            Iterator<String> it = usbAdbDataA3.lines.iterator();
                            while (it.hasNext()) {
                                next = it.next();
                                if (next.contains("com.")) {
                                    if (next.equals("null")) {
                                        next = "";
                                    }
                                    sb2 = new StringBuilder();
                                    kVar = j.f4033a;
                                    if (!android.support.v4.media.session.a.D(sb2, kVar.f4041d, "/", next)) {
                                        StringBuilder sbB = d0.f.b(next, ":");
                                        sbB.append(kVar.f4041d);
                                        sbB.append("/");
                                        sbB.append(StartService.class.getName());
                                        String strReplace = sbB.toString().replace("::", "");
                                        if (strReplace.startsWith(":")) {
                                            strReplace = strReplace.substring(1);
                                        }
                                        if (strReplace.endsWith(":")) {
                                            strReplace = android.support.v4.media.session.a.l(1, 0, strReplace);
                                        }
                                        e0Var.a(1000L, g.b.A("settings put secure enabled_notification_listeners '", strReplace, "'"));
                                        e0Var.a(1000L, "settings put secure notification_enabled 1");
                                        StringBuilder sb8 = new StringBuilder("cmd notification allow_listener");
                                        if (e0Var.f5679i != 0) {
                                            str = " --user " + e0Var.f5679i;
                                        }
                                        sb8.append(str);
                                        sb8.append(" ");
                                        sb8.append(kVar.f4041d);
                                        sb8.append("/");
                                        sb8.append(StartService.class.getName());
                                        e0Var.a(1000L, sb8.toString());
                                    }
                                }
                            }
                            next = "";
                            if (next.equals("null")) {
                            }
                            sb2 = new StringBuilder();
                            kVar = j.f4033a;
                            if (!android.support.v4.media.session.a.D(sb2, kVar.f4041d, "/", next)) {
                            }
                        } else {
                            next = "";
                            if (next.equals("null")) {
                            }
                            sb2 = new StringBuilder();
                            kVar = j.f4033a;
                            if (!android.support.v4.media.session.a.D(sb2, kVar.f4041d, "/", next)) {
                            }
                        }
                    }
                    bVar.b();
                    break;
                }
                break;
        }
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        switch (this.f5981a) {
            case 4:
                if (i10 != 66) {
                    if (i10 != 17) {
                        if (i10 == 130) {
                            g.Z(311, view);
                            break;
                        }
                    } else {
                        g.W(322, view);
                        break;
                    }
                } else {
                    g.W(333, view);
                    break;
                }
                break;
            case 5:
                if (i10 != 66 && i10 != 17) {
                    if (i10 == 130) {
                        g.Z(555, view);
                        break;
                    }
                } else {
                    g.W(666, view);
                    break;
                }
                break;
            case 8:
                if (i10 != 66) {
                    if (i10 != 17) {
                        if (i10 != 33) {
                            if (i10 == 130) {
                                g.Z(302, view);
                                break;
                            }
                        } else {
                            g.Z(302, view);
                            break;
                        }
                    } else {
                        g.W(301, view);
                        break;
                    }
                } else {
                    g.W(NoConst.RECORDING_TIME_INTERVAL, view);
                    break;
                }
                break;
            case 10:
                if (i10 != 17 && i10 != 66) {
                    if (i10 == 130) {
                        g.Z(555, view);
                        break;
                    }
                } else {
                    g.W(555, view);
                    break;
                }
                break;
            case 19:
                if (i10 != 66 && i10 != 17) {
                    if (i10 == 130) {
                        g.Z(555, view);
                        break;
                    }
                } else {
                    g.W(666, view);
                    break;
                }
                break;
            case 22:
                if (i10 != 17 && i10 != 66) {
                    if (i10 == 130) {
                        g.Z(331, view);
                        break;
                    }
                } else {
                    g.W(333, view);
                    break;
                }
                break;
            case 23:
                if (i10 != 17 && i10 != 66) {
                    if (i10 == 33 || i10 == 130) {
                        g.Z(555, view);
                        break;
                    }
                } else {
                    g.W(555, view);
                    break;
                }
                break;
            case 24:
                if (i10 != 66 && i10 != 17) {
                    if (i10 == 33) {
                        g.Z(333, view);
                        break;
                    }
                } else {
                    g.W(333, view);
                    break;
                }
                break;
            case 25:
                if (i10 == 17 || i10 == 66) {
                    g.W(331, view);
                    break;
                }
                break;
            case 26:
                if (i10 != 17 && i10 != 66) {
                    if (i10 == 33 || i10 == 130) {
                        g.Z(332, view);
                        break;
                    }
                } else {
                    g.W(331, view);
                    break;
                }
                break;
            case 27:
                if (i10 != 17 && i10 != 66) {
                    if (i10 == 130) {
                        g.Z(555, view);
                        break;
                    }
                } else {
                    g.W(555, view);
                    break;
                }
                break;
            default:
                if (i10 == 17 || i10 == 66) {
                    g.W(333, view);
                    break;
                }
                break;
        }
        return true;
    }

    @Override // com.hjq.permissions.OnPermissionCallback
    public void onPermissionResult(List list, List list2) {
        switch (this.f5981a) {
            case 3:
                if (list.isEmpty()) {
                    a0.u("请授予【录音权限】");
                    break;
                }
                break;
            case 4:
            case 5:
            case 8:
            case 10:
            default:
                if (list.isEmpty()) {
                    a0.w("需要【蓝牙连接权限】权限");
                    break;
                }
                break;
            case 6:
                if (list.isEmpty()) {
                    a0.u("请先授予【蓝牙连接】权限");
                    break;
                }
                break;
            case 7:
                if (list.isEmpty()) {
                    a0.u("请先授予我【高精度定位】权限");
                    break;
                }
                break;
            case 9:
                if (list.isEmpty()) {
                    a0.u("需要悬浮窗权限【在上层显示】");
                    break;
                }
                break;
            case 11:
                if (!list2.isEmpty()) {
                    a0.u("需要【粗略位置】【精确位置】权限才可以获取蓝牙信息");
                    break;
                }
                break;
            case 12:
                if (!list2.isEmpty()) {
                    a0.u("需要【粗略位置】【精确位置】权限才可以获取wifi信息");
                    break;
                }
                break;
            case 13:
                if (list.isEmpty()) {
                    a0.u("请先授予我【麦克风】权限");
                    break;
                }
                break;
            case 14:
                if (list.isEmpty()) {
                    a0.u("请先授予我【蓝牙连接】权限");
                    break;
                }
                break;
            case 15:
                if (list.isEmpty()) {
                    a0.u("请先授予【修改系统设置】权限");
                    break;
                }
                break;
            case 16:
                if (list.isEmpty()) {
                    a0.u("请先授予悬浮窗权限【在上层显示】");
                    break;
                }
                break;
            case 17:
                int i10 = t9.f7820m;
                break;
            case 18:
                if (list.isEmpty()) {
                    a0.u("需要悬浮窗权限【在上层显示】");
                    break;
                }
                break;
        }
    }
}
