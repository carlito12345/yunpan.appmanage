package ta;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.Instrumentation;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.input.IInputManager;
import android.hardware.input.InputManager;
import android.media.AudioManager;
import android.media.session.MediaController;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.desay_svautomotive.libsvcarinfo.CarLanID;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.AppSwitchClassBean;
import com.yunpan.appmanage.carsdk.k0;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.util.MyLog;
import com.yunpan.appmanage.util.a0;
import fa.v;
import ha.jd;
import java.io.File;
import java.io.PrintStream;
import java.lang.ref.Reference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import wa.s;
import wa.t;
import wa.u;

/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public static final androidx.emoji2.text.o f14875a = new androidx.emoji2.text.o(5);

    public static void a(AccService accService) {
        v8.a aVar;
        AccessibilityNodeInfo rootInActiveWindow = accService.getRootInActiveWindow();
        String string = "";
        if (rootInActiveWindow == null) {
            a0.t("获取失败：无窗口");
        } else {
            StringBuilder sb2 = new StringBuilder();
            try {
                sb2.append("获取时间：" + new SimpleDateFormat("yyyy年MM月dd日HH时mm分ss秒SSS").format(new Date()));
                sb2.append(SignParameters.NEW_LINE);
                sb2.append("当前包名：" + ((Object) rootInActiveWindow.getPackageName()) + "  类：" + accService.E + "   根view：" + ((Object) rootInActiveWindow.getClassName()));
                sb2.append(SignParameters.NEW_LINE);
                qf.c.T(rootInActiveWindow, sb2, 0);
                string = sb2.toString();
            } catch (Exception e7) {
                g.b.s(e7, new StringBuilder("获取失败："));
            }
        }
        if (string.isEmpty()) {
            return;
        }
        ArrayList arrayList = v8.b.f16669a;
        synchronized (v8.b.class) {
            Iterator it = v8.b.f16669a.iterator();
            while (it.hasNext()) {
                Reference reference = (Reference) it.next();
                if (reference != null && (aVar = (v8.a) reference.get()) != null && "window_show_get_window_layout".equals(aVar.f16661h) && aVar.f16659f) {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = -3;
                    messageObtain.obj = "window_show_get_window_layout";
                    accService.G.sendMessage(messageObtain);
                    return;
                }
            }
            v8.a aVar2 = new v8.a(accService);
            aVar2.j(R.layout.window_show_get_window_layout);
            aVar2.f16661h = "window_show_get_window_layout";
            aVar2.p();
            aVar2.a(256);
            aVar2.l(Build.VERSION.SDK_INT >= 28 ? 1 : 0);
            aVar2.o(R.id.v_output, string);
            aVar2.m(R.id.v_btn_close, new jd(21));
            aVar2.m(R.id.v_btn_save, new b8.a(string, 10));
            aVar2.d();
        }
    }

    public static void b(final AccService accService) {
        View childAt;
        ViewGroup.LayoutParams layoutParams;
        int i10;
        if (s.c().f17707c != null) {
            v8.a aVar = s.c().f17707c;
            aVar.getClass();
            Handler handler = v8.i.f16679a;
            Runnable runnable = aVar.f16668p;
            handler.removeCallbacks(runnable);
            aVar.i(runnable, 0L);
            s.c().f17707c = null;
            return;
        }
        final xa.b bVar = new xa.b(accService);
        bVar.setOnTouchListener(new View.OnTouchListener() { // from class: ta.j
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                androidx.emoji2.text.o oVar = l.f14875a;
                xa.b bVar2 = bVar;
                AccService accService2 = accService;
                if (action == 1) {
                    if (System.currentTimeMillis() - ((Long) bVar2.getTag()).longValue() < 600) {
                        accService2.G.removeCallbacks(oVar);
                        Toaster.showLong((CharSequence) ("坐标x：" + ((int) motionEvent.getRawX()) + "\n坐标y：" + ((int) motionEvent.getRawY())));
                        p000if.a.s(accService2, ((int) motionEvent.getRawX()) + "," + ((int) motionEvent.getRawY()));
                    }
                } else if (motionEvent.getAction() == 0) {
                    bVar2.setTag(Long.valueOf(System.currentTimeMillis()));
                    accService2.G.postDelayed(oVar, 500L);
                }
                return true;
            }
        });
        bVar.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: ta.k
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                Point pointR = p000if.a.R(accService);
                int[] iArr = new int[2];
                bVar.getLocationOnScreen(iArr);
                if (iArr[0] > 0 || iArr[1] > 0) {
                    WindowManager.LayoutParams layoutParams2 = s.c().f17707c.f16658e;
                    layoutParams2.x = -iArr[0];
                    layoutParams2.y = -iArr[1];
                    layoutParams2.width = pointR.x;
                    layoutParams2.height = pointR.y;
                    v8.a aVar2 = s.c().f17707c;
                    aVar2.f16658e = layoutParams2;
                    aVar2.e();
                }
            }
        });
        s.c().f17707c = new v8.a(accService);
        v8.a aVar2 = s.c().f17707c;
        aVar2.k(bVar);
        aVar2.f16661h = "MyGridOverlayView";
        aVar2.p();
        aVar2.a(256);
        aVar2.a(512);
        aVar2.l(Build.VERSION.SDK_INT >= 28 ? 1 : 0);
        aVar2.a(32);
        aVar2.a(8);
        WindowManager.LayoutParams layoutParams2 = aVar2.f16658e;
        layoutParams2.width = -1;
        layoutParams2.height = -1;
        v8.h hVar = aVar2.f16656c;
        if (hVar != null) {
            if (hVar.getChildCount() > 0 && (layoutParams = (childAt = aVar2.f16656c.getChildAt(0)).getLayoutParams()) != null && ((i10 = layoutParams.width) != -1 || layoutParams.height != -1)) {
                if (i10 != -1) {
                    layoutParams.width = -1;
                }
                if (layoutParams.height != -1) {
                    layoutParams.height = -1;
                }
                childAt.setLayoutParams(layoutParams);
            }
            aVar2.e();
        }
        aVar2.d();
        Toaster.showLong((CharSequence) "长按网格可关闭");
    }

    public static void c(AccService accService, int i10) {
        if (Build.VERSION.SDK_INT >= 21) {
            accService.O0.dispatchMediaKeyEvent(new KeyEvent(0, i10));
            accService.O0.dispatchMediaKeyEvent(new KeyEvent(1, i10));
        }
    }

    public static MediaController d() {
        try {
            s.c().f17710f.c();
        } catch (Exception unused) {
        }
        MediaController mediaControllerE = t0.e.e(s.c().f17706b.get(0));
        if (s.c().f17706b.size() <= 1) {
            return mediaControllerE;
        }
        Iterator it = s.c().f17706b.iterator();
        while (it.hasNext()) {
            MediaController mediaControllerE2 = t0.e.e(it.next());
            s.c().getClass();
            if (s.h(mediaControllerE2)) {
                return mediaControllerE2;
            }
        }
        Iterator it2 = s.c().f17706b.iterator();
        while (it2.hasNext()) {
            MediaController mediaControllerE3 = t0.e.e(it2.next());
            if (mediaControllerE3.getPackageName().equals("com.netease.cloudmusic.iot")) {
                return mediaControllerE3;
            }
        }
        if (!s.c().f17708d.isEmpty()) {
            Iterator it3 = s.c().f17706b.iterator();
            while (it3.hasNext()) {
                MediaController mediaControllerE4 = t0.e.e(it3.next());
                if (mediaControllerE4.getPackageName().equals(s.c().f17708d)) {
                    return mediaControllerE4;
                }
            }
        }
        Iterator it4 = s.c().f17706b.iterator();
        while (it4.hasNext()) {
            MediaController mediaControllerE5 = t0.e.e(it4.next());
            if (!mediaControllerE5.getPackageName().startsWith("com.phoenix.read.oversea.gp") && !mediaControllerE5.getPackageName().startsWith("cn.kuwo")) {
                return mediaControllerE5;
            }
        }
        return mediaControllerE;
    }

    public static MediaController e() {
        Iterator it = s.c().f17706b.iterator();
        while (it.hasNext()) {
            MediaController mediaControllerE = t0.e.e(it.next());
            s.c().getClass();
            if (s.h(mediaControllerE)) {
                return mediaControllerE;
            }
        }
        Iterator it2 = s.c().f17706b.iterator();
        while (it2.hasNext()) {
            MediaController mediaControllerE2 = t0.e.e(it2.next());
            if (mediaControllerE2.getPackageName().equals("com.netease.cloudmusic.iot")) {
                return mediaControllerE2;
            }
        }
        return null;
    }

    public static MediaController f() {
        List activeSessions = t0.e.f(t.f17728a.f17735d.getSystemService("media_session")).getActiveSessions(null);
        if (activeSessions.isEmpty()) {
            return null;
        }
        MediaController mediaControllerE = t0.e.e(activeSessions.get(0));
        if (activeSessions.size() <= 1) {
            return mediaControllerE;
        }
        Iterator it = activeSessions.iterator();
        while (it.hasNext()) {
            MediaController mediaControllerE2 = t0.e.e(it.next());
            s.c().getClass();
            if (s.h(mediaControllerE2)) {
                return mediaControllerE2;
            }
        }
        Iterator it2 = activeSessions.iterator();
        while (it2.hasNext()) {
            MediaController mediaControllerE3 = t0.e.e(it2.next());
            if (mediaControllerE3.getPackageName().equals("com.netease.cloudmusic.iot")) {
                return mediaControllerE3;
            }
        }
        if (!s.c().f17708d.isEmpty()) {
            Iterator it3 = activeSessions.iterator();
            while (it3.hasNext()) {
                MediaController mediaControllerE4 = t0.e.e(it3.next());
                if (mediaControllerE4.getPackageName().equals(s.c().f17708d)) {
                    return mediaControllerE4;
                }
            }
        }
        Iterator it4 = activeSessions.iterator();
        while (it4.hasNext()) {
            MediaController mediaControllerE5 = t0.e.e(it4.next());
            if (!mediaControllerE5.getPackageName().startsWith("com.phoenix.read.oversea.gp") && !mediaControllerE5.getPackageName().startsWith("cn.kuwo")) {
                return mediaControllerE5;
            }
        }
        return mediaControllerE;
    }

    public static MediaController g() {
        List activeSessions = t0.e.f(t.f17728a.f17735d.getSystemService("media_session")).getActiveSessions(null);
        if (activeSessions.isEmpty()) {
            return null;
        }
        Iterator it = activeSessions.iterator();
        while (it.hasNext()) {
            MediaController mediaControllerE = t0.e.e(it.next());
            s.c().getClass();
            if (s.h(mediaControllerE)) {
                return mediaControllerE;
            }
        }
        Iterator it2 = activeSessions.iterator();
        while (it2.hasNext()) {
            MediaController mediaControllerE2 = t0.e.e(it2.next());
            if (mediaControllerE2.getPackageName().equals("com.netease.cloudmusic.iot")) {
                return mediaControllerE2;
            }
        }
        return null;
    }

    public static int h(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "screen_brightness");
        } catch (Settings.SettingNotFoundException e7) {
            e7.printStackTrace();
            return 100;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02e2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void i() throws PackageManager.NameNotFoundException {
        Intent leanbackLaunchIntentForPackage;
        ApplicationInfo applicationInfo;
        Exception e7;
        Intent intent;
        int iLastIndexOf;
        String strSubstring;
        int iIndexOf;
        int iIndexOf2;
        String strTrim;
        int iIndexOf3;
        HashMap map = new HashMap();
        HashSet hashSet = new HashSet();
        boolean z = false;
        for (String str : u9.d.r("dumpsys activity activities").l0().k()) {
            if (str.startsWith("Permission Denial")) {
                a0.u("有限制！此系统无法使用此功能");
                return;
            }
            if (z) {
                if (str.contains("Display #")) {
                    break;
                }
                if (str.contains("* Hist")) {
                    if (str.contains("ActivityRecord") && (iLastIndexOf = str.lastIndexOf("/")) != -1) {
                        String strSubstring2 = str.substring(0, iLastIndexOf);
                        String strTrim2 = strSubstring2.substring(strSubstring2.lastIndexOf(" ") + 1).trim();
                        if (!strTrim2.isEmpty() && strTrim2.contains(".") && (iIndexOf = (strSubstring = str.substring(iLastIndexOf + 1)).indexOf("}")) != -1) {
                            String strTrim3 = strSubstring.substring(0, iIndexOf).trim();
                            int iIndexOf4 = strTrim3.indexOf(" ");
                            if (iIndexOf4 != -1) {
                                strTrim3 = strTrim3.substring(0, iIndexOf4).trim();
                            }
                            if (map.get(strTrim2) == null) {
                                System.out.getClass();
                                map.put(strTrim2, new AppSwitchClassBean(strTrim2, strTrim3, (strTrim2 + strTrim3).length()));
                            }
                        }
                    }
                } else if (str.contains("packageName=") && (iIndexOf2 = str.indexOf("=")) != -1 && (iIndexOf3 = (strTrim = str.substring(iIndexOf2 + 1).trim()).indexOf(" ")) != -1) {
                    String strTrim4 = strTrim.substring(0, iIndexOf3).trim();
                    if (!strTrim4.isEmpty() && strTrim4.contains(".")) {
                        hashSet.add(strTrim4);
                    }
                }
            } else if (str.contains("Display #0 ")) {
                z = true;
            }
        }
        ArrayList arrayList = new ArrayList();
        if (!map.isEmpty()) {
            leanbackLaunchIntentForPackage = null;
            for (String str2 : map.keySet()) {
                Intent leanbackLaunchIntentForPackage2 = Build.VERSION.SDK_INT >= 21 ? AppStart.f3772h.getPackageManager().getLeanbackLaunchIntentForPackage(str2) : null;
                if (leanbackLaunchIntentForPackage2 == null) {
                    leanbackLaunchIntentForPackage2 = AppStart.f3772h.getPackageManager().getLaunchIntentForPackage(str2);
                }
                if (leanbackLaunchIntentForPackage2 != null) {
                    arrayList.add((AppSwitchClassBean) map.get(str2));
                }
                leanbackLaunchIntentForPackage = leanbackLaunchIntentForPackage2;
            }
        } else if (hashSet.isEmpty()) {
            leanbackLaunchIntentForPackage = null;
        } else {
            Iterator it = hashSet.iterator();
            leanbackLaunchIntentForPackage = null;
            while (it.hasNext()) {
                String str3 = (String) it.next();
                leanbackLaunchIntentForPackage = Build.VERSION.SDK_INT >= 21 ? AppStart.f3772h.getPackageManager().getLeanbackLaunchIntentForPackage(str3) : null;
                if (leanbackLaunchIntentForPackage == null) {
                    leanbackLaunchIntentForPackage = AppStart.f3772h.getPackageManager().getLaunchIntentForPackage(str3);
                }
                if (leanbackLaunchIntentForPackage != null) {
                    arrayList.add(new AppSwitchClassBean(str3, "", str3.length()));
                }
            }
        }
        Collections.sort(arrayList, new qa.e(5));
        String string = s.c().f17709e.getRootInActiveWindow().getPackageName().toString();
        int i10 = 0;
        while (true) {
            if (i10 >= arrayList.size()) {
                i10 = -1;
                break;
            } else if (((AppSwitchClassBean) arrayList.get(i10)).packageName.equals(string)) {
                break;
            } else {
                i10++;
            }
        }
        int i11 = (i10 == -1 || i10 == arrayList.size() - 1) ? 0 : i10 + 1;
        if (arrayList.size() == 0) {
            return;
        }
        try {
            applicationInfo = AppStart.f3772h.f3775c.getApplicationInfo(((AppSwitchClassBean) arrayList.get(i11)).packageName, 0);
        } catch (Exception unused) {
            applicationInfo = null;
        }
        if (!((AppSwitchClassBean) arrayList.get(i11)).className.isEmpty() && applicationInfo != null && applicationInfo.uid > 3000) {
            String str4 = ((AppSwitchClassBean) arrayList.get(i11)).packageName;
            String str5 = ((AppSwitchClassBean) arrayList.get(i11)).className;
            if (str5.length() >= 4) {
                try {
                    if (str5.startsWith(".") || str5.substring(0, str5.indexOf(".")).length() != 1) {
                        if (AppStart.f3772h.f3775c.getActivityInfo(new ComponentName(str4, str5), 0) != null) {
                            try {
                                PrintStream printStream = System.out;
                                String str6 = ((AppSwitchClassBean) arrayList.get(i11)).packageName;
                                String str7 = ((AppSwitchClassBean) arrayList.get(i11)).className;
                                printStream.getClass();
                                intent = new Intent();
                            } catch (Exception e10) {
                                Intent intent2 = leanbackLaunchIntentForPackage;
                                e7 = e10;
                                intent = intent2;
                            }
                            try {
                                intent.setComponent(ComponentName.unflattenFromString(((AppSwitchClassBean) arrayList.get(i11)).packageName + "/" + ((AppSwitchClassBean) arrayList.get(i11)).className));
                                intent.setPackage(null);
                                intent.setFlags(270532608);
                                p000if.a.x0(1, AppStart.f3772h, intent);
                                return;
                            } catch (Exception e11) {
                                e7 = e11;
                                e7.printStackTrace();
                                leanbackLaunchIntentForPackage = intent;
                                String str8 = ((AppSwitchClassBean) arrayList.get(i11)).packageName;
                                if (Build.VERSION.SDK_INT >= 21) {
                                }
                                if (leanbackLaunchIntentForPackage == null) {
                                }
                                if (leanbackLaunchIntentForPackage != null) {
                                }
                            }
                        }
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                }
            }
        }
        String str82 = ((AppSwitchClassBean) arrayList.get(i11)).packageName;
        if (Build.VERSION.SDK_INT >= 21) {
            leanbackLaunchIntentForPackage = AppStart.f3772h.getPackageManager().getLeanbackLaunchIntentForPackage(str82);
        }
        if (leanbackLaunchIntentForPackage == null) {
            leanbackLaunchIntentForPackage = AppStart.f3772h.getPackageManager().getLaunchIntentForPackage(str82);
        }
        if (leanbackLaunchIntentForPackage != null) {
            return;
        }
        try {
            System.out.getClass();
            leanbackLaunchIntentForPackage.setPackage(null);
            leanbackLaunchIntentForPackage.setFlags(270532608);
            p000if.a.x0(1, AppStart.f3772h, leanbackLaunchIntentForPackage);
        } catch (Exception unused3) {
        }
    }

    public static void j() {
        String strJ;
        List activeSessions;
        if (Build.VERSION.SDK_INT >= 21) {
            if (s.c().f17706b == null || s.c().f17706b.isEmpty()) {
                strJ = "";
            } else {
                Iterator it = s.c().f17706b.iterator();
                strJ = "通知模式：\n";
                while (it.hasNext()) {
                    MediaController mediaControllerE = t0.e.e(it.next());
                    StringBuilder sbM = g.b.m(strJ);
                    sbM.append(mediaControllerE.getPackageName());
                    sbM.append("  ");
                    s.c().getClass();
                    sbM.append(s.h(mediaControllerE));
                    sbM.append(SignParameters.NEW_LINE);
                    strJ = sbM.toString();
                }
            }
            if (s.c().f17705a && (activeSessions = t0.e.f(t.f17728a.f17735d.getSystemService("media_session")).getActiveSessions(null)) != null && !activeSessions.isEmpty()) {
                strJ = g.b.j(strJ, "公签模式：\n");
                Iterator it2 = activeSessions.iterator();
                while (it2.hasNext()) {
                    MediaController mediaControllerE2 = t0.e.e(it2.next());
                    StringBuilder sbM2 = g.b.m(strJ);
                    sbM2.append(mediaControllerE2.getPackageName());
                    sbM2.append("  ");
                    s.c().getClass();
                    sbM2.append(s.h(mediaControllerE2));
                    sbM2.append(SignParameters.NEW_LINE);
                    strJ = sbM2.toString();
                }
            }
            if (strJ.isEmpty()) {
                strJ = "无";
            }
            a0.w(strJ);
        }
    }

    public static void k(AccService accService, z7.o oVar) {
        z7.s sVarG;
        int iE;
        String str;
        String str2;
        int i10;
        MediaController mediaControllerE;
        MediaController mediaControllerF;
        MediaController mediaControllerF2;
        MediaController mediaControllerF3;
        MediaController mediaControllerG;
        int i11;
        List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByViewId;
        boolean zB;
        Exception exc;
        z7.s sVar;
        Message messageObtain;
        int iE2;
        int iE3;
        int iE4;
        MediaController mediaControllerF4;
        MediaController mediaControllerF5;
        MediaController mediaControllerF6;
        PlaybackState playbackState;
        MediaController mediaControllerF7;
        PlaybackState playbackState2;
        MediaController mediaControllerF8;
        PlaybackState playbackState3;
        MediaController mediaControllerD;
        MediaController mediaControllerD2;
        PlaybackState playbackState4;
        MediaController mediaControllerD3;
        PlaybackState playbackState5;
        MediaController mediaControllerD4;
        PlaybackState playbackState6;
        z7.o oVar2 = oVar;
        String str3 = "android.activity.windowingMode";
        String str4 = "maps2";
        int i12 = 600;
        int i13 = 8000;
        int i14 = 7000;
        int i15 = 3000;
        int i16 = 0;
        while (i16 < oVar2.f19478a.size()) {
            try {
                sVarG = oVar2.l(i16).g();
                iE = sVarG.o("gnType").e();
            } catch (Exception e7) {
                e7.printStackTrace();
                return;
            }
            if (iE >= 900 && iE < 1000) {
                p000if.a.A(accService, sVarG, iE);
            } else if (iE >= 2000 && iE < i15) {
                wa.g.c(sVarG, iE);
            } else if (iE >= i15 && iE < 4000) {
                com.bumptech.glide.d.o(accService, sVarG, iE);
            } else if (iE >= i14 && iE < i13) {
                a9.o.I(accService, sVarG, iE);
            } else if (iE >= i13 && iE < 9000) {
                com.bumptech.glide.c.s(accService, iE);
            } else if (iE >= 500 && iE < i12) {
                d.b.s(accService, iE);
            } else if (iE < 4000 || iE >= 5000) {
                if (iE >= 5000 && iE < 5500) {
                    wa.d.a(accService, sVarG, iE);
                } else if (iE >= 5500 && iE < 6000) {
                    android.support.v4.media.session.b.f(accService, sVarG, iE);
                } else if (iE >= 6000 && iE < 6500) {
                    nh.b.w(accService, iE);
                } else if (iE >= 60 && iE < 70) {
                    s1.g.s(accService, iE);
                } else if (iE >= 6500 && iE < i14) {
                    qf.c.q(accService, iE);
                } else if (iE == 808) {
                    IInputManager iInputManagerAsInterface = IInputManager.Stub.asInterface(ServiceManager.getService("input"));
                    if (iInputManagerAsInterface != null) {
                        q4.a.G(iInputManagerAsInterface, sVarG);
                    }
                } else {
                    if (iE == 1 || iE == 54 || iE == 55) {
                        str = str3;
                        str2 = str4;
                        ExecutorService executorService = accService.f3946t0;
                        if (executorService == null || executorService.isShutdown()) {
                            i10 = 1;
                            accService.f3946t0 = Executors.newFixedThreadPool(1);
                        } else {
                            i10 = 1;
                        }
                        accService.f3946t0.submit(new v(sVarG, iE, accService, i10));
                    } else if (iE == 2) {
                        Intent intent = new Intent();
                        intent.setComponent(ComponentName.unflattenFromString(sVarG.o("str1").i()));
                        intent.addFlags(268435456);
                        p000if.a.x0(3, u.a().f17735d, intent);
                    } else {
                        b8.n nVar = sVarG.f19480a;
                        if (iE == 490) {
                            try {
                                accService.D = accService.getRootInActiveWindow().getPackageName().toString();
                            } catch (Exception unused) {
                            }
                            if (sVarG.o("app_package").i().equals(accService.D)) {
                                if (nVar.containsKey("maps1")) {
                                    k(accService, sVarG.p("maps1"));
                                }
                            } else if (nVar.containsKey(str4)) {
                                k(accService, sVarG.p(str4));
                            }
                        } else {
                            if (iE == 4 || iE == 410) {
                                str = str3;
                                str2 = str4;
                                s.c().m(sVarG);
                            } else if (iE == 413) {
                                s.c().n(sVarG);
                            } else if (iE == 418) {
                                new ya.l(accService, sVarG);
                            } else if (iE == 416) {
                                if (Build.VERSION.SDK_INT >= 21) {
                                    s.c().o(sVarG);
                                }
                            } else if (iE == 417) {
                                if (Build.VERSION.SDK_INT >= 21) {
                                    s.c().k(sVarG);
                                }
                            } else if (iE == 607) {
                                Message messageObtain2 = Message.obtain();
                                messageObtain2.what = -2;
                                messageObtain2.obj = sVarG;
                                accService.G.sendMessage(messageObtain2);
                            } else if (iE == 420) {
                                i();
                            } else if (iE == 5) {
                                accService.performGlobalAction(2);
                            } else if (iE == 53) {
                                p000if.a.F0(u.a().f17735d);
                            } else if (iE == 6) {
                                accService.performGlobalAction(1);
                            } else if (iE == 7) {
                                accService.performGlobalAction(3);
                            } else if (iE == 8) {
                                accService.performGlobalAction(3);
                                Thread.sleep(222L);
                                accService.performGlobalAction(3);
                            } else if (iE == 90) {
                                p000if.a.I0(accService, true);
                            } else if (iE == 92) {
                                p000if.a.J0(accService, accService.getRootInActiveWindow().getPackageName().toString());
                            } else if (iE == 91) {
                                p000if.a.I0(accService, false);
                            } else if (iE == 40) {
                                if (Build.VERSION.SDK_INT >= 24) {
                                    accService.performGlobalAction(7);
                                }
                            } else if (iE == 640) {
                                if (Build.VERSION.SDK_INT < 24) {
                                    return;
                                }
                                String[] strArrSplit = sVarG.o("str1").i().split("\\|");
                                Intent intentL = p000if.a.L(strArrSplit[0]);
                                intentL.addFlags(4096);
                                Intent intentL2 = p000if.a.L(strArrSplit[1]);
                                intentL2.addFlags(4096);
                                Bundle bundle = ActivityOptions.makeBasic().toBundle();
                                bundle.putInt(str3, 3);
                                bundle.putInt("android:activity.splitScreenCreateMode", 0);
                                accService.startActivities(new Intent[]{intentL, intentL2}, bundle);
                            } else if (iE == 641) {
                                if (Build.VERSION.SDK_INT < 24) {
                                    return;
                                }
                                Intent intentL3 = p000if.a.L(sVarG.o("str1").i());
                                intentL3.addFlags(4096);
                                ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
                                String strI = sVarG.o("str2").i();
                                if (!strI.isEmpty()) {
                                    String[] strArrSplit2 = strI.split(",");
                                    if (strArrSplit2.length == 4) {
                                        activityOptionsMakeBasic.setLaunchBounds(new Rect(Integer.parseInt(strArrSplit2[0]), Integer.parseInt(strArrSplit2[1]), Integer.parseInt(strArrSplit2[2]), Integer.parseInt(strArrSplit2[3])));
                                    }
                                }
                                Bundle bundle2 = activityOptionsMakeBasic.toBundle();
                                bundle2.putInt(str3, 5);
                                bundle2.putInt("android:activity.splitScreenCreateMode", 0);
                                accService.startActivities(new Intent[]{intentL3}, bundle2);
                                Thread.sleep(333L);
                            } else if (iE == 42) {
                                if (Build.VERSION.SDK_INT >= 26) {
                                    t0.e.h(accService.getSystemService(m0.o.w())).acceptRingingCall();
                                }
                            } else if (iE == 43) {
                                if (Build.VERSION.SDK_INT >= 28) {
                                    t0.e.h(accService.getSystemService(m0.o.w())).endCall();
                                } else {
                                    try {
                                        Class<?> cls = Class.forName("com.android.internal.telephony.ITelephony");
                                        cls.getMethod("declineCall", null).invoke(cls.getField("Service").get(null), null);
                                    } catch (Exception e10) {
                                        e10.getMessage();
                                    }
                                }
                            } else if (iE == 44) {
                                accService.performGlobalAction(4);
                            } else if (iE == 45) {
                                accService.performGlobalAction(5);
                            } else if (iE == 46) {
                                if (Build.VERSION.SDK_INT >= 18) {
                                    s.c().f17710f.cancelAllNotifications();
                                }
                            } else if (iE == 50) {
                                if (accService.C.size() > 1) {
                                    Iterator it = accService.C.iterator();
                                    for (int size = accService.C.size(); size >= 2; size--) {
                                        if (size == 2) {
                                            p000if.a.z0(accService, (String) it.next());
                                        } else {
                                            it.next();
                                        }
                                    }
                                }
                            } else if (iE == 421) {
                                z7.o oVarP = sVarG.p("appList");
                                Object[] array = accService.C.toArray();
                                int i17 = -1;
                                for (int length = array.length - 1; length >= 0; length--) {
                                    int i18 = 0;
                                    while (true) {
                                        if (i18 >= oVarP.f19478a.size()) {
                                            break;
                                        }
                                        if (array[length].equals(oVarP.l(i18).i())) {
                                            i17 = i18;
                                            break;
                                        }
                                        i18++;
                                    }
                                    if (i17 >= 0) {
                                        break;
                                    }
                                }
                                int i19 = i17 == -1 ? 0 : i17 + 1;
                                if (i19 >= oVarP.f19478a.size()) {
                                    i19 = 0;
                                }
                                PrintStream printStream = System.out;
                                oVarP.l(i19).i();
                                printStream.getClass();
                                p000if.a.z0(accService, oVarP.l(i19).i());
                            } else if (iE == 47) {
                                InputMethodManager inputMethodManager = (InputMethodManager) accService.getSystemService("input_method");
                                if (inputMethodManager != null) {
                                    inputMethodManager.showInputMethodPicker();
                                }
                            } else {
                                str = str3;
                                if (iE == 48) {
                                    List<InputMethodInfo> inputMethodList = ((InputMethodManager) accService.getSystemService("input_method")).getInputMethodList();
                                    if (inputMethodList.isEmpty()) {
                                        a0.u("没有安装输入法");
                                        return;
                                    }
                                    if (inputMethodList.size() == 1) {
                                        a0.u("只有一个输入法，无需切换");
                                        return;
                                    }
                                    String string = Settings.Secure.getString(accService.getContentResolver(), "default_input_method");
                                    if (string == null || string.equals("null")) {
                                        string = "";
                                    }
                                    if (string.isEmpty()) {
                                        try {
                                            Settings.Secure.putString(accService.getContentResolver(), "enabled_input_methods", inputMethodList.get(0).getId());
                                            Settings.Secure.putString(accService.getContentResolver(), "default_input_method", inputMethodList.get(0).getId());
                                            a0.w("输入法：" + ((Object) inputMethodList.get(0).loadLabel(accService.getPackageManager())));
                                            return;
                                        } catch (Exception unused2) {
                                            a0.u("切换输入法失败");
                                            return;
                                        }
                                    }
                                    ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(string);
                                    Iterator<InputMethodInfo> it2 = inputMethodList.iterator();
                                    int i20 = 0;
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            str2 = str4;
                                            break;
                                        }
                                        InputMethodInfo next = it2.next();
                                        i20++;
                                        str2 = str4;
                                        if (next.getId().equals(componentNameUnflattenFromString.flattenToShortString()) || next.getId().equals(componentNameUnflattenFromString.flattenToString())) {
                                            break;
                                        } else {
                                            str4 = str2;
                                        }
                                    }
                                    if (i20 >= inputMethodList.size()) {
                                        i20 = 0;
                                    }
                                    try {
                                        Settings.Secure.putString(accService.getContentResolver(), "enabled_input_methods", inputMethodList.get(i20).getId());
                                        Settings.Secure.putString(accService.getContentResolver(), "default_input_method", inputMethodList.get(i20).getId());
                                        a0.w("输入法：" + ((Object) inputMethodList.get(i20).loadLabel(accService.getPackageManager())));
                                    } catch (Exception unused3) {
                                        a0.u("切换输入法失败");
                                    }
                                    e7.printStackTrace();
                                    return;
                                }
                                str2 = str4;
                                if (iE == 49) {
                                    try {
                                        Settings.Secure.putString(accService.getContentResolver(), "enabled_input_methods", sVarG.o("immID").i());
                                        Settings.Secure.putString(accService.getContentResolver(), "default_input_method", sVarG.o("immID").i());
                                        a0.w("输入法：" + sVarG.o("immName").i());
                                    } catch (Exception unused4) {
                                        a0.u("设置输入法失败");
                                    }
                                } else if (iE == 3) {
                                    m.h(accService, sVarG);
                                } else if (iE == 414) {
                                    int iE5 = sVarG.o("type").e();
                                    if (iE5 != 0) {
                                        Settings.Secure.putInt(AppStart.b().getContentResolver(), "ui_night_mode", iE5);
                                    } else if (Settings.Secure.getInt(AppStart.b().getContentResolver(), "ui_night_mode") != 2) {
                                        Settings.Secure.putInt(AppStart.b().getContentResolver(), "ui_night_mode", 2);
                                    } else {
                                        Settings.Secure.putInt(AppStart.b().getContentResolver(), "ui_night_mode", 1);
                                    }
                                    UiModeManager uiModeManager = (UiModeManager) accService.getSystemService("uimode");
                                    if (uiModeManager.getCurrentModeType() == 3) {
                                        uiModeManager.disableCarMode(0);
                                        uiModeManager.enableCarMode(0);
                                    } else {
                                        uiModeManager.enableCarMode(0);
                                        uiModeManager.disableCarMode(0);
                                    }
                                } else if (iE == 415) {
                                    int iE6 = sVarG.o("type").e();
                                    UiModeManager uiModeManager2 = (UiModeManager) accService.getSystemService("uimode");
                                    if (iE6 == 0) {
                                        uiModeManager2.setNightMode(uiModeManager2.getNightMode() == 2 ? 1 : 2);
                                    } else {
                                        uiModeManager2.setNightMode(iE6);
                                    }
                                    if (uiModeManager2.getCurrentModeType() == 3) {
                                        uiModeManager2.disableCarMode(0);
                                        uiModeManager2.enableCarMode(0);
                                    } else {
                                        uiModeManager2.enableCarMode(0);
                                        uiModeManager2.disableCarMode(0);
                                    }
                                } else if (iE == 70) {
                                    String strTrim = sVarG.o("str1").i().trim();
                                    if (strTrim.startsWith("adb shell ")) {
                                        strTrim = strTrim.substring(10).trim();
                                    }
                                    if (strTrim.startsWith("adb ")) {
                                        strTrim = strTrim.substring(4).trim();
                                    }
                                    u9.d.r(strTrim.trim()).e0(null);
                                } else if (iE == 71) {
                                    String strTrim2 = sVarG.o("str1").i().trim();
                                    fa.b bVar = fa.a.f5646a;
                                    if (bVar.f()) {
                                        bVar.f5651b.exec(strTrim2, 3333L);
                                    }
                                } else if (iE == 72) {
                                    String strTrim3 = sVarG.o("str1").i().trim();
                                    fa.b bVar2 = fa.a.f5646a;
                                    if (!bVar2.f()) {
                                        return;
                                    }
                                    String allStr = bVar2.f5651b.exec(strTrim3, 3333L).getAllStr();
                                    if (allStr == null || allStr.isEmpty()) {
                                        allStr = "Success";
                                    }
                                    Toaster.show((CharSequence) allStr);
                                } else if (iE == 51) {
                                    p000if.a.G0(accService);
                                } else if (iE == 52) {
                                    if (System.currentTimeMillis() - accService.H < 6666) {
                                        a0.r("按HOME键后，需等6秒方可后台打开其它应用");
                                        return;
                                    }
                                    p000if.a.G0(accService);
                                } else if (iE == 9) {
                                    if (Build.VERSION.SDK_INT >= 21) {
                                        if (s.c().f17706b == null || s.c().f17706b.isEmpty()) {
                                            c(accService, 85);
                                        } else {
                                            MediaController mediaControllerE2 = t0.e.e(s.c().f17706b.get(0));
                                            PlaybackState playbackState7 = mediaControllerE2.getPlaybackState();
                                            if (playbackState7 != null) {
                                                if (playbackState7.getState() == 2 || playbackState7.getState() == 1) {
                                                    mediaControllerE2.getTransportControls().play();
                                                } else if (playbackState7.getState() == 3) {
                                                    mediaControllerE2.getTransportControls().pause();
                                                }
                                            }
                                        }
                                    }
                                } else if (iE == 10 || iE == 12) {
                                    if (Build.VERSION.SDK_INT >= 21) {
                                        if (s.c().f17706b == null || s.c().f17706b.isEmpty()) {
                                            c(accService, 87);
                                        } else {
                                            t0.e.e(s.c().f17706b.get(0)).getTransportControls().skipToNext();
                                        }
                                    }
                                } else if (iE == 11 || iE == 13) {
                                    if (Build.VERSION.SDK_INT >= 21) {
                                        if (s.c().f17706b == null || s.c().f17706b.isEmpty()) {
                                            c(accService, 88);
                                        } else {
                                            t0.e.e(s.c().f17706b.get(0)).getTransportControls().skipToPrevious();
                                        }
                                    }
                                    i10 = 1;
                                } else if (iE == 14) {
                                    if (Build.VERSION.SDK_INT >= 21) {
                                        if (s.c().f17706b == null || s.c().f17706b.isEmpty()) {
                                            c(accService, 86);
                                        } else {
                                            t0.e.e(s.c().f17706b.get(0)).getTransportControls().stop();
                                        }
                                    }
                                } else if (iE == 15) {
                                    if (accService.O0.getStreamVolume(3) < 2) {
                                        accService.O0.setStreamMute(3, false);
                                    } else {
                                        accService.O0.setStreamMute(3, true);
                                    }
                                } else if (iE == 411) {
                                    AudioManager audioManager = (AudioManager) accService.getApplicationContext().getSystemService("audio");
                                    int i21 = 3;
                                    int streamVolume = audioManager.getStreamVolume(3);
                                    int streamMaxVolume = audioManager.getStreamMaxVolume(3);
                                    if (streamVolume == 0) {
                                        int iIntValue = streamMaxVolume / 2;
                                        if (accService.M0.get(3) != null) {
                                            iIntValue = ((Integer) accService.M0.get(3)).intValue();
                                            i21 = 3;
                                        }
                                        audioManager.setStreamVolume(i21, iIntValue, 0);
                                        a0.w("(音流" + i21 + ")  解除静音");
                                    } else {
                                        accService.M0.put(3, Integer.valueOf(streamVolume));
                                        audioManager.setStreamVolume(3, 0, 0);
                                        a0.w("(音流3)  已静音");
                                    }
                                } else if (iE == 412) {
                                    s.c().f(accService, nVar.containsKey("type") ? sVarG.o("type").e() : 0);
                                } else if (iE == 432) {
                                    if (s.c().f17719p) {
                                        c(accService, 127);
                                    } else {
                                        c(accService, 126);
                                    }
                                    s.c().f17719p = !s.c().f17719p;
                                } else if (iE == 16) {
                                    c(accService, 85);
                                } else if (iE == 400) {
                                    c(accService, 126);
                                } else if (iE == 401) {
                                    c(accService, 127);
                                } else if (iE == 17) {
                                    c(accService, 87);
                                } else if (iE == 18) {
                                    c(accService, 88);
                                } else if (iE == 19) {
                                    c(accService, 86);
                                } else if (iE == 430) {
                                    c(accService, 90);
                                } else if (iE == 431) {
                                    c(accService, 89);
                                } else if (iE == 24) {
                                    if (Build.VERSION.SDK_INT >= 21 && s.c().f17706b != null && !s.c().f17706b.isEmpty() && (playbackState6 = (mediaControllerD4 = d()).getPlaybackState()) != null && (u.a().f17757x.isEmpty() || !u.a().f17757x.contains(mediaControllerD4.getPackageName()))) {
                                        s.c().f17708d = mediaControllerD4.getPackageName();
                                        if (playbackState6.getState() == 2 || playbackState6.getState() == 1) {
                                            mediaControllerD4.getTransportControls().play();
                                        } else if (playbackState6.getState() == 3) {
                                            mediaControllerD4.getTransportControls().pause();
                                        }
                                    }
                                } else if (iE == 402) {
                                    if (Build.VERSION.SDK_INT >= 21 && s.c().f17706b != null && !s.c().f17706b.isEmpty() && (playbackState5 = (mediaControllerD3 = d()).getPlaybackState()) != null && ((u.a().f17757x.isEmpty() || !u.a().f17757x.contains(mediaControllerD3.getPackageName())) && (playbackState5.getState() == 2 || playbackState5.getState() == 1))) {
                                        mediaControllerD3.getTransportControls().play();
                                    }
                                } else if (iE == 403) {
                                    if (Build.VERSION.SDK_INT >= 21 && s.c().f17706b != null && !s.c().f17706b.isEmpty() && (playbackState4 = (mediaControllerD2 = d()).getPlaybackState()) != null) {
                                        if (u.a().f17757x.isEmpty() || !u.a().f17757x.contains(mediaControllerD2.getPackageName())) {
                                            s.c().f17708d = mediaControllerD2.getPackageName();
                                            if (playbackState4.getState() == 3) {
                                                mediaControllerD2.getTransportControls().pause();
                                            }
                                        }
                                    }
                                } else if (iE != 25) {
                                    if (iE == 20 || iE == 21) {
                                        if (Build.VERSION.SDK_INT >= 21 && s.c().f17706b != null && !s.c().f17706b.isEmpty()) {
                                            MediaController mediaControllerD5 = d();
                                            if (u.a().f17757x.isEmpty() || !u.a().f17757x.contains(mediaControllerD5.getPackageName())) {
                                                if (iE == 20) {
                                                    mediaControllerD5.getTransportControls().skipToNext();
                                                } else {
                                                    mediaControllerD5.getTransportControls().skipToPrevious();
                                                }
                                            }
                                        }
                                    } else if (iE == 445 || iE == 446) {
                                        if (Build.VERSION.SDK_INT >= 21 && s.c().f17706b != null && !s.c().f17706b.isEmpty() && (mediaControllerE = e()) != null && (u.a().f17757x.isEmpty() || !u.a().f17757x.contains(mediaControllerE.getPackageName()))) {
                                            if (iE == 445) {
                                                mediaControllerE.getTransportControls().skipToNext();
                                            } else {
                                                mediaControllerE.getTransportControls().skipToPrevious();
                                            }
                                        }
                                    } else if (iE == 35) {
                                        if (Build.VERSION.SDK_INT >= 21 && s.c().f17706b != null && !s.c().f17706b.isEmpty()) {
                                            Iterator it3 = s.c().f17706b.iterator();
                                            while (true) {
                                                if (!it3.hasNext()) {
                                                    break;
                                                }
                                                MediaController mediaControllerE3 = t0.e.e(it3.next());
                                                if (mediaControllerE3.getPackageName().equals(sVarG.o("str1").i())) {
                                                    PlaybackState playbackState8 = mediaControllerE3.getPlaybackState();
                                                    if (playbackState8 != null) {
                                                        s.c().f17708d = mediaControllerE3.getPackageName();
                                                        if (playbackState8.getState() == 2 || playbackState8.getState() == 1) {
                                                            mediaControllerE3.getTransportControls().play();
                                                        } else if (playbackState8.getState() == 3) {
                                                            mediaControllerE3.getTransportControls().pause();
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    } else if (iE == 22 || iE == 23) {
                                        if (Build.VERSION.SDK_INT >= 21 && s.c().f17706b != null) {
                                            Iterator it4 = s.c().f17706b.iterator();
                                            while (true) {
                                                if (!it4.hasNext()) {
                                                    break;
                                                }
                                                MediaController mediaControllerE4 = t0.e.e(it4.next());
                                                if (mediaControllerE4.getPackageName().equals(sVarG.o("str1").i())) {
                                                    if (iE == 22) {
                                                        mediaControllerE4.getTransportControls().skipToNext();
                                                    } else {
                                                        mediaControllerE4.getTransportControls().skipToPrevious();
                                                    }
                                                }
                                            }
                                        }
                                    } else if (iE == 405) {
                                        if (Build.VERSION.SDK_INT >= 21 && s.c().f17706b != null && !s.c().f17706b.isEmpty() && (mediaControllerD = d()) != null) {
                                            l(accService, mediaControllerD.getPackageName());
                                        }
                                    } else if (iE == 444 || iE == 442 || iE == 443) {
                                        if (Build.VERSION.SDK_INT >= 21 && s.c().f17706b != null && !s.c().f17706b.isEmpty()) {
                                            MediaController mediaControllerD6 = d();
                                            long position = iE == 444 ? mediaControllerD6.getPlaybackState().getPosition() + 20000 : iE == 442 ? mediaControllerD6.getPlaybackState().getPosition() + 10000 : iE == 443 ? mediaControllerD6.getPlaybackState().getPosition() - 10000 : 0L;
                                            if (position < 0) {
                                                position = 0;
                                            }
                                            mediaControllerD6.getTransportControls().seekTo(position);
                                        }
                                    } else if (iE == 440 || iE == 441) {
                                        if (Build.VERSION.SDK_INT >= 21 && s.c().f17706b != null && !s.c().f17706b.isEmpty()) {
                                            MediaController mediaControllerD7 = d();
                                            if (iE == 440) {
                                                mediaControllerD7.getTransportControls().fastForward();
                                            } else {
                                                mediaControllerD7.getTransportControls().rewind();
                                            }
                                        }
                                    } else if (iE == 450 || iE == 451) {
                                        if (Build.VERSION.SDK_INT >= 21 && (mediaControllerF = f()) != null && mediaControllerF.getPlaybackState() != null) {
                                            s.c().f17708d = mediaControllerF.getPackageName();
                                            if (iE == 450) {
                                                mediaControllerF.getTransportControls().fastForward();
                                            } else {
                                                mediaControllerF.getTransportControls().rewind();
                                            }
                                        }
                                    } else if (iE == 454 || iE == 452 || iE == 453) {
                                        if (Build.VERSION.SDK_INT >= 21 && (mediaControllerF2 = f()) != null && mediaControllerF2.getPlaybackState() != null) {
                                            s.c().f17708d = mediaControllerF2.getPackageName();
                                            long position2 = iE == 454 ? mediaControllerF2.getPlaybackState().getPosition() + 20000 : iE == 452 ? mediaControllerF2.getPlaybackState().getPosition() + 10000 : iE == 453 ? mediaControllerF2.getPlaybackState().getPosition() - 10000 : 0L;
                                            if (position2 < 0) {
                                                position2 = 0;
                                            }
                                            mediaControllerF2.getTransportControls().seekTo(position2);
                                        }
                                    } else if (iE == 26) {
                                        if (Build.VERSION.SDK_INT >= 21 && (mediaControllerF8 = f()) != null && ((u.a().f17758y.isEmpty() || !u.a().f17758y.contains(mediaControllerF8.getPackageName())) && (playbackState3 = mediaControllerF8.getPlaybackState()) != null)) {
                                            s.c().f17708d = mediaControllerF8.getPackageName();
                                            if (playbackState3.getState() == 2 || playbackState3.getState() == 1) {
                                                mediaControllerF8.getTransportControls().play();
                                            } else if (playbackState3.getState() == 3) {
                                                mediaControllerF8.getTransportControls().pause();
                                            }
                                        }
                                    } else if (iE == 36) {
                                        if (Build.VERSION.SDK_INT >= 21 && (mediaControllerF7 = f()) != null && ((u.a().f17758y.isEmpty() || !u.a().f17758y.contains(mediaControllerF7.getPackageName())) && (playbackState2 = mediaControllerF7.getPlaybackState()) != null)) {
                                            s.c().f17708d = mediaControllerF7.getPackageName();
                                            if (playbackState2.getState() != 3) {
                                                mediaControllerF7.getTransportControls().play();
                                            }
                                        }
                                    } else if (iE == 404) {
                                        if (Build.VERSION.SDK_INT >= 21 && (mediaControllerF6 = f()) != null && ((u.a().f17758y.isEmpty() || !u.a().f17758y.contains(mediaControllerF6.getPackageName())) && (playbackState = mediaControllerF6.getPlaybackState()) != null)) {
                                            s.c().f17708d = mediaControllerF6.getPackageName();
                                            if (playbackState.getState() == 3) {
                                                mediaControllerF6.getTransportControls().pause();
                                            }
                                        }
                                    } else if (iE == 27) {
                                        if (Build.VERSION.SDK_INT >= 21 && (mediaControllerF5 = f()) != null && (u.a().f17758y.isEmpty() || !u.a().f17758y.contains(mediaControllerF5.getPackageName()))) {
                                            s.c().f17708d = mediaControllerF5.getPackageName();
                                            mediaControllerF5.getTransportControls().stop();
                                        }
                                    } else if (iE == 28 || iE == 29) {
                                        if (Build.VERSION.SDK_INT >= 21 && (mediaControllerF3 = f()) != null && (u.a().f17758y.isEmpty() || !u.a().f17758y.contains(mediaControllerF3.getPackageName()))) {
                                            s.c().f17708d = mediaControllerF3.getPackageName();
                                            if (iE == 28) {
                                                mediaControllerF3.getTransportControls().skipToNext();
                                            } else {
                                                mediaControllerF3.getTransportControls().skipToPrevious();
                                            }
                                        }
                                    } else if (iE == 455 || iE == 456) {
                                        if (Build.VERSION.SDK_INT >= 21 && (mediaControllerG = g()) != null && (u.a().f17758y.isEmpty() || !u.a().f17758y.contains(mediaControllerG.getPackageName()))) {
                                            s.c().f17708d = mediaControllerG.getPackageName();
                                            Thread.sleep(200L);
                                            if (iE == 455) {
                                                mediaControllerG.getTransportControls().skipToNext();
                                            } else {
                                                mediaControllerG.getTransportControls().skipToPrevious();
                                            }
                                        }
                                    } else if (iE == 34) {
                                        if (Build.VERSION.SDK_INT >= 21) {
                                            Iterator it5 = t0.e.f(accService.getApplicationContext().getSystemService("media_session")).getActiveSessions(null).iterator();
                                            while (true) {
                                                if (!it5.hasNext()) {
                                                    break;
                                                }
                                                MediaController mediaControllerE5 = t0.e.e(it5.next());
                                                if (mediaControllerE5.getPackageName().equals(sVarG.o("str1").i())) {
                                                    PlaybackState playbackState9 = mediaControllerE5.getPlaybackState();
                                                    if (playbackState9 != null) {
                                                        s.c().f17708d = mediaControllerE5.getPackageName();
                                                        if (playbackState9.getState() == 2 || playbackState9.getState() == 1) {
                                                            mediaControllerE5.getTransportControls().play();
                                                        } else if (playbackState9.getState() == 3) {
                                                            mediaControllerE5.getTransportControls().pause();
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    } else if (iE == 30 || iE == 31) {
                                        if (Build.VERSION.SDK_INT >= 21) {
                                            Iterator it6 = t0.e.f(accService.getApplicationContext().getSystemService("media_session")).getActiveSessions(null).iterator();
                                            while (true) {
                                                if (!it6.hasNext()) {
                                                    break;
                                                }
                                                MediaController mediaControllerE6 = t0.e.e(it6.next());
                                                if (mediaControllerE6.getPackageName().equals(sVarG.o("str1").i())) {
                                                    if (iE == 30) {
                                                        mediaControllerE6.getTransportControls().skipToNext();
                                                    } else {
                                                        mediaControllerE6.getTransportControls().skipToPrevious();
                                                    }
                                                }
                                            }
                                        }
                                    } else if (iE == 408) {
                                        if (Build.VERSION.SDK_INT >= 21 && (mediaControllerF4 = f()) != null) {
                                            l(accService, mediaControllerF4.getPackageName());
                                        }
                                    } else if (iE >= 100 && iE < 200) {
                                        u9.d.r("input keyevent " + sVarG.o("int1").e()).l0();
                                    } else if (iE == 460) {
                                        if (s.c().f17719p) {
                                            u9.d.r("input keyevent 127").l0();
                                        } else {
                                            u9.d.r("input keyevent 126").l0();
                                        }
                                        s.c().f17719p = !s.c().f17719p;
                                    } else if (iE == 80) {
                                        int iE7 = sVarG.o("int1").e();
                                        try {
                                            iE4 = sVarG.o("int2").e();
                                        } catch (Exception unused5) {
                                            iE4 = 1;
                                        }
                                        if (iE4 == 0) {
                                            u9.d.r("input keyevent " + iE7).l0();
                                        } else if (iE4 > 0 && iE4 < 4) {
                                            while (iE4 > 0) {
                                                u9.d.r("input keyevent " + iE7).l0();
                                                Thread.sleep(133L);
                                                iE4 += -1;
                                            }
                                        }
                                    } else if (iE == 801) {
                                        int iE8 = sVarG.o("int1").e();
                                        try {
                                            iE3 = sVarG.o("int2").e();
                                        } catch (Exception unused6) {
                                            iE3 = 1;
                                        }
                                        if (iE3 == 0) {
                                            m(iE8, true);
                                        } else if (iE3 > 0 && iE3 < 4) {
                                            while (iE3 > 0) {
                                                m(iE8, false);
                                                Thread.sleep(200L);
                                                iE3--;
                                            }
                                        }
                                    } else if (iE == 800) {
                                        int iE9 = sVarG.o("int1").e();
                                        try {
                                            iE2 = sVarG.o("int2").e();
                                        } catch (Exception unused7) {
                                            iE2 = 1;
                                        }
                                        if (iE2 == 0) {
                                            n(iE9, true);
                                        } else if (iE2 > 0 && iE2 < 4) {
                                            while (iE2 > 0) {
                                                n(iE9, false);
                                                Thread.sleep(200L);
                                                iE2--;
                                            }
                                        }
                                    } else if (iE == 802) {
                                        m(27, false);
                                    } else if (iE == 803) {
                                        m(87, false);
                                    } else if (iE == 804) {
                                        m(88, false);
                                    } else if (iE == 805) {
                                        m(164, false);
                                    } else if (iE == 810) {
                                        m(85, false);
                                    } else if (iE == 811) {
                                        if (s.c().f17719p) {
                                            m(127, false);
                                        } else {
                                            m(126, false);
                                        }
                                        s.c().f17719p = !s.c().f17719p;
                                    } else if (iE == 806) {
                                        int iE10 = sVarG.o("api").e();
                                        int iE11 = sVarG.o("action").e();
                                        int iE12 = sVarG.o("keycode").e();
                                        if (iE11 != 0) {
                                            int i22 = 1;
                                            if (iE11 > 0 && iE11 < 4) {
                                                while (iE11 > 0) {
                                                    if (iE10 == i22) {
                                                        m(iE12, false);
                                                    } else {
                                                        n(iE12, false);
                                                    }
                                                    Thread.sleep(180L);
                                                    iE11--;
                                                    i22 = 1;
                                                }
                                            }
                                        } else if (iE10 == 1) {
                                            m(iE12, true);
                                        } else {
                                            n(iE12, true);
                                        }
                                    } else if (iE == 807) {
                                        int iE13 = sVarG.o("api").e();
                                        int iE14 = sVarG.o("action").e();
                                        int iE15 = sVarG.o("x").e();
                                        int iE16 = sVarG.o("y").e();
                                        if (iE14 != 0) {
                                            int i23 = 1;
                                            if (iE14 > 0 && iE14 < 4) {
                                                while (iE14 > 0) {
                                                    if (iE13 == i23) {
                                                        o(iE15, iE16, false);
                                                    } else {
                                                        p(iE15, iE16, false);
                                                    }
                                                    Thread.sleep(180L);
                                                    iE14--;
                                                    i23 = 1;
                                                }
                                            }
                                        } else if (iE13 == 1) {
                                            o(iE15, iE16, true);
                                        } else {
                                            p(iE15, iE16, true);
                                        }
                                    } else if (iE == 75) {
                                        int iE17 = sVarG.o("action").e();
                                        int iE18 = sVarG.o("x").e();
                                        int iE19 = sVarG.o("y").e();
                                        if (iE17 != 0 && iE17 > 0 && iE17 < 4) {
                                            while (iE17 > 0) {
                                                u9.d.r("input tap " + iE18 + " " + iE19).l0();
                                                iE17 += -1;
                                            }
                                        }
                                    } else if (iE == 300) {
                                        u9.d.r("am kill-all").e0(null);
                                        a0.w("清理完成");
                                    } else if (iE == 301) {
                                        if (!accService.P0) {
                                            accService.P0 = true;
                                            a0.w("内存清理中");
                                            fa.e.e().getClass();
                                            fa.e.g(accService);
                                            a0.w("清理完成");
                                            accService.P0 = false;
                                        }
                                    } else if (iE == 302) {
                                        if (!accService.P0) {
                                            accService.P0 = true;
                                            a0.w("内存清理中");
                                            fa.e.e().getClass();
                                            fa.e.f(accService);
                                            a0.w("清理完成");
                                            accService.P0 = false;
                                        }
                                    } else if (iE == 320) {
                                        CharSequence packageName = accService.getRootInActiveWindow().getPackageName();
                                        if (packageName != null && !packageName.equals("com.android.systemui")) {
                                            com.bumptech.glide.c.O(accService, packageName.toString());
                                        }
                                    } else if (iE != 600) {
                                        if (iE == 601) {
                                            a0.w(sVarG.o("str1").i());
                                        } else if (iE == 602) {
                                            a0.x(sVarG.o("str1").i());
                                        } else if (iE == 603) {
                                            try {
                                                Thread.sleep(sVarG.o("time").e());
                                            } catch (Exception unused8) {
                                            }
                                        } else if (iE == 610) {
                                            p000if.a.y0(accService, new Intent("android.settings.SETTINGS"));
                                        } else if (iE == 611) {
                                            p000if.a.y0(accService, new Intent().setClassName("android.settings.SETTINGS", "com.android.tv.settings.MainSettings"));
                                        } else if (iE == 613) {
                                            p000if.a.y0(accService, new Intent("android.settings.BLUETOOTH_SETTINGS"));
                                        } else if (iE == 612) {
                                            p000if.a.y0(accService, new Intent("android.settings.WIFI_SETTINGS"));
                                        } else if (iE == 73) {
                                            u9.d.r("am force-stop '" + sVarG.o("str1").i() + "'").e0(null);
                                        } else if (iE == 74) {
                                            String string2 = accService.getRootInActiveWindow().getPackageName().toString();
                                            if (string2.contains(".")) {
                                                String strU = qf.c.u(accService);
                                                if (strU.isEmpty() || !strU.equals(string2)) {
                                                    if (string2.startsWith("com.android.") || string2.equals(accService.getPackageName()) || string2.equals("moe.shizuku.privileged.api")) {
                                                        accService.performGlobalAction(1);
                                                    } else {
                                                        u9.d.r("am force-stop '" + string2 + "'").e0(null);
                                                    }
                                                }
                                            }
                                        } else if (iE == 754) {
                                            a0.s("3秒后停止自动化", false);
                                            try {
                                                Thread.sleep(PopupConst.DURATION_POPUP_SHORT);
                                            } catch (Exception unused9) {
                                            }
                                            accService.G.sendEmptyMessage(-1);
                                        } else if (iE == 700) {
                                            qf.c.U(accService);
                                        } else if (iE == 706) {
                                            if (Build.VERSION.SDK_INT >= 21) {
                                                try {
                                                    List windows = accService.getWindows();
                                                    StringBuffer stringBuffer = new StringBuffer();
                                                    Iterator it7 = windows.iterator();
                                                    while (it7.hasNext()) {
                                                        try {
                                                            AccessibilityWindowInfo accessibilityWindowInfoL = t0.e.l(it7.next());
                                                            if (accessibilityWindowInfoL.getType() == 1) {
                                                                stringBuffer.append("应用,");
                                                            } else if (accessibilityWindowInfoL.getType() == 2) {
                                                                stringBuffer.append("输入法,");
                                                            } else if (accessibilityWindowInfoL.getType() == 4) {
                                                                stringBuffer.append("无障碍悬浮窗,");
                                                            } else if (accessibilityWindowInfoL.getType() == 3) {
                                                                stringBuffer.append("系统悬浮窗,");
                                                                Rect rect = new Rect();
                                                                accessibilityWindowInfoL.getBoundsInScreen(rect);
                                                                stringBuffer.append(rect.width() + "x" + rect.height() + ",(" + rect.left + "," + rect.top + "," + rect.right + "," + rect.bottom + "),");
                                                                stringBuffer.append(accessibilityWindowInfoL.getRoot().getPackageName());
                                                                stringBuffer.append(SignParameters.NEW_LINE);
                                                            } else {
                                                                if (accessibilityWindowInfoL.getType() == 7) {
                                                                    stringBuffer.append("系统关联窗,");
                                                                } else if (accessibilityWindowInfoL.getType() == 5) {
                                                                    stringBuffer.append("分屏,");
                                                                } else if (accessibilityWindowInfoL.getType() == 6) {
                                                                    stringBuffer.append("菜单,");
                                                                } else {
                                                                    stringBuffer.append("未知类型,");
                                                                }
                                                                Rect rect2 = new Rect();
                                                                accessibilityWindowInfoL.getBoundsInScreen(rect2);
                                                                stringBuffer.append(rect2.width() + "x" + rect2.height() + ",(" + rect2.left + "," + rect2.top + "," + rect2.right + "," + rect2.bottom + "),");
                                                                stringBuffer.append(accessibilityWindowInfoL.getRoot().getPackageName());
                                                                stringBuffer.append(SignParameters.NEW_LINE);
                                                            }
                                                            Rect rect22 = new Rect();
                                                            accessibilityWindowInfoL.getBoundsInScreen(rect22);
                                                            stringBuffer.append(rect22.width() + "x" + rect22.height() + ",(" + rect22.left + "," + rect22.top + "," + rect22.right + "," + rect22.bottom + "),");
                                                            stringBuffer.append(accessibilityWindowInfoL.getRoot().getPackageName());
                                                            stringBuffer.append(SignParameters.NEW_LINE);
                                                        } catch (Exception e11) {
                                                            exc = e11;
                                                            a0.t("获取失败：" + exc.getMessage());
                                                            i10 = 1;
                                                            i16 += i10;
                                                            oVar2 = oVar;
                                                            str3 = str;
                                                            str4 = str2;
                                                            i14 = 7000;
                                                            i15 = 3000;
                                                            i12 = 600;
                                                            i13 = 8000;
                                                        }
                                                    }
                                                    sVar = new z7.s();
                                                    sVar.m("str1", stringBuffer.toString());
                                                    sVar.l("size", 12);
                                                    sVar.l("time", 10000);
                                                    messageObtain = Message.obtain();
                                                } catch (Exception e12) {
                                                    e = e12;
                                                }
                                                try {
                                                    messageObtain.what = -2;
                                                    messageObtain.obj = sVar;
                                                    accService.G.sendMessage(messageObtain);
                                                } catch (Exception e13) {
                                                    e = e13;
                                                    exc = e;
                                                    a0.t("获取失败：" + exc.getMessage());
                                                    i10 = 1;
                                                    i16 += i10;
                                                    oVar2 = oVar;
                                                    str3 = str;
                                                    str4 = str2;
                                                    i14 = 7000;
                                                    i15 = 3000;
                                                    i12 = 600;
                                                    i13 = 8000;
                                                }
                                            }
                                            i10 = 1;
                                        } else {
                                            if (iE == 701) {
                                                a(accService);
                                            } else if (iE != 702) {
                                                if (iE == 703) {
                                                    AccessibilityNodeInfo rootInActiveWindow = accService.getRootInActiveWindow();
                                                    String strI2 = sVarG.o("str1").i();
                                                    List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText = rootInActiveWindow.findAccessibilityNodeInfosByText(strI2);
                                                    try {
                                                        zB = sVarG.o("isBfb").b();
                                                    } catch (Exception unused10) {
                                                        zB = false;
                                                    }
                                                    if (listFindAccessibilityNodeInfosByText != null && !listFindAccessibilityNodeInfosByText.isEmpty()) {
                                                        for (AccessibilityNodeInfo parent : listFindAccessibilityNodeInfosByText) {
                                                            if (!zB || parent.getText().toString().equals(strI2)) {
                                                                if (parent.isClickable()) {
                                                                    parent.performAction(16);
                                                                } else {
                                                                    int i24 = 0;
                                                                    while (true) {
                                                                        parent = parent.getParent();
                                                                        if (parent != null) {
                                                                            if (!parent.isClickable()) {
                                                                                i24++;
                                                                                if (i24 >= 6) {
                                                                                    break;
                                                                                }
                                                                            } else {
                                                                                parent.performAction(16);
                                                                                break;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                } else if (iE == 704) {
                                                    if (Build.VERSION.SDK_INT >= 18 && (listFindAccessibilityNodeInfosByViewId = accService.getRootInActiveWindow().findAccessibilityNodeInfosByViewId(sVarG.o("str1").i())) != null && !listFindAccessibilityNodeInfosByViewId.isEmpty()) {
                                                        for (AccessibilityNodeInfo parent2 : listFindAccessibilityNodeInfosByViewId) {
                                                            if (parent2.isClickable()) {
                                                                parent2.performAction(16);
                                                            } else {
                                                                int i25 = 0;
                                                                while (true) {
                                                                    parent2 = parent2.getParent();
                                                                    if (parent2 != null) {
                                                                        if (!parent2.isClickable()) {
                                                                            i25++;
                                                                            if (i25 >= 6) {
                                                                                break;
                                                                            }
                                                                        } else {
                                                                            parent2.performAction(16);
                                                                            break;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                } else if (iE == 750) {
                                                    com.bumptech.glide.d.D(accService.getContentResolver(), sVarG.o("type1").i(), sVarG.o("type2").i(), sVarG.o("key").i(), sVarG.o("value").i());
                                                } else if (iE == 751) {
                                                    com.bumptech.glide.d.E(accService.getContentResolver(), sVarG.o("type1").i(), sVarG.o("type2").i(), sVarG.o("key").i(), sVarG.o("value").i(), sVarG.o("value_if").i(), sVarG.o("value_else").i());
                                                } else if (iE == 614) {
                                                    if (Build.VERSION.SDK_INT >= 21) {
                                                        accService.performGlobalAction(6);
                                                    }
                                                } else if (iE >= 201 && iE <= 203) {
                                                    u9.d.r("input keyevent 79").l0();
                                                    if (iE == 201) {
                                                        u9.d.r("input keyevent 79").l0();
                                                    } else if (iE == 203) {
                                                        u9.d.r("input keyevent 79").l0();
                                                        u9.d.r("input keyevent 79").l0();
                                                    }
                                                } else if (iE == 204) {
                                                    u9.d.r("input keyevent  --longpress 79").l0();
                                                } else if (iE == 604) {
                                                    if (Build.VERSION.SDK_INT >= 28) {
                                                        accService.performGlobalAction(9);
                                                    }
                                                } else if (iE == 76) {
                                                    if (!Environment.getExternalStorageState().contains("mounted")) {
                                                        a0.t("截屏失败：没有内部存储卡");
                                                        return;
                                                    }
                                                    File file = new File(fa.e.e().d() + "/Download");
                                                    try {
                                                        file.mkdir();
                                                    } catch (Exception unused11) {
                                                    }
                                                    if (u9.d.r("screencap -p '" + file.getPath() + "/截屏" + System.currentTimeMillis() + ".png'").l0().q()) {
                                                        a0.w("截屏已保存到 Download 目录");
                                                    } else {
                                                        a0.t("截屏失败");
                                                    }
                                                } else if (iE == 642) {
                                                    ya.e.b().B = !ya.e.b().B;
                                                    z7.s sVarN = q4.a.n(accService);
                                                    sVarN.k("lock", Boolean.valueOf(ya.e.b().B));
                                                    q4.a.O(accService, sVarN);
                                                    a0.w(ya.e.b().B ? "锁定" : "解锁");
                                                } else if (iE == 605) {
                                                    if (Build.VERSION.SDK_INT >= 24) {
                                                        wa.b.b(accService, sVarG);
                                                    }
                                                } else if (iE == 606) {
                                                    if (Build.VERSION.SDK_INT >= 24) {
                                                        int iE20 = sVarG.o("action").e();
                                                        int iE21 = sVarG.o("x").e();
                                                        int iE22 = sVarG.o("y").e();
                                                        if (iE20 == 0) {
                                                            wa.b.a(accService, iE21, iE22, 900L);
                                                        } else if (iE20 > 0 && iE20 < 4) {
                                                            while (iE20 > 0) {
                                                                wa.b.a(accService, iE21, iE22, 50L);
                                                                Thread.sleep(180L);
                                                                iE20--;
                                                            }
                                                        }
                                                    }
                                                } else if (iE == 622) {
                                                    q(sVarG.o("int1").e());
                                                } else {
                                                    if (iE == 620) {
                                                        int iH = h(accService);
                                                        if (iH >= 255) {
                                                            a0.w("屏幕亮度已最大");
                                                            return;
                                                        }
                                                        int i26 = iH + 25;
                                                        if (i26 > 255) {
                                                            a0.w("屏幕亮度已最大");
                                                            i26 = 255;
                                                        } else {
                                                            a0.w("当前亮度：" + ((int) ((i26 / 255.0f) * 100.0f)) + "%");
                                                        }
                                                        System.out.getClass();
                                                        q(i26);
                                                    } else if (iE == 621) {
                                                        int iH2 = h(accService);
                                                        if (iH2 <= 10) {
                                                            a0.w("亮度过低：4%");
                                                            return;
                                                        }
                                                        int i27 = iH2 - 25;
                                                        if (i27 < 10) {
                                                            a0.w("亮度过低：4%");
                                                            i27 = 10;
                                                        } else {
                                                            a0.w("当前亮度：" + ((int) ((i27 / 255.0f) * 100.0f)) + "%");
                                                        }
                                                        System.out.getClass();
                                                        q(i27);
                                                    } else if (iE == 631 || iE == 632) {
                                                        r(accService, sVarG.o("streamType").e(), iE == 631);
                                                    } else if (iE == 630) {
                                                        accService.O0.setStreamVolume(sVarG.o("streamType").e(), sVarG.o("volume").e(), 0);
                                                    } else if (iE == 633) {
                                                        if (k0.b().f3848d == null) {
                                                            a0.u("无法连接car音频");
                                                        } else {
                                                            int iE23 = sVarG.o("setType").e();
                                                            int iE24 = sVarG.o("streamType").e();
                                                            if (iE23 == 0) {
                                                                k0.b().h(iE24, sVarG.o("volume").e());
                                                            } else {
                                                                int iF = k0.b().f(iE24);
                                                                if (iE23 == 1) {
                                                                    if (iF == k0.b().d(iE24)) {
                                                                        a0.w("音量已最大");
                                                                    } else {
                                                                        i11 = iF + 1;
                                                                        k0.b().h(iE24, i11);
                                                                    }
                                                                } else if (iF == k0.b().e(iE24)) {
                                                                    a0.w("音量已最小");
                                                                } else {
                                                                    i11 = iF - 1;
                                                                    k0.b().h(iE24, i11);
                                                                }
                                                            }
                                                        }
                                                    } else if (iE == 753) {
                                                        MyLog.write(sVarG.o("level").i(), sVarG.o("tag").i(), sVarG.o("message").i());
                                                    } else if (iE == 752) {
                                                        j();
                                                    } else if (iE == 755) {
                                                        if (Build.VERSION.SDK_INT >= 18) {
                                                            try {
                                                                s.c().f17710f.c();
                                                            } catch (Exception e14) {
                                                                a0.u("出错：" + e14.getMessage());
                                                            }
                                                        }
                                                    } else if (iE == 705) {
                                                        b(accService);
                                                    }
                                                    i10 = 1;
                                                }
                                            }
                                            i10 = 1;
                                        }
                                    }
                                    i10 = 1;
                                } else if (Build.VERSION.SDK_INT >= 21 && s.c().f17706b != null && !s.c().f17706b.isEmpty()) {
                                    MediaController mediaControllerD8 = d();
                                    if (u.a().f17757x.isEmpty() || !u.a().f17757x.contains(mediaControllerD8.getPackageName())) {
                                        s.c().f17708d = mediaControllerD8.getPackageName();
                                        mediaControllerD8.getTransportControls().stop();
                                    }
                                }
                                i10 = 1;
                            }
                            i10 = 1;
                        }
                    }
                    i16 += i10;
                    oVar2 = oVar;
                    str3 = str;
                    str4 = str2;
                    i14 = 7000;
                    i15 = 3000;
                    i12 = 600;
                    i13 = 8000;
                }
            } else if (iE == 4000) {
                accService.S = sVarG.q("json");
                v8.a aVarV = v8.a.v(accService);
                aVarV.j(R.layout.window_show_keymap_panel);
                aVarV.a(256);
                aVarV.a(512);
                aVarV.l(Build.VERSION.SDK_INT >= 28 ? 1 : 0);
                aVarV.s(accService.T);
                aVarV.d();
            } else if (iE == 4001 && accService.V == null) {
                accService.V = new ya.i(accService, sVarG);
            }
            str = str3;
            str2 = str4;
            i10 = 1;
            i16 += i10;
            oVar2 = oVar;
            str3 = str;
            str4 = str2;
            i14 = 7000;
            i15 = 3000;
            i12 = 600;
            i13 = 8000;
        }
    }

    public static void l(AccService accService, String str) {
        try {
            if (accService.getPackageManager().checkPermission("android.permission.DEVICE_POWER", accService.getPackageName()) == 0) {
                ActivityManager activityManager = (ActivityManager) accService.getSystemService("activity");
                for (ActivityManager.RunningTaskInfo runningTaskInfo : activityManager.getRunningTasks(100)) {
                    if (runningTaskInfo.topActivity != null && runningTaskInfo.topActivity.getPackageName().equals(str)) {
                        activityManager.moveTaskToFront(runningTaskInfo.id, 0);
                        return;
                    }
                }
            }
        } catch (Exception unused) {
        }
        Intent leanbackLaunchIntentForPackage = Build.VERSION.SDK_INT >= 21 ? accService.getPackageManager().getLeanbackLaunchIntentForPackage(str) : null;
        if (leanbackLaunchIntentForPackage == null) {
            leanbackLaunchIntentForPackage = accService.getPackageManager().getLaunchIntentForPackage(str);
        }
        if (leanbackLaunchIntentForPackage == null) {
            return;
        }
        try {
            leanbackLaunchIntentForPackage.setPackage(null);
            leanbackLaunchIntentForPackage.setFlags(270532608);
            p000if.a.x0(1, accService, leanbackLaunchIntentForPackage);
        } catch (Exception unused2) {
        }
    }

    public static void m(int i10, boolean z) throws IllegalAccessException, InterruptedException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Method method;
        try {
            InputManager inputManager = (InputManager) AppStart.b().getSystemService("input");
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= 33) {
                Class cls = Integer.TYPE;
                method = InputManager.class.getMethod("injectInputEventToTarget", InputEvent.class, cls, cls);
            } else {
                method = InputManager.class.getMethod("injectInputEvent", InputEvent.class, Integer.TYPE);
            }
            int i12 = InputManager.INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH;
            long jUptimeMillis = SystemClock.uptimeMillis();
            KeyEvent keyEvent = new KeyEvent(jUptimeMillis, jUptimeMillis, 0, i10, 0);
            if (i11 >= 33 ? ((Boolean) method.invoke(inputManager, keyEvent, Integer.valueOf(i12), -1)).booleanValue() : ((Boolean) method.invoke(inputManager, keyEvent, Integer.valueOf(i12))).booleanValue()) {
                if (z) {
                    Thread.sleep(ViewConfiguration.getLongPressTimeout() + 50);
                    KeyEvent keyEventChangeTimeRepeat = KeyEvent.changeTimeRepeat(keyEvent, jUptimeMillis + ViewConfiguration.getLongPressTimeout() + 50, 1, 128);
                    if (i11 >= 33) {
                        method.invoke(inputManager, keyEventChangeTimeRepeat, Integer.valueOf(i12), -1);
                    } else {
                        method.invoke(inputManager, keyEventChangeTimeRepeat, Integer.valueOf(i12));
                    }
                }
                KeyEvent keyEventChangeTimeRepeat2 = KeyEvent.changeTimeRepeat(KeyEvent.changeAction(keyEvent, 1), SystemClock.uptimeMillis(), 0);
                if (i11 >= 33) {
                    ((Boolean) method.invoke(inputManager, keyEventChangeTimeRepeat2, Integer.valueOf(i12), -1)).getClass();
                } else {
                    ((Boolean) method.invoke(inputManager, keyEventChangeTimeRepeat2, Integer.valueOf(i12))).getClass();
                }
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public static void n(int i10, boolean z) throws InterruptedException {
        try {
            Instrumentation instrumentation = new Instrumentation();
            instrumentation.sendKeySync(new KeyEvent(0, i10));
            if (z) {
                Thread.sleep(888L);
            }
            instrumentation.sendKeySync(new KeyEvent(1, i10));
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public static void o(int i10, int i11, boolean z) throws InterruptedException, NoSuchMethodException, SecurityException {
        Method method;
        try {
            InputManager inputManager = (InputManager) AppStart.f3772h.getSystemService("input");
            int i12 = Build.VERSION.SDK_INT;
            if (i12 >= 33) {
                Class cls = Integer.TYPE;
                method = InputManager.class.getMethod("injectInputEventToTarget", InputEvent.class, cls, cls);
            } else {
                method = InputManager.class.getMethod("injectInputEvent", InputEvent.class, Integer.TYPE);
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            float f10 = i10;
            float f11 = i11;
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, f10, f11, 1.0f, 1.0f, 0, 1.0f, 1.0f, 0, 0);
            motionEventObtain.setSource(CarLanID.Send.RADIO);
            boolean zBooleanValue = i12 >= 33 ? ((Boolean) method.invoke(inputManager, motionEventObtain, 2, -1)).booleanValue() : ((Boolean) method.invoke(inputManager, motionEventObtain, 2)).booleanValue();
            motionEventObtain.recycle();
            if (zBooleanValue) {
                Thread.sleep(z ? 888L : 30L);
                MotionEvent motionEventObtain2 = MotionEvent.obtain(jUptimeMillis, SystemClock.uptimeMillis(), 1, f10, f11, 1.0f, 1.0f, 0, 1.0f, 1.0f, 0, 0);
                motionEventObtain2.setSource(CarLanID.Send.RADIO);
                if (i12 >= 33) {
                    ((Boolean) method.invoke(inputManager, motionEventObtain2, 2, -1)).getClass();
                } else {
                    ((Boolean) method.invoke(inputManager, motionEventObtain2, 2)).getClass();
                }
                motionEventObtain2.recycle();
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public static void p(int i10, int i11, boolean z) throws InterruptedException {
        try {
            Instrumentation instrumentation = new Instrumentation();
            long jUptimeMillis = SystemClock.uptimeMillis();
            float f10 = i10;
            float f11 = i11;
            instrumentation.sendPointerSync(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, f10, f11, 0));
            if (z) {
                Thread.sleep(888L);
            } else {
                Thread.sleep(30L);
            }
            instrumentation.sendPointerSync(MotionEvent.obtain(jUptimeMillis, SystemClock.uptimeMillis(), 1, f10, f11, 0));
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public static void q(int i10) {
        if (Settings.System.getInt(AppStart.f3772h.getContentResolver(), "screen_brightness_mode") == 1) {
            Settings.System.putInt(AppStart.f3772h.getContentResolver(), "screen_brightness_mode", 0);
        }
        Settings.System.putInt(AppStart.f3772h.getContentResolver(), "screen_brightness", i10);
        AppStart.f3772h.getContentResolver().notifyChange(Settings.System.getUriFor("screen_brightness"), null);
    }

    public static void r(AccService accService, int i10, boolean z) {
        int i11;
        int streamMaxVolume = accService.O0.getStreamMaxVolume(i10);
        int streamVolume = accService.O0.getStreamVolume(i10);
        int i12 = streamMaxVolume >= 100 ? 10 : streamMaxVolume >= 50 ? 5 : streamMaxVolume >= 20 ? 2 : 1;
        if (z) {
            i11 = streamVolume + i12;
            if (i11 > streamMaxVolume) {
                i11 = streamMaxVolume;
            }
        } else {
            i11 = streamVolume - i12;
            if (i11 < 0) {
                i11 = 0;
            }
        }
        try {
            accService.O0.setStreamVolume(i10, i11, 0);
            a0.w("（音流" + i10 + "）当前音量：" + i11 + " / " + streamMaxVolume);
        } catch (Exception e7) {
            e7.printStackTrace();
            a0.u("音量调整失败");
        }
    }
}
