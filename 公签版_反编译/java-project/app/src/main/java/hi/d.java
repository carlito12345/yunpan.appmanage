package hi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.provider.Settings;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.service.BootReceiver;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.util.z;
import fa.g0;
import j$.util.Iterator$EL;
import java.io.File;
import java.text.DecimalFormat;
import moe.shizuku.api.BinderContainer;
import wa.s;
import wa.t;
import wa.u;
import wa.w;

/* loaded from: classes3.dex */
public final class d extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8222a;

    public /* synthetic */ d(int i10) {
        this.f8222a = i10;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        IBinder iBinder;
        String str;
        String action;
        switch (this.f8222a) {
            case 0:
                BinderContainer binderContainer = (BinderContainer) intent.getParcelableExtra("moe.shizuku.privileged.api.intent.extra.BINDER");
                if (binderContainer != null && (iBinder = binderContainer.f11239a) != null) {
                    b.g(iBinder, context.getPackageName());
                    break;
                }
                break;
            case 1:
                try {
                    String action2 = intent.getAction();
                    if (!"android.intent.action.SCREEN_ON".equals(action2)) {
                        if (!"android.intent.action.SCREEN_OFF".equals(action2)) {
                            if ("android.intent.action.USER_PRESENT".equals(action2) && t.f17728a.f17753t) {
                                w.c("广播：解锁屏幕");
                                break;
                            }
                        } else {
                            System.out.getClass();
                            if (t.f17728a.f17753t) {
                                w.c("广播：屏幕熄灭");
                            }
                            try {
                                s.c().getClass();
                            } catch (Exception unused) {
                            }
                            try {
                                s.c().f17717n.clear();
                            } catch (Exception unused2) {
                            }
                            u uVar = t.f17728a;
                            uVar.c();
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            try {
                                uVar.f17750p = jCurrentTimeMillis;
                                uVar.f17731b.l("ScreenOff_Time", Long.valueOf(jCurrentTimeMillis));
                            } catch (Exception unused3) {
                            }
                            uVar.i();
                            if (s.c().f17709e != null && s.c().f17709e.f3936h0 != null && t.f17728a.K) {
                                System.out.getClass();
                                s.c().f17709e.f3936h0.g();
                                s.c().f17709e.f3936h0 = null;
                            }
                            if (s.c().f17725w != null && s.c().f17709e != null) {
                                s.c().i(111);
                            }
                            u uVar2 = t.f17728a;
                            if (uVar2.F) {
                                if (s.c().f17709e != null) {
                                    if (Build.VERSION.SDK_INT >= 24) {
                                        s.c().f17709e.disableSelf();
                                    }
                                    s.c().f17709e.stopSelf();
                                    s.c().f17709e = null;
                                }
                                try {
                                    String string = Settings.Secure.getString(context.getContentResolver(), "enabled_accessibility_services");
                                    if (string == null) {
                                        string = "";
                                    }
                                    if (string.contains(context.getPackageName() + "/")) {
                                        if (Settings.Secure.putString(context.getContentResolver(), "enabled_accessibility_services", string.replace(context.getPackageName() + "/.service.AccService", "").replace(context.getPackageName() + "/" + context.getPackageName() + ".service.AccService", "").replace("::", ":"))) {
                                            Settings.Secure.putInt(context.getContentResolver(), "accessibility_enabled", 1);
                                        }
                                    }
                                    if (uVar2.f17753t) {
                                        w.c("广播：勾选了息屏关闭自动化服务亮屏时开启，关闭中");
                                        break;
                                    }
                                } catch (Exception unused4) {
                                    return;
                                }
                            }
                        }
                    } else {
                        System.out.getClass();
                        u uVar3 = t.f17728a;
                        if (uVar3.f17753t) {
                            w.c("广播：屏幕点亮");
                        }
                        uVar3.c();
                        try {
                            s.c().getClass();
                        } catch (Exception unused5) {
                        }
                        if (s.c().f17709e != null && t.f17728a.K) {
                            s.c().f17709e.e();
                        }
                        u uVar4 = t.f17728a;
                        if (uVar4.F) {
                            try {
                                String string2 = Settings.Secure.getString(context.getContentResolver(), "enabled_accessibility_services");
                                if (string2 == null) {
                                    string2 = "";
                                }
                                if (!string2.contains(context.getPackageName() + "/")) {
                                    if (string2.isEmpty()) {
                                        str = context.getPackageName() + "/" + context.getPackageName() + ".service.AccService";
                                    } else {
                                        str = string2 + ":" + context.getPackageName() + "/" + context.getPackageName() + ".service.AccService";
                                    }
                                    Settings.Secure.putString(context.getContentResolver(), "enabled_accessibility_services", "");
                                    Settings.Secure.putInt(context.getContentResolver(), "accessibility_enabled", 1);
                                    Settings.Secure.putInt(context.getContentResolver(), "accessibility_enabled", 0);
                                    if (Settings.Secure.putString(context.getContentResolver(), "enabled_accessibility_services", str)) {
                                        Settings.Secure.putInt(context.getContentResolver(), "accessibility_enabled", 1);
                                    }
                                    if (uVar4.f17753t) {
                                        w.c("广播：勾选了息屏关闭自动化服务亮屏时开启，开启中");
                                    }
                                }
                            } catch (Exception unused6) {
                            }
                        }
                        u uVar5 = t.f17728a;
                        if (uVar5.f17744i) {
                            if (uVar5.f17749o <= 0 || System.currentTimeMillis() - uVar5.f17750p > uVar5.f17749o * 60000) {
                                BootReceiver.a(context, "亮屏");
                            } else if (uVar5.f17753t) {
                                w.c("息屏时间少于 " + uVar5.f17749o + " 分钟不执行开机任务");
                            }
                        }
                        if (s.c().f17725w != null && s.c().f17709e != null) {
                            s.c().i(110);
                            break;
                        }
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
                break;
            default:
                intent.getAction();
                intent.getDataString();
                String dataString = intent.getDataString();
                if (dataString != null && dataString.startsWith("file://")) {
                    String strTrim = dataString.substring(7).trim();
                    if (!strTrim.isEmpty() && !strTrim.equals(g0.f5682a.d()) && !strTrim.equals("/sdcard") && !strTrim.equals("/storage/emulated/0")) {
                        StringBuilder sb2 = new StringBuilder("/storage/emulated/");
                        DecimalFormat decimalFormat = k.f4034u0;
                        k kVar = j.f4033a;
                        sb2.append(kVar.f4060n);
                        if (!strTrim.equals(sb2.toString()) && (action = intent.getAction()) != null) {
                            if (!action.equals("android.intent.action.MEDIA_MOUNTED")) {
                                if (action.equals("android.intent.action.MEDIA_EJECT")) {
                                    Toaster.show((CharSequence) "U盘已拔出");
                                    kVar.f4073v.remove(strTrim);
                                    kh.e.b().f(new ja.c(-2, strTrim));
                                    MyDb.get().deleteDir_thread(strTrim);
                                    if (strTrim.startsWith("/storage/")) {
                                        String strP = android.support.v4.media.session.a.p(strTrim, 8, new StringBuilder("/mnt/media_rw"));
                                        kVar.f4073v.remove(strP);
                                        kh.e.b().f(new ja.c(-2, strP));
                                        MyDb.get().deleteDir_thread(strP);
                                    }
                                    if (kVar.f4074w && kVar.f4073v.isEmpty()) {
                                        kVar.f4074w = false;
                                        break;
                                    }
                                }
                            } else if (!kVar.f4073v.contains(strTrim)) {
                                if (strTrim.startsWith("/storage/") && !a0.b(strTrim)) {
                                    String strP2 = android.support.v4.media.session.a.p(strTrim, 8, new StringBuilder("/mnt/media_rw"));
                                    if (a0.b(strP2)) {
                                        strTrim = strP2;
                                    }
                                }
                                kVar.f4073v.add(strTrim);
                                if (kVar.f4073v.size() > 1) {
                                    Iterator$EL.forEachRemaining(kVar.f4073v.iterator(), new qh.g0(15));
                                }
                                if (kVar.f4073v.contains(strTrim)) {
                                    a0.w("U盘已插入");
                                    kh.e.b().f(new ja.c(-1, strTrim));
                                    if (!kVar.f4074w) {
                                        try {
                                            if (v.f4106a.f4139q0 && a0.k(strTrim) - a0.j(strTrim) > 107374182400L) {
                                                kVar.f4074w = true;
                                                break;
                                            }
                                        } catch (Exception unused7) {
                                        }
                                        j.f4033a.f4046f0.submit(new z(new File(strTrim)));
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
                break;
        }
    }
}
