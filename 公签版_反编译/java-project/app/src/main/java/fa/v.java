package fa;

import a2.w0;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.ui.ActivityHome;
import com.yunpan.appmanage.ui.ActivityTrans;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.io.Serializable;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
public final /* synthetic */ class v implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5758a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5759b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5760c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f5761d;

    public /* synthetic */ v(Object obj, int i10, Object obj2, int i11) {
        this.f5758a = i11;
        this.f5760c = obj;
        this.f5759b = i10;
        this.f5761d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        AppBean appBean = null;
        Object obj = this.f5761d;
        int i10 = this.f5759b;
        Object obj2 = this.f5760c;
        switch (this.f5758a) {
            case 0:
                w0 w0Var = (w0) obj2;
                w0Var.getClass();
                w0Var.e0(666, w0.Y(i10, (String) obj));
                break;
            case 1:
                AccService accService = (AccService) obj;
                try {
                    ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(((z7.s) obj2).o("str1").i());
                    Intent leanbackLaunchIntentForPackage = Build.VERSION.SDK_INT >= 21 ? wa.t.f17728a.f17735d.getPackageManager().getLeanbackLaunchIntentForPackage(componentNameUnflattenFromString.getPackageName()) : null;
                    if (leanbackLaunchIntentForPackage == null) {
                        leanbackLaunchIntentForPackage = wa.t.f17728a.f17735d.getPackageManager().getLaunchIntentForPackage(componentNameUnflattenFromString.getPackageName());
                    }
                    if (leanbackLaunchIntentForPackage == null) {
                        leanbackLaunchIntentForPackage = new Intent();
                        leanbackLaunchIntentForPackage.setComponent(componentNameUnflattenFromString);
                        leanbackLaunchIntentForPackage.setFlags(268435456);
                    } else {
                        leanbackLaunchIntentForPackage.setPackage(null);
                        leanbackLaunchIntentForPackage.setFlags(270532608);
                    }
                    if (i10 != 1) {
                        if (i10 != 54) {
                            if (i10 == 55) {
                                Intent intent = new Intent(AppStart.f3772h, (Class<?>) ActivityTrans.class);
                                intent.setFlags(268435456);
                                intent.putExtra("intent", leanbackLaunchIntentForPackage);
                                p000if.a.x0(1, AppStart.f3772h, intent);
                                break;
                            }
                        } else {
                            accService.startActivity(leanbackLaunchIntentForPackage);
                        }
                    } else {
                        p000if.a.x0(1, wa.t.f17728a.f17735d, leanbackLaunchIntentForPackage);
                    }
                    Thread.sleep(1000L);
                    break;
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
            case 2:
                Iterator it = ((CopyOnWriteArraySet) obj2).iterator();
                while (it.hasNext()) {
                    u1.l lVar = (u1.l) it.next();
                    if (!lVar.f15242d) {
                        if (i10 != -1) {
                            lVar.f15240b.a(i10);
                        }
                        lVar.f15241c = true;
                        ((u1.j) obj).mo12a(lVar.f15239a);
                    }
                }
                break;
            case 3:
                String str = (String) obj;
                int i11 = ActivityHome.O;
                ActivityHome activityHome = (ActivityHome) obj2;
                activityHome.getClass();
                try {
                    appBean = new AppBean(Build.VERSION.SDK_INT >= 24 ? activityHome.A.getPackageManager().getApplicationInfo(str, 8704) : activityHome.A.getPackageManager().getApplicationInfo(str, 8704));
                } catch (Exception unused) {
                }
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2 && appBean != null) {
                            MyDb.get().getAppDao().insert(appBean);
                            kh.e.b().f(new ja.a(12, appBean));
                            break;
                        }
                    } else {
                        if (appBean == null) {
                            MyDb.get().getAppDao().deletePackageName(str);
                            com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                            if (!wVar.X.isEmpty() && wVar.X.equals(str)) {
                                wVar.X = "";
                                try {
                                    wVar.f4123i.m("InstallSource", "");
                                } catch (Exception unused2) {
                                }
                                wVar.m();
                            }
                        } else {
                            MyDb.get().getAppDao().insert(appBean);
                        }
                        kh.e.b().f(new ja.a(11, str));
                        break;
                    }
                } else if (appBean != null) {
                    MyDb.get().getAppDao().insert(appBean);
                    kh.e.b().f(new ja.a(12, appBean));
                    break;
                }
                break;
            case 4:
                wb.g gVar = (wb.g) obj2;
                CodeEditor codeEditor = (CodeEditor) obj;
                if (gVar.f17777a == codeEditor && i10 == gVar.f17790d.get()) {
                    codeEditor.setLayoutBusy(false);
                    codeEditor.getEventHandler().j(0.0f, 0.0f, false);
                    break;
                }
                break;
            case 5:
                ((y3.b) ((y3.a) obj2).f18896c).c(i10, (Serializable) obj);
                break;
            default:
                ((y3.b) obj2).c(i10, (PackageManager.NameNotFoundException) obj);
                break;
        }
    }

    public /* synthetic */ v(Object obj, Object obj2, int i10, int i11) {
        this.f5758a = i11;
        this.f5760c = obj;
        this.f5761d = obj2;
        this.f5759b = i10;
    }
}
