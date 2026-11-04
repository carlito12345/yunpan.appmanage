package ta;

import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.carsdk.g0;
import com.yunpan.appmanage.carsdk.h0;
import com.yunpan.appmanage.carsdk.j0;
import com.yunpan.appmanage.carsdk.k0;
import com.yunpan.appmanage.carsdk.x;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.util.a0;
import fa.n0;
import fa.o0;
import ha.l2;
import j$.nio.charset.StandardCharsets;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import rikka.shizuku.ShizukuProvider;
import wa.s;
import wa.t;
import wa.u;
import wa.y;
import wa.z;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14854a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AccService f14855b;

    public /* synthetic */ a(AccService accService, int i10) {
        this.f14854a = i10;
        this.f14855b = accService;
    }

    private final void a() {
        List listFindAccessibilityNodeInfosByViewId;
        List listFindAccessibilityNodeInfosByViewId2;
        u uVar = t.f17728a;
        boolean zIsEmpty = uVar.f17730a0.isEmpty();
        AccService accService = this.f14855b;
        AccessibilityNodeInfo child = null;
        if (!zIsEmpty) {
            try {
                AccessibilityNodeInfo rootInActiveWindow = accService.getRootInActiveWindow();
                if (rootInActiveWindow != null && rootInActiveWindow.getClassName().toString().equals("android.widget.FrameLayout")) {
                    List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText = rootInActiveWindow.findAccessibilityNodeInfosByText("始终");
                    AccessibilityNodeInfo accessibilityNodeInfo = (listFindAccessibilityNodeInfosByText == null || listFindAccessibilityNodeInfosByText.isEmpty()) ? (Build.VERSION.SDK_INT < 18 || (listFindAccessibilityNodeInfosByViewId = rootInActiveWindow.findAccessibilityNodeInfosByViewId("android:id/button_always")) == null || listFindAccessibilityNodeInfosByViewId.isEmpty()) ? null : (AccessibilityNodeInfo) listFindAccessibilityNodeInfosByViewId.get(0) : listFindAccessibilityNodeInfosByText.get(0);
                    List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText2 = rootInActiveWindow.findAccessibilityNodeInfosByText("仅此一次");
                    AccessibilityNodeInfo accessibilityNodeInfo2 = (listFindAccessibilityNodeInfosByText2 == null || listFindAccessibilityNodeInfosByText2.isEmpty()) ? (Build.VERSION.SDK_INT < 18 || (listFindAccessibilityNodeInfosByViewId2 = rootInActiveWindow.findAccessibilityNodeInfosByViewId("android:id/button_once")) == null || listFindAccessibilityNodeInfosByViewId2.isEmpty()) ? null : (AccessibilityNodeInfo) listFindAccessibilityNodeInfosByViewId2.get(0) : listFindAccessibilityNodeInfosByText2.get(0);
                    List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText3 = rootInActiveWindow.findAccessibilityNodeInfosByText(uVar.f17730a0);
                    if (listFindAccessibilityNodeInfosByText3 != null && !listFindAccessibilityNodeInfosByText3.isEmpty()) {
                        AccessibilityNodeInfo parent = listFindAccessibilityNodeInfosByText3.get(0);
                        if (accessibilityNodeInfo != null && !parent.getText().toString().equals(uVar.f17730a0)) {
                            accessibilityNodeInfo.performAction(16);
                            return;
                        }
                        while (true) {
                            if (!parent.isClickable()) {
                                parent = parent.getParent();
                                if (parent == null) {
                                    break;
                                }
                            } else {
                                parent.performAction(16);
                                if (accessibilityNodeInfo != null) {
                                    accessibilityNodeInfo.performAction(16);
                                    return;
                                } else if (accessibilityNodeInfo2 != null) {
                                    parent.performAction(16);
                                    return;
                                }
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        AccessibilityNodeInfo rootInActiveWindow2 = accService.getRootInActiveWindow();
        try {
            if (rootInActiveWindow2 == null) {
                return;
            }
            try {
                if (rootInActiveWindow2.getClassName().toString().equals("android.widget.FrameLayout")) {
                    AccessibilityNodeInfo child2 = rootInActiveWindow2.getChildCount() == 1 ? rootInActiveWindow2.getChild(0) : rootInActiveWindow2;
                    if (child2.getChildCount() == 1) {
                        child2 = child2.getChild(0);
                    }
                    if (child2.getChildCount() >= 2 && child2.getChildCount() <= 6) {
                        AccessibilityNodeInfo child3 = null;
                        AccessibilityNodeInfo child4 = null;
                        AccessibilityNodeInfo child5 = null;
                        AccessibilityNodeInfo child6 = null;
                        boolean z = false;
                        for (int i10 = 0; i10 < child2.getChildCount(); i10++) {
                            String string = child2.getChild(i10).getClassName().toString();
                            if (string.equals("android.widget.TextView")) {
                                if (child4 == null) {
                                    child4 = child2.getChild(i10);
                                }
                            } else if (string.equals("android.widget.Button")) {
                                if (child6 == null) {
                                    child6 = child2.getChild(i10);
                                    if (i10 != 1) {
                                        z = true;
                                    }
                                } else {
                                    child5 = child2.getChild(i10);
                                }
                            } else if (string.equals("android.widget.TabHost") || string.equals("android.widget.ListView")) {
                                child3 = child2.getChild(i10);
                            }
                        }
                        if (child3 != null) {
                            if (child4 == null || child5 == null || !child4.getText().toString().contains(t.f17728a.Z)) {
                                if (child3.getChildCount() == 1) {
                                    child3 = child3.getChild(0);
                                }
                                if (child3.getChildCount() == 1) {
                                    child3 = child3.getChild(0);
                                }
                                int i11 = 0;
                                while (true) {
                                    try {
                                        if (i11 < child3.getChildCount()) {
                                            if (child3.getChild(i11).getChildCount() == 1) {
                                                if (!child3.getChild(i11).getChild(0).getClassName().toString().endsWith(".TextView")) {
                                                    break;
                                                }
                                                String string2 = child3.getChild(i11).getChild(0).getText().toString();
                                                if (string2.isEmpty()) {
                                                    break;
                                                }
                                                if (string2.equals("主屏幕") || string2.equals("Home Screen")) {
                                                    child = child3.getChild(i11);
                                                }
                                                if (string2.equals(t.f17728a.Z)) {
                                                    child3.getChild(i11).performAction(16);
                                                    if (child6 == null || !z) {
                                                        child3.getChild(i11).performAction(16);
                                                    } else {
                                                        child6.performAction(16);
                                                    }
                                                }
                                            }
                                            i11++;
                                        } else if (child != null) {
                                            child.performAction(16);
                                            if (child6 == null || !z) {
                                                child.performAction(16);
                                            } else {
                                                child6.performAction(16);
                                            }
                                        } else if (child5 != null) {
                                            child6.performAction(16);
                                        } else {
                                            List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText4 = rootInActiveWindow2.findAccessibilityNodeInfosByText(t.f17728a.Z);
                                            if (listFindAccessibilityNodeInfosByText4 != null && !listFindAccessibilityNodeInfosByText4.isEmpty()) {
                                                listFindAccessibilityNodeInfosByText4.get(0).getParent().performAction(16);
                                                if (!z || child5 == null) {
                                                    listFindAccessibilityNodeInfosByText4.get(0).getParent().performAction(16);
                                                } else {
                                                    child5.performAction(16);
                                                }
                                            }
                                        }
                                    } catch (Exception unused2) {
                                    }
                                }
                            } else {
                                child5.performAction(16);
                            }
                        }
                    }
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        } finally {
            rootInActiveWindow2.recycle();
        }
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException, PackageManager.NameNotFoundException, IOException {
        List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText;
        AccessibilityNodeInfo child = null;
        boolean z = true;
        int i10 = 0;
        AccService accService = this.f14855b;
        switch (this.f14854a) {
            case 0:
                int i11 = AccService.U0;
                accService.getClass();
                m.d(accService, "ACC_IS_RUNNING_YES");
                try {
                    if (s.c().f17705a && Build.VERSION.SDK_INT >= 26) {
                        k0 k0Var = j0.f3843a;
                        k0Var.f3851g = accService;
                        HandlerThread handlerThread = new HandlerThread("MyCar");
                        k0Var.f3850f = handlerThread;
                        handlerThread.start();
                        k0Var.f3849e = new Handler(((HandlerThread) k0Var.f3850f).getLooper());
                        k0Var.a();
                    }
                } catch (Exception unused) {
                }
                try {
                    s.c().f17718o.clear();
                    fa.d.f5659a.h();
                    accService.d();
                    accService.e();
                    if (!q4.a.t(accService).p("keys").f19478a.isEmpty()) {
                        pa.h hVar = new pa.h(accService);
                        accService.f3930c = hVar;
                        hVar.a();
                    }
                    accService.f();
                    try {
                        accService.c(String.valueOf(accService.getRootInActiveWindow().getPackageName()), String.valueOf(accService.getRootInActiveWindow().getClassName()));
                    } catch (Exception unused2) {
                    }
                    if (t.f17728a.E && Build.VERSION.SDK_INT >= 21) {
                        new mc.c(i10, new c(accService)).d(rc.f.f13757b).a(fc.b.a()).b(new l2(28));
                    }
                    accService.f3938j.post(accService.f3950y);
                    if (pa.e.b(accService)) {
                        pa.d.f12629a.a(accService);
                    }
                    com.yunpan.appmanage.carsdk.e.i(accService);
                    int i12 = com.yunpan.appmanage.carsdk.m.f3854e;
                    try {
                        accService.getPackageManager().getApplicationInfo("com.desay.svcarinfo", 0);
                    } catch (Exception unused3) {
                        z = false;
                    }
                    if (z) {
                        accService.f3932e = new com.yunpan.appmanage.carsdk.m(accService);
                    }
                    if (h0.c(accService)) {
                        g0.f3810a.b(accService);
                    }
                    if (x.i(accService)) {
                        accService.G.postDelayed(new a(accService, 3), 888L);
                    }
                    s.c().i(102);
                    accService.f3929b = s1.g.B(accService);
                    System.out.getClass();
                    if (SystemClock.elapsedRealtime() < 100000) {
                        do {
                            Thread.sleep(1000L);
                        } while (!fa.d.f5659a.f5665d);
                        Thread.sleep(2000L);
                    }
                    if (Build.VERSION.SDK_INT >= 24) {
                        o0 o0Var = n0.f5722a;
                        if (!o0Var.f5733h) {
                            try {
                                ii.a.a(AppStart.f3772h.getPackageName());
                                ShizukuProvider.a(false);
                                ShizukuProvider.b(AppStart.f3772h);
                                o0Var.d();
                            } catch (Exception unused4) {
                            }
                        }
                    }
                    accService.f3928a = com.yunpan.appmanage.carsdk.i.e(accService);
                    if (s.c().f17705a) {
                        try {
                            accService.getPackageManager().getApplicationInfo("com.baidu.naviauto", 0);
                            com.yunpan.appmanage.carsdk.i iVar = new com.yunpan.appmanage.carsdk.i();
                            accService.f3933f = iVar;
                            iVar.a(accService);
                        } catch (Exception unused5) {
                        }
                    }
                    accService.l.post(new a(accService, 4));
                    return;
                } catch (Exception e7) {
                    e7.printStackTrace();
                    a0.u("报错：" + e7.getMessage());
                    try {
                        String stackTraceString = Log.getStackTraceString(e7);
                        FileOutputStream fileOutputStream = new FileOutputStream(new File(accService.getExternalCacheDir().getParentFile().getParentFile().getParentFile().getParentFile(), "自动化报错_" + System.currentTimeMillis() + ".txt"));
                        fileOutputStream.write(stackTraceString.getBytes(StandardCharsets.UTF_8));
                        fileOutputStream.close();
                        return;
                    } catch (Exception unused6) {
                        return;
                    }
                }
            case 1:
                if (accService.E.endsWith(".FallbackHome")) {
                    a0.u("检测到无法开机，启动应急措施：打开" + accService.getString(R.string.str_gj));
                    accService.f3946t0.submit(new a(accService, 5));
                    return;
                }
                return;
            case 2:
                accService.z.set(true);
                ya.e.b().e();
                ya.h.a().c();
                try {
                    v8.b.a();
                    v8.b.b();
                    return;
                } catch (Exception unused7) {
                    return;
                }
            case 3:
                int i13 = AccService.U0;
                accService.getClass();
                try {
                    accService.f3931d = new x(accService);
                    return;
                } catch (Exception unused8) {
                    return;
                }
            case 4:
                int i14 = AccService.U0;
                accService.getClass();
                ya.h.a().b(accService);
                ya.e eVarB = ya.e.b();
                eVarB.f19024a = accService;
                eVarB.f19030g = (WindowManager) accService.getSystemService("window");
                SharedPreferences sharedPreferences = eVarB.f19024a.getSharedPreferences("MyFloatButton", 0);
                eVarB.f19025b = sharedPreferences;
                eVarB.f19026c = sharedPreferences.edit();
                ya.e.b().d();
                z zVar = y.f17766a;
                zVar.f17767a = accService;
                zVar.f17769c = null;
                zVar.f17770d = null;
                zVar.f17771e = 0;
                zVar.f17773g = 0L;
                return;
            case 5:
                int i15 = AccService.U0;
                accService.getClass();
                p000if.a.G0(accService);
                return;
            case 6:
                try {
                    AccessibilityNodeInfo rootInActiveWindow = accService.getRootInActiveWindow();
                    if (rootInActiveWindow == null) {
                        return;
                    }
                    List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByViewId = rootInActiveWindow.findAccessibilityNodeInfosByViewId("android:id/button1");
                    if (listFindAccessibilityNodeInfosByViewId == null || listFindAccessibilityNodeInfosByViewId.isEmpty()) {
                        listFindAccessibilityNodeInfosByViewId = rootInActiveWindow.findAccessibilityNodeInfosByText("允许");
                    }
                    if (listFindAccessibilityNodeInfosByViewId != null && !listFindAccessibilityNodeInfosByViewId.isEmpty()) {
                        listFindAccessibilityNodeInfosByViewId.get(0).performAction(16);
                        return;
                    }
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            case 7:
                AccessibilityNodeInfo rootInActiveWindow2 = accService.getRootInActiveWindow();
                try {
                    if (rootInActiveWindow2 == null) {
                        return;
                    }
                    try {
                        if (rootInActiveWindow2.getClassName().toString().equals("android.widget.FrameLayout") && rootInActiveWindow2.getChildCount() >= 2 && rootInActiveWindow2.getChildCount() <= 6) {
                            AccessibilityNodeInfo child2 = null;
                            AccessibilityNodeInfo child3 = null;
                            for (int i16 = 0; i16 < rootInActiveWindow2.getChildCount(); i16++) {
                                String string = rootInActiveWindow2.getChild(i16).getClassName().toString();
                                if (string.equals("android.widget.Button")) {
                                    if (child3 == null) {
                                        child3 = rootInActiveWindow2.getChild(i16);
                                    } else {
                                        rootInActiveWindow2.getChild(i16);
                                    }
                                } else if (string.equals("android.widget.GridView") || string.equals("android.widget.ListView")) {
                                    child2 = rootInActiveWindow2.getChild(i16);
                                }
                            }
                            if (child2 != null) {
                                int i17 = 0;
                                while (true) {
                                    try {
                                        if (i17 < child2.getChildCount()) {
                                            if (child2.getChild(i17).getChildCount() == 1) {
                                                if (child2.getChild(i17).getChild(0).getClassName().toString().endsWith(".TextView")) {
                                                    String string2 = child2.getChild(i17).getChild(0).getText().toString();
                                                    if (!string2.isEmpty()) {
                                                        if (string2.equals("主屏幕") || string2.equals("Home Screen")) {
                                                            child = child2.getChild(i17);
                                                        }
                                                        if (string2.equals(t.f17728a.Z)) {
                                                            child2.getChild(i17).performAction(16);
                                                            if (child3 != null) {
                                                                child3.performAction(16);
                                                                break;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            i17++;
                                        } else if (child != null) {
                                            child.performAction(16);
                                            if (child3 != null) {
                                                child3.performAction(16);
                                                break;
                                            }
                                        } else if (child3 != null) {
                                            child3.performAction(16);
                                        }
                                    } catch (Exception unused9) {
                                    }
                                }
                            }
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                    return;
                } finally {
                    rootInActiveWindow2.recycle();
                }
            case 8:
                a();
                return;
            case 9:
                try {
                    nh.b.k(accService);
                    return;
                } catch (Exception unused10) {
                    return;
                }
            case 10:
                try {
                    AccessibilityNodeInfo rootInActiveWindow3 = accService.getRootInActiveWindow();
                    if (rootInActiveWindow3 != null && (listFindAccessibilityNodeInfosByText = rootInActiveWindow3.findAccessibilityNodeInfosByText("允许访问一次")) != null && !listFindAccessibilityNodeInfosByText.isEmpty()) {
                        listFindAccessibilityNodeInfosByText.get(0).performAction(16);
                        return;
                    }
                    return;
                } catch (Exception unused11) {
                    return;
                }
            case 11:
                try {
                    if (nh.b.O(accService)) {
                        return;
                    }
                    accService.f3938j.postDelayed(new a(accService, 12), 200L);
                    return;
                } catch (Exception unused12) {
                    return;
                }
            default:
                try {
                    nh.b.O(accService);
                    return;
                } catch (Exception unused13) {
                    return;
                }
        }
    }
}
