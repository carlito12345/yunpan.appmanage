package com.bumptech.glide;

import android.animation.TimeInterpolator;
import android.app.ActivityManager;
import android.app.IActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.hardware.input.IInputManager;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Environment;
import android.os.Message;
import android.provider.Settings;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.PopupWindow;
import androidx.fragment.app.c2;
import ba.r;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.bean.FtpCopyProgressBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.bean.WpTaskBean;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.db.ApkFileBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.shizuku.CmdResult;
import com.yunpan.appmanage.shizuku.IUserService;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.f0;
import com.yunpan.appmanage.util.v;
import fa.n0;
import fa.o0;
import io.github.rosemoe.sora.widget.CodeEditor;
import j$.nio.charset.StandardCharsets;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.RoundingMode;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import u1.q;
import w.p2;
import w.z;
import wa.t;
import x0.m1;
import x9.b6;
import x9.n5;
import z7.s;

/* loaded from: classes.dex */
public abstract class d implements m1 {

    /* renamed from: a, reason: collision with root package name */
    public static Method f3298a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f3299b;

    /* renamed from: c, reason: collision with root package name */
    public static Field f3300c;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f3301d;

    public static int A(byte[] bArr, int i10, int i11, int i12, int i13) {
        int i14 = i13 + i10;
        int i15 = i12 + i10;
        while (i15 < i14 && bArr[i15] == bArr[i15 - i11]) {
            i15++;
        }
        return i15 - i10;
    }

