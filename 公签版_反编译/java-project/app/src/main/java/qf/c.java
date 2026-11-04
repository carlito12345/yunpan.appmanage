package qf;

import android.accessibilityservice.AccessibilityService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.IPackageInstaller;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.RectF;
import android.os.Build;
import android.os.Environment;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.emoji2.text.q;
import ba.p;
import ba.r;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.bean.WpTaskBean;
import com.yunpan.appmanage.carsdk.i;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.ui.ActivityHome;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.f0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import d0.f;
import da.g;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.security.DigestInputStream;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.zip.CRC32;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
import m0.o;
import m7.t;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Marker;
import ue.d;
import x9.b6;
import x9.n5;
import yh.c0;
import yh.h;
import z7.s;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static Boolean f13190a;

    public static String A(AccessibilityNodeInfo accessibilityNodeInfo) {
        CharSequence hintText;
        StringBuilder sb2 = new StringBuilder();
        CharSequence className = accessibilityNodeInfo.getClassName();
        if (className != null) {
            sb2.append("Class: ");
            sb2.append(className);
        }
        CharSequence text = accessibilityNodeInfo.getText();
        if (text != null) {
            sb2.append(", Text: '");
            sb2.append(text);
            sb2.append("'");
        }
        CharSequence contentDescription = accessibilityNodeInfo.getContentDescription();
        if (contentDescription != null) {
            sb2.append(", Desc: '");
            sb2.append(contentDescription);
            sb2.append("'");
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26 && (hintText = accessibilityNodeInfo.getHintText()) != null) {
            sb2.append(", HideText: '");
            sb2.append(hintText);
            sb2.append("'");
        }
        String viewIdResourceName = i10 >= 18 ? accessibilityNodeInfo.getViewIdResourceName() : null;
        if (viewIdResourceName != null) {
            sb2.append(", ID: ");
            sb2.append(viewIdResourceName);
        }
        sb2.append(", Clickable: ");
        sb2.append(accessibilityNodeInfo.isClickable());
        sb2.append(", Checkable: ");
        sb2.append(accessibilityNodeInfo.isCheckable());
        sb2.append(", Checked: ");
        sb2.append(accessibilityNodeInfo.isChecked());
        sb2.append(", Enabled: ");
        sb2.append(accessibilityNodeInfo.isEnabled());
        sb2.append(", Focusable: ");
        sb2.append(accessibilityNodeInfo.isFocusable());
        sb2.append(", Focused: ");
        sb2.append(accessibilityNodeInfo.isFocused());
        return sb2.toString();
    }

    public static String B() {
        Random random = new Random();
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < 36; i10++) {
            sb2.append("abcdefghijklmnopqrstuvwxyz0123456789".charAt(random.nextInt(36)));
        }
        return sb2.toString();
    }

    public static int C(long j10) {
        int i10 = 0;
        do {
            i10++;
            j10 >>= 7;
        } while (j10 != 0);
        return i10;
    }

    public static s D(n5 n5Var, WpPathBean wpPathBean) {
        String strString;
        ResponseBody responseBodyBody;
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = j.f4033a;
        sb2.append(kVar.X);
        sb2.append("/b/api/file/list/new?");
        sb2.append(n("/b/api/file/list/new"));
        StringBuilder sbB = f.b(sb2.toString(), "&driveId=0&limit=100&next=0&orderBy=file_id&orderDirection=desc&parentFileId=");
        sbB.append(wpPathBean.path);
        sbB.append("&trashed=false&SearchData=&Page=");
        sbB.append(wpPathBean.page);
        sbB.append("&OnlyLookAbnormalFile=0&event=homeListFile&operateType=");
        String strL = g.b.l(wpPathBean.path.equals("0") ? "1" : "4", "&inDirectSpace=false", sbB);
        String str = kVar.W + "/?homeFilePath=" + wpPathBean.path;
        int i10 = 0;
        while (true) {
            i10++;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        strString = "";
                        break;
                    }
                    f0.f4019a.f11674b = HttpUrl.get(f0.a(2));
                } else {
                    f0.f4019a.f11674b = HttpUrl.get(f0.a(1));
                }
            } else {
                f0.f4019a.f11674b = null;
            }
            try {
                l9.a aVar = new l9.a(strL);
                k9.a aVar2 = aVar.f11017i;
                aVar2.b("Referer", str);
                aVar2.b("App-Version", "3");
                aVar2.b("Platform", "web");
                aVar2.b("Accept-Language", "zh-CN,zh;q=0.9");
                aVar2.b("sec-fetch-dest", "empty");
                aVar2.b("sec-fetch-mode", RequestParameters.SUBRESOURCE_CORS);
                aVar2.b("sec-fetch-site", "same-origin");
                aVar2.b("X-Requested-With", "com.quark.browser");
                aVar2.b("loginuuid", n5Var.l);
                DecimalFormat decimalFormat2 = k.f4034u0;
                aVar2.b("User-Agent", j.f4033a.J);
                aVar2.b("Authorization", "Bearer " + n5Var.f18300k);
                Response responseA = aVar.a();
                if (responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) {
                    strString = responseBodyBody.string();
                    break;
                }
            } catch (Exception unused) {
            }
        }
        if (strString.isEmpty()) {
            return null;
        }
        try {
            return d.b.b0(strString).g();
        } catch (Exception unused2) {
            return null;
        }
    }

    public static int E(Object... objArr) {
        return Build.VERSION.SDK_INT >= 19 ? w0.b.b(objArr) : Arrays.hashCode(objArr);
    }

    public static boolean F(int i10, int i11, int i12, byte[] bArr) {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr, i10, i11);
        long value = crc32.getValue();
        for (int i13 = 0; i13 < 4; i13++) {
            if (((byte) (value >>> (i13 * 8))) != bArr[i12 + i13]) {
                return false;
            }
        }
        return true;
    }

    public static boolean G(g gVar, String str) {
        try {
            return u(gVar).equals(str);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean H(LinearLayout linearLayout, View view) {
        while (view != null) {
            if (view == linearLayout) {
                return true;
            }
            Object parent = view.getParent();
            if (!(parent instanceof View)) {
                return false;
            }
            view = (View) parent;
        }
        return false;
    }

    public static boolean I(char c7) {
        return c7 >= 'A' && c7 <= 'Z';
    }

    public static List J(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        d.d(listSingletonList, "singletonList(...)");
        return listSingletonList;
    }

    public static String K(n5 n5Var) {
        String strL;
        String strString;
        Response responseA;
        ResponseBody responseBodyBody;
        if (n5Var.l.isEmpty()) {
            n5Var.l = B();
        }
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = j.f4033a;
        sb2.append(kVar.X);
        sb2.append("/b/api/user/sign_in?");
        sb2.append(n("/b/api/user/sign_in"));
        String string = sb2.toString();
        if (n5Var.f18294e.contains("@")) {
            StringBuilder sb3 = new StringBuilder("{\"password\":\"");
            sb3.append(n5Var.f18295f);
            sb3.append("\",\"mail\":\"");
            strL = g.b.l(n5Var.f18294e, "\",\"type\":2,\"operateType\":2}", sb3);
        } else {
            StringBuilder sb4 = new StringBuilder("{\"passport\":\"");
            sb4.append(n5Var.f18294e);
            sb4.append("\",\"password\":\"");
            strL = g.b.l(n5Var.f18295f, "\",\"remember\":true}", sb4);
        }
        Response response = null;
        try {
            l9.b bVar = new l9.b(string);
            k9.a aVar = bVar.f11017i;
            aVar.b("Referer", kVar.W + "/login");
            aVar.b("App-Version", "3");
            aVar.b("Platform", "web");
            aVar.b("Accept-Language", "zh-CN,zh;q=0.9");
            aVar.b("sec-fetch-dest", "empty");
            aVar.b("sec-fetch-mode", RequestParameters.SUBRESOURCE_CORS);
            aVar.b("sec-fetch-site", "same-origin");
            aVar.b("X-Requested-With", "com.quark.browser");
            aVar.b("loginuuid", n5Var.l);
            aVar.b("User-Agent", kVar.J);
            MediaType mediaType = MediaType.parse("application/json;charset=UTF-8");
            bVar.f11003n = strL;
            bVar.f11002m = mediaType;
            responseA = bVar.a();
        } catch (Exception unused) {
        }
        if (!responseA.isSuccessful() || (responseBodyBody = responseA.body()) == null) {
            strString = "";
        } else {
            strString = responseBodyBody.string();
            response = responseA;
        }
        if (response == null || strString.isEmpty()) {
            return "登录出错";
        }
        try {
            s sVarG = d.b.b0(strString).g();
            if (sVarG.o("code").e() != 200) {
                return sVarG.o("message").i();
            }
            n5Var.f18300k = sVarG.o("data").g().o("token").i();
            return "";
        } catch (Exception e7) {
            String message = e7.getMessage();
            return (message == null || message.isEmpty() || message.length() > 20) ? "登录出错" : message;
        }
    }

    public static String L(n5 n5Var) throws Exception {
        ResponseBody responseBodyBody;
        if (n5Var.l.isEmpty()) {
            n5Var.l = B();
        }
        String strReplace = "https://login.123pan.com/api/user/qr-code/generate";
        String strString = "";
        int i10 = 0;
        Response responseA = null;
        do {
            i10++;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        break;
                    }
                    strReplace = strReplace.replace(".com", ".cn");
                } else {
                    f0.f4019a.f11674b = HttpUrl.get(f0.a(1));
                }
            } else {
                f0.f4019a.f11674b = null;
            }
            try {
                l9.a aVar = new l9.a(strReplace);
                k9.a aVar2 = aVar.f11017i;
                aVar2.b("Referer", "https://login.123pan.com/centerlogin?redirect_url=https%3A%2F%2Fwww.123pan.com&source_page=website");
                aVar2.b("loginuuid", n5Var.l);
                DecimalFormat decimalFormat = k.f4034u0;
                aVar2.b("User-Agent", j.f4033a.J);
                responseA = aVar.a();
            } catch (Exception unused) {
            }
            if (responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) {
                strString = responseBodyBody.string();
            } else {
                responseA = null;
            }
        } while (responseA == null);
        String str = "无法获取二维码";
        if (responseA == null || strString.isEmpty()) {
            throw new Exception("无法获取二维码");
        }
        try {
            s sVarG = d.b.b0(strString).g();
            if (sVarG.o("code").e() != 0) {
                throw new Exception(sVarG.o("message").i());
            }
            n5Var.f18301m = sVarG.o("data").g().o("uniID").i();
            return sVarG.o("data").g().o("url").i() + "?env=production&uniID=" + n5Var.f18301m + "&source=123pan&type=login";
        } catch (Exception e7) {
            String message = e7.getMessage();
            if (message != null && !message.isEmpty() && message.length() <= 20) {
                str = message;
            }
            throw new Exception(str);
        }
    }

    public static s M(n5 n5Var, String str) throws Exception {
        ResponseBody responseBodyBody;
        if (n5Var.l.isEmpty()) {
            n5Var.l = B();
        }
        String strString = "";
        int i10 = 0;
        Response responseA = null;
        do {
            i10++;
            if (i10 != 1) {
                if (i10 != 2) {
                    break;
                }
                f0.f4019a.f11674b = HttpUrl.get(f0.a(1));
            } else {
                f0.f4019a.f11674b = null;
            }
            try {
                l9.a aVar = new l9.a(str);
                k9.a aVar2 = aVar.f11017i;
                aVar2.b("Referer", "https://login.123pan.com/centerlogin?redirect_url=https%3A%2F%2Fwww.123pan.com&source_page=website");
                aVar2.b("loginuuid", n5Var.l);
                DecimalFormat decimalFormat = k.f4034u0;
                aVar2.b("User-Agent", j.f4033a.J);
                responseA = aVar.a();
            } catch (Exception unused) {
            }
            if (responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) {
                strString = responseBodyBody.string();
            } else {
                responseA = null;
            }
        } while (responseA == null);
        if (responseA == null || strString.isEmpty()) {
            throw new Exception("请求出错");
        }
        try {
            return d.b.b0(strString).g();
        } catch (Exception unused2) {
            throw new Exception("数据出错");
        }
    }

    public static s N(n5 n5Var, String str, String str2) throws Exception {
        ResponseBody responseBodyBody;
        if (n5Var.f18292c.isEmpty()) {
            n5Var.f18292c = "https://www.123pan.com";
        }
        if (n5Var.l.isEmpty()) {
            n5Var.l = B();
        }
        String strString = "";
        int i10 = 0;
        Response responseA = null;
        do {
            i10++;
            if (i10 != 1) {
                if (i10 != 2) {
                    break;
                }
                f0.f4019a.f11674b = HttpUrl.get(f0.a(1));
            } else {
                f0.f4019a.f11674b = null;
            }
            try {
                l9.b bVar = new l9.b(str);
                k9.a aVar = bVar.f11017i;
                aVar.b("Referer", "https://login.123pan.com/centerlogin?redirect_url=https%3A%2F%2Fwww.123pan.com&source_page=website");
                aVar.b("loginuuid", n5Var.l);
                DecimalFormat decimalFormat = k.f4034u0;
                aVar.b("User-Agent", j.f4033a.J);
                MediaType mediaType = MediaType.parse("application/json;charset=UTF-8");
                bVar.f11003n = str2;
                bVar.f11002m = mediaType;
                responseA = bVar.a();
            } catch (Exception unused) {
            }
            if (responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) {
                strString = responseBodyBody.string();
            } else {
                responseA = null;
            }
        } while (responseA == null);
        if (responseA == null || strString.isEmpty()) {
            throw new Exception("请求出错");
        }
        try {
            System.out.getClass();
            return d.b.b0(strString).g();
        } catch (Exception unused2) {
            throw new Exception("数据出错");
        }
    }

    public static long O(String str) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < 256; i10++) {
            long j10 = i10;
            for (int i11 = 0; i11 < 8; i11++) {
                int i12 = (int) j10;
                j10 = (i12 & 1) == 1 ? (i12 >>> 1) ^ (-306674912) : i12 >>> 1;
            }
            arrayList.add(String.valueOf(j10));
        }
        String string = "";
        for (int i13 = 0; i13 < str.length(); i13++) {
            char cCharAt = str.charAt(i13);
            if (cCharAt < 128) {
                StringBuilder sbM = g.b.m(string);
                sbM.append(String.valueOf(cCharAt));
                string = sbM.toString();
            } else if (cCharAt <= 127 || cCharAt >= 2084) {
                StringBuilder sbM2 = g.b.m(string);
                sbM2.append(String.valueOf((char) ((cCharAt >> '\f') | 224)));
                StringBuilder sbM3 = g.b.m(sbM2.toString());
                sbM3.append(String.valueOf((char) (((cCharAt >> 6) & 63) | 128)));
                StringBuilder sbM4 = g.b.m(sbM3.toString());
                sbM4.append(String.valueOf((char) ((cCharAt & '?') | 128)));
                string = sbM4.toString();
            } else {
                StringBuilder sbM5 = g.b.m(string);
                sbM5.append(String.valueOf((char) ((cCharAt >> 6) | 192)));
                StringBuilder sbM6 = g.b.m(sbM5.toString());
                sbM6.append(String.valueOf((char) ((cCharAt & '?') | 128)));
                string = sbM6.toString();
            }
        }
        long jLongValue = -1;
        for (int i14 = 0; i14 < string.length(); i14++) {
            int i15 = (int) jLongValue;
            jLongValue = ((int) Long.valueOf((String) arrayList.get((string.charAt(i14) ^ i15) & 255)).longValue()) ^ (i15 >>> 8);
        }
        long j11 = ((int) jLongValue) ^ (-1);
        if (j11 >= 0) {
            return j11;
        }
        double dPow = Math.pow(2.0d, 32.0d);
        double dAbs = Math.abs(j11);
        Double.isNaN(dAbs);
        return (long) (dPow - dAbs);
    }

    public static void P(Throwable th2) {
        if (th2 == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else if (!(th2 instanceof hc.c) && !(th2 instanceof IllegalStateException) && !(th2 instanceof NullPointerException) && !(th2 instanceof IllegalArgumentException) && !(th2 instanceof hc.b)) {
            th2 = new hc.d(th2);
        }
        th2.printStackTrace();
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th2);
    }

    public static void Q(String str) throws IllegalAccessException, InstantiationException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName(str);
            try {
                throw new RuntimeException("Expected instanceof GlideModule, but found: " + cls.getDeclaredConstructor(null).newInstance(null));
            } catch (IllegalAccessException e7) {
                a0(cls, e7);
                throw null;
            } catch (InstantiationException e10) {
                a0(cls, e10);
                throw null;
            } catch (NoSuchMethodException e11) {
                a0(cls, e11);
                throw null;
            } catch (InvocationTargetException e12) {
                a0(cls, e12);
                throw null;
            }
        } catch (ClassNotFoundException e13) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e13);
        }
    }

    public static String R(n5 n5Var, String str, String str2, String str3) {
        ResponseBody responseBodyBody;
        int i10 = 0;
        while (true) {
            i10++;
            if (i10 == 1) {
                f0.f4019a.f11674b = null;
            } else if (i10 == 2) {
                f0.f4019a.f11674b = HttpUrl.get(f0.a(1));
            } else {
                if (i10 != 3) {
                    return "";
                }
                f0.f4019a.f11674b = HttpUrl.get(f0.a(2));
            }
            try {
                l9.b bVar = new l9.b(str);
                k9.a aVar = bVar.f11017i;
                aVar.b("Referer", str3);
                aVar.b("App-Version", "3");
                aVar.b("Platform", "web");
                aVar.b("Accept-Language", "zh-CN,zh;q=0.9");
                aVar.b("Authorization", "Bearer " + n5Var.f18300k);
                aVar.b("sec-fetch-dest", "empty");
                aVar.b("sec-fetch-mode", RequestParameters.SUBRESOURCE_CORS);
                aVar.b("sec-fetch-site", "same-origin");
                aVar.b("X-Requested-With", "com.quark.browser");
                aVar.b("loginuuid", n5Var.l);
                DecimalFormat decimalFormat = k.f4034u0;
                aVar.b("User-Agent", j.f4033a.J);
                MediaType mediaType = MediaType.parse("application/json;charset=UTF-8");
                bVar.f11003n = str2;
                bVar.f11002m = mediaType;
                Response responseA = bVar.a();
                if (responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) {
                    return responseBodyBody.string();
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void S(AccessibilityNodeInfo accessibilityNodeInfo, BufferedWriter bufferedWriter, int i10) throws IOException {
        String strJ = "";
        for (int i11 = 0; i11 < i10; i11++) {
            strJ = g.b.j(strJ, "  ");
        }
        StringBuilder sbB = f.b(strJ, "├─ ");
        sbB.append(A(accessibilityNodeInfo));
        bufferedWriter.write(sbB.toString());
        bufferedWriter.newLine();
        for (int i12 = 0; i12 < accessibilityNodeInfo.getChildCount(); i12++) {
            S(accessibilityNodeInfo.getChild(i12), bufferedWriter, i10 + 1);
        }
    }

    public static void T(AccessibilityNodeInfo accessibilityNodeInfo, StringBuilder sb2, int i10) {
        String strJ = "";
        for (int i11 = 0; i11 < i10; i11++) {
            strJ = g.b.j(strJ, "  ");
        }
        StringBuilder sbB = f.b(strJ, "├─ ");
        sbB.append(A(accessibilityNodeInfo));
        sb2.append(sbB.toString());
        sb2.append(SignParameters.NEW_LINE);
        for (int i12 = 0; i12 < accessibilityNodeInfo.getChildCount(); i12++) {
            T(accessibilityNodeInfo.getChild(i12), sb2, i10 + 1);
        }
    }

    public static void U(AccessibilityService accessibilityService) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        File file;
        AccessibilityNodeInfo rootInActiveWindow = accessibilityService.getRootInActiveWindow();
        if (rootInActiveWindow == null) {
            a0.t("获取失败：无窗口");
            return;
        }
        String str = new SimpleDateFormat("yyyy年MM月dd日HH时mm分ss秒SSS").format(new Date());
        try {
            if (Environment.getExternalStorageState().contains("mounted")) {
                file = new File(fa.d.f5659a.d() + "/1窗口布局/窗口" + str + ".txt");
            } else {
                file = new File(AppStart.f3772h.getCacheDir().getAbsolutePath() + "/1窗口布局/窗口" + str + ".txt");
            }
            file.getParentFile().mkdirs();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream);
                    try {
                        BufferedWriter bufferedWriter = new BufferedWriter(outputStreamWriter);
                        try {
                            bufferedWriter.write("获取时间：" + str);
                            bufferedWriter.newLine();
                            if (accessibilityService instanceof AccService) {
                                bufferedWriter.write("当前包名：" + ((Object) rootInActiveWindow.getPackageName()) + "  类：" + ((AccService) accessibilityService).E + "   根view：" + ((Object) rootInActiveWindow.getClassName()));
                            } else {
                                bufferedWriter.write("当前包名：" + ((Object) rootInActiveWindow.getPackageName()) + "   根view：" + ((Object) rootInActiveWindow.getClassName()));
                            }
                            bufferedWriter.newLine();
                            S(rootInActiveWindow, bufferedWriter, 0);
                            bufferedWriter.flush();
                            a0.w("获取成功：" + file.getName());
                            bufferedWriter.close();
                            outputStreamWriter.close();
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            try {
                                bufferedWriter.close();
                            } catch (Throwable th3) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                } catch (Exception unused) {
                                }
                            }
                            throw th2;
                        }
                    } catch (Throwable th4) {
                        try {
                            outputStreamWriter.close();
                        } catch (Throwable th5) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                            } catch (Exception unused2) {
                            }
                        }
                        throw th4;
                    }
                } catch (Throwable th6) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th7) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th6, th7);
                        } catch (Exception unused3) {
                        }
                    }
                    throw th6;
                }
            } catch (Exception e7) {
                g.b.s(e7, new StringBuilder("获取失败："));
            }
        } catch (Exception unused4) {
            a0.t("失败：创建文件失败");
        }
    }

    public static mc.g V(String str, String str2) {
        return new mc.c(0, new qa.a(str2, str, 0)).d(rc.f.f13757b).a(fc.b.a());
    }

    public static void W(AccService accService, int i10) {
        Intent intent = new Intent();
        intent.setAction("com.baidu.naviauto.action.recv");
        if (!accService.f3928a.isEmpty()) {
            intent.setPackage(accService.f3928a);
        }
        intent.putExtra("CMD_TYPE", i10);
        intent.setFlags(32);
        try {
            try {
                p000if.a.x0(2, accService, intent);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            accService.sendBroadcast(intent);
        }
    }

    public static void X(AccService accService, int i10, String str, int i11) {
        Intent intent = new Intent();
        intent.setAction("com.baidu.naviauto.action.recv");
        if (!accService.f3928a.isEmpty()) {
            intent.setPackage(accService.f3928a);
        }
        intent.putExtra("CMD_TYPE", i10);
        intent.putExtra(str, i11);
        intent.setFlags(32);
        try {
            try {
                p000if.a.x0(2, accService, intent);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            accService.sendBroadcast(intent);
        }
    }

    public static void Y(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MAIN");
        intentFilter.addCategory("android.intent.category.HOME");
        Intent intent = new Intent(intentFilter.getAction(0));
        intent.addCategory(intentFilter.getCategory(0));
        Intent intent2 = new Intent();
        intent2.setFlags(268435456);
        intent2.setClassName("com.android.settings", "com.android.settings.Settings$PreferredSettingsActivity");
        intent2.putExtra("preferred_app_package_name", context.getPackageName());
        intent2.putExtra("preferred_app_class_name", ActivityHome.class.getName());
        intent2.putExtra("is_user_confirmed", true);
        intent2.putExtra("preferred_app_intent", intent);
        intent2.putExtra("preferred_app_intent_filter", intentFilter);
        intent2.putExtra("preferred_app_label", "默认桌面设置");
        context.startActivity(intent2);
    }

    public static void Z(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.addFlags(268435456);
        try {
            try {
                intent.setComponent(new ComponentName("android", "com.android.internal.app.ResolverActivity"));
                context.startActivity(intent);
            } catch (Exception e7) {
                e7.printStackTrace();
                try {
                    Y(context);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    context.startActivity(new Intent("android.settings.APPLICATION_SETTINGS"));
                }
            }
        } catch (Exception unused) {
            intent.setComponent(new ComponentName("com.huawei.android.internal.app", "com.huawei.android.internal.app.HwResolverActivity"));
            p000if.a.x0(1, context, intent);
        }
    }

    public static String a(String str) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec("lanZouY-disk-app".getBytes(HTTP.UTF_8), "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, secretKeySpec);
            byte[] bArrDoFinal = cipher.doFinal(str.getBytes(HTTP.UTF_8));
            if (bArrDoFinal == null) {
                return "";
            }
            char[] charArray = "0123456789ABCDEF".toCharArray();
            char[] cArr = new char[bArrDoFinal.length * 2];
            for (int i10 = 0; i10 < bArrDoFinal.length; i10++) {
                byte b10 = bArrDoFinal[i10];
                int i11 = i10 * 2;
                cArr[i11] = charArray[(b10 & 255) >>> 4];
                cArr[i11 + 1] = charArray[b10 & 15];
            }
            return new String(cArr);
        } catch (Exception unused) {
            return "";
        }
    }

    public static void a0(Class cls, Exception exc) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, exc);
    }

    public static WpPathBean b(long j10, String str, n5 n5Var) throws JSONException {
        String string;
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = j.f4033a;
        sb2.append(kVar.X);
        sb2.append("/b/api/file/upload_request?");
        sb2.append(n("/b/api/file/upload_request"));
        String string2 = sb2.toString();
        String str2 = kVar.W + "/?homeFilePath=" + j10;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("driveId", 0);
            jSONObject.put("duplicate", 1);
            jSONObject.put("etag", "");
            jSONObject.put("fileName", str);
            jSONObject.put("parentFileId", j10);
            jSONObject.put("size", 0);
            jSONObject.put("type", 1);
            string = jSONObject.toString();
        } catch (Exception unused) {
            string = "";
        }
        if (string.isEmpty()) {
            return null;
        }
        String strR = R(n5Var, string2, string, str2);
        if (strR.isEmpty()) {
            return null;
        }
        try {
            s sVarG = d.b.b0(strR).g();
            if (sVarG.o("code").e() == 0) {
                WpPathBean wpPathBean = new WpPathBean();
                wpPathBean.is_dir = true;
                s sVarG2 = sVarG.o("data").g().o("Info").g();
                wpPathBean.jsonObject = sVarG2;
                wpPathBean.name = sVarG2.o("FileName").i();
                wpPathBean.path = "" + wpPathBean.jsonObject.o("FileId").h();
                String strI = wpPathBean.jsonObject.o("CreateAt").i();
                wpPathBean.time_txt = strI;
                String strReplace = strI.replace("T", " ");
                wpPathBean.time_txt = strReplace;
                int iIndexOf = strReplace.indexOf(Marker.ANY_NON_NULL_MARKER);
                if (iIndexOf != -1) {
                    wpPathBean.time_txt = wpPathBean.time_txt.substring(0, iIndexOf);
                }
                int iIndexOf2 = wpPathBean.time_txt.indexOf(".");
                if (iIndexOf2 != -1) {
                    wpPathBean.time_txt = wpPathBean.time_txt.substring(0, iIndexOf2);
                }
                return wpPathBean;
            }
        } catch (Exception unused2) {
        }
        return null;
    }

    public static String b0(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            if (I(str.charAt(i10))) {
                char[] charArray = str.toCharArray();
                while (i10 < length) {
                    char c7 = charArray[i10];
                    if (I(c7)) {
                        charArray[i10] = (char) (c7 ^ ' ');
                    }
                    i10++;
                }
                return String.valueOf(charArray);
            }
            i10++;
        }
        return str;
    }

    public static void c(WpPathBean wpPathBean, WpPathBean wpPathBean2, n5 n5Var) throws Exception {
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = j.f4033a;
        sb2.append(kVar.X);
        sb2.append("/b/api/file/upload_request?");
        sb2.append(n("/b/api/file/upload_request"));
        String string = sb2.toString();
        StringBuilder sb3 = new StringBuilder("{\"driveId\":0,\"etag\":\"\",\"fileName\":\"");
        sb3.append(wpPathBean2.name);
        sb3.append("\",\"parentFileId\":");
        String strR = R(n5Var, string, g.b.l(wpPathBean.path, ",\"size\":0,\"type\":1,\"duplicate\":1,\"NotReuse\":true,\"event\":\"newCreateFolder\",\"operateType\":1,\"RequestSource\":null}", sb3), kVar.W + "/?homeFilePath=" + wpPathBean.path);
        if (strR.isEmpty()) {
            throw new Exception("请求出错");
        }
        try {
            s sVarG = d.b.b0(strR).g();
            if (sVarG.o("code").e() != 0) {
                String strI = sVarG.o("message").i();
                if (strI == null || strI.isEmpty()) {
                    strI = "解析出错";
                }
                if (strI.contains("token is expired")) {
                    strI = "登录失效，请重新选中网盘";
                }
                throw new Exception(strI);
            }
            s sVarG2 = sVarG.o("data").g().o("Info").g();
            wpPathBean2.jsonObject = sVarG2;
            wpPathBean2.name = sVarG2.o("FileName").i();
            wpPathBean2.path = wpPathBean2.jsonObject.o("FileId").i();
            boolean z = true;
            if (wpPathBean2.jsonObject.o("Type").e() != 1) {
                z = false;
            }
            wpPathBean2.is_dir = z;
            if (!z) {
                long jH = wpPathBean2.jsonObject.o("Size").h();
                wpPathBean2.size_long = jH;
                wpPathBean2.size_txt = p000if.a.D0(jH);
            }
            String strI2 = wpPathBean2.jsonObject.o("CreateAt").i();
            wpPathBean2.time_txt = strI2;
            String strReplace = strI2.replace("T", " ");
            wpPathBean2.time_txt = strReplace;
            int iIndexOf = strReplace.indexOf(Marker.ANY_NON_NULL_MARKER);
            if (iIndexOf != -1) {
                wpPathBean2.time_txt = wpPathBean2.time_txt.substring(0, iIndexOf);
            }
            int iIndexOf2 = wpPathBean2.time_txt.indexOf(".");
            if (iIndexOf2 != -1) {
                wpPathBean2.time_txt = wpPathBean2.time_txt.substring(0, iIndexOf2);
            }
        } catch (Exception unused) {
            throw new Exception("新建出错");
        }
    }

    public static String c0(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (cCharAt >= 'a' && cCharAt <= 'z') {
                char[] charArray = str.toCharArray();
                while (i10 < length) {
                    char c7 = charArray[i10];
                    if (c7 >= 'a' && c7 <= 'z') {
                        charArray[i10] = (char) (c7 ^ ' ');
                    }
                    i10++;
                }
                return String.valueOf(charArray);
            }
            i10++;
        }
        return str;
    }

    public static boolean d(RectF rectF, float f10, float f11, float f12) {
        return f10 >= rectF.left - f12 && f10 <= rectF.right + f12 && f11 >= rectF.top - f12 && f11 <= rectF.bottom + f12;
    }

    public static String d0(int i10) {
        char[] cArr = new char[2];
        for (int i11 = 0; i11 < 2; i11++) {
            cArr[1 - i11] = Character.forDigit(i10 & 15, 16);
            i10 >>= 4;
        }
        return new String(cArr);
    }

    public static ke.c e(ke.c cVar) {
        cVar.g();
        cVar.f10247c = true;
        return cVar.f10246b > 0 ? cVar : ke.c.f10244d;
    }

    public static String e0(int i10) {
        char[] cArr = new char[4];
        for (int i11 = 0; i11 < 4; i11++) {
            cArr[3 - i11] = Character.forDigit(i10 & 15, 16);
            i10 >>= 4;
        }
        return new String(cArr);
    }

    public static ec.j f(Callable callable) {
        try {
            Object objCall = callable.call();
            jc.a.a(objCall, "Scheduler Callable result can't be null");
            return (ec.j) objCall;
        } catch (Throwable th2) {
            throw pc.c.a(th2);
        }
    }

    public static String f0(int i10) {
        char[] cArr = new char[8];
        for (int i11 = 0; i11 < 8; i11++) {
            cArr[7 - i11] = Character.forDigit(i10 & 15, 16);
            i10 >>= 4;
        }
        return new String(cArr);
    }

    public static final void g(Closeable closeable, Throwable th2) {
        if (closeable != null) {
            if (th2 == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th3) {
                d.e(th2, "<this>");
                d.e(th3, "exception");
                if (th2 != th3) {
                    Integer num = pe.a.f12669a;
                    if (num == null || num.intValue() >= 19) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    } else {
                        Method method = oe.a.f11771a;
                        if (method != null) {
                            method.invoke(th2, th3);
                        }
                    }
                }
            }
        }
    }

    public static String g0(long j10) {
        char[] cArr = new char[16];
        for (int i10 = 0; i10 < 16; i10++) {
            cArr[15 - i10] = Character.forDigit(((int) j10) & 15, 16);
            j10 >>= 4;
        }
        return new String(cArr);
    }

    public static PackageInstaller h(IPackageInstaller iPackageInstaller, String str, int i10) throws NoSuchMethodException, SecurityException {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 31) {
            return o.e(o.D().getConstructor(IPackageInstaller.class, String.class, String.class, Integer.TYPE).newInstance(iPackageInstaller, "com.android.shell", str, Integer.valueOf(i10)));
        }
        if (i11 >= 26) {
            return o.e(o.D().getConstructor(IPackageInstaller.class, String.class, Integer.TYPE).newInstance(iPackageInstaller, "com.android.shell", Integer.valueOf(i10)));
        }
        Constructor constructor = o.D().getConstructor(Context.class, PackageManager.class, IPackageInstaller.class, String.class, Integer.TYPE);
        AppStart appStart = AppStart.f3772h;
        return o.e(constructor.newInstance(appStart, appStart.f3775c, iPackageInstaller, "com.android.shell", Integer.valueOf(i10)));
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void h0(WpTaskBean wpTaskBean, u uVar) throws Exception {
        s sVarI0;
        String str;
        String str2;
        String string;
        s sVarG;
        try {
            sVarI0 = i0(wpTaskBean);
        } catch (Exception unused) {
            sVarI0 = null;
        }
        if (sVarI0 == null) {
            throw new Exception("上传失败：访问出错1");
        }
        PrintStream printStream = System.out;
        sVarI0.toString();
        printStream.getClass();
        if (sVarI0.o("Key").i().isEmpty()) {
            wpTaskBean.str1 = "上传完成";
            wpTaskBean.str_state = "";
            sVarI0.o("Info").g();
            return;
        }
        try {
            if (!sVarI0.o("Info").g().o("FileId").i().isEmpty()) {
                wpTaskBean.str1 = "上传完成";
                wpTaskBean.str_state = "";
                sVarI0.o("Info").g();
                return;
            }
        } catch (Exception unused2) {
        }
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = j.f4033a;
        sb2.append(kVar.X);
        sb2.append("/b/api/file/s3_upload_object/auth?");
        sb2.append(n("/b/api/file/s3_upload_object/auth"));
        String string2 = sb2.toString();
        String str3 = kVar.W + "/?homeFilePath=" + wpTaskBean.wpPathInfo.path;
        try {
            JSONObject jSONObject = new JSONObject();
            str2 = "FileId";
            try {
                jSONObject.put("StorageNode", sVarI0.o("StorageNode").i());
                jSONObject.put("bucket", sVarI0.o("Bucket").i());
                jSONObject.put("key", sVarI0.o("Key").i());
                str = "key";
            } catch (Exception unused3) {
                str = "key";
            }
            try {
                jSONObject.put("partNumberEnd", 2);
                jSONObject.put("partNumberStart", 1);
                jSONObject.put(RequestParameters.UPLOAD_ID, sVarI0.o("UploadId").i());
                string = jSONObject.toString();
            } catch (Exception unused4) {
                string = "";
                if (!string.isEmpty()) {
                }
            }
        } catch (Exception unused5) {
            str = "key";
            str2 = "FileId";
        }
        if (!string.isEmpty()) {
            throw new Exception("上传失败：组包出错");
        }
        String strR = R(wpTaskBean.userInfo, string2, string, str3);
        System.out.getClass();
        if (strR.isEmpty()) {
            throw new Exception("上传失败：访问出错2");
        }
        try {
            sVarG = d.b.b0(strR).g();
        } catch (Exception unused6) {
        }
        String strI = sVarG.o("code").e() == 0 ? sVarG.o("data").g().o("presignedUrls").g().o("1").i() : "";
        if (strI.isEmpty()) {
            throw new Exception("上传失败：访问出错3");
        }
        try {
            String strDecode = URLDecoder.decode(strI, HTTP.UTF_8);
            try {
                wpTaskBean.upload_state = -1;
                l9.c cVar = new l9.c(strDecode);
                k9.a aVar = cVar.f11017i;
                cVar.f11012d = wpTaskBean;
                k kVar2 = j.f4033a;
                aVar.b("Referer", kVar2.W);
                aVar.b("sec-fetch-dest", "empty");
                aVar.b("sec-fetch-mode", RequestParameters.SUBRESOURCE_CORS);
                aVar.b("sec-fetch-site", "same-origin");
                aVar.b("X-Requested-With", "com.quark.browser");
                aVar.b("User-Agent", kVar2.J);
                File file = new File(wpTaskBean.bdPathInfo.f18365b);
                cVar.f11004p = file;
                String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(file.getName().replace("#", ""));
                cVar.f11002m = contentTypeFor == null ? k9.c.f10211d : MediaType.parse(contentTypeFor);
                cVar.b(new p(wpTaskBean, uVar, 0));
                while (true) {
                    if (wpTaskBean.upload_state != -1) {
                        break;
                    }
                    if (wpTaskBean.isTask_stop) {
                        b9.b.b(f0.f4020b, wpTaskBean);
                        break;
                    }
                    Thread.sleep(100L);
                }
                if (wpTaskBean.isTask_stop) {
                    throw new Exception("已主动停止");
                }
                if (wpTaskBean.upload_state != 0) {
                    throw new Exception("失败：上传出错3");
                }
                String str4 = j.f4033a.X + "/b/api/file/upload_complete/v2?" + n("/b/api/file/upload_complete/v2");
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("StorageNode", sVarI0.o("StorageNode").i());
                jSONObject2.put("bucket", sVarI0.o("Bucket").i());
                jSONObject2.put("fileId", sVarI0.o(str2).h());
                jSONObject2.put("fileSize", wpTaskBean.bdPathInfo.f18367d);
                jSONObject2.put("isMultipart", false);
                jSONObject2.put(str, sVarI0.o("Key").i());
                jSONObject2.put(RequestParameters.UPLOAD_ID, sVarI0.o("UploadId").i());
                String string3 = jSONObject2.toString();
                if (string3.isEmpty()) {
                    throw new Exception("上传失败：组包出错");
                }
                String strR2 = R(wpTaskBean.userInfo, str4, string3, str3);
                if (strR2.isEmpty()) {
                    throw new Exception("上传失败：访问出错1");
                }
                s sVarG2 = d.b.b0(strR2).g();
                if (sVarG2.o("code").e() != 0) {
                    throw new Exception("失败：上传出错2");
                }
                wpTaskBean.str1 = "上传完成";
                wpTaskBean.str_state = "";
                sVarG2.o("data").g().o("file_info").g();
            } catch (Exception unused7) {
                throw new Exception("失败：上传出错1");
            }
        } catch (Exception unused8) {
            throw new Exception("上传失败：URL解码失败");
        }
    }

    public static ai.a i(int i10, byte[] bArr) throws c0 {
        if (bArr[i10] == 0) {
            byte b10 = bArr[i10 + 1];
            if ((b10 & 255) < 16) {
                ai.a aVar = new ai.a(0);
                aVar.f717a = b10;
                return aVar;
            }
        }
        throw new c0();
    }

    public static s i0(WpTaskBean wpTaskBean) throws Exception {
        String string;
        String strY = y(wpTaskBean.bdPathInfo.f18365b);
        if (strY.isEmpty()) {
            throw new Exception("出错");
        }
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = j.f4033a;
        sb2.append(kVar.X);
        sb2.append("/b/api/file/upload_request?");
        sb2.append(n("/b/api/file/upload_request"));
        String string2 = sb2.toString();
        String str = kVar.W + "/?homeFilePath=" + wpTaskBean.wpPathInfo.path;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("RequestSource", (Object) null);
            jSONObject.put("driveId", 0);
            jSONObject.put("duplicate", 2);
            jSONObject.put("etag", strY);
            jSONObject.put("fileName", wpTaskBean.bdPathInfo.f18364a);
            jSONObject.put("parentFileId", Integer.valueOf(wpTaskBean.wpPathInfo.path));
            jSONObject.put("size", wpTaskBean.bdPathInfo.f18367d);
            jSONObject.put("type", 0);
            string = jSONObject.toString();
        } catch (Exception unused) {
            string = "";
        }
        if (string.isEmpty()) {
            throw new Exception("出错");
        }
        String strR = R(wpTaskBean.userInfo, string2, string, str);
        if (strR.isEmpty()) {
            throw new Exception("出错");
        }
        try {
            s sVarG = d.b.b0(strR).g();
            if (sVarG.o("code").e() == 0) {
                return sVarG.o("data").g();
            }
            String strI = sVarG.o("message").i();
            if (strI == null || strI.isEmpty()) {
                strI = "出错";
            }
            throw new Exception(strI);
        } catch (Exception unused2) {
            throw new Exception("出错");
        }
    }

    public static String j(byte[] bArr, boolean z, Charset charset) {
        if (charset != null) {
            return new String(bArr, charset);
        }
        if (z) {
            return new String(bArr, eg.d.f4974b);
        }
        try {
            return new String(bArr, "Cp437");
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr);
        }
    }

    public static boolean j0(n5 n5Var) {
        Response response;
        ResponseBody responseBodyBody;
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = k.f4034u0;
        sb2.append(j.f4033a.X);
        sb2.append("/b/api/user/info?");
        sb2.append(n("/b/api/user/info"));
        String string = sb2.toString();
        String strString = "";
        do {
            response = null;
            try {
                l9.a aVar = new l9.a(string);
                k9.a aVar2 = aVar.f11017i;
                aVar2.b("Referer", "https://yun.123pan.cn/Setting");
                aVar2.b("App-Version", "3");
                aVar2.b("Platform", "web");
                aVar2.b("Accept-Language", "zh-CN,zh;q=0.9");
                aVar2.b("Authorization", "Bearer " + n5Var.f18300k);
                aVar2.b("sec-fetch-dest", "empty");
                aVar2.b("sec-fetch-mode", RequestParameters.SUBRESOURCE_CORS);
                aVar2.b("sec-fetch-site", "same-origin");
                aVar2.b("X-Requested-With", "com.quark.browser");
                aVar2.b("loginuuid", n5Var.l);
                aVar2.b("User-Agent", j.f4033a.J);
                Response responseA = aVar.a();
                if (responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) {
                    strString = responseBodyBody.string();
                    response = responseA;
                }
            } catch (Exception unused) {
            }
        } while (response == null);
        if (strString.isEmpty()) {
            return false;
        }
        return d.b.b0(strString).g().o("code").e() == 0;
    }

    public static long k(InputStream inputStream) throws IOException {
        int i10 = inputStream.read();
        if (i10 == -1) {
            throw new EOFException();
        }
        long j10 = i10 & 127;
        int i11 = 0;
        while ((i10 & 128) != 0) {
            i11++;
            if (i11 >= 9) {
                throw new h();
            }
            i10 = inputStream.read();
            if (i10 == -1) {
                throw new EOFException();
            }
            if (i10 == 0) {
                throw new h();
            }
            j10 |= (i10 & 127) << (i11 * 7);
        }
        return j10;
    }

    public static String l(n5 n5Var, ArrayList arrayList) throws JSONException {
        String string;
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = k.f4034u0;
        sb2.append(j.f4033a.X);
        sb2.append("/b/api/file/trash?");
        sb2.append(n("/b/api/file/trash"));
        String string2 = sb2.toString();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("RequestSource", (Object) null);
            jSONObject.put("driveId", 0);
            jSONObject.put("event", "intoRecycle");
            JSONArray jSONArray = new JSONArray();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                JSONObject jSONObject2 = new JSONObject(((WpPathBean) it.next()).jsonObject.toString());
                jSONObject2.put("checked", false);
                jSONObject2.put("keys", 0);
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("fileTrashInfoList", jSONArray);
            jSONObject.put("operatePlace", 2);
            jSONObject.put("operation", true);
            string = jSONObject.toString();
        } catch (Exception unused) {
            string = "";
        }
        if (string.isEmpty()) {
            return "组包出错";
        }
        String strR = R(n5Var, string2, string, j.f4033a.W + "/?homeFilePath=" + ((WpPathBean) arrayList.get(0)).path);
        if (strR.isEmpty()) {
            return "请求出错";
        }
        try {
            s sVarG = d.b.b0(strR).g();
            if (sVarG.o("code").e() == 0) {
                return "";
            }
            String strI = sVarG.o("message").i();
            if (strI == null || strI.isEmpty()) {
                strI = "解析出错";
            }
            return strI.contains("token is expired") ? "登录失效，请重新选中网盘" : strI;
        } catch (Exception unused2) {
            return "删除出错";
        }
    }

    public static void m(n5 n5Var, WpPathBean wpPathBean) throws JSONException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(wpPathBean);
        l(n5Var, arrayList);
    }

    public static String n(String str) {
        String string;
        long jNextInt = new Random().nextInt(100000) * 1000;
        if (jNextInt < 10000) {
            jNextInt = 1000000;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        String[] strArrSplit = "a,d,e,f,g,h,l,m,y,i,j,n,o,p,k,q,r,s,t,u,b,c,v,w,s,z".split(",");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(1000 * jCurrentTimeMillis);
        int i10 = calendar.get(1);
        int i11 = calendar.get(2) + 1;
        int i12 = calendar.get(5);
        int i13 = calendar.get(11);
        int i14 = calendar.get(12);
        String str2 = "";
        StringBuilder sbM = g.b.m(da.b.a(i10, ""));
        sbM.append(i11 < 10 ? da.b.a(i11, "0") : Integer.valueOf(i11));
        StringBuilder sbM2 = g.b.m(sbM.toString());
        sbM2.append(i12 < 10 ? da.b.a(i12, "0") : Integer.valueOf(i12));
        StringBuilder sbM3 = g.b.m(sbM2.toString());
        sbM3.append(i13 < 10 ? da.b.a(i13, "0") : Integer.valueOf(i13));
        StringBuilder sbM4 = g.b.m(sbM3.toString());
        sbM4.append(i14 < 10 ? da.b.a(i14, "0") : Integer.valueOf(i14));
        String string2 = sbM4.toString();
        int i15 = 0;
        while (i15 < string2.length()) {
            int i16 = i15 + 1;
            String strSubstring = string2.substring(i15, i16);
            if (strSubstring.equals("0")) {
                StringBuilder sbM5 = g.b.m(str2);
                sbM5.append(strArrSplit[0]);
                string = sbM5.toString();
            } else {
                StringBuilder sbM6 = g.b.m(str2);
                sbM6.append(strArrSplit[Integer.valueOf(strSubstring).intValue()]);
                string = sbM6.toString();
            }
            str2 = string;
            i15 = i16;
        }
        String strValueOf = String.valueOf(O(str2));
        return strValueOf + "=" + jCurrentTimeMillis + "-" + jNextInt + "-" + O(jCurrentTimeMillis + "|" + jNextInt + "|" + str + "|web|3|" + strValueOf);
    }

    public static boolean o(Object obj, Object obj2) {
        return Build.VERSION.SDK_INT >= 19 ? w0.b.a(obj, obj2) : obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static boolean p(String str, String str2) {
        char c7;
        int length = str.length();
        if (str == str2) {
            return true;
        }
        if (length != str2.length()) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (str.charAt(i10) != str2.charAt(i10) && ((c7 = (char) ((r4 | ' ') - 97)) >= 26 || c7 != ((char) ((r5 | ' ') - 97)))) {
                return false;
            }
        }
        return true;
    }

    public static void q(AccService accService, int i10) {
        i iVar;
        if (i10 == 6506) {
            i iVar2 = accService.f3933f;
            if (iVar2 != null) {
                iVar2.h("open_favorite_page", null);
                return;
            } else {
                W(accService, 10006);
                return;
            }
        }
        if (i10 == 6503) {
            i iVar3 = accService.f3933f;
            if (iVar3 != null) {
                iVar3.h("back_to_background", null);
                return;
            } else {
                W(accService, 10007);
                return;
            }
        }
        if (i10 == 6500) {
            i iVar4 = accService.f3933f;
            if (iVar4 == null) {
                X(accService, 10009, "DAY_NIGHT_MODE", 1);
                return;
            } else {
                if (iVar4.d() == 1) {
                    return;
                }
                i iVar5 = accService.f3933f;
                iVar5.getClass();
                iVar5.h("set_day_night_mode", String.valueOf(1));
                return;
            }
        }
        if (i10 == 6501) {
            i iVar6 = accService.f3933f;
            if (iVar6 == null) {
                X(accService, 10009, "DAY_NIGHT_MODE", 2);
                return;
            } else {
                if (iVar6.d() == 2) {
                    return;
                }
                i iVar7 = accService.f3933f;
                iVar7.getClass();
                iVar7.h("set_day_night_mode", String.valueOf(2));
                return;
            }
        }
        if (i10 == 6502) {
            i iVar8 = accService.f3933f;
            if (iVar8 == null) {
                X(accService, 10009, "DAY_NIGHT_MODE", 3);
                return;
            } else {
                if (iVar8.d() == 3) {
                    return;
                }
                i iVar9 = accService.f3933f;
                iVar9.getClass();
                iVar9.h("set_day_night_mode", String.valueOf(3));
                return;
            }
        }
        if (i10 == 6514) {
            i iVar10 = accService.f3933f;
            if (iVar10 == null) {
                X(accService, 10009, "DAY_NIGHT_MODE", 2);
                return;
            }
            if (iVar10.d() == 2) {
                i iVar11 = accService.f3933f;
                iVar11.getClass();
                iVar11.h("set_day_night_mode", String.valueOf(1));
                return;
            } else {
                i iVar12 = accService.f3933f;
                iVar12.getClass();
                iVar12.h("set_day_night_mode", String.valueOf(2));
                return;
            }
        }
        if (i10 == 6504) {
            i iVar13 = accService.f3933f;
            if (iVar13 != null) {
                iVar13.h("exit_map", null);
                return;
            } else {
                W(accService, 10011);
                return;
            }
        }
        if (i10 == 6505) {
            i iVar14 = accService.f3933f;
            if (iVar14 != null) {
                iVar14.h("stop_navi", null);
                return;
            } else {
                W(accService, 10045);
                return;
            }
        }
        boolean zBooleanValue = false;
        if (i10 == 6507) {
            i iVar15 = accService.f3933f;
            if (iVar15 != null) {
                iVar15.h("zoom_map", String.valueOf(0));
                return;
            } else {
                X(accService, 10012, "SCALE", 1);
                return;
            }
        }
        if (i10 == 6508) {
            i iVar16 = accService.f3933f;
            if (iVar16 != null) {
                iVar16.h("zoom_map", String.valueOf(1));
                return;
            } else {
                X(accService, 10012, "SCALE", 2);
                return;
            }
        }
        if (i10 == 6510) {
            i iVar17 = accService.f3933f;
            if (iVar17 != null) {
                iVar17.h("set_road_condition", String.valueOf(true));
                return;
            } else {
                X(accService, 10012, "TRAFFIC", 1);
                return;
            }
        }
        if (i10 == 6511) {
            i iVar18 = accService.f3933f;
            if (iVar18 != null) {
                iVar18.h("set_road_condition", String.valueOf(false));
                return;
            } else {
                X(accService, 10012, "TRAFFIC", 2);
                return;
            }
        }
        if (i10 == 6512) {
            i iVar19 = accService.f3933f;
            if (iVar19 != null) {
                if (!iVar19.f(0)) {
                    a0.u("还没有设置【家】地址");
                    return;
                }
                i iVar20 = accService.f3933f;
                iVar20.getClass();
                iVar20.h("start_navi_to_homeorcompany", String.valueOf(0));
                return;
            }
            return;
        }
        if (i10 == 6513) {
            i iVar21 = accService.f3933f;
            if (iVar21 != null) {
                if (!iVar21.f(1)) {
                    a0.u("还没有设置【公司】地址");
                    return;
                }
                i iVar22 = accService.f3933f;
                iVar22.getClass();
                iVar22.h("start_navi_to_homeorcompany", String.valueOf(1));
                return;
            }
            return;
        }
        if (i10 == 6509) {
            i iVar23 = accService.f3933f;
            if (iVar23 != null) {
                iVar23.h("open_map", null);
                return;
            }
            return;
        }
        if (i10 == 6515) {
            i iVar24 = accService.f3933f;
            if (iVar24 != null) {
                try {
                    zBooleanValue = Boolean.valueOf(d.b.b0(iVar24.h("is_in_navi", null)).g().o("result").i()).booleanValue();
                } catch (Exception unused) {
                }
                if (zBooleanValue) {
                    return;
                }
                accService.f3933f.h("continue_navi", null);
                return;
            }
            return;
        }
        if (i10 == 6516) {
            i iVar25 = accService.f3933f;
            if (iVar25 == null || iVar25.g()) {
                return;
            }
            accService.f3933f.h("start_cruise", null);
            return;
        }
        if (i10 == 6517 && (iVar = accService.f3933f) != null && iVar.g()) {
            accService.f3933f.h("stop_cruise", null);
        }
    }

    public static ArrayList r(Context context) {
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 65536);
        for (ResolveInfo resolveInfo : Build.VERSION.SDK_INT >= 24 ? packageManager.queryIntentActivities(intent, 8192) : packageManager.queryIntentActivities(intent, 8192)) {
            String str = resolveInfo.activityInfo.packageName;
            AppBean appBean = MyDb.get().getAppDao().get_appBean(resolveInfo.activityInfo.packageName);
            if (appBean != null && !appBean.isHide && !appBean.isDisable && !appBean.isUnInstall) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                if (activityInfo.enabled && activityInfo.exported) {
                    String lowerCase = appBean.pack.trim().toLowerCase();
                    String lowerCase2 = resolveInfo.activityInfo.name.trim().toLowerCase();
                    if (!lowerCase.equals("android") && (!appBean.isSystem || !lowerCase.startsWith("com.android.") || lowerCase.contains("launcher"))) {
                        if (!lowerCase.contains(".settings") && !appBean.name.contains("Settings") && !appBean.name.contains("设置") && !appBean.name.contains("DeviceLockController") && !appBean.name.contains("Google Play") && !lowerCase2.contains("select") && !lowerCase2.contains("language")) {
                            String str2 = appBean.name;
                            String str3 = appBean.pack;
                            arrayList.add(new DesktopBean(str2, str3, appBean.isSystem, appBean.isDisable, appBean.isHide, appBean.isUnInstall, resolveInfoResolveActivity != null && resolveInfoResolveActivity.activityInfo.packageName.equals(str3)));
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:43:0x008f. Please report as an issue. */
    public static int s(int[] iArr, int[] iArr2, int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        if (iArr.length < 9 || iArr2.length < 38) {
            return 0;
        }
        switch (i10) {
            case 0:
                i11 = iArr2[0];
                i12 = i11 & 3;
                break;
            case 1:
                i12 = iArr2[1];
                break;
            case 2:
                i13 = iArr2[2];
                i12 = i13 & 1;
                break;
            case 3:
                i14 = iArr2[2];
                i13 = i14 >> 1;
                i12 = i13 & 1;
                break;
            case 4:
                i15 = iArr2[2];
                i13 = i15 >> 2;
                i12 = i13 & 1;
                break;
            case 5:
                i16 = iArr2[2];
                i13 = i16 >> 3;
                i12 = i13 & 1;
                break;
            case 6:
                i17 = iArr2[2];
                i13 = i17 >> 4;
                i12 = i13 & 1;
                break;
            case 7:
                i18 = iArr2[2];
                i13 = i18 >> 5;
                i12 = i13 & 1;
                break;
            default:
                if (i10 != 9) {
                    if (i10 != 10) {
                        switch (i10) {
                            case 12:
                                i13 = iArr2[3];
                                i12 = i13 & 1;
                                break;
                            case 13:
                                i14 = iArr2[3];
                                i13 = i14 >> 1;
                                i12 = i13 & 1;
                                break;
                            case 14:
                                i15 = iArr2[3];
                                i13 = i15 >> 2;
                                i12 = i13 & 1;
                                break;
                            case 15:
                                i16 = iArr2[3];
                                i13 = i16 >> 3;
                                i12 = i13 & 1;
                                break;
                            default:
                                switch (i10) {
                                    case 26:
                                        i18 = iArr2[3];
                                        i13 = i18 >> 5;
                                        i12 = i13 & 1;
                                        break;
                                    case 27:
                                        i22 = iArr2[7];
                                        i12 = i22 & 15;
                                        break;
                                    case 28:
                                        i23 = iArr2[7];
                                        i24 = i23 >> 4;
                                        i12 = i24 & 7;
                                        break;
                                    case 29:
                                        i21 = iArr2[7];
                                        break;
                                    case 30:
                                        i13 = iArr2[8];
                                        i12 = i13 & 1;
                                        break;
                                    case 31:
                                        i17 = iArr2[8];
                                        i13 = i17 >> 4;
                                        i12 = i13 & 1;
                                        break;
                                    case 32:
                                        i18 = iArr2[8];
                                        i13 = i18 >> 5;
                                        i12 = i13 & 1;
                                        break;
                                    case 33:
                                        i20 = iArr2[8];
                                        break;
                                    case 34:
                                        i21 = iArr2[8];
                                        break;
                                    case 35:
                                        i13 = iArr2[9];
                                        i12 = i13 & 1;
                                        break;
                                    case 36:
                                        i14 = iArr2[9];
                                        i13 = i14 >> 1;
                                        i12 = i13 & 1;
                                        break;
                                    case 37:
                                        i15 = iArr2[9];
                                        i13 = i15 >> 2;
                                        i12 = i13 & 1;
                                        break;
                                    case 38:
                                        i13 = iArr2[10];
                                        i12 = i13 & 1;
                                        break;
                                    case 39:
                                        i14 = iArr2[10];
                                        i13 = i14 >> 1;
                                        i12 = i13 & 1;
                                        break;
                                    case 40:
                                        i15 = iArr2[10];
                                        i13 = i15 >> 2;
                                        i12 = i13 & 1;
                                        break;
                                    case 41:
                                        i16 = iArr2[10];
                                        i13 = i16 >> 3;
                                        i12 = i13 & 1;
                                        break;
                                    case 42:
                                        i17 = iArr2[10];
                                        i13 = i17 >> 4;
                                        i12 = i13 & 1;
                                        break;
                                    case 43:
                                        i18 = iArr2[10];
                                        i13 = i18 >> 5;
                                        i12 = i13 & 1;
                                        break;
                                    case 44:
                                        i20 = iArr2[10];
                                        break;
                                    case 45:
                                        i21 = iArr2[10];
                                        break;
                                    case 46:
                                        i13 = iArr2[11];
                                        i12 = i13 & 1;
                                        break;
                                    case 47:
                                        i24 = iArr2[12];
                                        i12 = i24 & 7;
                                        break;
                                    case 48:
                                        i25 = iArr2[12];
                                        i24 = i25 >> 3;
                                        i12 = i24 & 7;
                                        break;
                                    case 49:
                                        i20 = iArr2[12];
                                        break;
                                    case 50:
                                        i26 = iArr2[13];
                                        i11 = i26 >> 4;
                                        i12 = i11 & 3;
                                        break;
                                    case 51:
                                        i27 = iArr2[13];
                                        i11 = i27 >> 6;
                                        i12 = i11 & 3;
                                        break;
                                    case 52:
                                        i11 = iArr2[14];
                                        i12 = i11 & 3;
                                        break;
                                    case 53:
                                        i28 = iArr2[14];
                                        i11 = i28 >> 2;
                                        i12 = i11 & 3;
                                        break;
                                    case 54:
                                        i17 = iArr2[14];
                                        i13 = i17 >> 4;
                                        i12 = i13 & 1;
                                        break;
                                    case 55:
                                        i18 = iArr2[17];
                                        i13 = i18 >> 5;
                                        i12 = i13 & 1;
                                        break;
                                    default:
                                        if (i10 == 57) {
                                            i21 = iArr2[14];
                                            break;
                                        } else if (i10 == 58) {
                                            i12 = iArr2[15] & 1;
                                            break;
                                        } else {
                                            switch (i10) {
                                                case 60:
                                                    i29 = iArr2[15] >> 2;
                                                    i12 = i29 & 1;
                                                    break;
                                                case 61:
                                                    i29 = iArr2[15] >> 3;
                                                    i12 = i29 & 1;
                                                    break;
                                                case 62:
                                                    i29 = iArr2[15] >> 4;
                                                    i12 = i29 & 1;
                                                    break;
                                                case 63:
                                                    i29 = iArr2[15] >> 5;
                                                    i12 = i29 & 1;
                                                    break;
                                                case 64:
                                                    i29 = iArr2[15] >> 6;
                                                    i12 = i29 & 1;
                                                    break;
                                                case 65:
                                                    i29 = iArr2[15] >> 7;
                                                    i12 = i29 & 1;
                                                    break;
                                                case 66:
                                                    i11 = iArr2[16];
                                                    i12 = i11 & 3;
                                                    break;
                                                case 67:
                                                    i15 = iArr2[16];
                                                    i13 = i15 >> 2;
                                                    i12 = i13 & 1;
                                                    break;
                                                case 68:
                                                    i16 = iArr2[16];
                                                    i13 = i16 >> 3;
                                                    i12 = i13 & 1;
                                                    break;
                                                case 69:
                                                    i17 = iArr2[16];
                                                    i13 = i17 >> 4;
                                                    i12 = i13 & 1;
                                                    break;
                                                case 70:
                                                    i18 = iArr2[16];
                                                    i13 = i18 >> 5;
                                                    i12 = i13 & 1;
                                                    break;
                                                case 71:
                                                    i20 = iArr2[16];
                                                    break;
                                                default:
                                                    switch (i10) {
                                                        case 74:
                                                            i15 = iArr2[17];
                                                            i13 = i15 >> 2;
                                                            i12 = i13 & 1;
                                                            break;
                                                        case 75:
                                                            i16 = iArr2[17];
                                                            i13 = i16 >> 3;
                                                            i12 = i13 & 1;
                                                            break;
                                                        case 76:
                                                            i17 = iArr2[17];
                                                            i13 = i17 >> 4;
                                                            i12 = i13 & 1;
                                                            break;
                                                        default:
                                                            switch (i10) {
                                                                case 78:
                                                                    i20 = iArr2[17];
                                                                    break;
                                                                case 79:
                                                                    i21 = iArr2[17];
                                                                    break;
                                                                case 80:
                                                                    i13 = iArr2[18];
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 81:
                                                                    i14 = iArr2[18];
                                                                    i13 = i14 >> 1;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 82:
                                                                    i15 = iArr2[18];
                                                                    i13 = i15 >> 2;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 83:
                                                                    i16 = iArr2[18];
                                                                    i13 = i16 >> 3;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case CarSettingID.Send.HVAC_SEASONS_KEY /* 84 */:
                                                                    i17 = iArr2[18];
                                                                    i13 = i17 >> 4;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 85:
                                                                    i18 = iArr2[18];
                                                                    i13 = i18 >> 5;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 86:
                                                                    i20 = iArr2[18];
                                                                    break;
                                                                case 87:
                                                                    i21 = iArr2[18];
                                                                    break;
                                                                case 88:
                                                                    i13 = iArr2[21];
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 89:
                                                                    i14 = iArr2[21];
                                                                    i13 = i14 >> 1;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 90:
                                                                    i15 = iArr2[21];
                                                                    i13 = i15 >> 2;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 91:
                                                                    i16 = iArr2[21];
                                                                    i13 = i16 >> 3;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 92:
                                                                    i17 = iArr2[21];
                                                                    i13 = i17 >> 4;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 93:
                                                                    i18 = iArr2[21];
                                                                    i13 = i18 >> 5;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 94:
                                                                    i20 = iArr2[21];
                                                                    break;
                                                                case 95:
                                                                    i21 = iArr2[21];
                                                                    break;
                                                                case 96:
                                                                    i13 = iArr2[23];
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 97:
                                                                    i14 = iArr2[23];
                                                                    i13 = i14 >> 1;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 98:
                                                                    i15 = iArr2[23];
                                                                    i13 = i15 >> 2;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 99:
                                                                    i16 = iArr2[23];
                                                                    i13 = i16 >> 3;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 100:
                                                                    i17 = iArr2[23];
                                                                    i13 = i17 >> 4;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 101:
                                                                    i18 = iArr2[23];
                                                                    i13 = i18 >> 5;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 102:
                                                                    i20 = iArr2[23];
                                                                    break;
                                                                case 103:
                                                                    i21 = iArr2[23];
                                                                    break;
                                                                case 104:
                                                                    i13 = iArr2[24];
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 105:
                                                                    i14 = iArr2[24];
                                                                    i13 = i14 >> 1;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 106:
                                                                    i15 = iArr2[24];
                                                                    i13 = i15 >> 2;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 107:
                                                                    i16 = iArr2[24];
                                                                    i13 = i16 >> 3;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 108:
                                                                    i17 = iArr2[24];
                                                                    i13 = i17 >> 4;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 109:
                                                                    i18 = iArr2[24];
                                                                    i13 = i18 >> 5;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 110:
                                                                    i27 = iArr2[24];
                                                                    i11 = i27 >> 6;
                                                                    i12 = i11 & 3;
                                                                    break;
                                                                case 111:
                                                                    i13 = iArr2[25];
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 112:
                                                                    i14 = iArr2[25];
                                                                    i13 = i14 >> 1;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 113:
                                                                    i15 = iArr2[25];
                                                                    i13 = i15 >> 2;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 114:
                                                                    i16 = iArr2[25];
                                                                    i13 = i16 >> 3;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 115:
                                                                    i17 = iArr2[25];
                                                                    i13 = i17 >> 4;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 116:
                                                                    i18 = iArr2[25];
                                                                    i13 = i18 >> 5;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 117:
                                                                    i20 = iArr2[25];
                                                                    break;
                                                                case 118:
                                                                    i21 = iArr2[25];
                                                                    break;
                                                                case 119:
                                                                    i13 = iArr2[26];
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 120:
                                                                    i14 = iArr2[26];
                                                                    i13 = i14 >> 1;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 121:
                                                                    i15 = iArr2[26];
                                                                    i13 = i15 >> 2;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 122:
                                                                    i16 = iArr2[26];
                                                                    i13 = i16 >> 3;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 123:
                                                                    i17 = iArr2[26];
                                                                    i13 = i17 >> 4;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 124:
                                                                    i18 = iArr2[26];
                                                                    i13 = i18 >> 5;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 125:
                                                                    i20 = iArr2[26];
                                                                    break;
                                                                case 126:
                                                                    i21 = iArr2[26];
                                                                    break;
                                                                case 127:
                                                                    i13 = iArr2[30];
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 128:
                                                                    i14 = iArr2[30];
                                                                    i13 = i14 >> 1;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 129:
                                                                    i15 = iArr2[30];
                                                                    i13 = i15 >> 2;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 130:
                                                                    i11 = iArr2[30] >> 3;
                                                                    i12 = i11 & 3;
                                                                    break;
                                                                case 131:
                                                                    i30 = iArr2[30];
                                                                    i11 = i30 >> 5;
                                                                    i12 = i11 & 3;
                                                                    break;
                                                                case 132:
                                                                    i21 = iArr2[30];
                                                                    break;
                                                                case 133:
                                                                    i13 = iArr2[31];
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 134:
                                                                    i31 = iArr2[31];
                                                                    i11 = i31 >> 1;
                                                                    i12 = i11 & 3;
                                                                    break;
                                                                case 135:
                                                                    i16 = iArr2[31];
                                                                    i13 = i16 >> 3;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 136:
                                                                    i17 = iArr2[31];
                                                                    i13 = i17 >> 4;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 137:
                                                                    i18 = iArr2[31];
                                                                    i13 = i18 >> 5;
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 138:
                                                                    i27 = iArr2[31];
                                                                    i11 = i27 >> 6;
                                                                    i12 = i11 & 3;
                                                                    break;
                                                                case 139:
                                                                    i11 = iArr2[32];
                                                                    i12 = i11 & 3;
                                                                    break;
                                                                case 140:
                                                                    i28 = iArr2[32];
                                                                    i11 = i28 >> 2;
                                                                    i12 = i11 & 3;
                                                                    break;
                                                                case 141:
                                                                    i26 = iArr2[32];
                                                                    i11 = i26 >> 4;
                                                                    i12 = i11 & 3;
                                                                    break;
                                                                case 142:
                                                                    i20 = iArr2[32];
                                                                    break;
                                                                case 143:
                                                                    i21 = iArr2[32];
                                                                    break;
                                                                case 144:
                                                                    i11 = iArr2[33];
                                                                    i12 = i11 & 3;
                                                                    break;
                                                                case 145:
                                                                    i28 = iArr2[33];
                                                                    i11 = i28 >> 2;
                                                                    i12 = i11 & 3;
                                                                    break;
                                                                case 146:
                                                                    i26 = iArr2[33];
                                                                    i11 = i26 >> 4;
                                                                    i12 = i11 & 3;
                                                                    break;
                                                                case 147:
                                                                    i20 = iArr2[33];
                                                                    break;
                                                                case 148:
                                                                    i21 = iArr2[33];
                                                                    break;
                                                                case 149:
                                                                    i13 = iArr2[34];
                                                                    i12 = i13 & 1;
                                                                    break;
                                                                case 150:
                                                                    i20 = iArr2[3];
                                                                    break;
                                                                default:
                                                                    switch (i10) {
                                                                        case 200:
                                                                            i22 = iArr[0];
                                                                            i12 = i22 & 15;
                                                                            break;
                                                                        case CarSettingID.Recv.IGM_INPUT_OVER_VOLT /* 201 */:
                                                                            i13 = iArr[1];
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case CarSettingID.Recv.IGM_OVER_TEMP /* 202 */:
                                                                            i14 = iArr[1];
                                                                            i13 = i14 >> 1;
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case CarSettingID.Recv.IGM_OUTPUT_OPEN_LODE /* 203 */:
                                                                            i15 = iArr[1];
                                                                            i13 = i15 >> 2;
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case CarSettingID.Recv.IGM_OUTPUT_OVER_CUR /* 204 */:
                                                                            i11 = iArr[2];
                                                                            i12 = i11 & 3;
                                                                            break;
                                                                        case 205:
                                                                            i15 = iArr[2];
                                                                            i13 = i15 >> 2;
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case CarSettingID.Recv.IGM_OUTPUT_SCB /* 206 */:
                                                                            i16 = iArr[2];
                                                                            i13 = i16 >> 3;
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case CarSettingID.Recv.IFC_TLR_AVAIL /* 207 */:
                                                                            i17 = iArr[2];
                                                                            i13 = i17 >> 4;
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case CarSettingID.Recv.IFC_TLR_ST /* 208 */:
                                                                            i18 = iArr[2];
                                                                            i13 = i18 >> 5;
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case CarSettingID.Recv.IFC_TLR_ACOUSTIC_WARN /* 209 */:
                                                                            i27 = iArr[2];
                                                                            i11 = i27 >> 6;
                                                                            i12 = i11 & 3;
                                                                            break;
                                                                        case CarSettingID.Recv.IFC_SGW_AVAIL /* 210 */:
                                                                            i13 = iArr[4];
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case 211:
                                                                            i24 = iArr[4] >> 1;
                                                                            i12 = i24 & 7;
                                                                            break;
                                                                        case CarSettingID.Recv.IFC_SGW_ACOUSTIC_WARN /* 212 */:
                                                                            i22 = iArr[4] >> 4;
                                                                            i12 = i22 & 15;
                                                                            break;
                                                                        case CarSettingID.Recv.IFC_TCP_AVAIL /* 213 */:
                                                                            i24 = iArr[5];
                                                                            i12 = i24 & 7;
                                                                            break;
                                                                        case CarSettingID.Recv.IFC_TCP_ST /* 214 */:
                                                                            i25 = iArr[5];
                                                                            i24 = i25 >> 3;
                                                                            i12 = i24 & 7;
                                                                            break;
                                                                        case CarSettingID.Recv.IFC_TSR_AVAIL /* 215 */:
                                                                            i20 = iArr[5];
                                                                            break;
                                                                        case CarSettingID.Recv.IFC_HMA_AVAIL /* 216 */:
                                                                            i28 = iArr[6];
                                                                            i11 = i28 >> 2;
                                                                            i12 = i11 & 3;
                                                                            break;
                                                                        case 217:
                                                                            i26 = iArr[6];
                                                                            i11 = i26 >> 4;
                                                                            i12 = i11 & 3;
                                                                            break;
                                                                        case 218:
                                                                            i27 = iArr[6];
                                                                            i11 = i27 >> 6;
                                                                            i12 = i11 & 3;
                                                                            break;
                                                                        case 219:
                                                                            i22 = iArr[7];
                                                                            i12 = i22 & 15;
                                                                            break;
                                                                        case CarSettingID.Recv.IFC_TCPSESSIONID /* 220 */:
                                                                            i26 = iArr[7];
                                                                            i11 = i26 >> 4;
                                                                            i12 = i11 & 3;
                                                                            break;
                                                                        case CarSettingID.Recv.FLDCM_MIRROR_FOLD_UNFOLD_ST /* 221 */:
                                                                            i27 = iArr[7];
                                                                            i11 = i27 >> 6;
                                                                            i12 = i11 & 3;
                                                                            break;
                                                                        case CarSettingID.Recv.FRDCM_MIRROR_FOLD_UNFOLD_ST /* 222 */:
                                                                            i13 = iArr[3];
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case CarSettingID.Recv.PAA_DVR_TRIGGER /* 223 */:
                                                                            i24 = iArr2[27];
                                                                            i12 = i24 & 7;
                                                                            break;
                                                                        case 224:
                                                                            i12 = (iArr2[27] >> 3) & 31;
                                                                            break;
                                                                        case 225:
                                                                            i13 = iArr2[19];
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case 226:
                                                                            i16 = iArr[1];
                                                                            i13 = i16 >> 3;
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case CarSettingID.Recv.IPB_CST_STATUS /* 227 */:
                                                                            i22 = iArr2[28];
                                                                            i12 = i22 & 15;
                                                                            break;
                                                                        case 228:
                                                                            i16 = iArr2[9];
                                                                            i13 = i16 >> 3;
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case CarSettingID.Recv.MAX_OPENNING_TAILGATE /* 229 */:
                                                                            i14 = iArr2[19];
                                                                            i13 = i14 >> 1;
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case CarSettingID.Recv.FRONT_HATCH_SWITCH /* 230 */:
                                                                            i17 = iArr2[28];
                                                                            i13 = i17 >> 4;
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case CarSettingID.Recv.SUNROOF_STATUS /* 231 */:
                                                                            i17 = iArr2[9];
                                                                            i13 = i17 >> 4;
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case CarSettingID.Recv.TAILGATE_STATUS /* 232 */:
                                                                            i13 = iArr[8];
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case CarSettingID.Recv.LF_DOOR_STATUS /* 233 */:
                                                                            i14 = iArr2[8];
                                                                            i13 = i14 >> 1;
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case 234:
                                                                            i31 = iArr2[11];
                                                                            i11 = i31 >> 1;
                                                                            i12 = i11 & 3;
                                                                            break;
                                                                        case 235:
                                                                            i15 = iArr2[19];
                                                                            i13 = i15 >> 2;
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case CarSettingID.Recv.RR_DOOR_STATUS /* 236 */:
                                                                            i18 = iArr2[9];
                                                                            i13 = i18 >> 5;
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        case 237:
                                                                            i20 = iArr2[28];
                                                                            break;
                                                                        case 238:
                                                                            i28 = iArr2[0];
                                                                            i11 = i28 >> 2;
                                                                            i12 = i11 & 3;
                                                                            break;
                                                                        case 239:
                                                                            i16 = iArr2[19];
                                                                            i13 = i16 >> 3;
                                                                            i12 = i13 & 1;
                                                                            break;
                                                                        default:
                                                                            switch (i10) {
                                                                                case 10016:
                                                                                    i13 = iArr2[29];
                                                                                    i12 = i13 & 1;
                                                                                    break;
                                                                                case 10017:
                                                                                    i14 = iArr2[29];
                                                                                    i13 = i14 >> 1;
                                                                                    i12 = i13 & 1;
                                                                                    break;
                                                                                case 10018:
                                                                                    i15 = iArr2[29];
                                                                                    i13 = i15 >> 2;
                                                                                    i12 = i13 & 1;
                                                                                    break;
                                                                                case 10019:
                                                                                    i15 = iArr2[8];
                                                                                    i13 = i15 >> 2;
                                                                                    i12 = i13 & 1;
                                                                                    break;
                                                                                default:
                                                                                    switch (i10) {
                                                                                        case 10032:
                                                                                            i16 = iArr2[11];
                                                                                            i13 = i16 >> 3;
                                                                                            i12 = i13 & 1;
                                                                                            break;
                                                                                        case 10033:
                                                                                            i26 = iArr2[11];
                                                                                            i11 = i26 >> 4;
                                                                                            i12 = i11 & 3;
                                                                                            break;
                                                                                        case 10034:
                                                                                            i20 = iArr2[11];
                                                                                            break;
                                                                                        case 10035:
                                                                                            i18 = iArr2[29];
                                                                                            i13 = i18 >> 5;
                                                                                            i12 = i13 & 1;
                                                                                            break;
                                                                                        case 10036:
                                                                                            i20 = iArr2[29];
                                                                                            break;
                                                                                        case 10037:
                                                                                            i21 = iArr2[29];
                                                                                            break;
                                                                                        default:
                                                                                            switch (i10) {
                                                                                                case 10048:
                                                                                                    i13 = iArr2[13];
                                                                                                    i12 = i13 & 1;
                                                                                                    break;
                                                                                                case 10049:
                                                                                                    i18 = iArr2[20];
                                                                                                    i13 = i18 >> 5;
                                                                                                    i12 = i13 & 1;
                                                                                                    break;
                                                                                                case 10050:
                                                                                                    i17 = iArr2[20];
                                                                                                    i13 = i17 >> 4;
                                                                                                    i12 = i13 & 1;
                                                                                                    break;
                                                                                                default:
                                                                                                    switch (i10) {
                                                                                                        case 10067:
                                                                                                            i17 = iArr[1];
                                                                                                            i13 = i17 >> 4;
                                                                                                            i12 = i13 & 1;
                                                                                                            break;
                                                                                                        case 10068:
                                                                                                            i14 = iArr[3];
                                                                                                            i13 = i14 >> 1;
                                                                                                            i12 = i13 & 1;
                                                                                                            break;
                                                                                                        case 10069:
                                                                                                            i16 = iArr2[13];
                                                                                                            i13 = i16 >> 3;
                                                                                                            i12 = i13 & 1;
                                                                                                            break;
                                                                                                        default:
                                                                                                            switch (i10) {
                                                                                                                case 10072:
                                                                                                                    i15 = iArr2[20];
                                                                                                                    i13 = i15 >> 2;
                                                                                                                    i12 = i13 & 1;
                                                                                                                    break;
                                                                                                                case 10073:
                                                                                                                    i16 = iArr2[20];
                                                                                                                    i13 = i16 >> 3;
                                                                                                                    i12 = i13 & 1;
                                                                                                                    break;
                                                                                                                case 10074:
                                                                                                                    i20 = iArr2[20];
                                                                                                                    break;
                                                                                                                case 10075:
                                                                                                                    i21 = iArr2[20];
                                                                                                                    break;
                                                                                                                case 10076:
                                                                                                                    i17 = iArr2[19];
                                                                                                                    i13 = i17 >> 4;
                                                                                                                    i12 = i13 & 1;
                                                                                                                    break;
                                                                                                                case 10077:
                                                                                                                    i21 = iArr2[19];
                                                                                                                    break;
                                                                                                                case 10078:
                                                                                                                    i13 = iArr2[20];
                                                                                                                    i12 = i13 & 1;
                                                                                                                    break;
                                                                                                                case 10079:
                                                                                                                    i14 = iArr2[20];
                                                                                                                    i13 = i14 >> 1;
                                                                                                                    i12 = i13 & 1;
                                                                                                                    break;
                                                                                                                case 10080:
                                                                                                                    i14 = iArr2[34];
                                                                                                                    i13 = i14 >> 1;
                                                                                                                    i12 = i13 & 1;
                                                                                                                    break;
                                                                                                                case 10081:
                                                                                                                    i15 = iArr2[34];
                                                                                                                    i13 = i15 >> 2;
                                                                                                                    i12 = i13 & 1;
                                                                                                                    break;
                                                                                                                case 10082:
                                                                                                                    i23 = iArr2[34];
                                                                                                                    i24 = i23 >> 4;
                                                                                                                    i12 = i24 & 7;
                                                                                                                    break;
                                                                                                                case 10083:
                                                                                                                    i21 = iArr2[12];
                                                                                                                    break;
                                                                                                                case 10084:
                                                                                                                    i18 = iArr2[22];
                                                                                                                    i13 = i18 >> 5;
                                                                                                                    i12 = i13 & 1;
                                                                                                                    break;
                                                                                                                case 10085:
                                                                                                                    i14 = iArr2[22];
                                                                                                                    i13 = i14 >> 1;
                                                                                                                    i12 = i13 & 1;
                                                                                                                    break;
                                                                                                                case 10086:
                                                                                                                    i15 = iArr[8];
                                                                                                                    i13 = i15 >> 2;
                                                                                                                    i12 = i13 & 1;
                                                                                                                    break;
                                                                                                                case 10087:
                                                                                                                    i16 = iArr[8];
                                                                                                                    i13 = i16 >> 3;
                                                                                                                    i12 = i13 & 1;
                                                                                                                    break;
                                                                                                                case 10088:
                                                                                                                    i14 = iArr[8];
                                                                                                                    i13 = i14 >> 1;
                                                                                                                    i12 = i13 & 1;
                                                                                                                    break;
                                                                                                                case 10089:
                                                                                                                    i21 = iArr2[11];
                                                                                                                    break;
                                                                                                                default:
                                                                                                                    switch (i10) {
                                                                                                                        case 10092:
                                                                                                                            i17 = iArr[3];
                                                                                                                            i13 = i17 >> 4;
                                                                                                                            i12 = i13 & 1;
                                                                                                                            break;
                                                                                                                        case 10093:
                                                                                                                            i18 = iArr[3];
                                                                                                                            i13 = i18 >> 5;
                                                                                                                            i12 = i13 & 1;
                                                                                                                            break;
                                                                                                                        case 10094:
                                                                                                                            i11 = iArr[6];
                                                                                                                            i12 = i11 & 3;
                                                                                                                            break;
                                                                                                                        case 10095:
                                                                                                                            i11 = iArr2[6];
                                                                                                                            i12 = i11 & 3;
                                                                                                                            break;
                                                                                                                        case 10096:
                                                                                                                            i20 = iArr2[9];
                                                                                                                            break;
                                                                                                                        case 10097:
                                                                                                                            i30 = iArr2[19];
                                                                                                                            i11 = i30 >> 5;
                                                                                                                            i12 = i11 & 3;
                                                                                                                            break;
                                                                                                                        case 10098:
                                                                                                                            i28 = iArr[3];
                                                                                                                            i11 = i28 >> 2;
                                                                                                                            i12 = i11 & 3;
                                                                                                                            break;
                                                                                                                        default:
                                                                                                                            switch (i10) {
                                                                                                                                case 10103:
                                                                                                                                    i28 = iArr2[6];
                                                                                                                                    i11 = i28 >> 2;
                                                                                                                                    i12 = i11 & 3;
                                                                                                                                    break;
                                                                                                                                case 10104:
                                                                                                                                    i17 = iArr2[6];
                                                                                                                                    i13 = i17 >> 4;
                                                                                                                                    i12 = i13 & 1;
                                                                                                                                    break;
                                                                                                                                case 10105:
                                                                                                                                    i18 = iArr2[6];
                                                                                                                                    i13 = i18 >> 5;
                                                                                                                                    i12 = i13 & 1;
                                                                                                                                    break;
                                                                                                                                case 10106:
                                                                                                                                    i14 = iArr2[13];
                                                                                                                                    i13 = i14 >> 1;
                                                                                                                                    i12 = i13 & 1;
                                                                                                                                    break;
                                                                                                                                case 10107:
                                                                                                                                    i15 = iArr2[13];
                                                                                                                                    i13 = i15 >> 2;
                                                                                                                                    i12 = i13 & 1;
                                                                                                                                    break;
                                                                                                                                case 10108:
                                                                                                                                    i21 = iArr2[34];
                                                                                                                                    break;
                                                                                                                                case 10109:
                                                                                                                                    i13 = iArr2[36];
                                                                                                                                    i12 = i13 & 1;
                                                                                                                                    break;
                                                                                                                                case 10110:
                                                                                                                                    i14 = iArr2[36];
                                                                                                                                    i13 = i14 >> 1;
                                                                                                                                    i12 = i13 & 1;
                                                                                                                                    break;
                                                                                                                                case 10111:
                                                                                                                                    i15 = iArr2[36];
                                                                                                                                    i13 = i15 >> 2;
                                                                                                                                    i12 = i13 & 1;
                                                                                                                                    break;
                                                                                                                                case 10112:
                                                                                                                                    i26 = iArr[8];
                                                                                                                                    i11 = i26 >> 4;
                                                                                                                                    i12 = i11 & 3;
                                                                                                                                    break;
                                                                                                                                case 10113:
                                                                                                                                    i11 = iArr2[37];
                                                                                                                                    i12 = i11 & 3;
                                                                                                                                    break;
                                                                                                                                default:
                                                                                                                                    if (i10 != 10134) {
                                                                                                                                        if (i10 != 10135) {
                                                                                                                                            switch (i10) {
                                                                                                                                                case 10138:
                                                                                                                                                    if (((iArr2[6] >> 7) & 1) == 0) {
                                                                                                                                                        i12 = 1;
                                                                                                                                                        break;
                                                                                                                                                    } else {
                                                                                                                                                        i12 = 0;
                                                                                                                                                        break;
                                                                                                                                                    }
                                                                                                                                                case 10139:
                                                                                                                                                    i20 = iArr2[22];
                                                                                                                                                    break;
                                                                                                                                                case 10140:
                                                                                                                                                    if (iArr2[1] == 40) {
                                                                                                                                                        i21 = iArr2[22];
                                                                                                                                                        break;
                                                                                                                                                    }
                                                                                                                                                    i12 = 0;
                                                                                                                                                    break;
                                                                                                                                                default:
                                                                                                                                                    switch (i10) {
                                                                                                                                                        case 10148:
                                                                                                                                                            i18 = iArr2[28];
                                                                                                                                                            i13 = i18 >> 5;
                                                                                                                                                            i12 = i13 & 1;
                                                                                                                                                            break;
                                                                                                                                                        case 10149:
                                                                                                                                                            if (iArr2[1] != 40) {
                                                                                                                                                                i21 = iArr2[22];
                                                                                                                                                                break;
                                                                                                                                                            }
                                                                                                                                                            i12 = 0;
                                                                                                                                                            break;
                                                                                                                                                        case 10150:
                                                                                                                                                            i26 = iArr2[5];
                                                                                                                                                            i11 = i26 >> 4;
                                                                                                                                                            i12 = i11 & 3;
                                                                                                                                                            break;
                                                                                                                                                        default:
                                                                                                                                                            if (i10 == 18) {
                                                                                                                                                                i17 = iArr2[3];
                                                                                                                                                            } else if (i10 == 10039) {
                                                                                                                                                                i16 = iArr2[8];
                                                                                                                                                                break;
                                                                                                                                                            } else {
                                                                                                                                                                if (i10 == 10045) {
                                                                                                                                                                    i13 = iArr2[22];
                                                                                                                                                                } else if (i10 == 10101) {
                                                                                                                                                                    i17 = iArr2[22];
                                                                                                                                                                } else if (i10 == 10122) {
                                                                                                                                                                    i20 = iArr2[6];
                                                                                                                                                                    break;
                                                                                                                                                                } else if (i10 != 10142) {
                                                                                                                                                                    if (i10 == 10146) {
                                                                                                                                                                        i20 = iArr[8];
                                                                                                                                                                        break;
                                                                                                                                                                    }
                                                                                                                                                                    i12 = 0;
                                                                                                                                                                    break;
                                                                                                                                                                } else {
                                                                                                                                                                    i13 = iArr[9];
                                                                                                                                                                }
                                                                                                                                                                i12 = i13 & 1;
                                                                                                                                                                break;
                                                                                                                                                            }
                                                                                                                                                            i13 = i17 >> 4;
                                                                                                                                                            i12 = i13 & 1;
                                                                                                                                                    }
                                                                                                                                            }
                                                                                                                                        } else {
                                                                                                                                            i16 = iArr2[29];
                                                                                                                                        }
                                                                                                                                        i13 = i16 >> 3;
                                                                                                                                        i12 = i13 & 1;
                                                                                                                                    } else {
                                                                                                                                        i27 = iArr2[5];
                                                                                                                                        i11 = i27 >> 6;
                                                                                                                                        i12 = i11 & 3;
                                                                                                                                    }
                                                                                                                            }
                                                                                                                    }
                                                                                                            }
                                                                                                    }
                                                                                            }
                                                                                    }
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                        }
                                }
                        }
                    } else {
                        i21 = iArr2[2];
                    }
                    i13 = i21 >> 7;
                    i12 = i13 & 1;
                } else {
                    i20 = iArr2[2];
                }
                i13 = i20 >> 6;
                i12 = i13 & 1;
        }
        if (iArr2[1] == 42 && (i10 == 117 || i10 == 119 || i10 == 120)) {
            return 0;
        }
        if (i10 == 61) {
            i19 = iArr2[15] >> 6;
        } else {
            if (i10 != 84) {
                return (i10 == 111 || i10 == 114) ? ((iArr2[6] >> 2) & 3) == 0 ? 0 : 1 : i12;
            }
            i19 = iArr[8];
        }
        return i19 & 1;
    }

    public static String u(Context context) {
        try {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.HOME");
            ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
            return resolveInfoResolveActivity == null ? "" : resolveInfoResolveActivity.activityInfo.packageName;
        } catch (Exception unused) {
            return "";
        }
    }

    public static ArrayList v(r rVar) {
        ResponseBody responseBodyBody;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(rVar.f2740b);
        sb2.append("/b/api/share/get?limit=100&next=1&orderBy=file_name&orderDirection=asc&shareKey=");
        sb2.append(rVar.f2744f);
        sb2.append("&SharePwd=");
        sb2.append(URLEncoder.encode(rVar.f2742d.trim(), HTTP.UTF_8));
        sb2.append("&ParentFileId=");
        sb2.append(rVar.f2750m);
        sb2.append("&Page=");
        String strS = android.support.v4.media.session.a.s(sb2, rVar.f2751n, "&event=homeListFile&operateType=1&orderBy=create_at&orderDirection=desc");
        String strString = "";
        Response responseA = null;
        int i10 = 0;
        do {
            if (i10 != 0) {
                if (i10 > 2) {
                    break;
                }
                f0.f4019a.f11674b = HttpUrl.get(f0.a(i10));
            } else {
                f0.f4019a.f11674b = null;
            }
            i10++;
            try {
                l9.a aVar = new l9.a(strS);
                aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                aVar.f11017i.b("Referer", rVar.f2741c);
                aVar.f11017i.b("App-Version", "3");
                aVar.f11017i.b("Platform", "web");
                aVar.f11017i.b("Accept-Language", "zh-CN,zh;q=0.9");
                responseA = aVar.a();
            } catch (Exception unused) {
            }
            if (responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) {
                strString = responseBodyBody.string();
            } else {
                responseA = null;
            }
        } while (responseA == null);
        if (responseA == null || strString.isEmpty()) {
            throw new Exception("获取文件失败");
        }
        if (!strString.contains("code")) {
            throw new Exception("请求失败");
        }
        s sVarG = d.b.b0(strString).g();
        if (sVarG.o("code").e() != 0) {
            throw new Exception(sVarG.o("message").i());
        }
        z7.o oVarF = sVarG.o("data").g().o("InfoList").f();
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < oVarF.f19478a.size(); i11++) {
            arrayList.add(new b6(new q(oVarF.l(i11).g())));
        }
        if (arrayList.size() >= 100) {
            rVar.f2752o = true;
        } else {
            rVar.f2752o = false;
        }
        return arrayList;
    }

    public static WpPathBean w(r rVar, q qVar, n5 n5Var) throws Exception {
        WpPathBean wpPathBean;
        WpPathBean wpPathBean2 = new WpPathBean();
        wpPathBean2.name = "000转存";
        try {
            c(new WpPathBean("我的文件", "0"), wpPathBean2, n5Var);
            s sVar = new s();
            sVar.l("fileID", Integer.valueOf(qVar.f1129a));
            sVar.l("size", Integer.valueOf(qVar.f1131c));
            sVar.m("etag", (String) qVar.f1134f);
            sVar.l("type", Integer.valueOf(qVar.f1130b));
            sVar.l("parentFileID", Integer.valueOf(wpPathBean2.path));
            sVar.m("fileName", (String) qVar.f1132d);
            sVar.l("driveID", 0);
            z7.o oVar = new z7.o();
            oVar.k(sVar);
            s sVar2 = new s();
            sVar2.j("fileList", oVar);
            sVar2.m("shareKey", rVar.f2744f);
            if (rVar.f2742d.isEmpty()) {
                sVar2.j("sharePwd", null);
            } else {
                sVar2.m("sharePwd", rVar.f2742d);
            }
            sVar2.l("currentLevel", 1);
            sVar2.j("superAdmin", null);
            String strR = R(n5Var, j.f4033a.X + "/api/restful/goapi/v1/file/copy/save?" + n("/api/restful/goapi/v1/file/copy/save"), sVar2.toString(), rVar.f2741c);
            if (strR.isEmpty()) {
                m(n5Var, wpPathBean2);
                throw new Exception("转存失败");
            }
            try {
                if (d.b.b0(strR).g().o("code").e() != 0) {
                    m(n5Var, wpPathBean2);
                    throw new Exception("转存失败");
                }
                Thread.sleep(2000L);
                long jCurrentTimeMillis = System.currentTimeMillis();
                while (true) {
                    if (System.currentTimeMillis() - jCurrentTimeMillis >= 11000) {
                        wpPathBean = null;
                        break;
                    }
                    s sVarD = D(n5Var, wpPathBean2);
                    if (sVarD == null) {
                        m(n5Var, wpPathBean2);
                        throw new Exception("无转存数据");
                    }
                    if (sVarD.o("code").e() != 0) {
                        String strI = sVarD.o("message").i();
                        if (strI == null || strI.isEmpty()) {
                            strI = "出错";
                        }
                        if (strI.contains("token is expired")) {
                            strI = "登录失效，请重新选中网盘";
                        }
                        m(n5Var, wpPathBean2);
                        throw new Exception(strI);
                    }
                    ArrayList arrayList = new ArrayList();
                    z7.o oVarF = sVarD.o("data").g().o("InfoList").f();
                    for (int i10 = 0; i10 < oVarF.f19478a.size(); i10++) {
                        WpPathBean wpPathBean3 = new WpPathBean();
                        s sVarG = oVarF.l(i10).g();
                        wpPathBean3.jsonObject = sVarG;
                        wpPathBean3.name = sVarG.o("FileName").i();
                        wpPathBean3.path = "" + wpPathBean3.jsonObject.o("FileId").h();
                        boolean z = wpPathBean3.jsonObject.o("Type").e() == 1;
                        wpPathBean3.is_dir = z;
                        if (!z) {
                            long jH = wpPathBean3.jsonObject.o("Size").h();
                            wpPathBean3.size_long = jH;
                            wpPathBean3.size_txt = p000if.a.D0(jH);
                        }
                        String strI2 = wpPathBean3.jsonObject.o("CreateAt").i();
                        wpPathBean3.time_txt = strI2;
                        String strReplace = strI2.replace("T", " ");
                        wpPathBean3.time_txt = strReplace;
                        int iIndexOf = strReplace.indexOf(Marker.ANY_NON_NULL_MARKER);
                        if (iIndexOf != -1) {
                            wpPathBean3.time_txt = wpPathBean3.time_txt.substring(0, iIndexOf);
                        }
                        arrayList.add(wpPathBean3);
                    }
                    if (!arrayList.isEmpty()) {
                        wpPathBean = (WpPathBean) arrayList.get(0);
                        break;
                    }
                    Thread.sleep(2000L);
                }
                if (wpPathBean == null) {
                    m(n5Var, wpPathBean2);
                    throw new Exception("转存超时");
                }
                x(n5Var, wpPathBean);
                if (wpPathBean.downUrl.startsWith("http")) {
                    m(n5Var, wpPathBean2);
                    return wpPathBean;
                }
                m(n5Var, wpPathBean2);
                throw new Exception("获取下载地址失败");
            } catch (Exception unused) {
                m(n5Var, wpPathBean2);
                throw new Exception("转存失败");
            }
        } catch (Exception unused2) {
            throw new Exception("创建转存目录出错");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    public static void x(n5 n5Var, WpPathBean wpPathBean) throws Exception {
        String str = wpPathBean.is_dir;
        String string = "";
        try {
            if (str != 0) {
                StringBuilder sb2 = new StringBuilder();
                DecimalFormat decimalFormat = k.f4034u0;
                sb2.append(j.f4033a.X);
                sb2.append("/b/api/v2/file/batch_download_info?");
                sb2.append(n("/b/api/v2/file/batch_download_info"));
                String string2 = sb2.toString();
                JSONArray jSONArray = new JSONArray();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("fileId", Integer.valueOf(wpPathBean.path));
                jSONArray.put(jSONObject);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("fileIdList", jSONArray);
                string = jSONObject2.toString();
                str = string2;
            } else {
                StringBuilder sb3 = new StringBuilder();
                DecimalFormat decimalFormat2 = k.f4034u0;
                sb3.append(j.f4033a.X);
                sb3.append("/b/api/v2/file/download_info?");
                sb3.append(n("/b/api/v2/file/download_info"));
                String string3 = sb3.toString();
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("driveId", 0);
                jSONObject3.put("etag", wpPathBean.jsonObject.o("Etag").i());
                jSONObject3.put("fileId", wpPathBean.jsonObject.o("FileId").h());
                jSONObject3.put("fileName", wpPathBean.jsonObject.o("FileName").i());
                jSONObject3.put("s3keyFlag", wpPathBean.jsonObject.o("S3KeyFlag").i());
                jSONObject3.put("size", wpPathBean.jsonObject.o("Size").h());
                jSONObject3.put("type", wpPathBean.jsonObject.o("Type").h());
                string = jSONObject3.toString();
                str = string3;
            }
        } catch (Exception unused) {
        }
        if (string.isEmpty()) {
            throw new Exception("组包出错");
        }
        StringBuilder sb4 = new StringBuilder();
        DecimalFormat decimalFormat3 = k.f4034u0;
        sb4.append(j.f4033a.W);
        sb4.append("/?homeFilePath=");
        sb4.append(wpPathBean.path);
        String strR = R(n5Var, str, string, sb4.toString());
        if (strR.isEmpty()) {
            throw new Exception("请求出错");
        }
        try {
            s sVarG = d.b.b0(strR).g();
            if (sVarG.o("code").e() != 0) {
                String strI = sVarG.o("message").i();
                if (strI == null || strI.isEmpty()) {
                    strI = "获取失败";
                }
                if (strI.contains("token is expired")) {
                    strI = "登录失效，请重新选中网盘";
                }
                throw new Exception(strI);
            }
            String str2 = sVarG.q("data").p("dispatchList").l(0).g().o(RequestParameters.PREFIX).i() + sVarG.q("data").o("downloadPath").i();
            wpPathBean.downUrlReferer = str2;
            wpPathBean.downUrl = str2;
        } catch (Exception unused2) {
            throw new Exception("获取失败");
        }
    }

    public static String y(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            DigestInputStream digestInputStream = new DigestInputStream(fileInputStream, messageDigest);
            while (digestInputStream.read(new byte[8192]) > 0) {
            }
            byte[] bArrDigest = messageDigest.digest();
            digestInputStream.close();
            fileInputStream.close();
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                sb2.append(String.format("%02x", Integer.valueOf(b10 & 255)));
            }
            return sb2.toString();
        } catch (IOException e7) {
            e = e7;
            e.printStackTrace();
            return "";
        } catch (NoSuchAlgorithmException e10) {
            e = e10;
            e.printStackTrace();
            return "";
        }
    }

    public static ComponentName z(AppStart appStart, String str) {
        List<ResolveInfo> listQueryIntentActivities;
        try {
            PackageManager packageManager = appStart.getPackageManager();
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.HOME");
            listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        } catch (Throwable unused) {
        }
        if (listQueryIntentActivities.isEmpty()) {
            return null;
        }
        for (int i10 = 0; i10 < listQueryIntentActivities.size(); i10++) {
            ResolveInfo resolveInfo = listQueryIntentActivities.get(i10);
            if (str.equals(resolveInfo.activityInfo.packageName)) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                return new ComponentName(activityInfo.packageName, activityInfo.name);
            }
        }
        return null;
    }

    public abstract void t(t tVar, float f10, float f11);
}
