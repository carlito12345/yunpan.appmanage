package ma;

import a2.w0;
import a2.y0;
import android.app.Activity;
import android.app.role.RoleManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.UserHandle;
import android.provider.Settings;
import android.view.View;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import androidx.emoji2.text.q;
import androidx.room.s;
import ba.n;
import ba.r;
import ce.t0;
import ce.x0;
import com.android.apksig.internal.compat.IntConsumerCompat;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.bean.InputMethodBean;
import com.yunpan.appmanage.bean.LogcatBean;
import com.yunpan.appmanage.bean.NameContentSelectBean;
import com.yunpan.appmanage.bean.SpecialPermissionsBean;
import com.yunpan.appmanage.bean.WpVideoStreamBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.AppDao;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityAppStorage;
import com.yunpan.appmanage.ui.ActivityCodeEditor;
import com.yunpan.appmanage.ui.ActivityDesktop;
import com.yunpan.appmanage.ui.ActivityDownload;
import com.yunpan.appmanage.ui.ActivityFloatButtonSet;
import com.yunpan.appmanage.ui.ActivityGjDiy;
import com.yunpan.appmanage.ui.ActivityHome;
import com.yunpan.appmanage.ui.ActivityImmersive;
import com.yunpan.appmanage.ui.ActivityInputMethod;
import com.yunpan.appmanage.ui.ActivityInstaller;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcat;
import com.yunpan.appmanage.ui.ActivityNezha;
import com.yunpan.appmanage.ui.ActivityOuShangStatusBar;
import com.yunpan.appmanage.ui.ActivityOuShangStatusBarNoRoot;
import com.yunpan.appmanage.ui.ActivityOuShangWhitelist;
import com.yunpan.appmanage.ui.ActivityPermissions;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.d0;
import com.yunpan.appmanage.util.e0;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.util.w;
import fa.b0;
import fa.g0;
import fa.x;
import ha.a3;
import ha.af;
import ha.cf;
import ha.db;
import ha.ea;
import ha.h3;
import ha.ia;
import ha.ja;
import ha.ne;
import ha.s2;
import ha.vb;
import ha.y6;
import ha.ze;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import org.simpleframework.xml.strategy.Name;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;
import ua.j1;
import ua.k3;
import ua.p2;
import ua.q1;
import ua.t1;
import x9.b6;
import x9.l2;
import x9.n5;
import x9.t5;
import x9.u5;
import x9.w3;
import x9.y;
import z7.o;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements ec.d, IntConsumerCompat, ea, cf, af, c6.e, ea.f, ia, y6 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11022a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11023b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f11024c;

    public /* synthetic */ b(Object obj, int i10, Object obj2) {
        this.f11022a = i10;
        this.f11023b = obj;
        this.f11024c = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.String] */
    private final void e(mc.b bVar) {
        w3 w3Var = (w3) this.f11024c;
        int i10 = ActivityFloatButtonSet.E;
        ActivityFloatButtonSet activityFloatButtonSet = (ActivityFloatButtonSet) this.f11023b;
        activityFloatButtonSet.getClass();
        try {
            String str = w3Var.f18365b;
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            int[] iArr = {options.outWidth, options.outHeight};
            int i11 = iArr[0];
            if (i11 != iArr[1]) {
                a0.u("图标的宽高必须一致");
                bVar.d(new Exception());
                bVar = bVar;
            } else if (i11 > 300) {
                a0.u("图标尺寸不要超过 300*300");
                bVar.d(new Exception());
                bVar = bVar;
            } else {
                try {
                } catch (Exception unused) {
                }
                if (a0.e(w3Var.f18365b, activityFloatButtonSet.A.getFilesDir() + "/FloatButtonIco")) {
                    bVar.b();
                    bVar = bVar;
                } else {
                    bVar.d(new Exception());
                    a0.u("复制图标文件失败");
                    bVar = "复制图标文件失败";
                }
            }
        } catch (Exception unused2) {
            a0.u("无法分辨图片尺寸");
            bVar.d(new Exception());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void f(mc.b bVar) {
        boolean zPutString;
        String str;
        String str2 = (String) this.f11024c;
        int i10 = ActivityImmersive.N;
        ActivityImmersive activityImmersive = (ActivityImmersive) this.f11023b;
        activityImmersive.getClass();
        try {
            zPutString = Settings.Global.putString(activityImmersive.getContentResolver(), "policy_control", str2);
        } catch (Exception unused) {
            zPutString = false;
        }
        if (zPutString) {
            w wVar = v.f4106a;
            wVar.f4141s = str2;
            try {
                wVar.f4123i.m("policy_control", str2);
            } catch (Exception unused2) {
            }
            wVar.m();
            bVar.b();
            return;
        }
        b0.f5652a.getClass();
        if (!w0.P()) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4053j) {
                if (w0.h("settings put global policy_control " + str2).f5648a == 0) {
                    w wVar2 = v.f4106a;
                    wVar2.f4141s = str2;
                    try {
                        wVar2.f4123i.m("policy_control", str2);
                    } catch (Exception unused3) {
                    }
                    wVar2.m();
                    bVar.b();
                    return;
                }
                str = "修改失败";
            } else {
                str = "无权限修改系统设置！需要授予(WRITE_SECURE_SETTINGS)权限，root或adb或公签系统都可以！";
            }
        }
        android.support.v4.media.session.a.B(str, bVar);
    }

    private final void h(mc.b bVar) {
        ArrayList arrayList = (ArrayList) this.f11024c;
        int i10 = ActivityInputMethod.C;
        ActivityInputMethod activityInputMethod = (ActivityInputMethod) this.f11023b;
        String string = Settings.Secure.getString(activityInputMethod.A.getContentResolver(), "default_input_method");
        if (string == null || string.equals("null")) {
            string = "";
        }
        for (InputMethodInfo inputMethodInfo : ((InputMethodManager) activityInputMethod.getSystemService("input_method")).getInputMethodList()) {
            String id2 = inputMethodInfo.getId();
            String packageName = inputMethodInfo.getPackageName();
            try {
                arrayList.add(new InputMethodBean(MyDb.get().getAppDao().get_appBean(packageName).name, packageName, id2, id2.equals(string)));
            } catch (Exception unused) {
                arrayList.add(new InputMethodBean(inputMethodInfo.loadLabel(activityInputMethod.A.getPackageManager()).toString(), packageName, id2, id2.equals(string)));
            }
        }
        bVar.b();
    }

    private final void i(mc.b bVar) {
        boolean zPutString;
        InputMethodBean inputMethodBean = (InputMethodBean) this.f11024c;
        int i10 = ActivityInputMethod.C;
        ActivityInputMethod activityInputMethod = (ActivityInputMethod) this.f11023b;
        activityInputMethod.getClass();
        try {
            Settings.Secure.putString(activityInputMethod.A.getContentResolver(), "enabled_input_methods", inputMethodBean.className);
            zPutString = Settings.Secure.putString(activityInputMethod.A.getContentResolver(), "default_input_method", inputMethodBean.className);
        } catch (Exception unused) {
            zPutString = false;
        }
        if (!zPutString) {
            w0 w0Var = b0.f5652a;
            String str = "settings get secure enabled_input_methods '" + inputMethodBean.className + "'";
            w0Var.getClass();
            w0.h(str);
            StringBuilder sb2 = new StringBuilder("settings put secure default_input_method '");
            sb2.append(inputMethodBean.className);
            sb2.append("'");
            zPutString = w0.h(sb2.toString()).f5648a == 0;
        }
        if (zPutString) {
            bVar.b();
        } else {
            android.support.v4.media.session.a.B("设置失败", bVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x018a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void j(mc.b bVar) throws InterruptedException {
        String str;
        int i10 = 2;
        Uri uri = (Uri) this.f11024c;
        int i11 = ActivityInstaller.P;
        ActivityInstaller activityInstaller = (ActivityInstaller) this.f11023b;
        activityInstaller.getClass();
        try {
            activityInstaller.getExternalCacheDir().mkdirs();
            File file = new File(activityInstaller.getExternalCacheDir(), "1.tmp");
            try {
                activityInstaller.x(uri, file);
                try {
                    ef.b bVar2 = new ef.b(file);
                    activityInstaller.G = bVar2;
                    bVar2.M();
                    activityInstaller.H = bVar2.f4963e;
                    activityInstaller.I.post(new db(27, activityInstaller));
                } catch (Exception unused) {
                }
                w wVar = v.f4106a;
                int i12 = wVar.T;
                if (i12 == 2 || i12 == 3) {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                    kVar.g();
                    if (kVar.E == null) {
                        bVar.f("正在连接[多屏互动]服务");
                        ActivityHome.G();
                        activityInstaller.O = true;
                        Thread.sleep(1000L);
                    }
                } else if (!wVar.f4152y) {
                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                    if (!com.yunpan.appmanage.util.j.f4033a.f4049h) {
                        ExecutorService executorService = u9.d.f15554a;
                        v9.c.a();
                        if (!wVar.U.isEmpty()) {
                            ActivityNezha.y();
                        }
                        if (wVar.V == -1 && Build.BRAND.equals("MTK") && Build.HARDWARE.equals("xecarx")) {
                            s sVarL0 = u9.d.r("getprop ro.ecarx.version.platform").l0();
                            if (sVarL0.q() && ((String) sVarL0.k().get(0)).contains("ECARX_E02_")) {
                                wVar.z(1);
                                wVar.s(true);
                            } else {
                                wVar.z(0);
                            }
                        }
                        g0.f5682a.e();
                        while (!com.yunpan.appmanage.util.j.f4033a.f4049h && !activityInstaller.F) {
                            try {
                                Thread.sleep(500L);
                            } catch (Exception unused2) {
                            }
                        }
                    }
                }
                bVar.f("正在安装中");
                w wVar2 = v.f4106a;
                int i13 = wVar2.T;
                if (i13 == 2 || i13 == 3) {
                    l lVarG = com.bumptech.glide.d.G(file.getPath(), new ne(bVar, i10));
                    if (lVarG.a()) {
                        bVar.f("安装成功");
                    } else {
                        bVar.f("安装失败：" + lVarG.f11049c);
                    }
                } else if (!wVar2.f4152y) {
                    b0.f5652a.getClass();
                    if (!w0.P()) {
                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                        if (!com.yunpan.appmanage.util.j.f4033a.f4053j || Build.VERSION.SDK_INT >= 23) {
                            if (wVar2.f4112c0 == 0) {
                                bVar.f(((Object) activityInstaller.A.getText(R.string.str_gj)) + "安装器：正在安装中....");
                                String strD = h.f11033a.d(file.getPath());
                                if (strD.isEmpty()) {
                                    bVar.f("安装成功");
                                } else {
                                    bVar.f("安装失败：".concat(strD));
                                }
                            } else {
                                bVar.f("已交给其它安装器安装");
                                com.bumptech.glide.c.I(activityInstaller.A, file.getPath());
                            }
                        }
                    }
                    String path = file.getPath();
                    DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                    x xVarY = w0.Y(com.yunpan.appmanage.util.j.f4033a.f4060n, path);
                    if (xVarY.f5762a || xVarY.f5763b == -111) {
                        bVar.f(xVarY.f5764c);
                    } else {
                        bVar.f("pm命令模式安装失败,交由安装器来安装\n" + xVarY.f5764c);
                        if (wVar2.f4112c0 == 0) {
                            bVar.f(((Object) activityInstaller.A.getText(R.string.str_gj)) + "安装器：正在安装中....");
                            String strD2 = h.f11033a.d(file.getPath());
                            if (strD2.isEmpty()) {
                                bVar.f("安装成功");
                            } else {
                                bVar.f("安装失败：".concat(strD2));
                            }
                        } else {
                            com.bumptech.glide.c.I(activityInstaller.A, file.getPath());
                        }
                    }
                }
                bVar.b();
            } catch (Exception unused3) {
                str = "失败：复制文件失败";
                android.support.v4.media.session.a.B(str, bVar);
            }
        } catch (Exception unused4) {
            str = "失败：不存在sd卡";
        }
    }

    private final void k(mc.b bVar) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        String str;
        int i10 = ActivityOuShangStatusBar.E;
        ActivityOuShangStatusBar activityOuShangStatusBar = (ActivityOuShangStatusBar) this.f11023b;
        activityOuShangStatusBar.getClass();
        b0.f5652a.getClass();
        fa.a0 a0VarH = w0.h(Name.MARK);
        if (a0VarH.f5648a != 0) {
            str = "获取uid失败";
        } else {
            if (a0VarH.a().contains("uid=0(")) {
                HashSet hashSet = new HashSet();
                File file = new File(g0.f5682a.d() + "/." + activityOuShangStatusBar.A.getPackageName() + "/ls123.xml");
                file.getParentFile().mkdirs();
                if (w0.h("\\cp -R '/data/user_de/0/com.android.systemui/shared_prefs/com.incall.apps.common.utils.SharePrefrecenceUtil.xml' '" + file.getPath() + "'").f5648a == 0) {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        try {
                            XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
                            xmlPullParserNewPullParser.setInput(fileInputStream, HTTP.UTF_8);
                            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                                if (eventType == 2) {
                                    if ("int".equals(xmlPullParserNewPullParser.getName())) {
                                        String attributeValue = xmlPullParserNewPullParser.getAttributeValue(null, "name");
                                        String attributeValue2 = xmlPullParserNewPullParser.getAttributeValue(null, "value");
                                        if (attributeValue != null && attributeValue2 != null && (attributeValue2.equals("0") || attributeValue2.equals("2"))) {
                                            hashSet.add(attributeValue);
                                        }
                                    }
                                }
                            }
                            fileInputStream.close();
                        } catch (Throwable th2) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable th3) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                } catch (Exception unused) {
                                }
                            }
                            throw th2;
                        }
                    } catch (Exception unused2) {
                        str = "读取配置时出现错误";
                    }
                }
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                String str2 = kVar.f4039c;
                String str3 = kVar.f4041d;
                p2 p2Var = new p2(str2, str3, hashSet.contains(str3));
                ArrayList arrayList = (ArrayList) this.f11024c;
                arrayList.add(p2Var);
                for (AppBean appBean : MyDb.get().getAppDao().get_app_canStart()) {
                    String str4 = appBean.name;
                    String str5 = appBean.pack;
                    arrayList.add(new p2(str4, str5, hashSet.contains(str5)));
                }
                for (AppBean appBean2 : MyDb.get().getAppDao().get_app_NoCanStart()) {
                    try {
                        ActivityInfo[] activityInfoArr = com.yunpan.appmanage.util.j.f4033a.f4037b.getPackageInfo(appBean2.pack, 1).activities;
                        if (activityInfoArr != null) {
                            int length = activityInfoArr.length;
                            int i11 = 0;
                            while (true) {
                                if (i11 >= length) {
                                    break;
                                }
                                if (activityInfoArr[i11].exported) {
                                    String str6 = appBean2.name;
                                    String str7 = appBean2.pack;
                                    arrayList.add(new p2(str6, str7, hashSet.contains(str7)));
                                    break;
                                }
                                i11++;
                            }
                        }
                    } catch (PackageManager.NameNotFoundException e7) {
                        e7.printStackTrace();
                    }
                }
                bVar.b();
                return;
            }
            str = "无权限，请先提权";
        }
        android.support.v4.media.session.a.B(str, bVar);
    }

    private final void l(mc.b bVar) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        int i10 = ActivityOuShangStatusBarNoRoot.F;
        ActivityOuShangStatusBarNoRoot activityOuShangStatusBarNoRoot = (ActivityOuShangStatusBarNoRoot) this.f11023b;
        activityOuShangStatusBarNoRoot.getClass();
        HashSet hashSet = new HashSet();
        File file = new File(g0.f5682a.d() + "/." + activityOuShangStatusBarNoRoot.A.getPackageName() + "/ls123.xml");
        file.getParentFile().mkdirs();
        StringBuilder sb2 = new StringBuilder("\\cp -R '/data/user_de/0/com.android.systemui/shared_prefs/com.incall.apps.common.utils.SharePrefrecenceUtil.xml' '");
        sb2.append(file.getPath());
        sb2.append("'");
        String string = sb2.toString();
        b0.f5652a.getClass();
        if (w0.h(string).f5648a == 0) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
                    xmlPullParserNewPullParser.setInput(fileInputStream, HTTP.UTF_8);
                    for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                        if (eventType == 2 && "int".equals(xmlPullParserNewPullParser.getName())) {
                            String attributeValue = xmlPullParserNewPullParser.getAttributeValue(null, "name");
                            String attributeValue2 = xmlPullParserNewPullParser.getAttributeValue(null, "value");
                            if (attributeValue != null && attributeValue2 != null && (attributeValue2.equals("0") || attributeValue2.equals("2"))) {
                                hashSet.add(attributeValue);
                            }
                        }
                    }
                    activityOuShangStatusBarNoRoot.E = true;
                    fileInputStream.close();
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                    throw th2;
                }
            } catch (Exception unused2) {
            }
        }
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        String str = kVar.f4039c;
        String str2 = kVar.f4041d;
        p2 p2Var = new p2(str, str2, hashSet.contains(str2));
        ArrayList arrayList = (ArrayList) this.f11024c;
        arrayList.add(p2Var);
        for (AppBean appBean : MyDb.get().getAppDao().get_app_canStart()) {
            String str3 = appBean.name;
            String str4 = appBean.pack;
            arrayList.add(new p2(str3, str4, hashSet.contains(str4)));
        }
        for (AppBean appBean2 : MyDb.get().getAppDao().get_app_NoCanStart()) {
            try {
                ActivityInfo[] activityInfoArr = com.yunpan.appmanage.util.j.f4033a.f4037b.getPackageInfo(appBean2.pack, 1).activities;
                if (activityInfoArr != null) {
                    int length = activityInfoArr.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= length) {
                            break;
                        }
                        if (activityInfoArr[i11].exported) {
                            String str5 = appBean2.name;
                            String str6 = appBean2.pack;
                            arrayList.add(new p2(str5, str6, hashSet.contains(str6)));
                            break;
                        }
                        i11++;
                    }
                }
            } catch (PackageManager.NameNotFoundException e7) {
                e7.printStackTrace();
            }
        }
        bVar.b();
    }

    private final void m(mc.b bVar) {
        String str;
        int i10 = ActivityOuShangWhitelist.G;
        ActivityOuShangWhitelist activityOuShangWhitelist = (ActivityOuShangWhitelist) this.f11023b;
        activityOuShangWhitelist.getClass();
        AppDao appDao = MyDb.get().getAppDao();
        String str2 = (String) this.f11024c;
        AppBean appBean = appDao.get_appBean(str2);
        Iterator it = activityOuShangWhitelist.E.v().iterator();
        String strL = "";
        while (true) {
            if (!it.hasNext()) {
                String strJ = g.b.j(strL, str2);
                Boolean boolValueOf = Boolean.FALSE;
                try {
                    boolValueOf = Boolean.valueOf(Settings.Global.putString(activityOuShangWhitelist.F, "OUSHANG_WHILTE_APP_LIST", strJ));
                } catch (Exception unused) {
                }
                if (!boolValueOf.booleanValue()) {
                    String str3 = "settings put global OUSHANG_WHILTE_APP_LIST '" + strJ + "'";
                    b0.f5652a.getClass();
                    str = w0.h(str3).f5648a != 0 ? "添加失败" : "已存在";
                }
                bVar.f(new NameContentSelectBean(appBean != null ? appBean.name : "未安装", str2, appBean != null));
                bVar.b();
                return;
            }
            NameContentSelectBean nameContentSelectBean = (NameContentSelectBean) it.next();
            strL = g.b.l(nameContentSelectBean.content, ",", g.b.m(strL));
            if (nameContentSelectBean.content.equals(str2)) {
                break;
            }
        }
        android.support.v4.media.session.a.B(str, bVar);
    }

    @Override // ea.f
    public void a(w3 w3Var) {
        int i10 = ActivityGjDiy.V;
        ActivityGjDiy activityGjDiy = (ActivityGjDiy) this.f11023b;
        activityGjDiy.getClass();
        if (!w3Var.f18365b.toLowerCase().endsWith(".png")) {
            a0.u("请选择png格式的图标");
        }
        long j10 = w3Var.f18367d;
        if (j10 > 681984) {
            a0.u("图标大小不能超过600KB");
            return;
        }
        if (j10 < 1) {
            a0.u("请选择正常的png图片文件");
            return;
        }
        View view = (View) this.f11024c;
        if (view.getId() == R.id.v_icon || view.getId() == R.id.v_btn_select1) {
            String str = w3Var.f18365b;
            activityGjDiy.P = str;
            activityGjDiy.C.setImageURI(Uri.parse(str));
        } else {
            String str2 = w3Var.f18365b;
            activityGjDiy.R = str2;
            activityGjDiy.D.setImageURI(Uri.parse(str2));
        }
    }

    @Override // com.android.apksig.internal.compat.IntConsumerCompat
    public void accept(int i10) {
        n4.a.b((IntConsumerCompat) this.f11023b, (IntConsumerCompat) this.f11024c, i10);
    }

    @Override // com.android.apksig.internal.compat.IntConsumerCompat
    public /* synthetic */ IntConsumerCompat andThen(IntConsumerCompat intConsumerCompat) {
        return n4.a.a(this, intConsumerCompat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v13, types: [z7.o] */
    /* JADX WARN: Type inference failed for: r7v0, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v1, types: [int] */
    /* JADX WARN: Type inference failed for: r7v6 */
    @Override // ha.ea
    public void b(int i10) {
        int i11 = 4;
        int i12 = 3;
        int i13 = 11;
        Object obj = this.f11024c;
        Object obj2 = this.f11023b;
        final int i14 = 1;
        final ?? r72 = 0;
        switch (this.f11022a) {
            case 9:
                int i15 = ActivityDesktop.G;
                ActivityDesktop activityDesktop = (ActivityDesktop) obj2;
                activityDesktop.getClass();
                new mc.c(r72, new b(activityDesktop, 10, ((DesktopBean) ((ArrayList) obj).get(i10)).packageName)).d(rc.f.f13757b).a(fc.b.a()).b(new j1(activityDesktop, i14));
                break;
            case 23:
                int i16 = ActivityKeyMapLogcat.L;
                final ActivityKeyMapLogcat activityKeyMapLogcat = (ActivityKeyMapLogcat) obj2;
                activityKeyMapLogcat.getClass();
                ArrayList arrayList = (ArrayList) obj;
                if (i10 == arrayList.size() - 1) {
                    if (activityKeyMapLogcat.I.f19478a.isEmpty()) {
                        Toaster.showLong((CharSequence) "没有其它方案，无需删除");
                        break;
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        for (int i17 = 0; i17 < activityKeyMapLogcat.I.f19478a.size(); i17++) {
                            arrayList2.add(activityKeyMapLogcat.I.l(i17).g().o("name").i());
                        }
                        new ja((Activity) activityKeyMapLogcat, activityKeyMapLogcat.A, activityKeyMapLogcat.K, arrayList2, new k3(activityKeyMapLogcat, i12)).show();
                        break;
                    }
                } else if (i10 == arrayList.size() - 2) {
                    activityKeyMapLogcat.y(true);
                    break;
                } else if (i10 == arrayList.size() - 3) {
                    activityKeyMapLogcat.y(false);
                    break;
                } else if (i10 == arrayList.size() - 4) {
                    ArrayList arrayList3 = new ArrayList();
                    new mc.c(r72, new a3(i11, arrayList3)).d(rc.f.f13757b).a(fc.b.a()).b(new h3(activityKeyMapLogcat, 12, arrayList3));
                    break;
                } else if (i10 < activityKeyMapLogcat.H.f19478a.size()) {
                    ArrayList arrayList4 = new ArrayList();
                    final ?? P = activityKeyMapLogcat.H.l(i10).g().p("keys");
                    while (r72 < P.f19478a.size()) {
                        arrayList4.add(P.l(r72).g().o("name").i());
                        r72++;
                    }
                    if (arrayList4.isEmpty()) {
                        Toaster.show((CharSequence) "此方案没有按键记录，或出错");
                        break;
                    } else {
                        new ja(activityKeyMapLogcat, activityKeyMapLogcat.A, activityKeyMapLogcat.K, arrayList4, new ia() { // from class: ua.l3
                            @Override // ha.ia
                            public final void b(int i18) {
                                z7.o oVar = P;
                                switch (i14) {
                                    case 0:
                                        int i19 = ActivityKeyMapLogcat.L;
                                        ActivityKeyMapLogcat activityKeyMapLogcat2 = activityKeyMapLogcat;
                                        activityKeyMapLogcat2.getClass();
                                        new ha.e9(activityKeyMapLogcat2, activityKeyMapLogcat2.A, activityKeyMapLogcat2.G, oVar.l(i18).g(), new m3(activityKeyMapLogcat2, 2)).show();
                                        break;
                                    default:
                                        int i20 = ActivityKeyMapLogcat.L;
                                        ActivityKeyMapLogcat activityKeyMapLogcat3 = activityKeyMapLogcat;
                                        activityKeyMapLogcat3.getClass();
                                        new ha.e9(activityKeyMapLogcat3, activityKeyMapLogcat3.A, activityKeyMapLogcat3.G, oVar.l(i18).g(), new m3(activityKeyMapLogcat3, 1)).show();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    }
                } else if (i10 - activityKeyMapLogcat.H.f19478a.size() < activityKeyMapLogcat.I.f19478a.size()) {
                    int size = i10 - activityKeyMapLogcat.H.f19478a.size();
                    ArrayList arrayList5 = new ArrayList();
                    final o oVarP = activityKeyMapLogcat.I.l(size).g().p("keys");
                    for (int i18 = 0; i18 < oVarP.f19478a.size(); i18++) {
                        arrayList5.add(oVarP.l(i18).g().o("name").i());
                    }
                    if (arrayList5.isEmpty()) {
                        Toaster.show((CharSequence) "此方案没有按键记录，或出错");
                        break;
                    } else {
                        new ja(activityKeyMapLogcat, activityKeyMapLogcat.A, activityKeyMapLogcat.K, arrayList5, new ia() { // from class: ua.l3
                            @Override // ha.ia
                            public final void b(int i182) {
                                z7.o oVar = oVarP;
                                switch (r72) {
                                    case 0:
                                        int i19 = ActivityKeyMapLogcat.L;
                                        ActivityKeyMapLogcat activityKeyMapLogcat2 = activityKeyMapLogcat;
                                        activityKeyMapLogcat2.getClass();
                                        new ha.e9(activityKeyMapLogcat2, activityKeyMapLogcat2.A, activityKeyMapLogcat2.G, oVar.l(i182).g(), new m3(activityKeyMapLogcat2, 2)).show();
                                        break;
                                    default:
                                        int i20 = ActivityKeyMapLogcat.L;
                                        ActivityKeyMapLogcat activityKeyMapLogcat3 = activityKeyMapLogcat;
                                        activityKeyMapLogcat3.getClass();
                                        new ha.e9(activityKeyMapLogcat3, activityKeyMapLogcat3.A, activityKeyMapLogcat3.G, oVar.l(i182).g(), new m3(activityKeyMapLogcat3, 1)).show();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    }
                }
                break;
            default:
                int i19 = ActivityOuShangStatusBarNoRoot.F;
                ((ActivityOuShangStatusBarNoRoot) obj2).getClass();
                p2 p2Var = (p2) obj;
                if (i10 == 2) {
                    b0.f5652a.g(g.b.l(p2Var.f15876b, "' --ei appCentered 1", new StringBuilder("am broadcast -a com.chinatsp.systemui.ACTION_APP_INFO --es packageName '")), new s5.c(i13));
                    break;
                } else {
                    w0 w0Var = b0.f5652a;
                    StringBuilder sb2 = new StringBuilder("am broadcast -a com.chinatsp.systemui.ACTION_APP_INFO --es packageName '");
                    sb2.append(p2Var.f15876b);
                    sb2.append("' --ei appCentered ");
                    sb2.append(i10 != 0 ? 0 : 2);
                    w0Var.g(sb2.toString(), new s9.a(i13, r72));
                    break;
                }
        }
    }

    @Override // ha.cf, ha.af
    public void c() {
        switch (this.f11022a) {
            case 13:
                t1 t1Var = (t1) this.f11023b;
                t1Var.getClass();
                d0 d0Var = e0.f4012a;
                n5 n5Var = (n5) this.f11024c;
                d0Var.a(n5Var);
                t1Var.f15964e.Y = n5Var;
                break;
            default:
                t1 t1Var2 = (t1) this.f11023b;
                t1Var2.getClass();
                d0 d0Var2 = e0.f4012a;
                n5 n5Var2 = (n5) this.f11024c;
                d0Var2.a(n5Var2);
                t1Var2.f15964e.Z = n5Var2;
                break;
        }
    }

    public void d(String str, boolean z) {
        ActivityDownload activityDownload = (ActivityDownload) ((q1) this.f11023b).f15895f;
        t5 t5Var = activityDownload.V;
        t5Var.q(new u5(t5Var.b(), str, new b6((String) this.f11024c), z, ActivityDownload.x(activityDownload, z) + str));
        activityDownload.f3973t0.execute(new androidx.emoji2.text.j(activityDownload.V.b() + (-1), 5, activityDownload));
    }

    /* JADX WARN: Removed duplicated region for block: B:169:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x058a A[Catch: all -> 0x062c, TryCatch #6 {all -> 0x062c, blocks: (B:208:0x0570, B:211:0x058a, B:212:0x0594, B:214:0x059a, B:216:0x05b7, B:217:0x05bb, B:223:0x05ca, B:225:0x060f), top: B:353:0x0570, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:387:0x07eb A[SYNTHETIC] */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws Exception {
        String str;
        LogcatBean logcatBeanNewLogLine;
        String str2;
        AppBean appBean;
        Method method;
        boolean zG;
        List<ResolveInfo> listQueryIntentActivities;
        String str3;
        Object objB;
        r rVar;
        String string;
        StringBuilder sb2;
        String str4;
        String str5;
        boolean zPutInt;
        Object obj = this.f11024c;
        Object obj2 = this.f11023b;
        switch (this.f11022a) {
            case 0:
                ((ze) obj2).getClass();
                l lVarG = com.bumptech.glide.d.G((String) obj, new ne(bVar, 1));
                if (lVarG.a()) {
                    a0.w("安装成功");
                } else {
                    a0.u("失败：" + lVarG.f11049c);
                }
                bVar.b();
                break;
            case 1:
            case 3:
            case 5:
            case 9:
            case 12:
            case 13:
            case 14:
            case 15:
            case 17:
            case 19:
            case 23:
            case 24:
            case 26:
            default:
                ActivityPermissions activityPermissions = (ActivityPermissions) obj2;
                int i10 = activityPermissions.H;
                SpecialPermissionsBean specialPermissionsBean = (SpecialPermissionsBean) obj;
                if (i10 != 3) {
                    if (i10 == 0) {
                        StringBuilder sb3 = new StringBuilder("pm ");
                        sb3.append(specialPermissionsBean.isGrant ? "grant" : "revoke");
                        sb3.append(" ");
                        String strL = g.b.l(specialPermissionsBean.pack, " android.permission.SYSTEM_ALERT_WINDOW", sb3);
                        b0.f5652a.getClass();
                        w0.q(2000L, strL);
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(com.yunpan.appmanage.util.j.f4033a.f4047g ? "cmd " : "");
                        sb4.append("appops set ");
                        sb4.append(specialPermissionsBean.pack);
                        sb4.append(" SYSTEM_ALERT_WINDOW ");
                        sb4.append(specialPermissionsBean.isGrant ? "allow" : "ignore");
                        string = sb4.toString();
                    } else if (i10 == 4) {
                        StringBuilder sb5 = new StringBuilder();
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        sb5.append(com.yunpan.appmanage.util.j.f4033a.f4047g ? "cmd " : "");
                        sb5.append("appops set ");
                        sb5.append(specialPermissionsBean.pack);
                        sb5.append(" WRITE_SETTINGS ");
                        sb5.append(specialPermissionsBean.isGrant ? "allow" : "ignore");
                        string = sb5.toString();
                    } else {
                        if (i10 == 5) {
                            sb2 = new StringBuilder("pm ");
                            sb2.append(specialPermissionsBean.isGrant ? "grant" : "revoke");
                            sb2.append(" ");
                            str4 = specialPermissionsBean.pack;
                            str5 = " android.permission.WRITE_SECURE_SETTINGS";
                        } else if (i10 == 2) {
                            String[] strArrSplit = specialPermissionsBean.packageAndClass.split(":");
                            if (strArrSplit.length > 0) {
                                String strL2 = "";
                                for (SpecialPermissionsBean specialPermissionsBean2 : activityPermissions.E.v()) {
                                    if (specialPermissionsBean2.isGrant) {
                                        strL2 = g.b.l(specialPermissionsBean2.packageAndClass, ":", g.b.m(strL2));
                                    }
                                }
                                String strReplace = strL2.replace("::", ":");
                                if (strReplace.endsWith(":")) {
                                    strReplace = android.support.v4.media.session.a.l(1, 0, strReplace);
                                }
                                try {
                                    zPutInt = Settings.Secure.putString(activityPermissions.A.getContentResolver(), "enabled_notification_listeners", strReplace);
                                } catch (Exception unused) {
                                    zPutInt = false;
                                }
                                if (!zPutInt) {
                                    String str6 = "settings put secure enabled_notification_listeners " + strReplace;
                                    b0.f5652a.getClass();
                                    zPutInt = w0.q(2000L, str6).f5648a == 0;
                                }
                                try {
                                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                    zPutInt = Settings.Secure.putInt(com.yunpan.appmanage.util.j.f4033a.f4035a.getContentResolver(), "notification_enabled", 1);
                                } catch (Exception unused2) {
                                }
                                if (!zPutInt) {
                                    b0.f5652a.getClass();
                                    zPutInt = w0.q(2000L, "settings put secure notification_enabled 1").f5648a == 0;
                                }
                                if (Build.VERSION.SDK_INT >= 28) {
                                    for (String str7 : strArrSplit) {
                                        w0 w0Var = b0.f5652a;
                                        StringBuilder sb6 = new StringBuilder();
                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                        sb6.append(com.yunpan.appmanage.util.j.f4033a.f4047g ? "cmd " : "");
                                        sb6.append("notification ");
                                        sb6.append(specialPermissionsBean.isGrant ? "allow_listener" : "disallow_listener");
                                        sb6.append(" ");
                                        sb6.append(str7);
                                        String string2 = sb6.toString();
                                        w0Var.getClass();
                                        zPutInt = w0.q(2000L, string2).f5648a == 0;
                                    }
                                }
                                if (zPutInt) {
                                    bVar.b();
                                    break;
                                }
                                android.support.v4.media.session.a.B("设置失败", bVar);
                                break;
                            } else {
                                android.support.v4.media.session.a.B("设置失败：服务类无效", bVar);
                                break;
                            }
                        } else if (i10 == 6) {
                            StringBuilder sb7 = new StringBuilder();
                            DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                            sb7.append(com.yunpan.appmanage.util.j.f4033a.f4047g ? "cmd " : "");
                            sb7.append("appops set ");
                            sb7.append(specialPermissionsBean.pack);
                            sb7.append(" GET_USAGE_STATS ");
                            sb7.append(specialPermissionsBean.isGrant ? "allow" : "ignore");
                            string = sb7.toString();
                        } else if (i10 == 7) {
                            sb2 = new StringBuilder("pm ");
                            sb2.append(specialPermissionsBean.isGrant ? "grant" : "revoke");
                            sb2.append(" ");
                            str4 = specialPermissionsBean.pack;
                            str5 = " android.permission.READ_LOGS";
                        } else {
                            StringBuilder sb8 = new StringBuilder();
                            DecimalFormat decimalFormat5 = com.yunpan.appmanage.util.k.f4034u0;
                            sb8.append(com.yunpan.appmanage.util.j.f4033a.f4047g ? "cmd " : "");
                            sb8.append("appops set ");
                            sb8.append(specialPermissionsBean.pack);
                            sb8.append(" REQUEST_INSTALL_PACKAGES ");
                            sb8.append(specialPermissionsBean.isGrant ? "allow" : "ignore");
                            string = sb8.toString();
                        }
                        string = g.b.l(str4, str5, sb2);
                    }
                } else if (specialPermissionsBean.isGrant) {
                    string = "cmd deviceidle whitelist +" + specialPermissionsBean.pack;
                } else {
                    string = "cmd deviceidle whitelist -" + specialPermissionsBean.pack;
                }
                b0.f5652a.getClass();
                int i11 = w0.q(2000L, string).f5648a;
                if (i11 != 0 && string.endsWith("ignore")) {
                    i11 = w0.q(2000L, string.substring(0, string.length() - 4) + "deny").f5648a;
                }
                if (i11 == 0) {
                    bVar.b();
                    break;
                }
                android.support.v4.media.session.a.B("设置失败", bVar);
                break;
            case 2:
                n5 n5Var = (n5) obj2;
                try {
                    WpVideoStreamBean wpVideoStreamBean = new WpVideoStreamBean();
                    String str8 = (String) obj;
                    if (n5Var.f18308u) {
                        wpVideoStreamBean.randomFile_smb1 = new x0(new t0(n5Var.b() + str8));
                    } else {
                        Properties properties = new Properties();
                        if (!n5Var.f18309v.isEmpty()) {
                            properties.setProperty("jcifs.smb.client.domain", n5Var.f18309v);
                        }
                        properties.setProperty("jcifs.smb.client.username", n5Var.f18294e);
                        properties.setProperty("jcifs.smb.client.password", n5Var.f18295f);
                        wpVideoStreamBean.file_smb2 = new vd.s("smb://" + n5Var.f18292c + ":" + n5Var.f18293d + str8, new xc.a(new wc.a(properties)));
                        wpVideoStreamBean.randomFile_smb2 = new vd.x(wpVideoStreamBean.file_smb2);
                    }
                    DecimalFormat decimalFormat6 = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.j.f4033a.I = wpVideoStreamBean;
                } catch (Exception unused3) {
                }
                bVar.b();
                break;
            case 4:
                HashMap map = (HashMap) obj;
                g0.e eVar = (g0.e) obj2;
                eVar.getClass();
                q4.a.c();
                if (q4.a.u() > 4) {
                    a0.u("检测到您的系统日志等级过低");
                }
                if (!q4.a.D()) {
                    a0.u("检测到您可能未开启系统日志");
                }
                eVar.f5939a = false;
                eVar.f5940b = false;
                try {
                    try {
                        eVar.f("sh");
                    } catch (Exception e7) {
                        a0.s("监听日志出错：" + e7.getMessage(), false);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    eVar.f(Name.MARK);
                }
                eVar.g("logcat -c");
                Thread.sleep(100L);
                ArrayBlockingQueue arrayBlockingQueue = (ArrayBlockingQueue) eVar.f5946h;
                arrayBlockingQueue.clear();
                eVar.g("logcat");
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
                int i12 = Calendar.getInstance().get(1);
                long jCurrentTimeMillis = System.currentTimeMillis();
                int i13 = 0;
                int i14 = 0;
                while (true) {
                    if (!eVar.f5939a && !eVar.f5940b) {
                        try {
                            str = (String) arrayBlockingQueue.poll(6L, TimeUnit.SECONDS);
                        } catch (Exception unused4) {
                            str = null;
                        }
                        if (str == null) {
                            i13++;
                            if (i13 >= 9) {
                                a0.s("监听不到系统日志，已停止", false);
                            }
                        } else {
                            if (str.length() >= 16 && (logcatBeanNewLogLine = LogcatBean.newLogLine(str)) != null && logcatBeanNewLogLine.time != null) {
                                if (jCurrentTimeMillis > 0) {
                                    if (simpleDateFormat.parse(i12 + "-" + logcatBeanNewLogLine.time).getTime() >= jCurrentTimeMillis) {
                                        jCurrentTimeMillis = 0;
                                        if (!logcatBeanNewLogLine.pid.isEmpty() && (str2 = (String) map.get(logcatBeanNewLogLine.pid)) != null) {
                                            logcatBeanNewLogLine.packName = str2;
                                        }
                                        i14++;
                                        bVar.f(logcatBeanNewLogLine);
                                        if (i14 > 15000) {
                                            a0.u("日志过多，已停止监听");
                                        }
                                    }
                                } else {
                                    if (!logcatBeanNewLogLine.pid.isEmpty()) {
                                        logcatBeanNewLogLine.packName = str2;
                                    }
                                    i14++;
                                    bVar.f(logcatBeanNewLogLine);
                                    if (i14 > 15000) {
                                    }
                                }
                            }
                            i13 = 0;
                        }
                    }
                }
                eVar.k();
                bVar.b();
                break;
            case 6:
                int i15 = 0;
                while (true) {
                    ActivityAppStorage activityAppStorage = (ActivityAppStorage) obj2;
                    if (i15 < activityAppStorage.D.b()) {
                        ja.a aVar = (ja.a) obj;
                        if (((y) activityAppStorage.D.t(i15)).f18393a.pack.equals(aVar.f9814b)) {
                            int i16 = aVar.f9813a;
                            if (i16 == 11) {
                                bVar.f(Integer.valueOf(i15));
                            } else if (i16 == 12 && (appBean = MyDb.get().getAppDao().get_appBean((String) aVar.f9814b)) != null) {
                                y yVar = new y(appBean);
                                if (Build.VERSION.SDK_INT >= 26) {
                                    d.b.w(activityAppStorage.A, v.f4106a.f4115e, yVar);
                                } else {
                                    d.b.G(activityAppStorage.A, yVar);
                                }
                                Thread.sleep(666L);
                                bVar.f(new ja.f(i15, yVar));
                            }
                        } else {
                            i15++;
                        }
                    }
                }
                bVar.b();
                break;
            case 7:
                int i17 = Build.VERSION.SDK_INT;
                ActivityAppStorage activityAppStorage2 = (ActivityAppStorage) ((l5.y) obj2).f10629b;
                y yVar2 = (y) obj;
                if (i17 >= 26) {
                    int i18 = ActivityAppStorage.H;
                    d.b.w(activityAppStorage2.A, v.f4106a.f4115e, yVar2);
                } else {
                    int i19 = ActivityAppStorage.H;
                    d.b.G(activityAppStorage2.A, yVar2);
                    try {
                        Thread.sleep(1566L);
                    } catch (Exception unused5) {
                    }
                }
                bVar.b();
                break;
            case 8:
                String str9 = (String) obj;
                int i20 = ActivityCodeEditor.f3967c1;
                ActivityCodeEditor activityCodeEditor = (ActivityCodeEditor) obj2;
                activityCodeEditor.getClass();
                try {
                    String strY = activityCodeEditor.y(str9);
                    activityCodeEditor.N = strY.hashCode();
                    System.out.getClass();
                    bVar.f(strY);
                    bVar.b();
                    break;
                } catch (Exception e11) {
                    bVar.d(e11);
                    return;
                }
            case 10:
                int i21 = ActivityDesktop.G;
                da.g gVar = ((ActivityDesktop) obj2).A;
                String str10 = (String) obj;
                if (!qf.c.G(gVar, str10)) {
                    if (Build.VERSION.SDK_INT < 29) {
                        try {
                            str3 = "cmd role add-role-holder android.app.role.HOME " + str10;
                            b0.f5652a.getClass();
                        } catch (Throwable unused6) {
                        }
                        if (w0.h(str3).f5648a == 0 || !qf.c.G(gVar, str10)) {
                            try {
                                PackageManager packageManager = gVar.getPackageManager();
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
                                if (listQueryIntentActivities.isEmpty()) {
                                    ComponentName[] componentNameArr = new ComponentName[listQueryIntentActivities.size()];
                                    int i22 = 0;
                                    ComponentName componentName = null;
                                    for (int i23 = 0; i23 < listQueryIntentActivities.size(); i23++) {
                                        ResolveInfo resolveInfo = listQueryIntentActivities.get(i23);
                                        ActivityInfo activityInfo = resolveInfo.activityInfo;
                                        componentNameArr[i23] = new ComponentName(activityInfo.packageName, activityInfo.name);
                                        if (str10.equals(resolveInfo.activityInfo.packageName)) {
                                            componentName = componentNameArr[i23];
                                        }
                                        int i24 = resolveInfo.match;
                                        if (i24 > i22) {
                                            i22 = i24;
                                        }
                                    }
                                    if (componentName != null) {
                                        try {
                                            Method method2 = packageManager.getClass().getMethod("replacePreferredActivity", IntentFilter.class, Integer.TYPE, ComponentName[].class, ComponentName.class);
                                            IntentFilter intentFilter = new IntentFilter("android.intent.action.MAIN");
                                            intentFilter.addCategory("android.intent.category.HOME");
                                            intentFilter.addCategory("android.intent.category.DEFAULT");
                                            method2.invoke(packageManager, intentFilter, Integer.valueOf(i22), componentNameArr, componentName);
                                        } catch (Exception unused7) {
                                            w0 w0Var2 = b0.f5652a;
                                            String str11 = "cmd package set-home-activity " + componentName.flattenToShortString();
                                            w0Var2.getClass();
                                            w0.h(str11);
                                        }
                                    }
                                }
                            } catch (Throwable unused8) {
                            }
                            zG = qf.c.G(gVar, str10);
                        } else {
                            zG = true;
                        }
                    } else {
                        try {
                            RoleManager roleManagerC = a2.c.c(gVar.getSystemService("role"));
                            if (roleManagerC != null) {
                                Method[] methods = roleManagerC.getClass().getMethods();
                                int length = methods.length;
                                int i25 = 0;
                                while (true) {
                                    if (i25 < length) {
                                        method = methods[i25];
                                        if (!"addRoleHolderAsUser".equals(method.getName()) || method.getParameterTypes().length != 6) {
                                            i25++;
                                        }
                                    } else {
                                        method = null;
                                    }
                                }
                                if (method != null) {
                                    UserHandle userHandle = (UserHandle) Process.class.getMethod("myUserHandle", null).invoke(null, null);
                                    Object mainExecutor = Build.VERSION.SDK_INT >= 28 ? gVar.getMainExecutor() : new y0(1, gVar);
                                    Class<?> cls = method.getParameterTypes()[5];
                                    Object objNewProxyInstance = cls.isInterface() ? Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.yunpan.appmanage.util.x
                                        @Override // java.lang.reflect.InvocationHandler
                                        public final Object invoke(Object obj3, Method method3, Object[] objArr) {
                                            return null;
                                        }
                                    }) : null;
                                    method.invoke(roleManagerC, "android.app.role.HOME", str10, 0, userHandle, mainExecutor, objNewProxyInstance);
                                    Thread.sleep(200L);
                                    if (qf.c.G(gVar, str10)) {
                                    }
                                }
                            }
                        } catch (Throwable unused9) {
                        }
                        str3 = "cmd role add-role-holder android.app.role.HOME " + str10;
                        b0.f5652a.getClass();
                        if (w0.h(str3).f5648a == 0) {
                        }
                        PackageManager packageManager2 = gVar.getPackageManager();
                        Intent intent2 = new Intent("android.intent.action.MAIN");
                        intent2.addCategory("android.intent.category.HOME");
                        listQueryIntentActivities = packageManager2.queryIntentActivities(intent2, 65536);
                        if (listQueryIntentActivities.isEmpty()) {
                        }
                        zG = qf.c.G(gVar, str10);
                    }
                }
                if (zG) {
                    a0.w("设置成功");
                    bVar.f("");
                } else {
                    a0.w("设置失败");
                }
                bVar.b();
                break;
            case 11:
                int i26 = ActivityDownload.P0;
                b6 b6Var = (b6) obj2;
                q qVar = b6Var.f18204b;
                r rVar2 = (r) obj;
                if (qVar != null) {
                    rVar = new r((String) qVar.f1132d, rVar2.f2741c, rVar2.f2742d);
                    rVar.f2750m = android.support.v4.media.session.a.s(new StringBuilder(), b6Var.f18204b.f1129a, "");
                    rVar.f2739a = rVar2.f2739a;
                    rVar.f2744f = rVar2.f2744f;
                    rVar.f2743e = rVar2.f2743e;
                    rVar.f2751n = 1;
                    objB = qf.c.v(rVar);
                } else {
                    ba.g gVar2 = b6Var.f18212j;
                    if (gVar2 != null) {
                        rVar = new r(gVar2.f2691b, rVar2.f2741c, rVar2.f2742d);
                        rVar.f2739a = rVar2.f2739a;
                        rVar.f2744f = rVar2.f2744f;
                        rVar.f2743e = rVar2.f2743e;
                        rVar.f2746h = rVar2.f2746h;
                        rVar.f2751n = 1;
                        rVar.f2750m = gVar2.f2690a;
                        objB = s1.g.x(rVar);
                    } else {
                        n nVar = b6Var.f18211i;
                        if (nVar != null) {
                            rVar = new r((String) nVar.f2724d, rVar2.f2741c, rVar2.f2742d);
                            rVar.f2739a = rVar2.f2739a;
                            rVar.f2744f = rVar2.f2744f;
                            rVar.f2743e = rVar2.f2743e;
                            rVar.f2747i = rVar2.f2747i;
                            rVar.f2751n = 1;
                            rVar.f2750m = rVar2.f2750m + "/" + ((String) nVar.f2724d);
                            objB = q4.a.m(rVar, "");
                        } else {
                            ba.i iVar = b6Var.f18203a;
                            if (iVar != null) {
                                rVar = new r((String) iVar.f2698a, (String) iVar.f2703f, rVar2.f2742d);
                                rVar.f2739a = rVar2.f2739a;
                                rVar.f2744f = rVar2.f2744f;
                                rVar.f2743e = rVar2.f2743e;
                                rVar.f2751n = 1;
                                objB = com.bumptech.glide.c.R(rVar);
                            } else {
                                ba.j jVar = b6Var.f18205c;
                                if (jVar != null) {
                                    rVar = new r(jVar.f2710g, rVar2.f2741c, rVar2.f2742d);
                                    rVar.f2750m = android.support.v4.media.session.a.t(new StringBuilder(), jVar.f2709f, "");
                                    rVar.f2744f = rVar2.f2744f;
                                    rVar.f2739a = rVar2.f2739a;
                                    rVar.f2744f = rVar2.f2744f;
                                    rVar.f2743e = rVar2.f2743e;
                                    rVar.f2751n = 1;
                                    objB = com.bumptech.glide.d.W(rVar);
                                } else {
                                    ba.s sVar = b6Var.f18207e;
                                    if (sVar != null) {
                                        rVar = new r(sVar.f2754b, rVar2.f2741c, rVar2.f2742d);
                                        rVar.f2750m = android.support.v4.media.session.a.s(new StringBuilder(), sVar.f2759g, "");
                                        rVar.f2739a = rVar2.f2739a;
                                        rVar.f2744f = rVar2.f2744f;
                                        rVar.f2743e = rVar2.f2743e;
                                        rVar.f2751n = 1;
                                        objB = s1.g.y(rVar);
                                    } else {
                                        ba.l lVar = b6Var.f18208f;
                                        if (lVar != null) {
                                            rVar = new r(lVar.f2715a, rVar2.f2741c, rVar2.f2742d);
                                            rVar.f2743e = rVar2.f2743e;
                                            rVar.f2750m = g.b.l(lVar.f2718d, "", new StringBuilder());
                                            rVar.f2739a = rVar2.f2739a;
                                            rVar.f2744f = rVar2.f2744f;
                                            rVar.f2751n = 1;
                                            objB = p000if.a.I(rVar);
                                        } else {
                                            ba.k kVar = b6Var.f18210h;
                                            if (kVar != null) {
                                                rVar = new r(kVar.f2711a, rVar2.f2741c, "");
                                                rVar.f2742d = rVar2.f2742d;
                                                rVar.f2739a = rVar2.f2739a;
                                                rVar.f2744f = rVar2.f2744f;
                                                rVar.f2743e = rVar2.f2743e;
                                                rVar.f2751n = 1;
                                                rVar.f2750m = (rVar2.f2750m + "/" + kVar.f2711a).replace("//", "/");
                                                objB = d.b.B(rVar);
                                            } else {
                                                objB = null;
                                                rVar = null;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                bVar.f(rVar);
                bVar.f(objB);
                bVar.b();
                break;
            case 16:
                e(bVar);
                break;
            case 18:
                f(bVar);
                break;
            case 20:
                h(bVar);
                break;
            case 21:
                i(bVar);
                break;
            case 22:
                j(bVar);
                break;
            case 25:
                k(bVar);
                break;
            case 27:
                l(bVar);
                break;
            case 28:
                m(bVar);
                break;
        }
    }

    @Override // ha.y6
    public void n(String str, boolean z) {
        h3 h3Var = (h3) this.f11023b;
        h3Var.getClass();
        if (z) {
            z7.s sVar = new z7.s();
            sVar.m("name", str);
            sVar.j("keys", (o) this.f11024c);
            ActivityKeyMapLogcat activityKeyMapLogcat = (ActivityKeyMapLogcat) h3Var.f7143d;
            activityKeyMapLogcat.I.k(sVar);
            q4.a.M(new File(activityKeyMapLogcat.A.getFilesDir().getAbsolutePath(), "KeyMapLogcatSuperDiy.json"), activityKeyMapLogcat.I.toString());
            a0.w("导入成功");
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        Object obj = this.f11024c;
        Object obj2 = this.f11023b;
        switch (this.f11022a) {
            case 15:
                int i11 = ActivityFloatButtonSet.E;
                ActivityFloatButtonSet activityFloatButtonSet = (ActivityFloatButtonSet) obj2;
                activityFloatButtonSet.getClass();
                if (((l2) obj).b() - 1 != i10) {
                    activityFloatButtonSet.D = i10 + 1;
                    activityFloatButtonSet.x();
                    break;
                } else {
                    new vb(activityFloatButtonSet, activityFloatButtonSet.A).c("请选择图标", new ph.j(18, activityFloatButtonSet));
                    break;
                }
            default:
                int i12 = ActivityInputMethod.C;
                ActivityInputMethod activityInputMethod = (ActivityInputMethod) obj2;
                activityInputMethod.getClass();
                x9.p2 p2Var = (x9.p2) obj;
                InputMethodBean inputMethodBean = (InputMethodBean) p2Var.t(i10);
                if (!inputMethodBean.isDefault) {
                    new mc.c(0, new b(activityInputMethod, 21, inputMethodBean)).d(rc.f.f13757b).a(fc.b.a()).b(new s2(i10, 5, p2Var));
                    break;
                }
                break;
        }
    }
}