    public static String B(String str) throws Throwable {
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
            try {
                String line = bufferedReader2.readLine();
                if (line != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException unused) {
                    }
                    return line;
                }
                try {
                    bufferedReader2.close();
                } catch (IOException unused2) {
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = bufferedReader2;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String C(String str) throws Throwable {
        String property;
        Properties properties;
        FileInputStream fileInputStream;
        if (str != null && !str.isEmpty()) {
            FileInputStream fileInputStream2 = null;
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                property = (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "");
            } catch (Exception unused) {
                property = null;
            }
            if (property != null && !property.isEmpty()) {
                return property;
            }
            try {
                property = B(str);
            } catch (IOException unused2) {
            }
            if (property != null && !property.isEmpty()) {
                return property;
            }
            try {
                try {
                    properties = new Properties();
                    fileInputStream = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
                } catch (IOException unused3) {
                }
                try {
                    properties.load(fileInputStream);
                    property = properties.getProperty(str, "");
                    fileInputStream.close();
                    if (property != null && !property.isEmpty()) {
                        return property;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return "";
    }

    public static void D(ContentResolver contentResolver, String str, String str2, String str3, String str4) {
        if (str.toLowerCase().equals("secure")) {
            if (str2.toLowerCase().equals("int")) {
                Settings.Secure.putInt(contentResolver, str3, Integer.valueOf(str4).intValue());
                return;
            }
            if (str2.toLowerCase().equals("long")) {
                Settings.Secure.putLong(contentResolver, str3, Long.valueOf(str4).longValue());
                return;
            } else if (str2.toLowerCase().equals("string")) {
                Settings.Secure.putString(contentResolver, str3, String.valueOf(str4));
                return;
            } else {
                if (str2.toLowerCase().equals("float")) {
                    Settings.Secure.putFloat(contentResolver, str3, Float.valueOf(str4).floatValue());
                    return;
                }
                return;
            }
        }
        if (str.toLowerCase().equals("system")) {
            if (str2.toLowerCase().equals("int")) {
                System.out.getClass();
                Settings.System.putInt(contentResolver, str3, Integer.valueOf(str4).intValue());
                return;
            } else if (str2.toLowerCase().equals("long")) {
                Settings.System.putLong(contentResolver, str3, Long.valueOf(str4).longValue());
                return;
            } else if (str2.toLowerCase().equals("string")) {
                Settings.System.putString(contentResolver, str3, String.valueOf(str4));
                return;
            } else {
                if (str2.toLowerCase().equals("float")) {
                    Settings.System.putFloat(contentResolver, str3, Float.valueOf(str4).floatValue());
                    return;
                }
                return;
            }
        }
        if (str.toLowerCase().equals("global")) {
            if (str2.toLowerCase().equals("int")) {
                Settings.Global.putInt(contentResolver, str3, Integer.valueOf(str4).intValue());
                return;
            }
            if (str2.toLowerCase().equals("long")) {
                Settings.Global.putLong(contentResolver, str3, Long.valueOf(str4).longValue());
            } else if (str2.toLowerCase().equals("string")) {
                Settings.Global.putString(contentResolver, str3, String.valueOf(str4));
            } else if (str2.toLowerCase().equals("float")) {
                Settings.Global.putFloat(contentResolver, str3, Float.valueOf(str4).floatValue());
            }
        }
    }

    public static void E(ContentResolver contentResolver, String str, String str2, String str3, String str4, String str5, String str6) {
        if (str.toLowerCase().equals("secure")) {
            if (str2.toLowerCase().equals("int")) {
                if (String.valueOf(Settings.Secure.getInt(contentResolver, str3)).equals(str4)) {
                    Settings.Secure.putInt(contentResolver, str3, Integer.valueOf(str6).intValue());
                    return;
                } else {
                    Settings.Secure.putInt(contentResolver, str3, Integer.valueOf(str5).intValue());
                    return;
                }
            }
            if (str2.toLowerCase().equals("long")) {
                if (String.valueOf(Settings.Secure.getLong(contentResolver, str3)).equals(str4)) {
                    Settings.Secure.putLong(contentResolver, str3, Long.valueOf(str6).longValue());
                    return;
                } else {
                    Settings.Secure.putLong(contentResolver, str3, Long.valueOf(str5).longValue());
                    return;
                }
            }
            if (str2.toLowerCase().equals("string")) {
                if (String.valueOf(Settings.Secure.getString(contentResolver, str3)).equals(str4)) {
                    Settings.Secure.putString(contentResolver, str3, String.valueOf(str6));
                    return;
                } else {
                    Settings.Secure.putString(contentResolver, str3, String.valueOf(str5));
                    return;
                }
            }
            if (str2.toLowerCase().equals("float")) {
                if (String.valueOf(Settings.Secure.getFloat(contentResolver, str3)).equals(str4)) {
                    Settings.Secure.putFloat(contentResolver, str3, Float.valueOf(str6).floatValue());
                    return;
                } else {
                    Settings.Secure.putFloat(contentResolver, str3, Float.valueOf(str5).floatValue());
                    return;
                }
            }
            return;
        }
        if (str.toLowerCase().equals("system")) {
            if (str2.toLowerCase().equals("int")) {
                if (String.valueOf(Settings.System.getInt(contentResolver, str3)).equals(str4)) {
                    Settings.System.putInt(contentResolver, str3, Integer.valueOf(str6).intValue());
                    return;
                } else {
                    Settings.System.putInt(contentResolver, str3, Integer.valueOf(str5).intValue());
                    return;
                }
            }
            if (str2.toLowerCase().equals("long")) {
                if (String.valueOf(Settings.System.getLong(contentResolver, str3)).equals(str4)) {
                    Settings.System.putLong(contentResolver, str3, Long.valueOf(str6).longValue());
                    return;
                } else {
                    Settings.System.putLong(contentResolver, str3, Long.valueOf(str5).longValue());
                    return;
                }
            }
            if (str2.toLowerCase().equals("string")) {
                if (String.valueOf(Settings.System.getString(contentResolver, str3)).equals(str4)) {
                    Settings.System.putString(contentResolver, str3, String.valueOf(str6));
                    return;
                } else {
                    Settings.System.putString(contentResolver, str3, String.valueOf(str5));
                    return;
                }
            }
            if (str2.toLowerCase().equals("float")) {
                if (String.valueOf(Settings.System.getFloat(contentResolver, str3)).equals(str4)) {
                    Settings.System.putFloat(contentResolver, str3, Float.valueOf(str6).floatValue());
                    return;
                } else {
                    Settings.System.putFloat(contentResolver, str3, Float.valueOf(str5).floatValue());
                    return;
                }
            }
            return;
        }
        if (str.toLowerCase().equals("global")) {
            if (str2.toLowerCase().equals("int")) {
                if (String.valueOf(Settings.Global.getInt(contentResolver, str3)).equals(str4)) {
                    Settings.Global.putInt(contentResolver, str3, Integer.valueOf(str6).intValue());
                    return;
                } else {
                    Settings.Global.putInt(contentResolver, str3, Integer.valueOf(str5).intValue());
                    return;
                }
            }
            if (str2.toLowerCase().equals("long")) {
                if (String.valueOf(Settings.Global.getLong(contentResolver, str3)).equals(str4)) {
                    Settings.Global.putLong(contentResolver, str3, Long.valueOf(str6).longValue());
                    return;
                } else {
                    Settings.Global.putLong(contentResolver, str3, Long.valueOf(str5).longValue());
                    return;
                }
            }
            if (str2.toLowerCase().equals("string")) {
                if (String.valueOf(Settings.Global.getString(contentResolver, str3)).equals(str4)) {
                    Settings.Global.putString(contentResolver, str3, String.valueOf(str6));
                    return;
                } else {
                    Settings.Global.putString(contentResolver, str3, String.valueOf(str5));
                    return;
                }
            }
            if (str2.toLowerCase().equals("float")) {
                if (String.valueOf(Settings.Global.getFloat(contentResolver, str3)).equals(str4)) {
                    Settings.Global.putFloat(contentResolver, str3, Float.valueOf(str6).floatValue());
                } else {
                    Settings.Global.putFloat(contentResolver, str3, Float.valueOf(str5).floatValue());
                }
            }
        }
    }

    public static ma.l F(String str, String str2, ag.h hVar, ma.k kVar) throws NumberFormatException {
        int i10;
        int i11 = -1;
        String[] strArrSplit = str.split(">>", -1);
        if (strArrSplit.length >= 5 && "223".equals(strArrSplit[0]) && str2.equals(strArrSplit[2])) {
            if ("INSTALL".equals(strArrSplit[1])) {
                String str3 = strArrSplit[4];
                if ("confirm_pending".equals(str3)) {
                    hVar.f680a = true;
                    kVar.j();
                } else {
                    if ("denied".equals(str3)) {
                        return new ma.l(2, "电视上点了拒绝", 0);
                    }
                    if ("installed".equals(str3)) {
                        return new ma.l(1, "电视直接回报已安装", 0);
                    }
                    if ("installing".equals(str3) && !hVar.f680a) {
                        kVar.r();
                        return new ma.l(4, "电视正在安装其它应用", 0);
                    }
                }
            } else if ("PROGRESS".equals(strArrSplit[1])) {
                try {
                    i10 = Integer.parseInt(strArrSplit[4].trim());
                } catch (RuntimeException unused) {
                    i10 = -1;
                }
                if (strArrSplit.length > 5) {
                    try {
                        i11 = Integer.parseInt(strArrSplit[5].trim());
                    } catch (RuntimeException unused2) {
                    }
                }
                kVar.e(i11, i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 5 ? "未知" : "已完成" : "安装中" : "失败" : "下载中");
                if (i10 == 5) {
                    return new ma.l(1, "阶段 5", 0);
                }
                if (i10 == 2) {
                    return new ma.l(3, "电视下载或安装失败", 0);
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x01c9, code lost:
    
        r3 = java.lang.System.currentTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01d3, code lost:
    
        if ((r3 - r13) <= com.hsae.autosdk.popup.constant.PopupConst.DURATION_POPUP) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01d5, code lost:
    
        e0(r1, "150>>");
        r13 = r3;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0285 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.util.Locale] */
    /* JADX WARN: Type inference failed for: r12v24 */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v6, types: [ma.l] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ma.l G(String str, ma.k kVar) {
        FileInputStream fileInputStream;
        MessageDigest messageDigest;
        FileInputStream fileInputStream2;
        Socket socket;
        ma.l lVar;
        int i10;
        int i11;
        char c7 = 1;
        int i12 = 0;
        if (!a0.g(str)) {
            return new ma.l(6, "APK 文件不存在", 0);
        }
        File file = new File(str);
        try {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
                fileInputStream2 = new FileInputStream(file);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e7) {
            e = e7;
        } catch (NoSuchAlgorithmException e10) {
            e = e10;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i13 = fileInputStream2.read(bArr);
                if (i13 <= 0) {
                    break;
                }
                messageDigest.update(bArr, 0, i13);
            }
            String strH0 = h0(messageDigest.digest());
            try {
                fileInputStream2.close();
            } catch (IOException unused) {
            }
            ma.l lVar2 = Locale.US;
            double length = file.length();
            Double.isNaN(length);
            String str2 = String.format(lVar2, "%.2f", Double.valueOf(length / 1048576.0d));
            try {
                ef.b bVar = new ef.b(file);
                try {
                    bVar.M();
                    ff.c cVar = bVar.f4963e;
                    bVar.close();
                    StringBuilder sb2 = new StringBuilder("http://");
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                    sb2.append(kVar2.f4052i0);
                    sb2.append(":");
                    try {
                        String str3 = android.support.v4.media.session.a.s(sb2, kVar2.f4054j0, "/path") + URLEncoder.encode(str, HTTP.UTF_8);
                        String str4 = kVar2.f4052i0;
                        String str5 = cVar.f5813a;
                        String str6 = cVar.f5814b;
                        long jLongValue = cVar.f5817e.longValue();
                        if (str3.isEmpty() || str5.isEmpty()) {
                            return new ma.l(6, "tvIp / apkUrl / packageName 不能为空", 0);
                        }
                        if (str2.isEmpty()) {
                            str2 = "20";
                        }
                        try {
                            try {
                                Socket socket2 = new Socket();
                                try {
                                    try {
                                        if (str4.isEmpty()) {
                                            str4 = "localhost";
                                        }
                                        socket2.connect(new InetSocketAddress(str4, 6553), 5000);
                                        socket2.setSoTimeout(1000);
                                        socket2.setTcpNoDelay(true);
                                        socket2.setKeepAlive(true);
                                        OutputStream outputStream = socket2.getOutputStream();
                                        InputStream inputStream = socket2.getInputStream();
                                        e0(outputStream, "159>>1>>0");
                                        String[] strArr = {"223", "INSTALL", str5, str6, str3, "2", String.valueOf(jLongValue), str2, strH0.toUpperCase(lVar2), "", "", M(str3)};
                                        StringBuilder sb3 = new StringBuilder();
                                        for (int i14 = 0; i14 < 12; i14++) {
                                            if (i14 > 0) {
                                                sb3.append(">>");
                                            }
                                            sb3.append(strArr[i14]);
                                        }
                                        e0(outputStream, sb3.toString());
                                        long jCurrentTimeMillis = System.currentTimeMillis() + 240000;
                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
                                        byte[] bArr2 = new byte[65536];
                                        ag.h hVar = new ag.h();
                                        loop2: while (true) {
                                            if (System.currentTimeMillis() >= jCurrentTimeMillis) {
                                                lVar = new ma.l(5, "等待 240000 ms 仍未收到终态", 0);
                                                break;
                                            }
                                            try {
                                                i11 = inputStream.read(bArr2);
                                            } catch (SocketTimeoutException unused2) {
                                            }
                                            if (i11 < 0) {
                                                lVar = new ma.l(6, "连接被电视关闭", i12);
                                                break;
                                            }
                                            byteArrayOutputStream.write(bArr2, i12, i11);
                                            while (true) {
                                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                                if (byteArray.length < 4) {
                                                    break;
                                                }
                                                i10 = ((byteArray[i12] & 255) << 24) | ((byteArray[c7] & 255) << 16) | ((byteArray[2] & 255) << 8) | (byteArray[3] & 255);
                                                if (i10 <= 0 || i10 >= 1048576) {
                                                    break loop2;
                                                }
                                                int i15 = i10 + 4;
                                                if (byteArray.length < i15) {
                                                    break;
                                                }
                                                OutputStream outputStream2 = outputStream;
                                                String str7 = new String(byteArray, 4, i10, StandardCharsets.UTF_8);
                                                byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                                                byteArrayOutputStream.reset();
                                                if (byteArray2.length > i15) {
                                                    byteArrayOutputStream.write(byteArray2, i15, byteArray2.length - i15);
                                                }
                                                lVar = F(str7, str5, hVar, kVar);
                                                if (lVar == null) {
                                                    outputStream = outputStream2;
                                                    c7 = 1;
                                                    i12 = 0;
                                                } else if (v.f4106a.T == 3) {
                                                    try {
                                                        Thread.sleep(3020L);
                                                    } catch (Exception unused3) {
                                                    }
                                                }
                                            }
                                            c7 = 1;
                                            i12 = 0;
                                        }
                                        lVar = new ma.l(6, "帧长度异常：" + i10, 0);
                                        socket2.close();
                                        lVar2 = lVar;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        socket = socket2;
                                        if (socket != null) {
                                        }
                                        throw th;
                                    }
                                } catch (IOException e11) {
                                    e = e11;
                                    socket = socket2;
                                    try {
                                        ma.l lVar3 = new ma.l(6, e.getClass().getSimpleName() + "：" + e.getMessage(), 0);
                                        if (socket == null) {
                                            return lVar3;
                                        }
                                        socket.close();
                                        lVar2 = lVar3;
                                        return lVar2;
                                    } catch (Throwable th5) {
                                        th = th5;
                                        if (socket != null) {
                                            try {
                                                socket.close();
                                            } catch (IOException unused4) {
                                            }
                                        }
                                        throw th;
                                    }
                                }
                            } catch (IOException unused5) {
                                return lVar2;
                            }
                        } catch (IOException e12) {
                            e = e12;
                            socket = null;
                        } catch (Throwable th6) {
                            th = th6;
                            socket = null;
                        }
                        return lVar2;
                    } catch (Exception unused6) {
                        return new ma.l(6, "url编码出错", 0);
                    }
                } finally {
                }
            } catch (Exception unused7) {
                return new ma.l(6, "无法解析此 apk", 0);
            }
        } catch (IOException e13) {
            e = e13;
            throw new IllegalStateException("读取 APK 失败：" + file, e);
        } catch (NoSuchAlgorithmException e14) {
            e = e14;
            throw new IllegalStateException("当前环境不支持 MD5", e);
        } catch (Throwable th7) {
            th = th7;
            fileInputStream = fileInputStream2;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException unused8) {
                }
            }
            throw th;
        }
    }

    public static boolean H(int i10) {
        if (i10 != 0) {
            ThreadLocal threadLocal = p0.a.f12538a;
            double[] dArr = (double[]) threadLocal.get();
            if (dArr == null) {
                dArr = new double[3];
                threadLocal.set(dArr);
            }
            int iRed = Color.red(i10);
            int iGreen = Color.green(i10);
            int iBlue = Color.blue(i10);
            if (dArr.length != 3) {
                throw new IllegalArgumentException("outXyz must have a length of 3.");
            }
            double d10 = iRed;
            Double.isNaN(d10);
            double d11 = d10 / 255.0d;
            double dPow = d11 < 0.04045d ? d11 / 12.92d : Math.pow((d11 + 0.055d) / 1.055d, 2.4d);
            double d12 = iGreen;
            Double.isNaN(d12);
            double d13 = d12 / 255.0d;
            double dPow2 = d13 < 0.04045d ? d13 / 12.92d : Math.pow((d13 + 0.055d) / 1.055d, 2.4d);
            double d14 = iBlue;
            Double.isNaN(d14);
            double d15 = d14 / 255.0d;
            double dPow3 = d15 < 0.04045d ? d15 / 12.92d : Math.pow((d15 + 0.055d) / 1.055d, 2.4d);
            dArr[0] = ((0.1805d * dPow3) + (0.3576d * dPow2) + (0.4124d * dPow)) * 100.0d;
            double d16 = ((0.0722d * dPow3) + (0.7152d * dPow2) + (0.2126d * dPow)) * 100.0d;
            dArr[1] = d16;
            dArr[2] = ((dPow3 * 0.9505d) + (dPow2 * 0.1192d) + (dPow * 0.0193d)) * 100.0d;
            if (d16 / 100.0d > 0.5d) {
                return true;
            }
        }
        return false;
    }

    public static boolean I(String str, String str2) {
        return str.startsWith(str2.concat("(")) && str.endsWith(")");
    }

    public static boolean J(String[] strArr) {
        for (String str : strArr) {
            if (!TextUtils.isEmpty(C(str))) {
                return true;
            }
        }
        return false;
    }

    public static int K(int i10, float f10, int i11) {
        return p0.a.b(p0.a.d(i11, Math.round(Color.alpha(i11) * f10)), i10);
    }

    public static int L(int i10, RoundingMode roundingMode) {
        if (i10 <= 0) {
            throw new IllegalArgumentException(g.b.i("x (", i10, ") must be > 0"));
        }
        switch (w7.c.f17625a[roundingMode.ordinal()]) {
            case 1:
                p000if.a.l((i10 > 0) & (((i10 + (-1)) & i10) == 0));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i10 - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i10);
                return (31 - iNumberOfLeadingZeros) + ((((-1257966797) >>> iNumberOfLeadingZeros) - i10) >>> 31);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i10);
    }

    public static String M(String str) {
        try {
            return h0(MessageDigest.getInstance("MD5").digest(str.getBytes(StandardCharsets.UTF_8)));
        } catch (NoSuchAlgorithmException e7) {
            throw new IllegalStateException("当前环境不支持 MD5", e7);
        }
    }

    public static dh.j N(n5 n5Var) throws Exception {
        dh.j jVar = n5Var.B ? new dh.j(false) : new dh.j(true);
        jVar.f3251a = 20000;
        jVar.f3256f = 16000;
        long j10 = 0;
        sh.c cVar = sh.c.f14573c;
        long j11 = j10 / 1000;
        int i10 = (int) (j10 % 1000);
        if (i10 < 0) {
            i10 += 1000;
            j11--;
        }
        jVar.f4654u = sh.c.a(i10 * 1000000, j11);
        try {
            if (n5Var.f18312y.isEmpty()) {
                n5Var.f18312y = HTTP.UTF_8;
            }
            if (n5Var.f18312y.startsWith("自动")) {
                jVar.G = true;
            } else {
                jVar.f4648n = n5Var.f18312y;
            }
            jVar.c(n5Var.f18292c, n5Var.f18293d);
        } catch (Exception unused) {
        }
        if (!(zg.b.a(n5Var.f18294e) ? jVar.t("Anonymous", "") : jVar.t(n5Var.f18294e, n5Var.f18295f))) {
            throw new Exception("账号或密码错误");
        }
        jVar.y();
        if (c.L(jVar.f4645j)) {
            if (n5Var.z) {
                jVar.f4653t = 2;
                jVar.f4656w = null;
                jVar.f4655v = -1;
            } else {
                jVar.f4653t = 0;
                jVar.f4656w = null;
                jVar.f4655v = -1;
            }
            return jVar;
        }
        return null;
    }

    public static ArrayList Q(r rVar) throws Exception {
        int i10 = 0;
        Response responseA = null;
        ResponseBody responseBodyBody = null;
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
            l9.a aVar = new l9.a(rVar.f2741c);
            aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
            aVar.f11017i.b("Referer", rVar.f2741c);
            responseA = aVar.a();
            if (!responseA.isSuccessful() || (responseBodyBody = responseA.body()) == null) {
                responseA = null;
            }
        } while (responseA == null);
        if (responseA == null || responseBodyBody == null) {
            throw new Exception("打开失败");
        }
        return R(rVar, responseBodyBody.string());
    }

    public static ArrayList R(r rVar, String str) throws Exception {
        int i10;
        char c7 = 3;
        char c10 = 4;
        String str2 = rVar.f2741c;
        rVar.f2744f = str2.substring(str2.lastIndexOf("/") + 1);
        int iIndexOf = str.indexOf("?");
        if (iIndexOf != -1) {
            rVar.f2744f = rVar.f2744f.substring(0, iIndexOf);
        }
        if (rVar.f2744f.isEmpty()) {
            throw new Exception("分享地址错误");
        }
        String str3 = rVar.f2744f;
        if (str3.length() > 4) {
            String strL = android.support.v4.media.session.a.l(1, 3, str3);
            int i11 = 0;
            i10 = 0;
            int i12 = 1;
            while (i11 < strL.length()) {
                char cCharAt = strL.charAt((strL.length() - i11) - 1);
                String[] strArr = new String[62];
                strArr[0] = "Y";
                strArr[1] = "y";
                strArr[2] = "0";
                strArr[c7] = "Z";
                strArr[c10] = "z";
                strArr[5] = "N";
                strArr[6] = "n";
                strArr[7] = "M";
                strArr[8] = "I";
                strArr[9] = "6";
                strArr[10] = "m";
                strArr[11] = "W";
                strArr[12] = "w";
                strArr[13] = "1";
                strArr[14] = "X";
                strArr[15] = "x";
                strArr[16] = "L";
                strArr[17] = "l";
                strArr[18] = "K";
                strArr[19] = "7";
                strArr[20] = "k";
                strArr[21] = "i";
                strArr[22] = "U";
                strArr[23] = "u";
                strArr[24] = "2";
                strArr[25] = "V";
                strArr[26] = "v";
                strArr[27] = "J";
                strArr[28] = "j";
                strArr[29] = "8";
                strArr[30] = "G";
                strArr[31] = "g";
                strArr[32] = "F";
                strArr[33] = "S";
                strArr[34] = "s";
                strArr[35] = "3";
                strArr[36] = "T";
                strArr[37] = "t";
                strArr[38] = "H";
                strArr[39] = "h";
                strArr[40] = "f";
                strArr[41] = "E";
                strArr[42] = "e";
                strArr[43] = "D";
                strArr[44] = "Q";
                strArr[45] = "q";
                strArr[46] = "4";
                strArr[47] = "R";
                strArr[48] = "r";
                strArr[49] = "9";
                strArr[50] = "d";
                strArr[51] = "a";
                strArr[52] = "C";
                strArr[53] = "c";
                strArr[54] = "B";
                strArr[55] = "O";
                strArr[56] = "o";
                strArr[57] = "5";
                strArr[58] = "P";
                strArr[59] = "p";
                strArr[60] = "b";
                strArr[61] = "A";
                int i13 = 0;
                while (true) {
                    if (i13 >= 62) {
                        i13 = -1;
                        break;
                    }
                    if (strArr[i13].equals(String.valueOf(cCharAt))) {
                        break;
                    }
                    i13++;
                }
                i10 += i13 * i12;
                i12 *= 62;
                i11++;
                c7 = 3;
                c10 = 4;
            }
        } else {
            i10 = 0;
        }
        if (i10 == 0) {
            throw new Exception("分享地址错误");
        }
        String strSubstring = UUID.randomUUID().toString().replace("-", "").substring(0, 21);
        rVar.f2745g = strSubstring;
        StringBuilder sbD = da.b.d("devType=6&devModel=Chrome&uuid=", strSubstring, "&extra=2&timestamp=");
        sbD.append(qf.c.a("" + System.currentTimeMillis()).toUpperCase());
        sbD.append(rVar.f2742d.isEmpty() ? "" : "&code=" + rVar.f2742d);
        sbD.append("&shareId=");
        String strL2 = g.b.l(rVar.f2744f, "&type=0&offset=1&limit=60", sbD);
        l9.b bVar = new l9.b(da.b.c("https://api.ilanzou.com/unproved/recommend/list?", strL2));
        k9.a aVar = bVar.f11017i;
        aVar.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        aVar.b("Referer", "https://www.ilanzou.com/");
        MediaType mediaType = MediaType.parse("application/json;charset=UTF-8");
        bVar.f11003n = strL2;
        bVar.f11002m = mediaType;
        Response responseA = bVar.a();
        if (!responseA.isSuccessful()) {
            throw new Exception("请求失败");
        }
        ResponseBody responseBodyBody = responseA.body();
        if (responseBodyBody == null) {
            throw new Exception("请求失败");
        }
        String strString = responseBodyBody.string();
        if (!strString.contains("totalPage")) {
            throw new Exception("不存在文件");
        }
        z7.o oVarF = d.b.b0(strString).g().o("list").f();
        ArrayList arrayList = new ArrayList();
        z7.o oVarF2 = oVarF.l(0).g().o("fileList").f();
        for (int i14 = 0; i14 < oVarF2.f19478a.size(); i14++) {
            ba.j jVar = new ba.j();
            jVar.f2708e = android.support.v4.media.session.a.j(oVarF2, i14, "fileType");
            jVar.f2707d = android.support.v4.media.session.a.v(oVarF2, i14, "updTime");
            if (oVarF2.l(i14).g().o("fileId") == null) {
                jVar.f2709f = android.support.v4.media.session.a.j(oVarF2, i14, "folderId");
                jVar.f2710g = android.support.v4.media.session.a.v(oVarF2, i14, "folderName");
            } else {
                jVar.f2704a = android.support.v4.media.session.a.j(oVarF2, i14, "fileId");
                jVar.f2705b = android.support.v4.media.session.a.v(oVarF2, i14, "fileName");
                jVar.f2706c = android.support.v4.media.session.a.j(oVarF2, i14, "fileSize");
                if (p000if.a.k0(jVar.f2705b)) {
                    StringBuilder sb2 = new StringBuilder();
                    String str4 = jVar.f2705b;
                    sb2.append(str4.substring(0, str4.lastIndexOf(".")));
                    sb2.append(".apk");
                    jVar.f2705b = sb2.toString();
                }
            }
            arrayList.add(new b6(jVar));
        }
        return arrayList;
    }

    public static final Cursor S(androidx.room.p pVar, c4.d dVar) {
        ue.d.e(pVar, "db");
        ue.d.e(dVar, "sqLiteQuery");
        return pVar.query(dVar, (CancellationSignal) null);
    }

    public static long T(Context context, Uri uri, String str, long j10) throws Exception {
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursorQuery = null;
        try {
            cursorQuery = contentResolver.query(uri, new String[]{str}, null, null, null);
            return (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) ? j10 : cursorQuery.getLong(0);
        } catch (Exception e7) {
            e7.toString();
            return j10;
        } finally {
            i(cursorQuery);
        }
    }

    public static String U(Context context, Uri uri, String str) throws Exception {
        Cursor cursorQuery;
        Throwable th2;
        Exception e7;
        try {
            try {
            } catch (Exception e10) {
                e7 = e10;
            }
            try {
                cursorQuery = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
                try {
                    try {
                        if (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) {
                            i(cursorQuery);
                            return null;
                        }
                        String string = cursorQuery.getString(0);
                        i(cursorQuery);
                        return string;
                    } catch (Exception e11) {
                        e7 = e11;
                        e7.toString();
                        i(cursorQuery);
                        return null;
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    i(cursorQuery);
                    throw th2;
                }
            } catch (Exception e12) {
                e7 = e12;
                cursorQuery = null;
                e7.toString();
                i(cursorQuery);
                return null;
            }
        } catch (Throwable th4) {
            cursorQuery = null;
            th2 = th4;
            i(cursorQuery);
            throw th2;
        }
    }

    public static ArrayList V(n5 n5Var, WpPathBean wpPathBean) throws Exception {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (wpPathBean.path.isEmpty()) {
            wpPathBean.path = "/";
        }
        System.out.getClass();
        if (!n5Var.A.p(wpPathBean.path)) {
            throw new Exception("无权访问");
        }
        dh.g[] gVarArrS = n5Var.A.s(null);
        if (gVarArrS == null) {
            return null;
        }
        if (gVarArrS.length == 1 && wpPathBean.path.equals("/") && gVarArrS[0].f4664a != 0) {
            String strL = g.b.l(gVarArrS[0].f4667d, "/", new StringBuilder("/"));
            wpPathBean.path = strL;
            n5Var.A.p(strL);
            gVarArrS = n5Var.A.s(null);
            if (gVarArrS == null) {
                return null;
            }
        }
        for (dh.g gVar : gVarArrS) {
            WpPathBean wpPathBean2 = new WpPathBean();
            String str = gVar.f4667d;
            wpPathBean2.name = str;
            if (!str.equals(".") && !wpPathBean2.name.equals("..")) {
                wpPathBean2.path = wpPathBean.path + wpPathBean2.name;
                Calendar calendar = gVar.f4668e;
                wpPathBean2.time_txt = calendar.get(1) + "/" + (calendar.get(2) + 1) + "/" + calendar.get(5) + " " + calendar.get(11) + ":" + calendar.get(12);
                boolean z = gVar.f4664a == 0;
                wpPathBean2.is_dir = !z;
                if (z) {
                    long j10 = gVar.f4665b;
                    wpPathBean2.size_long = j10;
                    wpPathBean2.size_txt = p000if.a.D0(j10);
                    arrayList2.add(wpPathBean2);
                } else {
                    wpPathBean2.path = g.b.l(wpPathBean2.path, "/", new StringBuilder());
                    arrayList.add(wpPathBean2);
                }
            }
        }
        Collections.sort(arrayList, new a2.m(25));
        Collections.sort(arrayList2, new a2.m(26));
        if (!arrayList2.isEmpty()) {
            arrayList.addAll(arrayList2);
        }
        return arrayList;
    }

    public static ArrayList W(r rVar) {
        StringBuilder sb2 = new StringBuilder("devType=6&devModel=Chrome&uuid=");
        sb2.append(rVar.f2745g);
        sb2.append("&extra=2&timestamp=");
        sb2.append(qf.c.a("" + System.currentTimeMillis()).toUpperCase());
        sb2.append("&shareId=");
        sb2.append(rVar.f2744f);
        sb2.append("&folderId=");
        sb2.append(rVar.f2750m);
        sb2.append("&offset=");
        String strS = android.support.v4.media.session.a.s(sb2, rVar.f2751n, "&limit=60");
        l9.b bVar = new l9.b(da.b.c("https://api.ilanzou.com/unproved/share/list?", strS));
        bVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        bVar.f11017i.b("Referer", "https://www.ilanzou.com/" + rVar.f2744f);
        MediaType mediaType = MediaType.parse("application/json;charset=UTF-8");
        bVar.f11003n = strS;
        bVar.f11002m = mediaType;
        Response responseA = bVar.a();
        if (!responseA.isSuccessful()) {
            throw new Exception("请求失败");
        }
        ResponseBody responseBodyBody = responseA.body();
        if (responseBodyBody == null) {
            throw new Exception("请求失败");
        }
        String strString = responseBodyBody.string();
        if (strString.indexOf("totalPage") == -1) {
            throw new Exception("不存在文件");
        }
        s sVarG = d.b.b0(strString).g();
        int iE = sVarG.o("totalPage").e();
        z7.o oVarF = sVarG.o("list").f();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < oVarF.f19478a.size(); i10++) {
            ba.j jVar = new ba.j();
            jVar.f2708e = android.support.v4.media.session.a.j(oVarF, i10, "fileType");
            jVar.f2707d = android.support.v4.media.session.a.v(oVarF, i10, "updTime");
            if (oVarF.l(i10).g().o("fileId") == null) {
                jVar.f2709f = android.support.v4.media.session.a.j(oVarF, i10, "folderId");
                jVar.f2710g = android.support.v4.media.session.a.v(oVarF, i10, "folderName");
            } else {
                jVar.f2704a = oVarF.l(i10).g().o("fileId").h();
                jVar.f2705b = android.support.v4.media.session.a.v(oVarF, i10, "fileName");
                jVar.f2706c = oVarF.l(i10).g().o("fileSize").h();
                if (p000if.a.k0(jVar.f2705b)) {
                    StringBuilder sb3 = new StringBuilder();
                    String str = jVar.f2705b;
                    sb3.append(str.substring(0, str.lastIndexOf(".")));
                    sb3.append(".apk");
                    jVar.f2705b = sb3.toString();
                }
            }
            arrayList.add(new b6(jVar));
        }
        if (rVar.f2751n < iE) {
            rVar.f2752o = true;
        }
        return arrayList;
    }

    public static ByteBuffer X(ByteBuffer byteBuffer) {
        return s1.g.a0(byteBuffer, c.r(byteBuffer.getInt()));
    }

    public static long Y(q qVar, int i10, int i11) {
        qVar.O(i10);
        if (qVar.a() < 5) {
            return -9223372036854775807L;
        }
        int iO = qVar.o();
        if ((8388608 & iO) != 0 || ((2096896 & iO) >> 8) != i11 || (iO & 32) == 0 || qVar.B() < 7 || qVar.a() < 7 || (qVar.B() & 16) != 16) {
            return -9223372036854775807L;
        }
        qVar.l(0, 6, new byte[6]);
        return ((r0[0] & 255) << 25) | ((r0[1] & 255) << 17) | ((r0[2] & 255) << 9) | ((r0[3] & 255) << 1) | ((255 & r0[4]) >> 7);
    }

    public static void Z(t1.a aVar) {
        aVar.f14651k = -3.4028235E38f;
        aVar.f14650j = Integer.MIN_VALUE;
        CharSequence charSequence = aVar.f14641a;
        if (charSequence instanceof Spanned) {
            if (!(charSequence instanceof Spannable)) {
                aVar.f14641a = SpannableString.valueOf(charSequence);
                aVar.f14642b = null;
            }
            CharSequence charSequence2 = aVar.f14641a;
            charSequence2.getClass();
            Spannable spannable = (Spannable) charSequence2;
            for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
                if ((obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan)) {
                    spannable.removeSpan(obj);
                }
            }
        }
    }

    public static float a0(int i10, float f10, int i11, int i12) {
        float f11;
        if (f10 == -3.4028235E38f) {
            return -3.4028235E38f;
        }
        if (i10 == 0) {
            f11 = i12;
        } else {
            if (i10 != 1) {
                if (i10 != 2) {
                    return -3.4028235E38f;
                }
                return f10;
            }
            f11 = i11;
        }
        return f10 * f11;
    }

    public static int b0(Context context, int i10, int i11) {
        TypedValue typedValueD = android.support.v4.media.session.b.D(context, i10);
        return (typedValueD == null || typedValueD.type != 16) ? i11 : typedValueD.data;
    }

    public static TimeInterpolator c0(Context context, int i10, Interpolator interpolator) throws NumberFormatException {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i10, typedValue, true)) {
            return interpolator;
        }
        if (typedValue.type != 3) {
            throw new IllegalArgumentException("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
        }
        String strValueOf = String.valueOf(typedValue.string);
        if (!I(strValueOf, "cubic-bezier") && !I(strValueOf, "path")) {
            return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
        }
        if (!I(strValueOf, "cubic-bezier")) {
            if (!I(strValueOf, "path")) {
                throw new IllegalArgumentException("Invalid motion easing type: ".concat(strValueOf));
            }
            Path pathV = p000if.a.v(strValueOf.substring(5, strValueOf.length() - 1));
            return Build.VERSION.SDK_INT >= 21 ? z0.a.c(pathV) : new i4.i(pathV);
        }
        String[] strArrSplit = strValueOf.substring(13, strValueOf.length() - 1).split(",");
        if (strArrSplit.length == 4) {
            return c.o(z(0, strArrSplit), z(1, strArrSplit), z(2, strArrSplit), z(3, strArrSplit));
        }
        throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + strArrSplit.length);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    public static boolean d(WpPathBean wpPathBean, String str, n5 n5Var) throws Exception {
        fh.c cVarX;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        FileOutputStream fileOutputStream3;
        BufferedOutputStream bufferedOutputStream;
        dh.j jVarN = N(n5Var);
        if (jVarN == null) {
            return false;
        }
        BufferedInputStream bufferedInputStream = null;
        try {
            cVarX = jVarN.x(wpPathBean.path);
        } catch (Exception unused) {
            cVarX = null;
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            cVarX = null;
            fileOutputStream = null;
        }
        try {
            fileOutputStream = new FileOutputStream(str);
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(cVarX);
                try {
                    bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                    try {
                        byte[] bArr = new byte[1048576];
                        while (true) {
                            int i10 = bufferedInputStream2.read(bArr);
                            if (i10 == -1) {
                                break;
                            }
                            bufferedOutputStream.write(bArr, 0, i10);
                            bufferedOutputStream.flush();
                        }
                        q4.a.e(bufferedInputStream2);
                        q4.a.e(bufferedOutputStream);
                        q4.a.e(fileOutputStream);
                        q4.a.e(cVarX);
                        try {
                            jVarN.h();
                        } catch (Exception unused2) {
                        }
                        h(jVarN);
                        return true;
                    } catch (Exception unused3) {
                        bufferedInputStream = bufferedInputStream2;
                        fileOutputStream3 = bufferedOutputStream;
                        q4.a.e(bufferedInputStream);
                        q4.a.e(fileOutputStream3);
                        q4.a.e(fileOutputStream);
                        q4.a.e(cVarX);
                        try {
                            jVarN.h();
                        } catch (Exception unused4) {
                        }
                        h(jVarN);
                        return false;
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedInputStream = bufferedInputStream2;
                        fileOutputStream2 = bufferedOutputStream;
                        q4.a.e(bufferedInputStream);
                        q4.a.e(fileOutputStream2);
                        q4.a.e(fileOutputStream);
                        q4.a.e(cVarX);
                        try {
                            jVarN.h();
                        } catch (Exception unused5) {
                        }
                        h(jVarN);
                        throw th;
                    }
                } catch (Exception unused6) {
                    bufferedOutputStream = 0;
                } catch (Throwable th4) {
                    th = th4;
                    bufferedOutputStream = 0;
                }
            } catch (Exception unused7) {
                fileOutputStream3 = null;
            } catch (Throwable th5) {
                th = th5;
                fileOutputStream2 = null;
            }
        } catch (Exception unused8) {
            fileOutputStream = null;
            fileOutputStream3 = fileOutputStream;
            q4.a.e(bufferedInputStream);
            q4.a.e(fileOutputStream3);
            q4.a.e(fileOutputStream);
            q4.a.e(cVarX);
            jVarN.h();
            h(jVarN);
            return false;
        } catch (Throwable th6) {
            th = th6;
            fileOutputStream = null;
            fileOutputStream2 = fileOutputStream;
            q4.a.e(bufferedInputStream);
            q4.a.e(fileOutputStream2);
            q4.a.e(fileOutputStream);
            q4.a.e(cVarX);
            jVarN.h();
            h(jVarN);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final long d0(CodeEditor codeEditor, MotionEvent motionEvent, int i10) {
        int i11;
        ue.d.e(codeEditor, "<this>");
        ue.d.e(motionEvent, "event");
        float x10 = (i10 == -1 ? motionEvent.getX() : motionEvent.getX(i10)) + codeEditor.getOffsetX();
        float y6 = (i10 == -1 ? motionEvent.getY() : motionEvent.getY(i10)) + codeEditor.getOffsetY();
        float fR = codeEditor.R();
        codeEditor.getRenderer().z();
        float fS = codeEditor.S();
        int i12 = 1;
        if (x10 >= 0.0f) {
            if (0.0f <= x10 && x10 <= fR) {
                i11 = 1;
            } else if (fR > x10 || x10 > 0 + fR) {
                float f10 = fR + 0;
                if (x10 > codeEditor.getDividerMarginLeft() + f10 || f10 > x10) {
                    float dividerWidth = codeEditor.getDividerWidth() + codeEditor.getDividerMarginLeft() + f10;
                    if (x10 > codeEditor.getDividerWidth() + codeEditor.getDividerMarginRight() + codeEditor.getDividerMarginLeft() + f10 || dividerWidth > x10) {
                        float dividerMarginLeft = codeEditor.getDividerMarginLeft() + f10;
                        if (x10 > codeEditor.getDividerWidth() + codeEditor.getDividerMarginLeft() + f10 || dividerMarginLeft > x10) {
                            i11 = 5;
                            if (fS <= x10) {
                                if (x10 > codeEditor.getWidth() + codeEditor.getScrollMaxX()) {
                                    if (!codeEditor.H || 0.0f > x10 || x10 > codeEditor.getWidth()) {
                                        i11 = 0;
                                    }
                                }
                            }
                        } else {
                            i11 = 4;
                        }
                    } else {
                        i11 = 3;
                    }
                }
            } else {
                i11 = 2;
            }
        }
        if (y6 >= 0.0f) {
            if (y6 <= (codeEditor.getHeight() / 2) + codeEditor.getScrollMaxY()) {
                i12 = 0;
            }
        }
        return sb.h.g(i11, i12);
    }

    public static WpPathBean e(WpPathBean wpPathBean, String str, n5 n5Var) {
        try {
            String str2 = wpPathBean.path + str + "/";
            n5Var.A.u(str2);
            if (n5Var.A.p(wpPathBean.path)) {
                WpPathBean wpPathBean2 = new WpPathBean(str, str2);
                wpPathBean2.is_dir = true;
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                wpPathBean2.time_txt = com.yunpan.appmanage.util.j.f4033a.f4038b0.format(new Date());
                return wpPathBean2;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static void e0(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        outputStream.write(new byte[]{(byte) (bytes.length >>> 24), (byte) (bytes.length >>> 16), (byte) (bytes.length >>> 8), (byte) bytes.length});
        outputStream.write(bytes);
        outputStream.flush();
    }

    public static c2 f(View view) {
        ue.d.e(view, "<this>");
        float alpha = view.getAlpha();
        c2 c2Var = c2.INVISIBLE;
        if (alpha == 0.0f && view.getVisibility() == 0) {
            return c2Var;
        }
        int visibility = view.getVisibility();
        if (visibility == 0) {
            return c2.VISIBLE;
        }
        if (visibility == 4) {
            return c2Var;
        }
        if (visibility == 8) {
            return c2.GONE;
        }
        throw new IllegalArgumentException(da.b.a(visibility, "Unknown visibility "));
    }

    public static void f0(z zVar, boolean z) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 23) {
            b1.n.c(zVar, z);
            return;
        }
        if (i10 >= 21) {
            if (!f3301d) {
                try {
                    Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    f3300c = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException unused) {
                }
                f3301d = true;
            }
            Field field = f3300c;
            if (field != null) {
                try {
                    field.set(zVar, Boolean.valueOf(z));
                } catch (IllegalAccessException unused2) {
                }
            }
        }
    }

    public static int g(int i10, int i11) {
        long j10 = i10 + i11;
        int i12 = (int) j10;
        if (j10 == ((long) i12)) {
            return i12;
        }
        throw new ArithmeticException("overflow: checkedAdd(" + i10 + ", " + i11 + ")");
    }

    public static void g0(PopupWindow popupWindow, int i10) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 23) {
            b1.n.d(popupWindow, i10);
            return;
        }
        if (!f3299b) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f3298a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception unused) {
            }
            f3299b = true;
        }
        Method method = f3298a;
        if (method != null) {
            try {
                method.invoke(popupWindow, Integer.valueOf(i10));
            } catch (Exception unused2) {
            }
        }
    }

    public static void h(dh.j jVar) {
        if (jVar != null) {
            try {
                jVar.d();
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
    }

    public static String h0(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b10 = bArr[i10];
            int i11 = i10 * 2;
            cArr[i11] = Character.forDigit((b10 & 255) >>> 4, 16);
            cArr[i11 + 1] = Character.forDigit(b10 & 15, 16);
        }
        return new String(cArr);
    }

    public static void i(Cursor cursor) throws Exception {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (RuntimeException e7) {
                throw e7;
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12, types: [java.io.BufferedOutputStream, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    public static void i0(WpTaskBean wpTaskBean, u uVar) throws Throwable {
        dh.j jVarN;
        fh.d dVarZ;
        ?? bufferedOutputStream;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        Object obj;
        BufferedInputStream bufferedInputStream = null;
        try {
            fileInputStream2 = new FileInputStream(wpTaskBean.bdPathInfo.f18365b);
            try {
                jVarN = N(wpTaskBean.userInfo);
            } catch (Exception unused) {
                fileInputStream = fileInputStream2;
                jVarN = null;
                dVarZ = null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                jVarN = null;
                dVarZ = null;
            }
        } catch (Exception unused2) {
            jVarN = null;
            dVarZ = null;
            bufferedOutputStream = 0;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            jVarN = null;
            dVarZ = null;
            bufferedOutputStream = 0;
            fileInputStream = null;
        }
        if (jVarN == null) {
            try {
                wpTaskBean.str_state = "";
                wpTaskBean.str1 = "创建FTP连接失败";
                q4.a.e(fileInputStream2);
                try {
                    jVarN.h();
                } catch (Exception unused3) {
                }
                h(jVarN);
                return;
            } catch (Exception unused4) {
                dVarZ = null;
                obj = null;
                fileInputStream = fileInputStream2;
                bufferedOutputStream = obj;
                try {
                    wpTaskBean.str_state = "";
                    wpTaskBean.str1 = "上传失败";
                    q4.a.e(bufferedInputStream);
                    q4.a.e(bufferedOutputStream);
                    q4.a.e(dVarZ);
                    q4.a.e(fileInputStream);
                    try {
                        jVarN.h();
                    } catch (Exception unused5) {
                    }
                    h(jVarN);
                } catch (Throwable th4) {
                    th = th4;
                    q4.a.e(bufferedInputStream);
                    q4.a.e(bufferedOutputStream);
                    q4.a.e(dVarZ);
                    q4.a.e(fileInputStream);
                    try {
                        jVarN.h();
                    } catch (Exception unused6) {
                    }
                    h(jVarN);
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
                dVarZ = null;
                bufferedOutputStream = 0;
                fileInputStream = fileInputStream2;
                q4.a.e(bufferedInputStream);
                q4.a.e(bufferedOutputStream);
                q4.a.e(dVarZ);
                q4.a.e(fileInputStream);
                jVarN.h();
                h(jVarN);
                throw th;
            }
        }
        try {
            dVarZ = jVarN.z(wpTaskBean.wpPathInfo.path + wpTaskBean.bdPathInfo.f18364a);
        } catch (Exception unused7) {
            fileInputStream = fileInputStream2;
            dVarZ = null;
            bufferedOutputStream = dVarZ;
            wpTaskBean.str_state = "";
            wpTaskBean.str1 = "上传失败";
            q4.a.e(bufferedInputStream);
            q4.a.e(bufferedOutputStream);
            q4.a.e(dVarZ);
            q4.a.e(fileInputStream);
            jVarN.h();
            h(jVarN);
        } catch (Throwable th6) {
            th = th6;
            fileInputStream = fileInputStream2;
            dVarZ = null;
            bufferedOutputStream = dVarZ;
            q4.a.e(bufferedInputStream);
            q4.a.e(bufferedOutputStream);
            q4.a.e(dVarZ);
            q4.a.e(fileInputStream);
            jVarN.h();
            h(jVarN);
            throw th;
        }
        if (dVarZ == null) {
            try {
                wpTaskBean.str_state = "";
                wpTaskBean.str1 = "打开远程流失败";
                q4.a.e(dVarZ);
                q4.a.e(fileInputStream2);
                try {
                    jVarN.h();
                } catch (Exception unused8) {
                }
                h(jVarN);
                return;
            } catch (Exception unused9) {
                obj = null;
                fileInputStream = fileInputStream2;
                bufferedOutputStream = obj;
                wpTaskBean.str_state = "";
                wpTaskBean.str1 = "上传失败";
                q4.a.e(bufferedInputStream);
                q4.a.e(bufferedOutputStream);
                q4.a.e(dVarZ);
                q4.a.e(fileInputStream);
                jVarN.h();
                h(jVarN);
            } catch (Throwable th7) {
                th = th7;
                bufferedOutputStream = 0;
                fileInputStream = fileInputStream2;
                q4.a.e(bufferedInputStream);
                q4.a.e(bufferedOutputStream);
                q4.a.e(dVarZ);
                q4.a.e(fileInputStream);
                jVarN.h();
                h(jVarN);
                throw th;
            }
        }
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(fileInputStream2);
            try {
                bufferedOutputStream = new BufferedOutputStream(dVarZ);
                try {
                    byte[] bArr = new byte[PKIFailureInfo.signerNotTrusted];
                    long j10 = wpTaskBean.bdPathInfo.f18367d;
                    int i10 = 0;
                    long j11 = 0;
                    int i11 = 0;
                    while (true) {
                        int i12 = bufferedInputStream2.read(bArr);
                        if (i12 == -1) {
                            fileInputStream = fileInputStream2;
                            break;
                        }
                        bufferedOutputStream.write(bArr, i10, i12);
                        bufferedOutputStream.flush();
                        long j12 = j11 + i12;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("上传中：");
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                        byte[] bArr2 = bArr;
                        fileInputStream = fileInputStream2;
                        double d10 = j12;
                        Double.isNaN(d10);
                        double d11 = j10;
                        Double.isNaN(d11);
                        try {
                            sb2.append(decimalFormat2.format((d10 * 100.0d) / d11));
                            sb2.append("%");
                            wpTaskBean.str1 = sb2.toString();
                            i11++;
                            if (i11 > 2) {
                                Message messageObtain = Message.obtain();
                                messageObtain.what = 10;
                                messageObtain.obj = wpTaskBean;
                                uVar.sendMessage(messageObtain);
                                i11 = 0;
                            }
                            if (wpTaskBean.isTask_stop) {
                                break;
                            }
                            fileInputStream2 = fileInputStream;
                            bArr = bArr2;
                            j11 = j12;
                            i10 = 0;
                        } catch (Exception unused10) {
                            bufferedInputStream = bufferedInputStream2;
                            bufferedOutputStream = bufferedOutputStream;
                            wpTaskBean.str_state = "";
                            wpTaskBean.str1 = "上传失败";
                            q4.a.e(bufferedInputStream);
                            q4.a.e(bufferedOutputStream);
                            q4.a.e(dVarZ);
                            q4.a.e(fileInputStream);
                            jVarN.h();
                            h(jVarN);
                        } catch (Throwable th8) {
                            th = th8;
                            bufferedInputStream = bufferedInputStream2;
                            q4.a.e(bufferedInputStream);
                            q4.a.e(bufferedOutputStream);
                            q4.a.e(dVarZ);
                            q4.a.e(fileInputStream);
                            jVarN.h();
                            h(jVarN);
                            throw th;
                        }
                    }
                    if (wpTaskBean.isTask_stop) {
                        wpTaskBean.str_state = "";
                        wpTaskBean.str1 = "主动停止任务";
                    } else {
                        wpTaskBean.str_state = "";
                        wpTaskBean.str1 = "上传完成";
                    }
                    q4.a.e(bufferedInputStream2);
                    q4.a.e(bufferedOutputStream);
                    q4.a.e(dVarZ);
                    q4.a.e(fileInputStream);
                } catch (Exception unused11) {
                    fileInputStream = fileInputStream2;
                } catch (Throwable th9) {
                    th = th9;
                    fileInputStream = fileInputStream2;
                }
            } catch (Exception unused12) {
                fileInputStream = fileInputStream2;
                bufferedOutputStream = 0;
            } catch (Throwable th10) {
                th = th10;
                fileInputStream = fileInputStream2;
                bufferedOutputStream = 0;
            }
        } catch (Exception unused13) {
            fileInputStream = fileInputStream2;
            bufferedOutputStream = 0;
        } catch (Throwable th11) {
            th = th11;
            fileInputStream = fileInputStream2;
            bufferedOutputStream = 0;
        }
        jVarN.h();
        h(jVarN);
    }

    public static String j(n5 n5Var) throws Exception {
        dh.j jVar = n5Var.A;
        if (jVar != null) {
            try {
                jVar.k(1);
                n5Var.A.d();
            } catch (Exception unused) {
            }
            n5Var.A = null;
        }
        dh.j jVar2 = n5Var.B ? new dh.j(false) : new dh.j(true);
        jVar2.f3251a = 20000;
        jVar2.f3256f = 16000;
        try {
            if (n5Var.f18312y.isEmpty()) {
                n5Var.f18312y = HTTP.UTF_8;
            }
            if (n5Var.f18312y.startsWith("自动")) {
                jVar2.G = true;
            } else {
                jVar2.f4648n = n5Var.f18312y;
            }
            jVar2.c(n5Var.f18292c, n5Var.f18293d);
            if (!(zg.b.a(n5Var.f18294e) ? jVar2.t("Anonymous", "") : jVar2.t(n5Var.f18294e, n5Var.f18295f))) {
                throw new Exception("账号或密码错误");
            }
            jVar2.y();
            if (!c.L(jVar2.f4645j)) {
                return "连接失败";
            }
            if (n5Var.z) {
                jVar2.f4653t = 2;
                jVar2.f4656w = null;
                jVar2.f4655v = -1;
            } else {
                jVar2.f4653t = 0;
                jVar2.f4656w = null;
                jVar2.f4655v = -1;
            }
            n5Var.A = jVar2;
            return "";
        } catch (Exception e7) {
            e7.printStackTrace();
            System.out.getClass();
            h(jVar2);
            String strTrim = ("" + e7.getMessage()).trim();
            return strTrim.isEmpty() ? "连接失败" : strTrim;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:84:0x009b
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10, types: [dh.c, dh.e, dh.j] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [dh.c, dh.j] */
    /* JADX WARN: Type inference failed for: r3v5, types: [dh.c] */
    /* JADX WARN: Type inference failed for: r3v6, types: [dh.j] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12, types: [java.io.BufferedOutputStream, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.yunpan.appmanage.bean.FtpCopyProgressBean] */
    /* JADX WARN: Type inference failed for: r9v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static java.lang.String k(com.yunpan.appmanage.bean.FtpCopyProgressBean r9, java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.d.k(com.yunpan.appmanage.bean.FtpCopyProgressBean, java.lang.String, java.lang.String):java.lang.String");
    }

    public static boolean l(n5 n5Var, String str) {
        String string;
        dh.g[] gVarArrS = n5Var.A.s(str);
        if (gVarArrS == null && gVarArrS.length == 0 && !c.L(n5Var.A.l("RMD", str))) {
            return false;
        }
        for (dh.g gVar : gVarArrS) {
            if (str.endsWith("/")) {
                string = g.b.l(gVar.f4667d, "/", g.b.m(str));
            } else {
                StringBuilder sbB = d0.f.b(str, "/");
                sbB.append(gVar.f4667d);
                string = sbB.toString();
            }
            if (gVar.a()) {
                if (!l(n5Var, string)) {
                    return false;
                }
            } else if (!c.L(n5Var.A.l("DELE", string))) {
                return false;
            }
        }
        return c.L(n5Var.A.l("RMD", str));
    }

    public static int m(int i10, int i11, RoundingMode roundingMode) {
        roundingMode.getClass();
        if (i11 == 0) {
            throw new ArithmeticException("/ by zero");
        }
        int i12 = i10 / i11;
        int i13 = i10 - (i11 * i12);
        if (i13 == 0) {
            return i12;
        }
        int i14 = ((i10 ^ i11) >> 31) | 1;
        switch (w7.c.f17625a[roundingMode.ordinal()]) {
            case 1:
                p000if.a.l(i13 == 0);
                return i12;
            case 2:
                return i12;
            case 3:
                if (i14 >= 0) {
                    return i12;
                }
                break;
            case 4:
                break;
            case 5:
                if (i14 <= 0) {
                    return i12;
                }
                break;
            case 6:
            case 7:
            case 8:
                int iAbs = Math.abs(i13);
                int iAbs2 = iAbs - (Math.abs(i11) - iAbs);
                if (iAbs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP) {
                        if (!((roundingMode == RoundingMode.HALF_EVEN) & ((i12 & 1) != 0))) {
                            return i12;
                        }
                    }
                } else if (iAbs2 <= 0) {
                    return i12;
                }
                break;
            default:
                throw new AssertionError();
        }
        return i12 + i14;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:(5:84|24|76|25|(7:86|26|27|78|28|(2:29|(2:31|(2:88|33)(1:90))(2:89|38))|39))|72|40|41|53|(1:55)|56) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a9  */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String n(FtpCopyProgressBean ftpCopyProgressBean, String str, String str2) throws Throwable {
        fh.c cVarX;
        dh.j jVarN;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        FileOutputStream fileOutputStream3;
        String str3;
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream = null;
        try {
            jVarN = N(ftpCopyProgressBean.userInfo);
        } catch (Exception unused) {
            cVarX = null;
            jVarN = null;
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            cVarX = null;
            jVarN = null;
            fileOutputStream = null;
        }
        if (jVarN == null) {
            try {
                jVarN.h();
            } catch (Exception unused2) {
            }
            h(jVarN);
            return "新建FTP连接失败";
        }
        try {
            cVarX = jVarN.x(str);
        } catch (Exception unused3) {
            cVarX = null;
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            cVarX = null;
            fileOutputStream = null;
        }
        if (cVarX == null) {
            q4.a.e(cVarX);
            try {
                jVarN.h();
            } catch (Exception unused4) {
            }
            h(jVarN);
            return "打开inputStream失败";
        }
        try {
            fileOutputStream = new FileOutputStream(str2);
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(cVarX);
                try {
                    bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                    try {
                        byte[] bArr = new byte[PKIFailureInfo.signerNotTrusted];
                        while (true) {
                            int i10 = bufferedInputStream2.read(bArr);
                            if (i10 == -1) {
                                str3 = "";
                                break;
                            }
                            bufferedOutputStream.write(bArr, 0, i10);
                            bufferedOutputStream.flush();
                            ftpCopyProgressBean.size_success.getAndAdd(i10);
                            if (ftpCopyProgressBean.isStop) {
                                str3 = "主动停止任务";
                                break;
                            }
                        }
                        q4.a.e(bufferedInputStream2);
                        q4.a.e(bufferedOutputStream);
                        q4.a.e(fileOutputStream);
                        q4.a.e(cVarX);
                    } catch (Exception unused5) {
                        bufferedInputStream = bufferedInputStream2;
                        fileOutputStream3 = bufferedOutputStream;
                        str3 = "下载失败";
                        q4.a.e(bufferedInputStream);
                        q4.a.e(fileOutputStream3);
                        q4.a.e(fileOutputStream);
                        q4.a.e(cVarX);
                        jVarN.h();
                        h(jVarN);
                        if (new File(str2).exists()) {
                        }
                        return str3;
                    } catch (Throwable th4) {
                        th = th4;
                        bufferedInputStream = bufferedInputStream2;
                        fileOutputStream2 = bufferedOutputStream;
                        q4.a.e(bufferedInputStream);
                        q4.a.e(fileOutputStream2);
                        q4.a.e(fileOutputStream);
                        q4.a.e(cVarX);
                        try {
                            jVarN.h();
                        } catch (Exception unused6) {
                        }
                        h(jVarN);
                        throw th;
                    }
                } catch (Exception unused7) {
                    bufferedOutputStream = 0;
                } catch (Throwable th5) {
                    th = th5;
                    bufferedOutputStream = 0;
                }
            } catch (Exception unused8) {
                fileOutputStream3 = null;
            } catch (Throwable th6) {
                th = th6;
                fileOutputStream2 = null;
            }
        } catch (Exception unused9) {
            fileOutputStream = null;
            fileOutputStream3 = fileOutputStream;
            str3 = "下载失败";
            q4.a.e(bufferedInputStream);
            q4.a.e(fileOutputStream3);
            q4.a.e(fileOutputStream);
            q4.a.e(cVarX);
            jVarN.h();
            h(jVarN);
            if (new File(str2).exists()) {
            }
            return str3;
        } catch (Throwable th7) {
            th = th7;
            fileOutputStream = null;
            fileOutputStream2 = fileOutputStream;
            q4.a.e(bufferedInputStream);
            q4.a.e(fileOutputStream2);
            q4.a.e(fileOutputStream);
            q4.a.e(cVarX);
            jVarN.h();
            h(jVarN);
            throw th;
        }
        jVarN.h();
        h(jVarN);
        if (new File(str2).exists()) {
            MyDb.get().lambda$addFile_thread$1(str2);
        }
        return str3;
    }

    public static void o(AccService accService, s sVar, int i10) throws Exception {
        CmdResult cmdResultExec;
        String str;
        HashSet hashSet;
        int iIndexOf;
        String strTrim;
        int iIndexOf2;
        String str2;
        String str3;
        Intent intentM;
        Intent intentM2;
        fa.b bVar = fa.a.f5646a;
        if (!bVar.f()) {
            a0.u("adb未连接");
            return;
        }
        if (i10 == 3000) {
            int iE = sVar.o("keycode").e();
            int iE2 = sVar.o("action").e();
            if (iE2 == 0) {
                bVar.f5651b.keyCode(iE, true);
                return;
            }
            if (iE2 <= 0 || iE2 >= 4) {
                return;
            }
            while (iE2 > 0) {
                bVar.f5651b.keyCode(iE, false);
                Thread.sleep(200L);
                iE2--;
            }
            return;
        }
        if (i10 == 3011) {
            if (wa.s.c().f17719p) {
                bVar.f5651b.keyCode(127, false);
            } else {
                bVar.f5651b.keyCode(126, false);
            }
            wa.s.c().f17719p = !wa.s.c().f17719p;
            return;
        }
        if (i10 == 3001) {
            sVar.o("api").e();
            int iE3 = sVar.o("action").e();
            int iE4 = sVar.o("x").e();
            int iE5 = sVar.o("y").e();
            if (iE3 == 0) {
                wa.c.g(bVar.d(), iE4, iE5, true);
                return;
            }
            if (iE3 <= 0 || iE3 >= 4) {
                return;
            }
            while (iE3 > 0) {
                wa.c.g(bVar.d(), iE4, iE5, false);
                Thread.sleep(180L);
                iE3--;
            }
            return;
        }
        if (i10 == 3010) {
            IInputManager iInputManagerD = bVar.d();
            if (iInputManagerD != null) {
                q4.a.G(iInputManagerD, sVar);
                return;
            }
            return;
        }
        if (i10 == 3002) {
            bVar.b().forceStopPackage(sVar.o("str1").i(), 0);
            return;
        }
        if (i10 == 3003) {
            try {
                String string = accService.getRootInActiveWindow().getPackageName().toString();
                if (string.contains(".")) {
                    String strU = qf.c.u(accService);
                    if (strU.isEmpty() || !strU.equals(string)) {
                        if (!string.startsWith("com.android.") && !string.equals(accService.getPackageName())) {
                            bVar.b().forceStopPackage(string, 0);
                            return;
                        }
                        accService.performGlobalAction(1);
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception unused) {
                return;
            }
        }
        if (i10 == 3004) {
            IActivityManager iActivityManagerB = bVar.b();
            int i11 = Build.VERSION.SDK_INT;
            List<ActivityManager.RunningTaskInfo> tasks = i11 >= 28 ? iActivityManagerB.getTasks(50) : iActivityManagerB.getTasks(50, 0);
            if (tasks.size() > 1) {
                int i12 = i11 >= 29 ? ((ActivityManager.RunningTaskInfo) tasks.get(0)).taskId : ((ActivityManager.RunningTaskInfo) tasks.get(0)).id;
                Collections.sort(tasks, new qa.e(27));
                PrintStream printStream = System.out;
                tasks.size();
                printStream.getClass();
                for (ActivityManager.RunningTaskInfo runningTaskInfo : tasks) {
                    if ((Build.VERSION.SDK_INT >= 29 ? runningTaskInfo.taskId : runningTaskInfo.id) > i12 && runningTaskInfo.topActivity != null) {
                        String packageName = runningTaskInfo.topActivity.getPackageName();
                        if (!packageName.equals("com.android.systemui") && packageName.contains(".") && (intentM2 = p000if.a.M(packageName)) != null) {
                            p000if.a.x0(1, accService, intentM2);
                            return;
                        }
                    }
                }
                for (ActivityManager.RunningTaskInfo runningTaskInfo2 : tasks) {
                    if ((Build.VERSION.SDK_INT >= 29 ? runningTaskInfo2.taskId : runningTaskInfo2.id) != i12 && runningTaskInfo2.topActivity != null) {
                        String packageName2 = runningTaskInfo2.topActivity.getPackageName();
                        if (!packageName2.equals("com.android.systemui") && packageName2.contains(".") && (intentM = p000if.a.M(packageName2)) != null) {
                            p000if.a.x0(1, accService, intentM);
                            return;
                        }
                    }
                }
                return;
            }
            return;
        }
        if (i10 == 3005) {
            if (!Environment.getExternalStorageState().contains("mounted")) {
                a0.t("截屏失败：没有内部存储卡");
                return;
            }
            File file = new File(fa.d.f5659a.d() + "/Download");
            try {
                file.mkdir();
            } catch (Exception unused2) {
            }
            CmdResult cmdResultExec2 = bVar.f5651b.exec("screencap -p '" + file.getPath() + "/截屏" + System.currentTimeMillis() + ".png'", 3333L);
            if (cmdResultExec2.code == 0) {
                a0.w("截屏已保存到 Download 目录");
                return;
            }
            a0.t("截屏失败：" + cmdResultExec2.getAllStr());
            return;
        }
        if (i10 == 3006) {
            if (!Environment.getExternalStorageState().contains("mounted")) {
                a0.t("获取失败：没有内部存储卡");
                return;
            }
            if (bVar.f5651b.exec("uiautomator dump " + fa.d.f5659a.d() + "/Download/节点" + System.currentTimeMillis() + ".txt", PopupConst.DURATION_POPUP).code == 0) {
                a0.w("节点信息已保存到 Download 目录");
                return;
            } else {
                a0.t("获取节点失败");
                return;
            }
        }
        if (i10 == 3008) {
            bVar.f5651b.exec("am startservice -n \"" + sVar.o("str1").i() + "\"", 3333L);
            return;
        }
        if (i10 != 3009 || accService.P0) {
            return;
        }
        accService.P0 = true;
        a0.w("内存清理中");
        fa.d.f5659a.getClass();
        HashSet hashSetA = fa.e.a(accService);
        HashSet hashSetB = fa.e.b(accService);
        String str4 = "am force-stop '";
        if (accService.getPackageManager().checkPermission("android.permission.DEVICE_POWER", accService.getPackageName()) == 0) {
            Iterator it = fa.e.c(accService).iterator();
            while (it.hasNext()) {
                String str5 = (String) it.next();
                if (!str5.startsWith("com.android.") && !str5.startsWith("android.hardware.") && !t.f17728a.f17756w.contains(str5) && !hashSetA.contains(str5)) {
                    System.out.getClass();
                    u9.d.r("am force-stop '" + str5 + "'").e0(null);
                }
            }
            u9.d.r("am kill-all").e0(null);
        } else {
            boolean zF = bVar.f();
            HashSet hashSet2 = new HashSet();
            if (zF) {
                cmdResultExec = bVar.f5651b.exec("ps -A", 10000L);
            } else {
                IUserService iUserService = n0.f5722a.f5730e;
                if (iUserService == null) {
                    throw new Exception("无连接");
                }
                cmdResultExec = iUserService.exec("ps -A", 10000L);
            }
            if (cmdResultExec.lists.size() < 20) {
                cmdResultExec = zF ? bVar.f5651b.exec("ps", 10000L) : n0.f5722a.f5730e.exec("ps", 10000L);
            }
            String str6 = "'";
            if (cmdResultExec.lists.size() > 20) {
                Iterator<String> it2 = cmdResultExec.lists.iterator();
                while (it2.hasNext()) {
                    String next = it2.next();
                    if (!next.endsWith("]") && (next.startsWith("u") || next.startsWith("system"))) {
                        int iLastIndexOf = next.lastIndexOf(" ");
                        Iterator<String> it3 = it2;
                        if (iLastIndexOf == -1) {
                            it2 = it3;
                        } else {
                            String strTrim2 = next.substring(iLastIndexOf + 1).trim();
                            int iLastIndexOf2 = strTrim2.lastIndexOf(":");
                            String str7 = str4;
                            if (iLastIndexOf2 != -1) {
                                strTrim2 = strTrim2.substring(0, iLastIndexOf2);
                            }
                            int iLastIndexOf3 = strTrim2.lastIndexOf("@");
                            if (iLastIndexOf3 != -1) {
                                strTrim2 = strTrim2.substring(0, iLastIndexOf3);
                            }
                            if (strTrim2.contains(".")) {
                                hashSet2.add(strTrim2.trim());
                            }
                            it2 = it3;
                            str4 = str7;
                        }
                    }
                }
                str = str4;
                hashSet = hashSetB;
            } else {
                str = "am force-stop '";
                hashSet = hashSetB;
                CmdResult cmdResultExec3 = zF ? bVar.f5651b.exec("dumpsys -t 30000 meminfo", 30000L) : n0.f5722a.f5730e.exec("dumpsys -t 30000 meminfo", 30000L);
                if (cmdResultExec3.lists.size() < 20) {
                    cmdResultExec3 = zF ? bVar.f5651b.exec("dumpsys meminfo", 30000L) : n0.f5722a.f5730e.exec("dumpsys meminfo", 30000L);
                }
                try {
                    Iterator<String> it4 = cmdResultExec3.lists.iterator();
                    while (it4.hasNext()) {
                        String next2 = it4.next();
                        if (next2.endsWith(")") && next2.contains("pid") && (iIndexOf = next2.indexOf(":")) != -1 && (iIndexOf2 = (strTrim = next2.substring(iIndexOf + 1).trim()).indexOf(" ")) != -1) {
                            String strSubstring = strTrim.substring(0, iIndexOf2);
                            int iIndexOf3 = strSubstring.indexOf("@");
                            if (iIndexOf3 != -1) {
                                strSubstring = strSubstring.substring(0, iIndexOf3);
                            }
                            int iIndexOf4 = strSubstring.indexOf(":");
                            if (iIndexOf4 != -1) {
                                strSubstring = strSubstring.substring(0, iIndexOf4);
                            }
                            if (strSubstring.contains(".")) {
                                hashSet2.add(strSubstring);
                            }
                        }
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
            Iterator it5 = hashSet2.iterator();
            while (it5.hasNext()) {
                String str8 = (String) it5.next();
                if (!str8.startsWith("com.android.") && !str8.startsWith("android.hardware.") && !t.f17728a.f17756w.contains(str8) && !hashSetA.contains(str8)) {
                    HashSet hashSet3 = hashSet;
                    if (hashSet3.contains(str8)) {
                        hashSet = hashSet3;
                    } else {
                        System.out.getClass();
                        if (zF) {
                            try {
                                bVar.f5651b.forceStop(str8, 0);
                                bVar.f5651b.exec("am kill-all", 2000L);
                            } catch (Exception unused3) {
                            }
                        } else {
                            try {
                                o0 o0Var = n0.f5722a;
                                IUserService iUserService2 = o0Var.f5730e;
                                if (iUserService2 != null) {
                                    StringBuilder sb2 = new StringBuilder();
                                    str3 = str;
                                    try {
                                        sb2.append(str3);
                                        sb2.append(str8);
                                        str2 = str6;
                                    } catch (Exception unused4) {
                                        str2 = str6;
                                    }
                                    try {
                                        sb2.append(str2);
                                        iUserService2.exec(sb2.toString(), 2000L);
                                        o0Var.f5730e.exec("am kill-all", 2000L);
                                    } catch (Exception unused5) {
                                        str6 = str2;
                                        hashSet = hashSet3;
                                        str = str3;
                                    }
                                }
                            } catch (Exception unused6) {
                                str2 = str6;
                                str3 = str;
                            }
                            str6 = str2;
                            hashSet = hashSet3;
                            str = str3;
                        }
                        str2 = str6;
                        str3 = str;
                        str6 = str2;
                        hashSet = hashSet3;
                        str = str3;
                    }
                }
            }
        }
        a0.w("清理完成");
        accService.P0 = false;
    }

    public static boolean p(FtpCopyProgressBean ftpCopyProgressBean, WpPathBean wpPathBean) {
        dh.g[] gVarArrS;
        try {
            if (ftpCopyProgressBean.isStop) {
                return false;
            }
            String str = ftpCopyProgressBean.rootDirPath_form.length() == 1 ? ftpCopyProgressBean.rootDirPath_to + wpPathBean.path : ftpCopyProgressBean.rootDirPath_to + wpPathBean.path.substring(ftpCopyProgressBean.rootDirPath_form.length());
            System.out.getClass();
            new File(str).mkdir();
            if (new File(str).exists()) {
                MyDb.get().lambda$addFile_thread$1(str);
            }
            if (!ftpCopyProgressBean.userInfo.A.p(wpPathBean.path) || (gVarArrS = ftpCopyProgressBean.userInfo.A.s(null)) == null) {
                return false;
            }
            for (dh.g gVar : gVarArrS) {
                WpPathBean wpPathBean2 = new WpPathBean(gVar.f4667d, (wpPathBean.path + "/" + gVar.f4667d).replace("//", "/"));
                if (gVar.a()) {
                    wpPathBean2.path += "/";
                    if (!p(ftpCopyProgressBean, wpPathBean2)) {
                        return false;
                    }
                } else {
                    wpPathBean2.size_long = gVar.f4665b;
                    ftpCopyProgressBean.filePaths.add(wpPathBean2);
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean q(FtpCopyProgressBean ftpCopyProgressBean, WpPathBean wpPathBean) {
        dh.g[] gVarArrS;
        try {
            if (ftpCopyProgressBean.isStop) {
                return false;
            }
            ftpCopyProgressBean.userInfo.A.u(ftpCopyProgressBean.rootDirPath_form.length() == 1 ? ftpCopyProgressBean.rootDirPath_to + wpPathBean.path : (ftpCopyProgressBean.rootDirPath_to + "/" + wpPathBean.path.substring(ftpCopyProgressBean.rootDirPath_form.length())).replace("//", "/"));
            if (!ftpCopyProgressBean.userInfo.A.p(wpPathBean.path) || (gVarArrS = ftpCopyProgressBean.userInfo.A.s(null)) == null) {
                return false;
            }
            for (dh.g gVar : gVarArrS) {
                WpPathBean wpPathBean2 = new WpPathBean(gVar.f4667d, (wpPathBean.path + "/" + gVar.f4667d).replace("//", "/"));
                if (!gVar.a()) {
                    wpPathBean2.size_long = gVar.f4665b;
                    ftpCopyProgressBean.filePaths.add(wpPathBean2);
                } else if (!q(ftpCopyProgressBean, wpPathBean2)) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:240:0x013b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x013e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String r(File file) throws IllegalAccessException, NoSuchMethodException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
        boolean zCanRead;
        byte[] bArrE;
        String str;
        Enumeration<? extends ZipEntry> enumeration;
        Throwable th2;
        int i10;
        Class<?>[] clsArr;
        Throwable th3;
        int i11 = 0;
        try {
            zCanRead = file.canRead();
        } catch (SecurityException | Exception unused) {
            zCanRead = false;
        }
        if (!zCanRead) {
            return "";
        }
        String lowerCase = file.getName().toLowerCase();
        long jLastModified = file.lastModified();
        ApkFileBean apkFileBean = MyDb.get().getApkFileDao().getApkFileBean(file.getPath());
        if (apkFileBean != null && apkFileBean.lastModified == jLastModified) {
            StringBuilder sb2 = new StringBuilder();
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            sb2.append(com.yunpan.appmanage.util.j.f4033a.z);
            sb2.append("apk_ico_cache/");
            sb2.append(apkFileBean.packageName);
            sb2.append("_");
            sb2.append(apkFileBean.lastModified);
            return sb2.toString();
        }
        if (p000if.a.Y(lowerCase)) {
            return "";
        }
        if (lowerCase.endsWith(".gj")) {
            byte[] bArr = new byte[102400];
            String str2 = System.currentTimeMillis() + "";
            StringBuilder sb3 = new StringBuilder();
            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            sb3.append(kVar.Q);
            String str3 = File.separator;
            File file2 = new File(android.support.v4.media.session.a.u(sb3, str3, str2, ".json"));
            StringBuilder sb4 = new StringBuilder();
            sb4.append(kVar.Q);
            sb4.append(str3);
            sb4.append(str2);
            String str4 = ".png";
            sb4.append(".png");
            File file3 = new File(sb4.toString());
            try {
                ZipFile zipFile = new ZipFile(file);
                try {
                    Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                    while (enumerationEntries.hasMoreElements()) {
                        ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                        String name = zipEntryNextElement.getName();
                        if (name.endsWith(str4)) {
                            try {
                                InputStream inputStream = zipFile.getInputStream(zipEntryNextElement);
                                try {
                                    FileOutputStream fileOutputStream = new FileOutputStream(file3);
                                    while (true) {
                                        try {
                                            int i12 = inputStream.read(bArr);
                                            if (i12 > 0) {
                                                fileOutputStream.write(bArr, i11, i12);
                                            } else {
                                                try {
                                                    break;
                                                } catch (Throwable th4) {
                                                    th2 = th4;
                                                    str = str4;
                                                    if (inputStream != null) {
                                                    }
                                                    enumerationEntries = enumeration;
                                                    str4 = str;
                                                    i11 = 0;
                                                }
                                            }
                                        } finally {
                                            try {
                                            } catch (Throwable th5) {
                                                try {
                                                    try {
                                                        try {
                                                            try {
                                                                cls.getDeclaredMethod(str, clsArr).invoke(th3, new Object[i10]);
                                                            } catch (Exception unused2) {
                                                            }
                                                        } catch (Throwable th6) {
                                                            th2 = th;
                                                            if (inputStream != null) {
                                                                enumeration = enumerationEntries;
                                                                throw th2;
                                                            }
                                                            try {
                                                                inputStream.close();
                                                                enumeration = enumerationEntries;
                                                            } catch (Throwable th7) {
                                                                try {
                                                                    enumeration = enumerationEntries;
                                                                    try {
                                                                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th7);
                                                                    } catch (Exception unused3) {
                                                                    }
                                                                } catch (Exception unused4) {
                                                                    enumeration = enumerationEntries;
                                                                    throw th2;
                                                                }
                                                                throw th2;
                                                            }
                                                            try {
                                                                throw th2;
                                                            } catch (Exception e7) {
                                                                e = e7;
                                                                e.printStackTrace();
                                                                enumerationEntries = enumeration;
                                                                str4 = str;
                                                                i11 = 0;
                                                            }
                                                            enumerationEntries = enumeration;
                                                            str4 = str;
                                                            i11 = 0;
                                                        }
                                                    } catch (Exception unused5) {
                                                    }
                                                } catch (Exception unused6) {
                                                }
                                            }
                                        }
                                    }
                                    fileOutputStream.close();
                                    inputStream.close();
                                    str = str4;
                                    enumeration = enumerationEntries;
                                } catch (Throwable th8) {
                                    th = th8;
                                    str = str4;
                                }
                            } catch (Exception e10) {
                                e = e10;
                                str = str4;
                                enumeration = enumerationEntries;
                            }
                        } else {
                            str = str4;
                            enumeration = enumerationEntries;
                            if (name.endsWith("fest.json")) {
                                try {
                                    InputStream inputStream2 = zipFile.getInputStream(zipEntryNextElement);
                                    try {
                                        FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                                        while (true) {
                                            try {
                                                int i13 = inputStream2.read(bArr);
                                                if (i13 <= 0) {
                                                    break;
                                                }
                                                fileOutputStream2.write(bArr, 0, i13);
                                            } finally {
                                                try {
                                                } catch (Throwable th9) {
                                                    try {
                                                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th9);
                                                    } catch (Exception unused7) {
                                                    }
                                                }
                                            }
                                        }
                                        fileOutputStream2.close();
                                        inputStream2.close();
                                    } catch (Throwable th10) {
                                        if (inputStream2 != null) {
                                            try {
                                                inputStream2.close();
                                            } catch (Throwable th11) {
                                                try {
                                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th10, th11);
                                                } catch (Exception unused8) {
                                                }
                                            }
                                        }
                                        throw th10;
                                    }
                                } catch (Exception e11) {
                                    e11.printStackTrace();
                                }
                            } else {
                                continue;
                            }
                        }
                        enumerationEntries = enumeration;
                        str4 = str;
                        i11 = 0;
                    }
                    zipFile.close();
                    if (!a0.f(file2)) {
                        return "";
                    }
                    ApkFileBean apkFileBean2 = new ApkFileBean();
                    StringBuilder sb5 = new StringBuilder();
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new FileReader(file2));
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            sb5.append(line);
                            sb5.append(SignParameters.NEW_LINE);
                        }
                        bufferedReader.close();
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                    try {
                        s sVarG = d.b.b0(sb5.toString()).g();
                        apkFileBean2.apkName = sVarG.o("name").i();
                        apkFileBean2.packageName = sVarG.o("packageName").i();
                        apkFileBean2.versionCode = sVarG.o("versionCode").h();
                        apkFileBean2.versionName = sVarG.o("versionName").i();
                        apkFileBean2.minSdk = sVarG.o("minSdkVersion").e();
                        apkFileBean2.path = file.getPath();
                        apkFileBean2.abi = sVarG.o("abi").i();
                        apkFileBean2.lastModified = file.lastModified();
                        apkFileBean2.insertTime = System.currentTimeMillis();
                        apkFileBean2.isSystemUid = false;
                        apkFileBean2.sign = "";
                        MyDb.get().getApkFileDao().insert(apkFileBean2);
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                    if (!a0.f(file3)) {
                        return "";
                    }
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file3);
                        try {
                            FileOutputStream fileOutputStream3 = new FileOutputStream(com.yunpan.appmanage.util.j.f4033a.z + "apk_ico_cache/" + apkFileBean2.packageName + "_" + apkFileBean2.lastModified);
                            while (true) {
                                try {
                                    int i14 = fileInputStream.read(bArr);
                                    if (i14 <= 0) {
                                        fileOutputStream3.close();
                                        fileInputStream.close();
                                        return com.yunpan.appmanage.util.j.f4033a.z + "apk_ico_cache/" + apkFileBean2.packageName + "_" + apkFileBean2.lastModified;
                                    }
                                    fileOutputStream3.write(bArr, 0, i14);
                                } finally {
                                }
                            }
                        } finally {
                        }
                    } catch (Exception e14) {
                        e14.printStackTrace();
                        return "";
                    }
                } finally {
                }
            } catch (Exception unused9) {
                return "";
            }
        } else {
            try {
                ef.b bVar = new ef.b(file);
                try {
                    bVar.M();
                    ff.c cVar = bVar.f4963e;
                    ApkFileBean apkFileBean3 = new ApkFileBean();
                    apkFileBean3.path = file.getPath();
                    apkFileBean3.apkName = cVar.f5814b;
                    apkFileBean3.packageName = cVar.f5813a;
                    apkFileBean3.versionName = cVar.f5816d;
                    apkFileBean3.versionCode = cVar.f5817e.longValue();
                    apkFileBean3.minSdk = Integer.parseInt(cVar.f5819g);
                    apkFileBean3.lastModified = file.lastModified();
                    apkFileBean3.insertTime = System.currentTimeMillis();
                    try {
                        apkFileBean3.isSystemUid = cVar.f5818f.equals("android.uid.system");
                    } catch (Exception unused10) {
                        apkFileBean3.isSystemUid = false;
                    }
                    apkFileBean3.sign = "";
                    MyDb.get().getApkFileDao().insert(apkFileBean3);
                    List<ff.g> listA = bVar.A();
                    if (listA != null && !listA.isEmpty()) {
                        for (ff.g gVar : listA) {
                            if (gVar != null && (bArrE = gVar.e()) != null) {
                                StringBuilder sb6 = new StringBuilder();
                                DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                sb6.append(com.yunpan.appmanage.util.j.f4033a.z);
                                sb6.append("apk_ico_cache/");
                                sb6.append(apkFileBean3.packageName);
                                sb6.append("_");
                                sb6.append(apkFileBean3.lastModified);
                                String string = sb6.toString();
                                a0.q(string, bArrE);
                                bVar.close();
                                return string;
                            }
                        }
                    }
                    bVar.close();
                    return "";
                } finally {
                }
            } catch (Exception unused11) {
                return "";
            }
        }
    }

    public static int s(int i10, View view) {
        Context context = view.getContext();
        TypedValue typedValueF = android.support.v4.media.session.b.F(view.getContext(), view.getClass().getCanonicalName(), i10);
        int i11 = typedValueF.resourceId;
        return i11 != 0 ? n0.g.c(context, i11) : typedValueF.data;
    }

    public static int t(Context context, int i10, int i11) {
        Integer numValueOf;
        TypedValue typedValueD = android.support.v4.media.session.b.D(context, i10);
        if (typedValueD != null) {
            int i12 = typedValueD.resourceId;
            numValueOf = Integer.valueOf(i12 != 0 ? n0.g.c(context, i12) : typedValueD.data);
        } else {
            numValueOf = null;
        }
        return numValueOf != null ? numValueOf.intValue() : i11;
    }

    public static int u(int[] iArr, int[] iArr2, int i10) {
        if (iArr.length < 9 || iArr2.length < 38) {
            return 0;
        }
        switch (i10) {
            case 0:
                return iArr2[0] & 3;
            case 1:
                return iArr2[1];
            case 2:
                return iArr2[2] & 1;
            case 3:
                return (iArr2[2] >> 1) & 1;
            case 4:
                return (iArr2[2] >> 2) & 1;
            case 5:
                return (iArr2[2] >> 3) & 1;
            case 6:
                return (iArr2[2] >> 4) & 1;
            case 7:
                return (iArr2[2] >> 5) & 1;
            default:
                if (i10 == 9) {
                    return (iArr2[2] >> 6) & 1;
                }
                if (i10 == 10) {
                    return (iArr2[2] >> 7) & 1;
                }
                switch (i10) {
                    case 12:
                        return iArr2[3] & 1;
                    case 13:
                        return (iArr2[3] >> 1) & 1;
                    case 14:
                        return (iArr2[3] >> 2) & 1;
                    case 15:
                        return (iArr2[3] >> 3) & 1;
                    default:
                        switch (i10) {
                            case 26:
                                return (iArr2[3] >> 5) & 1;
                            case 27:
                                return iArr2[7] & 15;
                            case 28:
                                return (iArr2[7] >> 4) & 7;
                            case 29:
                                return (iArr2[7] >> 7) & 1;
                            case 30:
                                return iArr2[8] & 1;
                            case 31:
                                return (iArr2[8] >> 4) & 1;
                            case 32:
                                return (iArr2[8] >> 5) & 1;
                            case 33:
                                return (iArr2[8] >> 6) & 1;
                            case 34:
                                return (iArr2[8] >> 7) & 1;
                            case 35:
                                return iArr2[9] & 1;
                            case 36:
                                return (iArr2[9] >> 1) & 1;
                            case 37:
                                return (iArr2[9] >> 2) & 1;
                            case 38:
                                return iArr2[10] & 1;
                            case 39:
                                return (iArr2[10] >> 1) & 1;
                            case 40:
                                return (iArr2[10] >> 2) & 1;
                            case 41:
                                return (iArr2[10] >> 3) & 1;
                            case 42:
                                return (iArr2[10] >> 4) & 1;
                            case 43:
                                return (iArr2[10] >> 5) & 1;
                            case 44:
                                return (iArr2[10] >> 6) & 1;
                            case 45:
                                return (iArr2[10] >> 7) & 1;
                            case 46:
                                return iArr2[11] & 1;
                            case 47:
                                return iArr2[12] & 7;
                            case 48:
                                return (iArr2[12] >> 3) & 7;
                            case 49:
                                return (iArr2[12] >> 6) & 1;
                            case 50:
                                return (iArr2[13] >> 4) & 3;
                            case 51:
                                return (iArr2[13] >> 6) & 3;
                            case 52:
                                return iArr2[14] & 3;
                            case 53:
                                return (iArr2[14] >> 2) & 3;
                            case 54:
                                return (iArr2[14] >> 4) & 1;
                            case 55:
                                return (iArr2[14] >> 5) & 1;
                            case 56:
                                return (iArr2[14] >> 6) & 1;
                            case 57:
                                return (iArr2[14] >> 7) & 1;
                            case 58:
                                return iArr2[15] & 1;
                            case 59:
                                return (iArr2[15] >> 1) & 1;
                            case 60:
                                return (iArr2[15] >> 2) & 1;
                            case 61:
                                return (iArr2[15] >> 3) & 1;
                            case 62:
                                return (iArr2[15] >> 4) & 1;
                            case 63:
                                return (iArr2[15] >> 5) & 1;
                            case 64:
                                return (iArr2[15] >> 6) & 1;
                            case 65:
                                return (iArr2[15] >> 7) & 1;
                            case 66:
                                return iArr2[16] & 3;
                            case 67:
                                return (iArr2[16] >> 2) & 1;
                            case 68:
                                return (iArr2[16] >> 3) & 1;
                            case 69:
                                return (iArr2[16] >> 4) & 1;
                            case 70:
                                return (iArr2[16] >> 5) & 1;
                            case 71:
                                return (iArr2[16] >> 6) & 1;
                            default:
                                switch (i10) {
                                    case 73:
                                        return iArr2[17] & 3;
                                    case 74:
                                        return (iArr2[17] >> 2) & 1;
                                    case 75:
                                        return (iArr2[17] >> 3) & 1;
                                    case 76:
                                        return (iArr2[17] >> 4) & 1;
                                    case 77:
                                        return (iArr2[17] >> 5) & 1;
                                    case 78:
                                        return (iArr2[17] >> 6) & 3;
                                    case 79:
                                        return (iArr2[17] >> 7) & 1;
                                    case 80:
                                        return iArr2[18] & 1;
                                    case 81:
                                        return (iArr2[18] >> 1) & 1;
                                    case 82:
                                        return (iArr2[18] >> 2) & 1;
                                    case 83:
                                        return (iArr2[18] >> 3) & 1;
                                    case CarSettingID.Send.HVAC_SEASONS_KEY /* 84 */:
                                        return (iArr2[18] >> 4) & 1;
                                    case 85:
                                        return (iArr2[18] >> 5) & 1;
                                    case 86:
                                        return (iArr2[18] >> 6) & 1;
                                    case 87:
                                        return (iArr2[18] >> 7) & 1;
                                    case 88:
                                        return iArr2[21] & 1;
                                    case 89:
                                        return (iArr2[21] >> 1) & 1;
                                    case 90:
                                        return (iArr2[21] >> 2) & 1;
                                    case 91:
                                        return (iArr2[21] >> 3) & 1;
                                    case 92:
                                        return (iArr2[21] >> 4) & 1;
                                    case 93:
                                        return (iArr2[21] >> 5) & 1;
                                    case 94:
                                        return (iArr2[21] >> 6) & 1;
                                    case 95:
                                        return (iArr2[21] >> 7) & 1;
                                    case 96:
                                        return iArr2[23] & 1;
                                    case 97:
                                        return (iArr2[23] >> 1) & 1;
                                    case 98:
                                        return (iArr2[23] >> 2) & 1;
                                    case 99:
                                        return (iArr2[23] >> 3) & 1;
                                    case 100:
                                        return (iArr2[23] >> 4) & 1;
                                    case 101:
                                        return (iArr2[23] >> 5) & 1;
                                    default:
                                        switch (i10) {
                                            case 103:
                                                return (iArr2[23] >> 7) & 1;
                                            case 104:
                                                return iArr2[24] & 1;
                                            case 105:
                                                return (iArr2[24] >> 1) & 1;
                                            case 106:
                                                return (iArr2[24] >> 2) & 1;
                                            case 107:
                                                return (iArr2[24] >> 3) & 1;
                                            case 108:
                                                return (iArr2[24] >> 4) & 1;
                                            case 109:
                                                return (iArr2[24] >> 5) & 1;
                                            case 110:
                                                return (iArr2[24] >> 6) & 3;
                                            case 111:
                                                return iArr2[25] & 1;
                                            case 112:
                                                return (iArr2[25] >> 1) & 1;
                                            case 113:
                                                return (iArr2[9] >> 7) & 1;
                                            case 114:
                                                return (iArr2[25] >> 3) & 1;
                                            case 115:
                                                return (iArr2[25] >> 4) & 1;
                                            case 116:
                                                return (iArr2[25] >> 5) & 1;
                                            case 117:
                                                return (iArr2[25] >> 6) & 1;
                                            case 118:
                                                return (iArr2[25] >> 7) & 1;
                                            case 119:
                                                return iArr2[26] & 1;
                                            case 120:
                                                return (iArr2[26] >> 1) & 1;
                                            case 121:
                                                return (iArr2[26] >> 2) & 1;
                                            case 122:
                                                return (iArr2[26] >> 3) & 1;
                                            case 123:
                                                return (iArr2[26] >> 4) & 1;
                                            case 124:
                                                return (iArr2[26] >> 5) & 1;
                                            case 125:
                                                return (iArr2[26] >> 6) & 1;
                                            case 126:
                                                return (iArr2[26] >> 7) & 1;
                                            case 127:
                                                return iArr2[30] & 1;
                                            case 128:
                                                return (iArr2[30] >> 1) & 1;
                                            case 129:
                                                return (iArr2[30] >> 2) & 1;
                                            case 130:
                                                return (iArr2[30] >> 3) & 3;
                                            case 131:
                                                return (iArr2[30] >> 5) & 3;
                                            case 132:
                                                return (iArr2[30] >> 7) & 1;
                                            case 133:
                                                return iArr2[31] & 1;
                                            case 134:
                                                return (iArr2[31] >> 1) & 3;
                                            case 135:
                                                return (iArr2[31] >> 3) & 1;
                                            case 136:
                                                return (iArr2[31] >> 4) & 1;
                                            case 137:
                                                return (iArr2[31] >> 5) & 1;
                                            case 138:
                                                return (iArr2[31] >> 6) & 3;
                                            default:
                                                switch (i10) {
                                                    case 140:
                                                        return (iArr2[32] >> 2) & 3;
                                                    case 141:
                                                        return (iArr2[32] >> 4) & 3;
                                                    case 142:
                                                        return (iArr2[32] >> 6) & 1;
                                                    case 143:
                                                        return (iArr2[32] >> 7) & 1;
                                                    case 144:
                                                        return iArr2[33] & 3;
                                                    case 145:
                                                        return (iArr2[33] >> 2) & 3;
                                                    case 146:
                                                        return (iArr2[33] >> 4) & 3;
                                                    case 147:
                                                        return (iArr2[33] >> 6) & 1;
                                                    case 148:
                                                        return (iArr2[33] >> 7) & 1;
                                                    case 149:
                                                        return iArr2[34] & 1;
                                                    case 150:
                                                        return (iArr2[3] >> 6) & 1;
                                                    default:
                                                        switch (i10) {
                                                            case 200:
                                                                return iArr[0] & 15;
                                                            case CarSettingID.Recv.IGM_INPUT_OVER_VOLT /* 201 */:
                                                                return iArr[1] & 1;
                                                            case CarSettingID.Recv.IGM_OVER_TEMP /* 202 */:
                                                                return (iArr[1] >> 1) & 1;
                                                            case CarSettingID.Recv.IGM_OUTPUT_OPEN_LODE /* 203 */:
                                                                return (iArr[1] >> 2) & 1;
                                                            case CarSettingID.Recv.IGM_OUTPUT_OVER_CUR /* 204 */:
                                                                return iArr[2] & 3;
                                                            case 205:
                                                                return (iArr[2] >> 2) & 1;
                                                            case CarSettingID.Recv.IGM_OUTPUT_SCB /* 206 */:
                                                                return (iArr[2] >> 3) & 1;
                                                            case CarSettingID.Recv.IFC_TLR_AVAIL /* 207 */:
                                                                return (iArr[2] >> 4) & 1;
                                                            case CarSettingID.Recv.IFC_TLR_ST /* 208 */:
                                                                return (iArr[2] >> 5) & 1;
                                                            case CarSettingID.Recv.IFC_TLR_ACOUSTIC_WARN /* 209 */:
                                                                return (iArr[2] >> 6) & 3;
                                                            case CarSettingID.Recv.IFC_SGW_AVAIL /* 210 */:
                                                                return iArr[4] & 1;
                                                            case 211:
                                                                return (iArr[4] >> 1) & 7;
                                                            case CarSettingID.Recv.IFC_SGW_ACOUSTIC_WARN /* 212 */:
                                                                return (iArr[4] >> 4) & 15;
                                                            case CarSettingID.Recv.IFC_TCP_AVAIL /* 213 */:
                                                                return iArr[5] & 7;
                                                            case CarSettingID.Recv.IFC_TCP_ST /* 214 */:
                                                                return (iArr[5] >> 3) & 7;
                                                            case CarSettingID.Recv.IFC_TSR_AVAIL /* 215 */:
                                                                return (iArr[5] >> 6) & 1;
                                                            case CarSettingID.Recv.IFC_HMA_AVAIL /* 216 */:
                                                                return (iArr[6] >> 2) & 3;
                                                            case 217:
                                                                return (iArr[6] >> 4) & 3;
                                                            case 218:
                                                                return (iArr[6] >> 6) & 3;
                                                            case 219:
                                                                return iArr[7] & 15;
                                                            case CarSettingID.Recv.IFC_TCPSESSIONID /* 220 */:
                                                                return (iArr[7] >> 4) & 3;
                                                            case CarSettingID.Recv.FLDCM_MIRROR_FOLD_UNFOLD_ST /* 221 */:
                                                                return (iArr[7] >> 6) & 3;
                                                            case CarSettingID.Recv.FRDCM_MIRROR_FOLD_UNFOLD_ST /* 222 */:
                                                                return iArr[3] & 1;
                                                            case CarSettingID.Recv.PAA_DVR_TRIGGER /* 223 */:
                                                                return iArr2[27] & 7;
                                                            case 224:
                                                                return (iArr2[27] >> 3) & 31;
                                                            case 225:
                                                                return iArr2[19] & 1;
                                                            case 226:
                                                                return (iArr[1] >> 3) & 1;
                                                            case CarSettingID.Recv.IPB_CST_STATUS /* 227 */:
                                                                return iArr2[28] & 15;
                                                            case 228:
                                                                return (iArr2[9] >> 3) & 1;
                                                            case CarSettingID.Recv.MAX_OPENNING_TAILGATE /* 229 */:
                                                                return (iArr2[19] >> 1) & 1;
                                                            case CarSettingID.Recv.FRONT_HATCH_SWITCH /* 230 */:
                                                                return (iArr2[28] >> 5) & 1;
                                                            case CarSettingID.Recv.SUNROOF_STATUS /* 231 */:
                                                                return (iArr2[9] >> 4) & 1;
                                                            case CarSettingID.Recv.TAILGATE_STATUS /* 232 */:
                                                                return iArr[8] & 1;
                                                            case CarSettingID.Recv.LF_DOOR_STATUS /* 233 */:
                                                                return (iArr2[8] >> 1) & 1;
                                                            default:
                                                                switch (i10) {
                                                                    case CarSettingID.Recv.RR_DOOR_STATUS /* 236 */:
                                                                        return (iArr2[9] >> 5) & 1;
                                                                    case 237:
                                                                        return (iArr2[28] >> 6) & 1;
                                                                    case 238:
                                                                        return (iArr2[0] >> 2) & 3;
                                                                    default:
                                                                        switch (i10) {
                                                                            case 10000:
                                                                                return (iArr2[11] >> 1) & 1;
                                                                            case 10001:
                                                                                return (iArr2[11] >> 2) & 1;
                                                                            case 10002:
                                                                                return (iArr2[11] >> 3) & 1;
                                                                            default:
                                                                                switch (i10) {
                                                                                    case 10021:
                                                                                        return (iArr2[28] >> 5) & 1;
                                                                                    case 10022:
                                                                                        return (iArr2[19] >> 2) & 1;
                                                                                    case 10023:
                                                                                        return (iArr2[28] >> 7) & 1;
                                                                                    case 10024:
                                                                                        return iArr2[29] & 1;
                                                                                    case 10025:
                                                                                        return (iArr2[29] >> 1) & 1;
                                                                                    case 10026:
                                                                                        return iArr[0] & 3;
                                                                                    case 10027:
                                                                                        return iArr[9] & 1;
                                                                                    default:
                                                                                        switch (i10) {
                                                                                            case 10040:
                                                                                                return (iArr[5] >> 7) & 1;
                                                                                            case 10041:
                                                                                                return (iArr[9] >> 1) & 1;
                                                                                            case 10042:
                                                                                                return (iArr[9] >> 2) & 1;
                                                                                            case 10043:
                                                                                                return (iArr[9] >> 3) & 1;
                                                                                            case 10044:
                                                                                                return iArr2[22] & 1;
                                                                                            case 10045:
                                                                                                return (iArr2[22] >> 1) & 1;
                                                                                            case 10046:
                                                                                                return (iArr2[22] >> 2) & 1;
                                                                                            case 10047:
                                                                                                return (iArr2[29] >> 2) & 1;
                                                                                            case 10048:
                                                                                                return (iArr[6] >> 1) & 1;
                                                                                            case 10049:
                                                                                                return (iArr2[19] >> 7) & 1;
                                                                                            case 10050:
                                                                                                return (iArr2[20] >> 1) & 1;
                                                                                            case 10051:
                                                                                                return (iArr2[22] >> 3) & 1;
                                                                                            case 10052:
                                                                                                return (iArr2[22] >> 4) & 1;
                                                                                            case 10053:
                                                                                                return (iArr2[22] >> 5) & 1;
                                                                                            case 10054:
                                                                                                return (iArr2[22] >> 6) & 1;
                                                                                            case 10055:
                                                                                                return (iArr2[22] >> 7) & 1;
                                                                                            case 10056:
                                                                                                return (iArr2[25] >> 2) & 1;
                                                                                            default:
                                                                                                switch (i10) {
                                                                                                    case 10069:
                                                                                                        return (iArr2[19] >> 3) & 1;
                                                                                                    case 10070:
                                                                                                        return (iArr2[19] >> 4) & 1;
                                                                                                    case 10071:
                                                                                                        return (iArr2[16] >> 7) & 1;
                                                                                                    default:
                                                                                                        switch (i10) {
                                                                                                            case 10089:
                                                                                                                return (iArr2[11] >> 4) & 1;
                                                                                                            case 10090:
                                                                                                                return (iArr2[11] >> 5) & 1;
                                                                                                            case 10091:
                                                                                                                return (iArr2[19] >> 6) & 1;
                                                                                                            default:
                                                                                                                switch (i10) {
                                                                                                                    case 10109:
                                                                                                                        return (iArr2[34] >> 2) & 1;
                                                                                                                    case 10110:
                                                                                                                        return (iArr2[34] >> 3) & 1;
                                                                                                                    case 10111:
                                                                                                                        return (iArr2[34] >> 1) & 1;
                                                                                                                    default:
                                                                                                                        switch (i10) {
                                                                                                                            case 10115:
                                                                                                                                return (iArr[8] >> 1) & 1;
                                                                                                                            case 10116:
                                                                                                                                return (iArr2[9] >> 6) & 1;
                                                                                                                            case 10117:
                                                                                                                                return (iArr2[11] >> 6) & 3;
                                                                                                                            case 10118:
                                                                                                                                return (iArr2[20] >> 2) & 1;
                                                                                                                            case 10119:
                                                                                                                                return iArr2[35] & 1;
                                                                                                                            case 10120:
                                                                                                                                return (iArr2[35] >> 1) & 1;
                                                                                                                            case 10121:
                                                                                                                                return (iArr2[36] >> 2) & 1;
                                                                                                                            default:
                                                                                                                                switch (i10) {
                                                                                                                                    case 10126:
                                                                                                                                        return (iArr2[13] >> 1) & 1;
                                                                                                                                    case 10127:
                                                                                                                                        return (iArr2[13] >> 2) & 1;
                                                                                                                                    case 10128:
                                                                                                                                        return (iArr2[13] >> 3) & 1;
                                                                                                                                    default:
                                                                                                                                        if (i10 == 18) {
                                                                                                                                            return (iArr2[3] >> 4) & 1;
                                                                                                                                        }
                                                                                                                                        if (i10 == 10015) {
                                                                                                                                            return iArr2[13] & 1;
                                                                                                                                        }
                                                                                                                                        if (i10 == 10062) {
                                                                                                                                            return (iArr2[29] >> 4) & 7;
                                                                                                                                        }
                                                                                                                                        if (i10 != 10143) {
                                                                                                                                            return 0;
                                                                                                                                        }
                                                                                                                                        return (iArr2[12] >> 7) & 1;
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
        }
    }

    public static x4.v v(Object obj) {
        if (obj == null) {
            return x4.k.f18125a;
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue() ? x4.d.f18118c : x4.d.f18117b;
        }
        if (obj instanceof Byte) {
            return new x4.e(((Byte) obj).byteValue());
        }
        if (obj instanceof Character) {
            return new x4.f(((Character) obj).charValue());
        }
        if (obj instanceof Double) {
            return new x4.g(Double.doubleToLongBits(((Double) obj).doubleValue()));
        }
        if (obj instanceof Float) {
            return new x4.i(Float.floatToIntBits(((Float) obj).floatValue()));
        }
        if (obj instanceof Integer) {
            return x4.j.h(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            return new x4.o(((Long) obj).longValue());
        }
        if (obj instanceof Short) {
            return new x4.s(((Short) obj).shortValue());
        }
        if (obj instanceof String) {
            return new x4.t((String) obj);
        }
        if (obj instanceof Class) {
            return new x4.u(q4.j.a((Class) obj).f13020b);
        }
        if (obj instanceof q4.j) {
            return new x4.u(((q4.j) obj).f13020b);
        }
        throw new UnsupportedOperationException("Not a constant: " + obj);
    }

    public static String w(long j10, String str, String str2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder("downloadId=");
        sb2.append(qf.c.a(j10 + "|"));
        sb2.append("&enable=1&devType=6&uuid=");
        sb2.append(str);
        sb2.append("&timestamp=");
        sb2.append(qf.c.a(jCurrentTimeMillis + ""));
        sb2.append("&auth=");
        sb2.append(qf.c.a(j10 + "|" + jCurrentTimeMillis));
        return g.b.l("&shareId=", str2, sb2);
    }

    public static Drawable x(Context context, int i10) {
        return p2.d().f(context, i10);
    }

    public static fh.c y(long j10, String str, n5 n5Var) throws Exception {
        dh.j jVarN = N(n5Var);
        if (jVarN == null) {
            throw new Exception("FTP连接失败");
        }
        long j11 = 0;
        sh.c cVar = sh.c.f14573c;
        long j12 = j11 / 1000;
        int i10 = (int) (j11 % 1000);
        if (i10 < 0) {
            i10 += 1000;
            j12--;
        }
        jVarN.f4654u = sh.c.a(i10 * 1000000, j12);
        if (j10 > 0 && j10 >= 0) {
            jVarN.A = j10;
        }
        return jVarN.x(str);
    }

    public static float z(int i10, String[] strArr) throws NumberFormatException {
        float f10 = Float.parseFloat(strArr[i10]);
        if (f10 >= 0.0f && f10 <= 1.0f) {
            return f10;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + f10);
    }

    public abstract void O(int i10);

    public abstract void P(Typeface typeface, boolean z);

    @Override // x0.m1
    public void b() {
    }

    @Override // x0.m1
    public void a(View view) {
    }
}
