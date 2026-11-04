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
import h4.e0;
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

    public /* synthetic */ d() {
    }

    public static int A(byte[] r22, int r32, int r4, int r5, int r62) {
        int r63 = r62 + r32;
        int r52 = r5 + r32;
    L3:
        if (r52 >= r63) goto L8;
        if (r22[r52] != r22[r52 - r4]) goto L8;
        r52 = r52 + 1;
    L8:
        return r52 - r32;
    }

    public static String B(String r4) {
        BufferedReader r12 = null;
        BufferedReader r02 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + r4).getInputStream()), 1024);     // Catch: Throwable -> L12
        String r42 = r02.readLine();     // Catch: Throwable -> L10
        if (r42 != null) goto L25;
        r02.close();     // Catch: IOException -> L17
    L9:
        return null;
    L25:
        r02.close();     // Catch: IOException -> L16
    L7:
        return r42;
    L10:
        th = th;
        r12 = r02;
    L13:
        if (r12 != null) goto L27;
    L15:
        throw th;
    L27:
        r12.close();     // Catch: IOException -> L18
    L12:
        th = th;
        goto L13
    }

    public static String C(String r82) {
        if (r82 != null) goto L5;
    L37:
        return "";
    L5:
        if (r82.isEmpty() == true) goto L37;
        FileInputStream r4 = null;
        Class<?> r5 = Class.forName("android.os.SystemProperties");     // Catch: Exception -> L10
        String r02 = (String) r5.getMethod("get", new Class[]{String.class, String.class}).invoke(r5, new Object[]{r82, ""});     // Catch: Exception -> L10
    L11:
        if (r02 != null) goto L13;
    L42:
        r02 = B(r82);     // Catch: IOException -> L17
    L18:
        if (r02 != null) goto L20;
    L39:
        Properties r12 = new Properties();     // Catch: Throwable -> L28
        FileInputStream r52 = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));     // Catch: Throwable -> L28
        r12.load(r52);     // Catch: Throwable -> L26
        r02 = r12.getProperty(r82, "");     // Catch: Throwable -> L26
        r52.close();     // Catch: IOException -> L32
    L26:
        th = th;
        r4 = r52;
    L29:
        if (r4 != null) goto L40;
    L31:
        throw th;     // Catch: IOException -> L32
    L40:
        r4.close();     // Catch: IOException -> L38
    L28:
        th = th;
    L33:
        if (r02 == null) goto L37;
        if (r02.isEmpty() == true) goto L37;
        return r02;
    L20:
        if (r02.isEmpty() == true) goto L39;
        return r02;
    L13:
        if (r02.isEmpty() == true) goto L42;
        return r02;
    L10:
        r02 = null;
        goto L11
    }

    public static void D(ContentResolver r62, String r72, String r82, String r92, String r10) {
        if (r72.toLowerCase().equals("secure") == false) goto L17;
        if (r82.toLowerCase().equals("int") == false) goto L8;
        Settings.Secure.putInt(r62, r92, Integer.valueOf(r10).intValue());
        return;
    L8:
        if (r82.toLowerCase().equals("long") == false) goto L11;
        Settings.Secure.putLong(r62, r92, Long.valueOf(r10).longValue());
        return;
    L11:
        if (r82.toLowerCase().equals("string") == false) goto L14;
        Settings.Secure.putString(r62, r92, String.valueOf(r10));
        return;
    L14:
        if (r82.toLowerCase().equals("float") == false) goto L48;
        Settings.Secure.putFloat(r62, r92, Float.valueOf(r10).floatValue());
        return;
    L48:
        return;
    L17:
        if (r72.toLowerCase().equals("system") == false) goto L31;
        if (r82.toLowerCase().equals("int") == false) goto L22;
        System.out.getClass();
        Settings.System.putInt(r62, r92, Integer.valueOf(r10).intValue());
        return;
    L22:
        if (r82.toLowerCase().equals("long") == false) goto L25;
        Settings.System.putLong(r62, r92, Long.valueOf(r10).longValue());
        return;
    L25:
        if (r82.toLowerCase().equals("string") == false) goto L28;
        Settings.System.putString(r62, r92, String.valueOf(r10));
        return;
    L28:
        if (r82.toLowerCase().equals("float") == false) goto L53;
        Settings.System.putFloat(r62, r92, Float.valueOf(r10).floatValue());
        return;
    L53:
        return;
    L31:
        if (r72.toLowerCase().equals("global") == true) goto L33;
        return;
    L33:
        if (r82.toLowerCase().equals("int") == false) goto L36;
        Settings.Global.putInt(r62, r92, Integer.valueOf(r10).intValue());
        return;
    L36:
        if (r82.toLowerCase().equals("long") == false) goto L39;
        Settings.Global.putLong(r62, r92, Long.valueOf(r10).longValue());
        return;
    L39:
        if (r82.toLowerCase().equals("string") == false) goto L42;
        Settings.Global.putString(r62, r92, String.valueOf(r10));
        return;
    L42:
        if (r82.toLowerCase().equals("float") == false) goto L59;
        Settings.Global.putFloat(r62, r92, Float.valueOf(r10).floatValue());
        return;
    }

    public static void E(ContentResolver r62, String r72, String r82, String r92, String r10, String r11, String r12) {
        if (r72.toLowerCase().equals("secure") == false) goto L29;
        if (r82.toLowerCase().equals("int") == false) goto L11;
        if (String.valueOf(Settings.Secure.getInt(r62, r92)).equals(r10) == true) goto L9;
        Settings.Secure.putInt(r62, r92, Integer.valueOf(r11).intValue());
        return;
    L9:
        Settings.Secure.putInt(r62, r92, Integer.valueOf(r12).intValue());
        return;
    L11:
        if (r82.toLowerCase().equals("long") == false) goto L17;
        if (String.valueOf(Settings.Secure.getLong(r62, r92)).equals(r10) == true) goto L15;
        Settings.Secure.putLong(r62, r92, Long.valueOf(r11).longValue());
        return;
    L15:
        Settings.Secure.putLong(r62, r92, Long.valueOf(r12).longValue());
        return;
    L17:
        if (r82.toLowerCase().equals("string") == false) goto L23;
        if (String.valueOf(Settings.Secure.getString(r62, r92)).equals(r10) == true) goto L21;
        Settings.Secure.putString(r62, r92, String.valueOf(r11));
        return;
    L21:
        Settings.Secure.putString(r62, r92, String.valueOf(r12));
        return;
    L23:
        if (r82.toLowerCase().equals("float") == true) goto L25;
        return;
    L25:
        if (String.valueOf(Settings.Secure.getFloat(r62, r92)).equals(r10) == true) goto L27;
        Settings.Secure.putFloat(r62, r92, Float.valueOf(r11).floatValue());
        return;
    L27:
        Settings.Secure.putFloat(r62, r92, Float.valueOf(r12).floatValue());
        return;
    L29:
        if (r72.toLowerCase().equals("system") == false) goto L55;
        if (r82.toLowerCase().equals("int") == false) goto L37;
        if (String.valueOf(Settings.System.getInt(r62, r92)).equals(r10) == true) goto L35;
        Settings.System.putInt(r62, r92, Integer.valueOf(r11).intValue());
        return;
    L35:
        Settings.System.putInt(r62, r92, Integer.valueOf(r12).intValue());
        return;
    L37:
        if (r82.toLowerCase().equals("long") == false) goto L43;
        if (String.valueOf(Settings.System.getLong(r62, r92)).equals(r10) == true) goto L41;
        Settings.System.putLong(r62, r92, Long.valueOf(r11).longValue());
        return;
    L41:
        Settings.System.putLong(r62, r92, Long.valueOf(r12).longValue());
        return;
    L43:
        if (r82.toLowerCase().equals("string") == false) goto L49;
        if (String.valueOf(Settings.System.getString(r62, r92)).equals(r10) == true) goto L47;
        Settings.System.putString(r62, r92, String.valueOf(r11));
        return;
    L47:
        Settings.System.putString(r62, r92, String.valueOf(r12));
        return;
    L49:
        if (r82.toLowerCase().equals("float") == true) goto L51;
        return;
    L51:
        if (String.valueOf(Settings.System.getFloat(r62, r92)).equals(r10) == true) goto L53;
        Settings.System.putFloat(r62, r92, Float.valueOf(r11).floatValue());
        return;
    L53:
        Settings.System.putFloat(r62, r92, Float.valueOf(r12).floatValue());
        return;
    L55:
        if (r72.toLowerCase().equals("global") == true) goto L57;
        return;
    L57:
        if (r82.toLowerCase().equals("int") == false) goto L63;
        if (String.valueOf(Settings.Global.getInt(r62, r92)).equals(r10) == true) goto L61;
        Settings.Global.putInt(r62, r92, Integer.valueOf(r11).intValue());
        return;
    L61:
        Settings.Global.putInt(r62, r92, Integer.valueOf(r12).intValue());
        return;
    L63:
        if (r82.toLowerCase().equals("long") == false) goto L69;
        if (String.valueOf(Settings.Global.getLong(r62, r92)).equals(r10) == true) goto L67;
        Settings.Global.putLong(r62, r92, Long.valueOf(r11).longValue());
        return;
    L67:
        Settings.Global.putLong(r62, r92, Long.valueOf(r12).longValue());
        return;
    L69:
        if (r82.toLowerCase().equals("string") == false) goto L75;
        if (String.valueOf(Settings.Global.getString(r62, r92)).equals(r10) == true) goto L73;
        Settings.Global.putString(r62, r92, String.valueOf(r11));
        return;
    L73:
        Settings.Global.putString(r62, r92, String.valueOf(r12));
        return;
    L75:
        if (r82.toLowerCase().equals("float") == true) goto L77;
        return;
    L77:
        if (String.valueOf(Settings.Global.getFloat(r62, r92)).equals(r10) == true) goto L79;
        Settings.Global.putFloat(r62, r92, Float.valueOf(r11).floatValue());
        return;
    L79:
        Settings.Global.putFloat(r62, r92, Float.valueOf(r12).floatValue());
    }

    public static ma.l F(String r62, String r72, ag.h r82, ma.k r92) {
        int r12 = -1;
        String[] r63 = r62.split(">>", -1);
        if (r63.length >= 5) goto L5;
    L57:
        return null;
    L5:
        if ("223".equals(r63[0]) == false) goto L57;
        int r02 = 2;
        if (r72.equals(r63[2]) == false) goto L57;
        int r4 = 1;
        int r5 = 4;
        if ("INSTALL".equals(r63[1]) == false) goto L29;
        String r64 = r63[4];
        if ("confirm_pending".equals(r64) == false) goto L15;
        r82.f680a = true;
        r92.j();
        goto L57
    L15:
        if ("denied".equals(r64) == false) goto L19;
        return new ma.l(r02, "电视上点了拒绝", 0);
    L19:
        if ("installed".equals(r64) == false) goto L23;
        return new ma.l(r4, "电视直接回报已安装", 0);
    L23:
        if ("installing".equals(r64) == false) goto L57;
        if (r82.f680a == true) goto L57;
        r92.r();
        return new ma.l(r5, "电视正在安装其它应用", 0);
    L29:
        if ("PROGRESS".equals(r63[1]) == false) goto L57;
        int r73 = Integer.parseInt(r63[4].trim());     // Catch: RuntimeException -> L33
    L35:
        if (r63.length > 5) goto L58;
    L40:
        int r65 = 3;
        if (r73 == 1) goto L49;
        if (r73 == 2) goto L48;
        if (r73 == 3) goto L47;
        if (r73 == 5) goto L46;
        String r83 = "未知";
    L50:
        r92.e(r12, r83);
        if (r73 == 5) goto L53;
        if (r73 != 2) goto L57;
        return new ma.l(r65, "电视下载或安装失败", 0);
    L53:
        return new ma.l(r4, "阶段 5", 0);
    L46:
        r83 = "已完成";
        goto L50
    L47:
        r83 = "安装中";
        goto L50
    L48:
        r83 = "失败";
        goto L50
    L49:
        r83 = "下载中";
        goto L50
    L58:
        r12 = Integer.parseInt(r63[5].trim());     // Catch: RuntimeException -> L39
    L33:
        r73 = -1;
        goto L35
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.util.Locale] */
    /* JADX WARN: Type inference failed for: r12v24 */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v6, types: [ma.l] */
    public static ma.l G(String r23, ma.k r24) {
        char r72 = 1;
        int r82 = 0;
        int r10 = 6;
        if (a0.g(r23) == false) goto L5;
        File r92 = new File(r23);
        MessageDigest r12 = MessageDigest.getInstance("MD5");     // Catch: Throwable -> L115 NoSuchAlgorithmException -> L117 IOException -> L119
        FileInputStream r13 = new FileInputStream(r92);     // Catch: Throwable -> L115 NoSuchAlgorithmException -> L117 IOException -> L119
    L167:
        byte[] r15 = new byte[8192];     // Catch: Throwable -> L13 NoSuchAlgorithmException -> L15 IOException -> L17
    L10:
        int r11 = r13.read(r15);     // Catch: Throwable -> L13 NoSuchAlgorithmException -> L15 IOException -> L17
        if (r11 <= 0) goto L19;
        r12.update(r15, 0, r11);     // Catch: Throwable -> L13 NoSuchAlgorithmException -> L15 IOException -> L17
        goto L10
    L19:
        String r112 = h0(r12.digest());     // Catch: Throwable -> L13 NoSuchAlgorithmException -> L15 IOException -> L17
        r13.close();     // Catch: IOException -> L132
    L21:
        ma.l r122 = Locale.US;
        double r132 = r92.length();
        Double.isNaN(r132);
        String r133 = String.format(r122, "%.2f", new Object[]{Double.valueOf(r132 / 1048576.0d)});
        ef.b r14 = new ef.b(r92);     // Catch: Exception -> L113
        r14.M();     // Catch: Throwable -> L104
        ff.c r93 = r14.f4963e;     // Catch: Throwable -> L104
        r14.close();     // Catch: Exception -> L113
        StringBuilder r142 = new StringBuilder("http://");
        DecimalFormat r152 = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k r153 = com.yunpan.appmanage.util.j.f4033a;
        r142.append(r153.f4052i0);
        r142.append(":");
        String r02 = android.support.v4.media.session.a.s(r142, r153.f4054j0, "/path") + URLEncoder.encode(r23, HTTP.UTF_8);     // Catch: Exception -> L101
        String r16 = r153.f4052i0;
        String r102 = r93.f5813a;
        String r143 = r93.f5814b;
        long r19 = r93.f5817e.longValue();
        if (r02.isEmpty() == true) goto L183;
        if (r102.isEmpty() == true) goto L183;
        if (r133.isEmpty() == false) goto L148;
        r133 = "20";
    L148:
        Socket r94 = new Socket();     // Catch: Throwable -> L87 IOException -> L89
    L39:
        th = th;
        Socket r113 = r94;
    L96:
        if (r113 != null) goto L154;
    L98:
        throw th;
    L154:
        r113.close();     // Catch: IOException -> L136
    L41:
        e = e;
        r113 = r94;
    L139:
        ma.l r123 = new ma.l(6, e.getClass().getSimpleName() + "：" + e.getMessage(), 0);     // Catch: Throwable -> L95
        if (r113 == null) goto L184;
        r113.close();     // Catch: IOException -> L134
        r122 = r123;
    L147:
        return r122;
    L184:
        return r123;
    L95:
        th = th;
        goto L96
    L37:
        if (r16.isEmpty() == false) goto L43;
        r16 = "localhost";
    L43:
        r94.connect(new InetSocketAddress(r16, 6553), 5000);     // Catch: Throwable -> L39 IOException -> L41
        r94.setSoTimeout(1000);     // Catch: Throwable -> L39 IOException -> L41
        r94.setTcpNoDelay(true);     // Catch: Throwable -> L39 IOException -> L41
        r94.setKeepAlive(true);     // Catch: Throwable -> L39 IOException -> L41
        OutputStream r17 = r94.getOutputStream();     // Catch: Throwable -> L39 IOException -> L41
        InputStream r22 = r94.getInputStream();     // Catch: Throwable -> L39 IOException -> L41
        e0(r17, "159>>1>>0");     // Catch: Throwable -> L39 IOException -> L41
        String[] r124 = {"223", "INSTALL", r102, r143, r02, "2", String.valueOf(r19), r133, r112.toUpperCase(r122), "", "", M(r02)};     // Catch: Throwable -> L39 IOException -> L41
        StringBuilder r03 = new StringBuilder();     // Catch: Throwable -> L39 IOException -> L41
        int r114 = 0;
    L44:
        if (r114 >= 12) goto L48;
        if (r114 <= 0) goto L47;
        r03.append(">>");     // Catch: Throwable -> L39 IOException -> L41
    L47:
        r03.append(r124[r114]);     // Catch: Throwable -> L39 IOException -> L41
        r114 = r114 + 1;     // Catch: Throwable -> L39 IOException -> L41
        goto L44
    L48:
        e0(r17, r03.toString());     // Catch: Throwable -> L39 IOException -> L41
        long r5 = System.currentTimeMillis() + 240000;     // Catch: Throwable -> L39 IOException -> L41
        long r134 = System.currentTimeMillis();     // Catch: Throwable -> L39 IOException -> L41
        ByteArrayOutputStream r04 = new ByteArrayOutputStream(8192);     // Catch: Throwable -> L39 IOException -> L41
        byte[] r154 = new byte[65536];     // Catch: Throwable -> L39 IOException -> L41
        ag.h r115 = new ag.h();     // Catch: Throwable -> L39 IOException -> L41
    L51:
        if (System.currentTimeMillis() >= r5) goto L85;
        int r125 = r22.read(r154);     // Catch: Throwable -> L39 IOException -> L41 SocketTimeoutException -> L135
        if (r125 >= 0) goto L57;
        ma.l r126 = new ma.l(6, "连接被电视关闭", r82);     // Catch: Throwable -> L39 IOException -> L41 SocketTimeoutException -> L135
    L55:
        r94.close();     // Catch: IOException -> L134
        r122 = r126;
        goto L147
    L57:
        r04.write(r154, r82, r125);     // Catch: Throwable -> L39 IOException -> L41 SocketTimeoutException -> L135
    L58:
        byte[] r32 = r04.toByteArray();     // Catch: Throwable -> L39 IOException -> L41
        if (r32.length < 4) goto L68;
        int r4 = ((((r32[r82] & 255) << 24) | ((r32[r72] & 255) << 16)) | ((r32[2] & 255) << 8)) | (r32[3] & 255);     // Catch: Throwable -> L39 IOException -> L41
        if (r4 <= 0) goto L84;
        if (r4 >= 1048576) goto L84;
        int r83 = r4 + 4;     // Catch: Throwable -> L39 IOException -> L41
        if (r32.length < r83) goto L68;
        OutputStream r21 = r17;
        String r73 = new String(r32, 4, r4, StandardCharsets.UTF_8);     // Catch: Throwable -> L39 IOException -> L41
        byte[] r33 = r04.toByteArray();     // Catch: Throwable -> L39 IOException -> L41
        r04.reset();     // Catch: Throwable -> L39 IOException -> L41
        if (r33.length <= r83) goto L75;
        r04.write(r33, r83, r33.length - r83);     // Catch: Throwable -> L39 IOException -> L41
    L75:
        r126 = F(r73, r102, r115, r24);     // Catch: Throwable -> L39 IOException -> L41
        if (r126 != null) goto L79;
        r17 = r21;
        r72 = 1;
        r82 = 0;
        goto L58
    L79:
        if (v.f4106a.T != 3) goto L55;
        Thread.sleep(3020);     // Catch: Throwable -> L39 Exception -> L133
    L84:
        r126 = new ma.l(6, "帧长度异常：" + r4, 0);     // Catch: Throwable -> L39 IOException -> L41
    L68:
        long r34 = System.currentTimeMillis();     // Catch: Throwable -> L39 IOException -> L41
        if ((r34 - r134) <= PopupConst.DURATION_POPUP) goto L71;
        e0(r17, "150>>");     // Catch: Throwable -> L39 IOException -> L41
        r134 = r34;
    L71:
        r72 = 1;
        r82 = 0;
        goto L51
    L85:
        r126 = new ma.l(5, "等待 240000 ms 仍未收到终态", 0);     // Catch: Throwable -> L39 IOException -> L41
        goto L55
    L89:
        e = e;
        r113 = null;
    L87:
        th = th;
        r113 = null;
    L185:
        return r122;
    L183:
        return new ma.l(6, "tvIp / apkUrl / packageName 不能为空", 0);
    L102:
        return new ma.l(6, "url编码出错", 0);
    L104:
        th = move-exception;
        r14.close();     // Catch: Throwable -> L108
        throw th;     // Catch: Exception -> L113
    L108:
        th = move-exception;
        Throwable.class.getDeclaredMethod("addSuppressed", new Class[]{Throwable.class}).invoke(th, new Object[]{th});     // Catch: Exception -> L137
        throw th;     // Catch: Exception -> L113
    L187:
        throw th;     // Catch: Exception -> L113
    L114:
        return new ma.l(6, "无法解析此 apk", 0);
    L17:
        e = e;
    L126:
        throw new IllegalStateException("读取 APK 失败：" + r92, e);     // Catch: Throwable -> L123
    L15:
        e = e;
    L122:
        throw new IllegalStateException("当前环境不支持 MD5", e);     // Catch: Throwable -> L123
    L13:
        th = th;
        FileInputStream r116 = r13;
    L127:
        if (r116 == null) goto L130;
        r116.close();     // Catch: IOException -> L138
    L130:
        throw th;
    L123:
        th = th;
    L119:
        e = e;
    L117:
        e = e;
    L115:
        th = th;
        r116 = null;
        goto L127
    L5:
        return new ma.l(r10, "APK 文件不存在", r82);
    }

    public static boolean H(int r20) {
        if (r20 == 0) goto L26;
        ThreadLocal r12 = p0.a.f12538a;
        double[] r22 = (double[]) r12.get();
        if (r22 != null) goto L6;
        r22 = new double[3];
        r12.set(r22);
    L6:
        int r13 = Color.red(r20);
        int r4 = Color.green(r20);
        int r5 = Color.blue(r20);
        if (r22.length != 3) goto L24;
        double r62 = r13;
        Double.isNaN(r62);
        double r63 = r62 / 255.0d;
        if (r63 >= 0.04045d) goto L11;
        double r64 = r63 / 12.92d;
    L12:
        double r32 = r4;
        Double.isNaN(r32);
        double r33 = r32 / 255.0d;
        if (r33 >= 0.04045d) goto L15;
        double r34 = r33 / 12.92d;
    L16:
        double r02 = r5;
        Double.isNaN(r02);
        double r03 = r02 / 255.0d;
        if (r03 >= 0.04045d) goto L19;
        double r04 = r03 / 12.92d;
    L20:
        r22[0] = ((0.1805d * r04) + ((0.3576d * r34) + (0.4124d * r64))) * 100.0d;
        double r82 = ((0.0722d * r04) + ((0.7152d * r34) + (0.2126d * r64))) * 100.0d;
        r22[1] = r82;
        double r05 = r04 * 0.9505d;
        r22[2] = (r05 + ((r34 * 0.1192d) + (r64 * 0.0193d))) * 100.0d;
        if ((r82 / 100.0d) <= 0.5d) goto L26;
        return true;
    L19:
        r04 = Math.pow((r03 + 0.055d) / 1.055d, 2.4d);
        goto L20
    L15:
        r34 = Math.pow((r33 + 0.055d) / 1.055d, 2.4d);
        goto L16
    L11:
        r64 = Math.pow((r63 + 0.055d) / 1.055d, 2.4d);
        goto L12
    L24:
        throw new IllegalArgumentException("outXyz must have a length of 3.");
    L26:
        return false;
    }

    public static boolean I(String r12, String r22) {
        if (r12.startsWith(r22.concat("(")) == true) goto L5;
    L7:
        return false;
    L5:
        if (r12.endsWith(")") == false) goto L7;
        return true;
    }

    public static boolean J(String[] r4) {
        int r02 = r4.length;
        int r22 = 0;
    L3:
        if (r22 >= r02) goto L9;
        if (TextUtils.isEmpty(C(r4[r22])) == false) goto L6;
        r22 = r22 + 1;
        goto L3
    L6:
        return true;
    L9:
        return false;
    }

    public static int K(int r12, float r22, int r32) {
        return p0.a.b(p0.a.d(r32, Math.round(Color.alpha(r32) * r22)), r12);
    }

    public static int L(int r32, RoundingMode r4) {
        if (r32 <= 0) goto L23;
        boolean r02 = true;
        switch(w7.c.f17625a[r4.ordinal()]) {
            case 1: goto L12;
            case 2: goto L21;
            case 3: goto L21;
            case 4: goto L10;
            case 5: goto L10;
            case 6: goto L7;
            case 7: goto L7;
            case 8: goto L7;
            default: goto L6;
        };
    L7:
        int r42 = Integer.numberOfLeadingZeros(r32);
        return (31 - r42) + ((((-1257966797) >>> r42) - r32) >>> 31);
    L6:
        throw new AssertionError();
    L10:
        return 32 - Integer.numberOfLeadingZeros(r32 - 1);
    L12:
        if (r32 <= 0) goto L14;
        boolean r12 = true;
    L16:
        if (((r32 - 1) & r32) == 0) goto L19;
        r02 = false;
    L19:
        p000if.a.l(r12 & r02);
        goto L21
    L14:
        r12 = false;
    L21:
        return 31 - Integer.numberOfLeadingZeros(r32);
    L23:
        throw new IllegalArgumentException(g.b.i("x (", r32, ") must be > 0"));
    }

    public static String M(String r22) {
        byte[] r23 = r22.getBytes(StandardCharsets.UTF_8);
        return h0(MessageDigest.getInstance("MD5").digest(r23));
    L5:
        e = move-exception;
        throw new IllegalStateException("当前环境不支持 MD5", e);
    }

    public static dh.j N(n5 r92) {
        if (r92.B == false) goto L5;
        dh.j r02 = new dh.j(false);
    L6:
        r02.f3251a = 20000;
        r02.f3256f = 16000;
        long r32 = 0;
        sh.c r5 = sh.c.f14573c;
        long r72 = r32 / 1000;
        int r4 = (int) (r32 % 1000);
        if (r4 >= 0) goto L9;
        r4 = r4 + 1000;
        r72 = r72 - 1;
    L9:
        r02.f4654u = sh.c.a(r4 * 1000000, r72);
        if (r92.f18312y.isEmpty() == false) goto L14;
        r92.f18312y = HTTP.UTF_8;     // Catch: Exception -> L32
    L14:
        if (r92.f18312y.startsWith("自动") == false) goto L16;
        r02.G = true;     // Catch: Exception -> L32
    L17:
        r02.c(r92.f18292c, r92.f18293d);     // Catch: Exception -> L32
        if (zg.b.a(r92.f18294e) == false) goto L20;
        boolean r22 = r02.t("Anonymous", "");     // Catch: Exception -> L32
    L21:
        if (r22 == false) goto L30;
        r02.y();     // Catch: Exception -> L32
        if (c.L(r02.f4645j) == false) goto L31;
        if (r92.z == false) goto L27;
        r02.f4653t = 2;     // Catch: Exception -> L32
        r02.f4656w = null;     // Catch: Exception -> L32
        r02.f4655v = -1;     // Catch: Exception -> L32
    L28:
        return r02;
    L27:
        r02.f4653t = 0;     // Catch: Exception -> L32
        r02.f4656w = null;     // Catch: Exception -> L32
        r02.f4655v = -1;     // Catch: Exception -> L32
        goto L28
    L30:
        throw new Exception("账号或密码错误");     // Catch: Exception -> L32
    L20:
        r22 = r02.t(r92.f18294e, r92.f18295f);     // Catch: Exception -> L32
        goto L21
    L16:
        r02.f4648n = r92.f18312y;     // Catch: Exception -> L32
    L31:
        return null;
    L5:
        r02 = new dh.j(true);
        goto L6
    }

    public static ArrayList Q(r r72) {
        int r12 = 0;
        Response r22 = null;
        ResponseBody r32 = null;
    L3:
        if (r12 != 0) goto L6;
        f0.f4019a.f11674b = null;
    L8:
        r12 = r12 + 1;
        l9.a r4 = new l9.a(r72.f2741c);
        r4.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        r4.f11017i.b("Referer", r72.f2741c);
        r22 = r4.a();
        if (r22.isSuccessful() == true) goto L11;
    L10:
        r22 = null;
    L14:
        if (r22 == null) goto L3;
    L15:
        if (r22 == null) goto L20;
        if (r32 == null) goto L20;
        return R(r72, r32.string());
    L20:
        throw new Exception("打开失败");
    L11:
        r32 = r22.body();
        if (r32 != null) goto L14;
    L6:
        if (r12 > 2) goto L15;
        f0.f4019a.f11674b = HttpUrl.get(f0.a(r12));
        goto L8
    }

    public static ArrayList R(r r17, String r18) {
        char r32 = 3;
        char r4 = 4;
        String r5 = r17.f2741c;
        r17.f2744f = r5.substring(r5.lastIndexOf("/") + 1);
        int r52 = r18.indexOf("?");
        if (r52 == (-1)) goto L6;
        r17.f2744f = r17.f2744f.substring(0, r52);
    L6:
        if (r17.f2744f.isEmpty() == true) goto L52;
        String r53 = r17.f2744f;
        if (r53.length() <= 4) goto L20;
        String r54 = android.support.v4.media.session.a.l(1, 3, r53);
        int r10 = 0;
        int r11 = 0;
        int r12 = 1;
    L11:
        if (r10 >= r54.length()) goto L21;
        char r13 = r54.charAt((r54.length() - r10) - 1);
        String[] r14 = new String[62];
        r14[0] = "Y";
        r14[1] = "y";
        r14[2] = "0";
        r14[r32] = "Z";
        r14[r4] = "z";
        r14[5] = "N";
        r14[6] = "n";
        r14[7] = "M";
        r14[8] = "I";
        r14[9] = "6";
        r14[10] = "m";
        r14[11] = "W";
        r14[12] = "w";
        r14[13] = "1";
        r14[14] = "X";
        r14[15] = "x";
        r14[16] = "L";
        r14[17] = "l";
        r14[18] = "K";
        r14[19] = "7";
        r14[20] = "k";
        r14[21] = "i";
        r14[22] = "U";
        r14[23] = "u";
        r14[24] = "2";
        r14[25] = "V";
        r14[26] = "v";
        r14[27] = "J";
        r14[28] = "j";
        r14[29] = "8";
        r14[30] = "G";
        r14[31] = "g";
        r14[32] = "F";
        r14[33] = "S";
        r14[34] = "s";
        r14[35] = "3";
        r14[36] = "T";
        r14[37] = "t";
        r14[38] = "H";
        r14[39] = "h";
        r14[40] = "f";
        r14[41] = "E";
        r14[42] = "e";
        r14[43] = "D";
        r14[44] = "Q";
        r14[45] = "q";
        r14[46] = "4";
        r14[47] = "R";
        r14[48] = "r";
        r14[49] = "9";
        r14[50] = "d";
        r14[51] = "a";
        r14[52] = "C";
        r14[53] = "c";
        r14[54] = "B";
        r14[55] = "O";
        r14[56] = "o";
        r14[57] = "5";
        r14[58] = "P";
        r14[59] = "p";
        r14[60] = "b";
        r14[61] = "A";
        int r15 = 0;
    L13:
        if (r15 >= 62) goto L18;
        if (r14[r15].equals(String.valueOf(r13)) == true) goto L19;
        r15 = r15 + 1;
    L19:
        r11 = r11 + (r15 * r12);
        r12 = r12 * 62;
        r10 = r10 + 1;
        r32 = 3;
        r4 = 4;
        goto L11
    L18:
        r15 = -1;
    L21:
        if (r11 == 0) goto L50;
        String r42 = "";
        String r16 = UUID.randomUUID().toString().replace("-", "").substring(0, 21);
        r17.f2745g = r16;
        StringBuilder r19 = da.b.d("devType=6&devModel=Chrome&uuid=", r16, "&extra=2&timestamp=");
        r19.append(qf.c.a("" + System.currentTimeMillis()).toUpperCase());
        if (r17.f2742d.isEmpty() == true) goto L26;
        r42 = "&code=" + r17.f2742d;
    L26:
        r19.append(r42);
        r19.append("&shareId=");
        String r02 = g.b.l(r17.f2744f, "&type=0&offset=1&limit=60", r19);
        l9.b r22 = new l9.b(da.b.c("https://api.ilanzou.com/unproved/recommend/list?", r02));
        k9.a r110 = r22.f11017i;
        r110.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        r110.b("Referer", "https://www.ilanzou.com/");
        MediaType r111 = MediaType.parse("application/json;charset=UTF-8");
        r22.f11003n = r02;
        r22.f11002m = r111;
        Response r03 = r22.a();
        if (r03.isSuccessful() == false) goto L48;
        ResponseBody r04 = r03.body();
        if (r04 == null) goto L46;
        String r05 = r04.string();
        if (r05.contains("totalPage") == false) goto L44;
        z7.o r06 = d.b.b0(r05).g().o("list").f();
        ArrayList r112 = new ArrayList();
        z7.o r07 = r06.l(0).g().o("fileList").f();
        int r23 = 0;
    L34:
        if (r23 >= r07.f19478a.size()) goto L42;
        ba.j r33 = new ba.j();
        r33.f2708e = android.support.v4.media.session.a.j(r07, r23, "fileType");
        r33.f2707d = android.support.v4.media.session.a.v(r07, r23, "updTime");
        if (r07.l(r23).g().o("fileId") != null) goto L38;
        r33.f2709f = android.support.v4.media.session.a.j(r07, r23, "folderId");
        r33.f2710g = android.support.v4.media.session.a.v(r07, r23, "folderName");
    L41:
        r112.add(new b6(r33));
        r23 = r23 + 1;
        goto L34
    L38:
        r33.f2704a = android.support.v4.media.session.a.j(r07, r23, "fileId");
        r33.f2705b = android.support.v4.media.session.a.v(r07, r23, "fileName");
        r33.f2706c = android.support.v4.media.session.a.j(r07, r23, "fileSize");
        if (p000if.a.k0(r33.f2705b) == false) goto L41;
        StringBuilder r43 = new StringBuilder();
        String r55 = r33.f2705b;
        r43.append(r55.substring(0, r55.lastIndexOf(".")));
        r43.append(".apk");
        r33.f2705b = r43.toString();
        goto L41
    L42:
        return r112;
    L44:
        throw new Exception("不存在文件");
    L46:
        throw new Exception("请求失败");
    L48:
        throw new Exception("请求失败");
    L50:
        throw new Exception("分享地址错误");
    L20:
        r11 = 0;
        goto L21
    L52:
        throw new Exception("分享地址错误");
    }

    public static final Cursor S(androidx.room.p r12, c4.d r22) {
        ue.d.e(r12, "db");
        ue.d.e(r22, "sqLiteQuery");
        return r12.query(r22, null);
    }

    public static long T(Context r72, Uri r82, String r92, long r10) {
        ContentResolver r12 = r72.getContentResolver();
        Cursor r73 = null;
        r73 = r12.query(r82, new String[]{r92}, null, null, null);     // Catch: Throwable -> L10 Exception -> L12
        if (r73.moveToFirst() == true) goto L6;
    L14:
        i(r73);
        return r10;
    L6:
        if (r73.isNull(0) == true) goto L14;
        long r83 = r73.getLong(0);     // Catch: Throwable -> L10 Exception -> L12
        i(r73);
        return r83;
    L12:
        e = move-exception;
        e.toString();     // Catch: Throwable -> L10
        i(r73);
        return r10;
    L10:
        th = move-exception;
        i(r73);
        throw th;
    }

    public static String U(Context r82, Uri r92, String r10) {
        Cursor r93 = r82.getContentResolver().query(r92, new String[]{r10}, null, null, null);     // Catch: Throwable -> L19 Exception -> L21
    L15:
        Exception e7 = e;
    L26:
        e7.toString();     // Catch: Throwable -> L13
        i(r93);
        return null;
    L13:
        Throwable th2 = th;
    L29:
        i(r93);
        throw th2;
    L7:
        if (r93.moveToFirst() == true) goto L9;
    L17:
        i(r93);
        return null;
    L9:
        if (r93.isNull(0) == true) goto L17;
        String r83 = r93.getString(0);     // Catch: Throwable -> L13 Exception -> L15
        i(r93);
        return r83;
    L21:
        e7 = e;
    L22:
        r93 = null;
    L24:
        e = move-exception;
        e7 = e;
    L19:
        th = move-exception;
        r93 = null;
        th2 = th;
        goto L29
    }

    public static ArrayList V(n5 r12, WpPathBean r13) {
        ArrayList r02 = new ArrayList();
        ArrayList r14 = new ArrayList();
        if (r13.path.isEmpty() == false) goto L5;
        r13.path = "/";
    L5:
        System.out.getClass();
        if (r12.A.p(r13.path) == false) goto L41;
        dh.g[] r22 = r12.A.s(null);
        if (r22 != null) goto L11;
        return null;
    L11:
        if (r22.length == 1) goto L13;
    L20:
        int r122 = r22.length;
        int r4 = 0;
    L21:
        if (r4 >= r122) goto L36;
        dh.g r5 = r22[r4];
        WpPathBean r82 = new WpPathBean();
        String r92 = r5.f4667d;
        r82.name = r92;
        if (r92.equals(".") == true) goto L35;
        if (r82.name.equals("..") == true) goto L35;
        r82.path = r13.path + r82.name;
        Calendar r93 = r5.f4668e;
        r82.time_txt = r93.get(1) + "/" + (r93.get(2) + 1) + "/" + r93.get(5) + " " + r93.get(11) + ":" + r93.get(12);
        if (r5.f4664a != 0) goto L30;
        boolean r94 = true;
    L31:
        r82.is_dir = !r94;
        if (r94 == true) goto L34;
        r82.path = g.b.l(r82.path, "/", new StringBuilder());
        r02.add(r82);
        goto L35
    L34:
        long r95 = r5.f4665b;
        r82.size_long = r95;
        r82.size_txt = p000if.a.D0(r95);
        r14.add(r82);
        goto L35
    L30:
        r94 = false;
    L35:
        r4 = r4 + 1;
        goto L21
    L36:
        Collections.sort(r02, new a2.m(25));
        Collections.sort(r14, new a2.m(26));
        if (r14.isEmpty() == true) goto L39;
        r02.addAll(r14);
    L39:
        return r02;
    L13:
        if (r13.path.equals("/") == false) goto L20;
        if (r22[0].f4664a == 0) goto L20;
        String r23 = g.b.l(r22[0].f4667d, "/", new StringBuilder("/"));
        r13.path = r23;
        r12.A.p(r23);
        r22 = r12.A.s(null);
        if (r22 != null) goto L20;
        return null;
    L41:
        throw new Exception("无权访问");
    }

    public static ArrayList W(r r92) {
        StringBuilder r02 = new StringBuilder("devType=6&devModel=Chrome&uuid=");
        r02.append(r92.f2745g);
        r02.append("&extra=2&timestamp=");
        r02.append(qf.c.a("" + System.currentTimeMillis()).toUpperCase());
        r02.append("&shareId=");
        r02.append(r92.f2744f);
        r02.append("&folderId=");
        r02.append(r92.f2750m);
        r02.append("&offset=");
        String r03 = android.support.v4.media.session.a.s(r02, r92.f2751n, "&limit=60");
        l9.b r22 = new l9.b(da.b.c("https://api.ilanzou.com/unproved/share/list?", r03));
        r22.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        r22.f11017i.b("Referer", "https://www.ilanzou.com/" + r92.f2744f);
        MediaType r12 = MediaType.parse("application/json;charset=UTF-8");
        r22.f11003n = r03;
        r22.f11002m = r12;
        Response r04 = r22.a();
        if (r04.isSuccessful() == false) goto L27;
        ResponseBody r05 = r04.body();
        if (r05 == null) goto L25;
        String r06 = r05.string();
        if (r06.indexOf("totalPage") == (-1)) goto L23;
        s r07 = d.b.b0(r06).g();
        int r13 = r07.o("totalPage").e();
        z7.o r08 = r07.o("list").f();
        ArrayList r23 = new ArrayList();
        int r4 = 0;
    L10:
        if (r4 >= r08.f19478a.size()) goto L19;
        ba.j r5 = new ba.j();
        r5.f2708e = android.support.v4.media.session.a.j(r08, r4, "fileType");
        r5.f2707d = android.support.v4.media.session.a.v(r08, r4, "updTime");
        if (r08.l(r4).g().o("fileId") != null) goto L14;
        r5.f2709f = android.support.v4.media.session.a.j(r08, r4, "folderId");
        r5.f2710g = android.support.v4.media.session.a.v(r08, r4, "folderName");
    L17:
        r23.add(new b6(r5));
        r4 = r4 + 1;
        goto L10
    L14:
        r5.f2704a = r08.l(r4).g().o("fileId").h();
        r5.f2705b = android.support.v4.media.session.a.v(r08, r4, "fileName");
        r5.f2706c = r08.l(r4).g().o("fileSize").h();
        if (p000if.a.k0(r5.f2705b) == false) goto L17;
        StringBuilder r62 = new StringBuilder();
        String r72 = r5.f2705b;
        r62.append(r72.substring(0, r72.lastIndexOf(".")));
        r62.append(".apk");
        r5.f2705b = r62.toString();
        goto L17
    L19:
        if (r92.f2751n >= r13) goto L21;
        r92.f2752o = true;
    L21:
        return r23;
    L23:
        throw new Exception("不存在文件");
    L25:
        throw new Exception("请求失败");
    L27:
        throw new Exception("请求失败");
    }

    public static ByteBuffer X(ByteBuffer r22) {
        return s1.g.a0(r22, c.r(r22.getInt()));
    }

    public static long Y(q r72, int r82, int r92) {
        r72.O(r82);
        if (r72.a() >= 5) goto L5;
        return -9223372036854775807L;
    L5:
        int r83 = r72.o();
        if ((8388608 & r83) == 0) goto L9;
        return -9223372036854775807L;
    L9:
        if (((2096896 & r83) >> 8) == r92) goto L12;
        return -9223372036854775807L;
    L12:
        if ((r83 & 32) != 0) goto L14;
    L21:
        return -9223372036854775807L;
    L14:
        if (r72.B() < 7) goto L21;
        if (r72.a() < 7) goto L21;
        if ((r72.B() & 16) != 16) goto L21;
        r72.l(0, 6, new byte[6]);
        return (((((r0[0] & 255) << 25) | ((r0[1] & 255) << 17)) | ((r0[2] & 255) << 9)) | ((r0[3] & 255) << 1)) | ((255 & r0[4]) >> 7);
    }

    public static void Z(t1.a r5) {
        r5.f14651k = -3.4028235E38f;
        r5.f14650j = Integer.MIN_VALUE;
        CharSequence r02 = r5.f14641a;
        if ((r02 instanceof Spanned) == true) goto L5;
        return;
    L5:
        if ((r02 instanceof Spannable) == true) goto L7;
        r5.f14641a = SpannableString.valueOf(r02);
        r5.f14642b = null;
    L7:
        CharSequence r52 = r5.f14641a;
        r52.getClass();
        Spannable r53 = (Spannable) r52;
        int r12 = 0;
        Object[] r03 = r53.getSpans(0, r53.length(), Object.class);
        int r22 = r03.length;
    L8:
        if (r12 >= r22) goto L19;
        Object r32 = r03[r12];
        if ((r32 instanceof AbsoluteSizeSpan) == false) goto L12;
    L13:
        r53.removeSpan(r32);
    L14:
        r12 = r12 + 1;
        goto L8
    L12:
        if ((r32 instanceof RelativeSizeSpan) == false) goto L14;
    }

    public static float a0(int r22, float r32, int r4, int r5) {
        if (r32 != (-3.4028235E38f)) goto L5;
        return -3.4028235E38f;
    L5:
        if (r22 != 0) goto L7;
        float r23 = r5;
    L14:
        return r32 * r23;
    L7:
        if (r22 != 1) goto L9;
        r23 = r4;
        goto L14
    L9:
        if (r22 == 2) goto L11;
        return -3.4028235E38f;
    L11:
        return r32;
    }

    public static int b0(Context r12, int r22, int r32) {
        TypedValue r13 = android.support.v4.media.session.b.D(r12, r22);
        if (r13 != null) goto L5;
        return r32;
    L5:
        if (r13.type == 16) goto L7;
        return r32;
    L7:
        return r13.data;
    }

    public static TimeInterpolator c0(Context r5, int r62, Interpolator r72) {
        TypedValue r02 = new TypedValue();
        if (r5.getTheme().resolveAttribute(r62, r02, true) == true) goto L6;
        return r72;
    L6:
        if (r02.type != 3) goto L31;
        String r63 = String.valueOf(r02.string);
        if (I(r63, "cubic-bezier") == true) goto L15;
        if (I(r63, "path") == true) goto L15;
        return AnimationUtils.loadInterpolator(r5, r02.resourceId);
    L15:
        if (I(r63, "cubic-bezier") == false) goto L22;
        String[] r52 = r63.substring(13, r63.length() - 1).split(",");
        if (r52.length != 4) goto L20;
        return c.o(z(0, r52), z(1, r52), z(2, r52), z(3, r52));
    L20:
        throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + r52.length);
    L22:
        if (I(r63, "path") == false) goto L29;
        Path r53 = p000if.a.v(r63.substring(5, r63.length() - 1));
        if (Build.VERSION.SDK_INT < 21) goto L27;
        return z0.a.c(r53);
    L27:
        return new i4.i(r53);
    L29:
        throw new IllegalArgumentException("Invalid motion easing type: ".concat(r63));
    L31:
        throw new IllegalArgumentException("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    public static boolean d(WpPathBean r62, String r72, n5 r82) {
        dh.j r83 = N(r82);
        if (r83 != null) goto L5;
        return false;
    L5:
        BufferedInputStream r12 = null;
        fh.c r63 = r83.x(r62.path);     // Catch: Throwable -> L34 Exception -> L36
    L59:
        FileOutputStream r22 = new FileOutputStream(r72);     // Catch: Throwable -> L29 Exception -> L32
    L63:
        BufferedInputStream r73 = new BufferedInputStream(r63);     // Catch: Throwable -> L26 Exception -> L28
        BufferedOutputStream r32 = new BufferedOutputStream(r22);     // Catch: Throwable -> L23 Exception -> L25
    L55:
        byte[] r13 = new byte[1048576];     // Catch: Throwable -> L16 Exception -> L47
    L12:
        int r4 = r73.read(r13);     // Catch: Throwable -> L16 Exception -> L47
        if (r4 == (-1)) goto L19;
        r32.write(r13, 0, r4);     // Catch: Throwable -> L16 Exception -> L47
        r32.flush();     // Catch: Throwable -> L16 Exception -> L47
        goto L12
    L19:
        q4.a.e(r73);
        q4.a.e(r32);
        q4.a.e(r22);
        q4.a.e(r63);
        r83.h();     // Catch: Exception -> L45
    L21:
        h(r83);
        return true;
    L16:
        th = th;
    L17:
        r12 = r73;
        FileOutputStream r33 = r32;
    L37:
        q4.a.e(r12);
        q4.a.e(r33);
        q4.a.e(r22);
        q4.a.e(r63);
        r83.h();     // Catch: Exception -> L46
    L39:
        h(r83);
        throw th;
    L18:
        r12 = r73;
        FileOutputStream r34 = r32;
    L41:
        q4.a.e(r12);
        q4.a.e(r34);
        q4.a.e(r22);
        q4.a.e(r63);
        r83.h();     // Catch: Exception -> L48
    L43:
        h(r83);
        return false;
    L25:
        r32 = 0;
    L23:
        th = th;
        r32 = 0;
        goto L17
    L28:
        r34 = null;
    L26:
        th = th;
        r33 = null;
    L32:
        r22 = null;
    L33:
        r34 = r22;
    L29:
        th = th;
        r22 = null;
    L31:
        r33 = r22;
    L36:
        r63 = null;
        r22 = null;
    L34:
        th = th;
        r63 = null;
        r22 = null;
        goto L31
    }

    public static final long d0(CodeEditor r92, MotionEvent r10, int r11) {
        ue.d.e(r92, "<this>");
        ue.d.e(r10, "event");
        if (r11 != (-1)) goto L5;
        float r12 = r10.getX();
    L6:
        float r13 = r12 + r92.getOffsetX();
        if (r11 != (-1)) goto L9;
        float r102 = r10.getY();
    L10:
        float r103 = r102 + r92.getOffsetY();
        float r112 = r92.R();
        r92.getRenderer().z();
        float r02 = r92.S();
        int r32 = 1;
        if (r13 >= 0.0f) goto L14;
    L12:
        int r113 = 0;
    L50:
        if (r103 < 0.0f) goto L55;
        int r03 = r92.getScrollMaxY();
        if (r103 > ((r92.getHeight() / 2) + r03)) goto L55;
        r32 = 0;
    L55:
        return sb.h.g(r113, r32);
    L14:
        if (0.0f > r13) goto L19;
        if (r13 > r112) goto L19;
        r113 = 1;
    L19:
        if (r112 <= r13) goto L21;
    L23:
        float r114 = r112 + 0;
        if (r13 <= (r92.getDividerMarginLeft() + r114)) goto L26;
    L28:
        float r72 = r92.getDividerWidth() + (r92.getDividerMarginLeft() + r114);
        if (r13 <= (r92.getDividerWidth() + (r92.getDividerMarginRight() + (r92.getDividerMarginLeft() + r114)))) goto L31;
    L33:
        float r62 = r92.getDividerMarginLeft() + r114;
        if (r13 <= (r92.getDividerWidth() + (r92.getDividerMarginLeft() + r114))) goto L36;
    L38:
        r113 = 5;
        if (r02 > r13) goto L44;
        int r04 = r92.getScrollMaxX();
        if (r13 <= (r92.getWidth() + r04)) goto L50;
    L44:
        if (r92.H == false) goto L12;
        if (0.0f > r13) goto L12;
        if (r13 > r92.getWidth()) goto L12;
    L36:
        if (r62 > r13) goto L38;
        r113 = 4;
        goto L50
    L31:
        if (r72 > r13) goto L33;
    L32:
        r113 = 3;
        goto L50
    L26:
        if (r114 > r13) goto L28;
    L21:
        if (r13 > (0 + r112)) goto L23;
        r113 = 2;
        goto L50
    L9:
        r102 = r10.getY(r11);
        goto L10
    L5:
        r12 = r10.getX(r11);
        goto L6
    }

    public static WpPathBean e(WpPathBean r32, String r4, n5 r5) {
        String r12 = r32.path + r4 + "/";     // Catch: Exception -> L8
        r5.A.u(r12);     // Catch: Exception -> L8
        if (r5.A.p(r32.path) == false) goto L7;
        WpPathBean r33 = new WpPathBean(r4, r12);     // Catch: Exception -> L8
        r33.is_dir = true;     // Catch: Exception -> L8
        DecimalFormat r42 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Exception -> L8
        r33.time_txt = com.yunpan.appmanage.util.j.f4033a.f4038b0.format(new Date());     // Catch: Exception -> L8
        return r33;
    L7:
        return null;
    }

    public static void e0(OutputStream r62, String r72) {
        byte[] r73 = r72.getBytes(StandardCharsets.UTF_8);
        r62.write(new byte[]{(byte) (r73.length >>> 24), (byte) (r73.length >>> 16), (byte) (r73.length >>> 8), (byte) r73.length});
        r62.write(r73);
        r62.flush();
    }

    public static c2 f(View r32) {
        ue.d.e(r32, "<this>");
        float r02 = r32.getAlpha();
        c2 r22 = c2.f1222d;
        if (r02 == 0.0f) goto L5;
    L7:
        int r33 = r32.getVisibility();
        if (r33 == 0) goto L17;
        if (r33 != 4) goto L12;
        return r22;
    L12:
        if (r33 != 8) goto L15;
        return c2.f1221c;
    L15:
        throw new IllegalArgumentException(da.b.a(r33, "Unknown visibility "));
    L17:
        return c2.f1220b;
    L5:
        if (r32.getVisibility() != 0) goto L7;
        return r22;
    }

    public static void f0(z r32, boolean r4) {
        int r02 = Build.VERSION.SDK_INT;
        if (r02 < 23) goto L6;
        b1.n.c(r32, r4);
        return;
    L6:
        if (r02 >= 21) goto L8;
        return;
    L8:
        if (f3301d == false) goto L18;
    L12:
        Field r03 = f3300c;
        if (r03 == null) goto L24;
        r03.set(r32, Boolean.valueOf(r4));     // Catch: IllegalAccessException -> L16
        return;
    L25:
        return;
    L24:
        return;
    L18:
        Field r12 = PopupWindow.class.getDeclaredField("mOverlapAnchor");     // Catch: NoSuchFieldException -> L17
        f3300c = r12;     // Catch: NoSuchFieldException -> L17
        r12.setAccessible(true);     // Catch: NoSuchFieldException -> L17
    L11:
        f3301d = true;
        goto L12
    }

    public static int g(int r62, int r72) {
        long r02 = r62 + r72;
        int r22 = (int) r02;
        if (r02 != r22) goto L5;
        boolean r03 = true;
    L6:
        if (r03 == false) goto L9;
        return r22;
    L9:
        throw new ArithmeticException("overflow: checkedAdd(" + r62 + ", " + r72 + ")");
    L5:
        r03 = false;
        goto L6
    }

    public static void g0(PopupWindow r62, int r72) {
        if (Build.VERSION.SDK_INT < 23) goto L6;
        b1.n.d(r62, r72);
        return;
    L6:
        if (f3299b == false) goto L17;
    L9:
        Method r22 = f3298a;
        if (r22 == null) goto L20;
        r22.invoke(r62, new Object[]{Integer.valueOf(r72)});     // Catch: Exception -> L13
        return;
    L21:
        return;
    L20:
        return;
    L17:
        Method r23 = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", new Class[]{Integer.TYPE});     // Catch: Exception -> L14
        f3298a = r23;     // Catch: Exception -> L14
        r23.setAccessible(true);     // Catch: Exception -> L14
    L8:
        f3299b = true;
        goto L9
    }

    public static void h(dh.j r02) {
        if (r02 == null) goto L10;
        r02.d();     // Catch: Exception -> L5
        return;
    L5:
        e = move-exception;
        e.printStackTrace();
        return;
    }

    public static String h0(byte[] r62) {
        char[] r02 = new char[r62.length * 2];
        int r12 = 0;
    L4:
        if (r12 >= r62.length) goto L7;
        byte r22 = r62[r12];
        int r4 = r12 * 2;
        r02[r4] = Character.forDigit((r22 & 255) >>> 4, 16);
        r02[r4 + 1] = Character.forDigit(r22 & 15, 16);
        r12 = r12 + 1;
        goto L4
    L7:
        return new String(r02);
    }

    public static void i(Cursor r02) {
        if (r02 != null) goto L9;
        return;
    L9:
        com.hierynomus.security.jce.a.m(r02);     // Catch: RuntimeException -> L5 Exception -> L8
        goto L12
    L11:
        return;
    L5:
        e = move-exception;
        throw e;
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
    public static void i0(WpTaskBean r21, u r22) {
        BufferedInputStream r23 = null;
        FileInputStream r32 = new FileInputStream(r21.bdPathInfo.f18365b);     // Catch: Throwable -> L70 Exception -> L72
    L109:
        dh.j r4 = N(r21.userInfo);     // Catch: Throwable -> L67 Exception -> L69
        if (r4 != null) goto L105;
        r21.str_state = "";     // Catch: Throwable -> L11 Exception -> L14
        r21.str1 = "创建FTP连接失败";     // Catch: Throwable -> L11 Exception -> L14
        q4.a.e(r32);
        r4.h();     // Catch: Exception -> L82
    L9:
        h(r4);
        return;
    L14:
        fh.d r5 = null;
        Object r72 = null;
    L15:
        FileInputStream r16 = r32;
        ?? r73 = r72;
    L87:
        r21.str_state = "";     // Catch: Throwable -> L76
        r21.str1 = "上传失败";     // Catch: Throwable -> L76
        q4.a.e(r23);
        q4.a.e(r73);
        q4.a.e(r5);
        q4.a.e(r16);
    L89:
        r4.h();     // Catch: Exception -> L84
    L55:
        h(r4);
        return;
    L76:
        th = th;
    L77:
        q4.a.e(r23);
        q4.a.e(r73);
        q4.a.e(r5);
        q4.a.e(r16);
        r4.h();     // Catch: Exception -> L85
    L79:
        h(r4);
        throw th;
    L11:
        th = th;
        r5 = null;
        r73 = 0;
    L13:
        r16 = r32;
        goto L77
    L105:
        r5 = r4.z(r21.wpPathInfo.path + r21.bdPathInfo.f18364a);     // Catch: Throwable -> L62 Exception -> L65
        if (r5 != null) goto L103;
        r21.str_state = "";     // Catch: Throwable -> L23 Exception -> L25
        r21.str1 = "打开远程流失败";     // Catch: Throwable -> L23 Exception -> L25
        q4.a.e(r5);
        q4.a.e(r32);
        r4.h();     // Catch: Exception -> L83
    L21:
        h(r4);
        return;
    L25:
        r72 = null;
    L23:
        th = th;
        r73 = 0;
        goto L13
    L103:
        BufferedInputStream r62 = new BufferedInputStream(r32);     // Catch: Throwable -> L59 Exception -> L61
    L112:
        r73 = new BufferedOutputStream(r5);     // Catch: Throwable -> L56 Exception -> L58
    L107:
        byte[] r24 = new byte[PKIFailureInfo.signerNotTrusted];     // Catch: Throwable -> L45 Exception -> L47
        long r82 = r21.bdPathInfo.f18367d;     // Catch: Throwable -> L45 Exception -> L47
        int r10 = 0;
        long r11 = 0;
        int r13 = 0;
    L30:
        int r14 = r62.read(r24);     // Catch: Throwable -> L45 Exception -> L47
        if (r14 == (-1)) goto L48;
        r73.write(r24, r10, r14);     // Catch: Throwable -> L45 Exception -> L47
        r73.flush();     // Catch: Throwable -> L45 Exception -> L47
        long r112 = r11 + r14;     // Catch: Throwable -> L45 Exception -> L47
        StringBuilder r142 = new StringBuilder();     // Catch: Throwable -> L45 Exception -> L47
        r142.append("上传中：");     // Catch: Throwable -> L45 Exception -> L47
        DecimalFormat r15 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Throwable -> L45 Exception -> L47
        com.yunpan.appmanage.util.k r152 = com.yunpan.appmanage.util.j.f4033a;     // Catch: Throwable -> L45 Exception -> L47
        DecimalFormat r153 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Throwable -> L45 Exception -> L47
        byte[] r17 = r24;
        r16 = r32;
        double r25 = r112;
        Double.isNaN(r25);
        double r102 = r82;
        Double.isNaN(r102);
        r142.append(r153.format((r25 * 100.0d) / r102));     // Catch: Throwable -> L37 Exception -> L86
        r142.append("%");     // Catch: Throwable -> L37 Exception -> L86
        r21.str1 = r142.toString();     // Catch: Throwable -> L37 Exception -> L86
        r13 = r13 + 1;     // Catch: Throwable -> L37 Exception -> L86
        if (r13 <= 2) goto L42;
        Message r26 = Message.obtain();     // Catch: Throwable -> L37 Exception -> L86
        r26.what = 10;     // Catch: Throwable -> L37 Exception -> L86
        r26.obj = r21;     // Catch: Throwable -> L37 Exception -> L86
        r22.sendMessage(r26);     // Catch: Throwable -> L37 Exception -> L86
        r13 = 0;
    L42:
        if (r21.isTask_stop == true) goto L50;
        r32 = r16;
        r24 = r17;
        r11 = r112;
        r10 = 0;
    L50:
        if (r21.isTask_stop == false) goto L52;
        r21.str_state = "";     // Catch: Throwable -> L37 Exception -> L86
        r21.str1 = "主动停止任务";     // Catch: Throwable -> L37 Exception -> L86
    L53:
        q4.a.e(r62);
        q4.a.e(r73);
        q4.a.e(r5);
        q4.a.e(r16);
        goto L89
    L52:
        r21.str_state = "";     // Catch: Throwable -> L37 Exception -> L86
        r21.str1 = "上传完成";     // Catch: Throwable -> L37 Exception -> L86
    L37:
        th = th;
    L38:
        r23 = r62;
    L39:
        r23 = r62;
        r73 = r73;
        goto L87
    L48:
        r16 = r32;
        goto L50
    L47:
        r16 = r32;
    L45:
        th = th;
        r16 = r32;
    L58:
        r16 = r32;
        r73 = 0;
    L56:
        th = th;
        r16 = r32;
        r73 = 0;
    L61:
        r16 = r32;
        r73 = 0;
    L59:
        th = th;
        r16 = r32;
        r73 = 0;
        goto L77
    L65:
        r16 = r32;
        r5 = null;
    L66:
        r73 = r5;
    L62:
        th = th;
        r16 = r32;
        r5 = null;
    L64:
        r73 = r5;
        goto L77
    L69:
        r16 = r32;
        r4 = null;
        r5 = null;
    L67:
        th = th;
        r16 = r32;
        r4 = null;
        r5 = null;
    L72:
        r4 = null;
        r5 = null;
        r73 = 0;
        r16 = null;
    L70:
        th = th;
        r4 = null;
        r5 = null;
        r73 = 0;
        r16 = null;
        goto L77
    }

    public static String j(n5 r82) {
        dh.j r22 = r82.A;
        if (r22 == null) goto L7;
        r22.k(1);     // Catch: Exception -> L41
        r82.A.d();     // Catch: Exception -> L41
    L5:
        r82.A = null;
    L7:
        if (r82.B == false) goto L9;
        dh.j r23 = new dh.j(false);
    L10:
        r23.f3251a = 20000;
        r23.f3256f = 16000;
    L14:
        e = move-exception;
        e.printStackTrace();
        System.out.getClass();
        h(r23);
        String r83 = ("" + e.getMessage()).trim();
        if (r83.isEmpty() == false) goto L40;
        return "连接失败";
    L40:
        return r83;
    L12:
        if (r82.f18312y.isEmpty() == false) goto L17;
        r82.f18312y = HTTP.UTF_8;     // Catch: Exception -> L14
    L17:
        if (r82.f18312y.startsWith("自动") == false) goto L19;
        r23.G = true;     // Catch: Exception -> L14
    L20:
        r23.c(r82.f18292c, r82.f18293d);     // Catch: Exception -> L14
        if (zg.b.a(r82.f18294e) == false) goto L23;
        boolean r4 = r23.t("Anonymous", "");     // Catch: Exception -> L14
    L24:
        if (r4 == false) goto L35;
        r23.y();     // Catch: Exception -> L14
        if (c.L(r23.f4645j) == true) goto L29;
        return "连接失败";
    L29:
        if (r82.z == false) goto L31;
        r23.f4653t = 2;     // Catch: Exception -> L14
        r23.f4656w = null;     // Catch: Exception -> L14
        r23.f4655v = -1;     // Catch: Exception -> L14
    L32:
        r82.A = r23;     // Catch: Exception -> L14
        return "";
    L31:
        r23.f4653t = 0;     // Catch: Exception -> L14
        r23.f4656w = null;     // Catch: Exception -> L14
        r23.f4655v = -1;     // Catch: Exception -> L14
        goto L32
    L35:
        throw new Exception("账号或密码错误");     // Catch: Exception -> L14
    L23:
        r4 = r23.t(r82.f18294e, r82.f18295f);     // Catch: Exception -> L14
        goto L24
    L19:
        r23.f4648n = r82.f18312y;     // Catch: Exception -> L14
        goto L20
    L9:
        r23 = new dh.j(true);
        goto L10
    }

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
    public static String k(FtpCopyProgressBean r92, String r10, String r11) {
        BufferedInputStream r02 = null;
        dh.j r12 = N(r92.userInfo);     // Catch: Throwable -> L67 Exception -> L69
    L5:
        if (r12 != null) goto L119;
        throw null;     // Catch: Exception -> L64
    L64:
        r12.h();     // Catch: Exception -> L91
    L65:
        h(r12);
        return "新建FTP连接失败";
    L119:
        ?? r32 = N(r92.userInfo);     // Catch: Throwable -> L58 Exception -> L61
        if (r32 != null) goto L110;
        r32.h();     // Catch: Exception -> L89
    L108:
        r12.h();     // Catch: Exception -> L90
    L10:
        h(r32);
        h(r12);
        return "新建FTP连接失败";
    L110:
        fh.c r102 = r12.x(r10);     // Catch: Throwable -> L55 Exception -> L57
        if (r102 != null) goto L121;
        String r93 = "打开inputStream失败";
        q4.a.e(r102);
        r32.h();     // Catch: Exception -> L82
        r92 = r93;
    L92:
        goto L101
    L121:
        fh.d r112 = r32.z(r11);     // Catch: Throwable -> L20 Exception -> L23
        if (r112 != null) goto L117;
        String r94 = "打开outputStream失败";
        q4.a.e(r112);
        q4.a.e(r102);
        r32.h();     // Catch: Exception -> L82
        r92 = r94;
        goto L92
    L117:
        BufferedInputStream r22 = new BufferedInputStream(r102);     // Catch: Throwable -> L31 Exception -> L33
        ?? r4 = new BufferedOutputStream(r112);     // Catch: Throwable -> L52 Exception -> L54
    L112:
        byte[] r03 = new byte[PKIFailureInfo.signerNotTrusted];     // Catch: Throwable -> L44 Exception -> L88
    L38:
        int r5 = r22.read(r03);     // Catch: Throwable -> L44 Exception -> L88
        if (r5 == (-1)) goto L47;
        r4.write(r03, 0, r5);     // Catch: Throwable -> L44 Exception -> L88
        r4.flush();     // Catch: Throwable -> L44 Exception -> L88
        r92.size_success.getAndAdd(r5);     // Catch: Throwable -> L44 Exception -> L88
        if (r92.isStop == false) goto L38;
        r92 = "主动停止任务";
    L48:
        q4.a.e(r22);
        q4.a.e(r4);
        q4.a.e(r112);
        q4.a.e(r102);
        r32.h();     // Catch: Exception -> L84
        goto L103
    L47:
        r92 = "";
        goto L48
    L44:
        th = th;
    L45:
        r02 = r22;
        fh.d r42 = r4;
    L76:
        q4.a.e(r02);
        q4.a.e(r42);
        q4.a.e(r112);
        q4.a.e(r102);
        r32.h();     // Catch: Exception -> L86
    L97:
        r12.h();     // Catch: Exception -> L87
    L79:
        h(r32);
        h(r12);
        throw th;
    L46:
        r02 = r22;
        fh.d r43 = r4;
    L70:
        r92 = "复制失败";
        q4.a.e(r02);
        q4.a.e(r43);
        q4.a.e(r112);
        q4.a.e(r102);
        r32.h();     // Catch: Exception -> L84
    L54:
        r4 = 0;
    L52:
        th = th;
        r4 = 0;
        goto L45
    L33:
        r43 = null;
    L31:
        th = th;
        r42 = null;
        goto L76
    L23:
        r112 = null;
    L24:
        r43 = r112;
    L20:
        th = th;
        r112 = null;
    L22:
        r42 = r112;
    L101:
        r12.h();     // Catch: Exception -> L83
    L18:
        h(r32);
        h(r12);
        return r92;
    L57:
        r102 = null;
        r112 = null;
    L55:
        th = th;
        r102 = null;
        r112 = null;
        goto L22
    L61:
        r102 = null;
        r112 = null;
        r32 = null;
    L62:
        r43 = r32;
    L58:
        th = th;
        r102 = null;
        r112 = null;
        r32 = null;
    L60:
        r42 = r32;
    L69:
        r102 = null;
        r112 = null;
        r12 = null;
        r32 = null;
    L67:
        th = th;
        r102 = null;
        r112 = null;
        r12 = null;
        r32 = null;
    L103:
        r12.h();     // Catch: Exception -> L85
    L51:
        h(r32);
        h(r12);
        return r92;
    }

    public static boolean l(n5 r92, String r10) {
        dh.g[] r02 = r92.A.s(r10);
        if (r02 == null) goto L5;
    L9:
        int r32 = r02.length;
        int r4 = 0;
    L10:
        if (r4 >= r32) goto L25;
        dh.g r5 = r02[r4];
        if (r10.endsWith("/") == false) goto L14;
        StringBuilder r72 = g.b.m(r10);
        String r62 = g.b.l(r5.f4667d, "/", r72);
    L16:
        if (r5.a() == false) goto L21;
        if (l(r92, r62) == true) goto L23;
        return false;
    L23:
        r4 = r4 + 1;
        goto L10
    L21:
        if (c.L(r92.A.l("DELE", r62)) == true) goto L23;
        return false;
    L14:
        StringBuilder r63 = d0.f.b(r10, "/");
        r63.append(r5.f4667d);
        r62 = r63.toString();
        goto L16
    L25:
        return c.L(r92.A.l("RMD", r10));
    L5:
        if (r02.length != 0) goto L9;
        if (c.L(r92.A.l("RMD", r10)) == true) goto L9;
        return false;
    }

    public static int m(int r5, int r62, RoundingMode r72) {
        r72.getClass();
        if (r62 == 0) goto L38;
        int r02 = r5 / r62;
        int r12 = r5 - (r62 * r02);
        if (r12 != 0) goto L7;
        return r02;
    L7:
        boolean r22 = true;
        int r52 = ((r5 ^ r62) >> 31) | 1;
        switch(w7.c.f17625a[r72.ordinal()]) {
            case 1: goto L32;
            case 2: goto L39;
            case 3: goto L30;
            case 4: goto L44;
            case 5: goto L28;
            case 6: goto L11;
            case 7: goto L11;
            case 8: goto L11;
            default: goto L10;
        };
    L11:
        int r13 = Math.abs(r12);
        int r14 = r13 - (Math.abs(r62) - r13);
        if (r14 == 0) goto L14;
        if (r14 > 0) goto L44;
        return r02;
    L14:
        if (r72 == RoundingMode.HALF_UP) goto L44;
        if (r72 != RoundingMode.HALF_EVEN) goto L18;
        boolean r63 = true;
    L20:
        if ((r02 & 1) != 0) goto L24;
        r22 = false;
    L24:
        if ((r63 & r22) == true) goto L44;
        return r02;
    L18:
        r63 = false;
        goto L20
    L28:
        if (r52 > 0) goto L44;
        return r02;
    L30:
        if (r52 < 0) goto L44;
        return r02;
    L32:
        if (r12 == 0) goto L35;
        r22 = false;
    L35:
        p000if.a.l(r22);
        return r02;
    L39:
        return r02;
    L10:
        throw new AssertionError();
    L44:
        return r02 + r52;
    L38:
        throw new ArithmeticException("/ by zero");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static String n(FtpCopyProgressBean r92, String r10, String r11) {
        BufferedInputStream r02 = null;
        dh.j r12 = N(r92.userInfo);     // Catch: Throwable -> L48 Exception -> L50
        if (r12 == null) goto L68;
        fh.c r102 = r12.x(r10);     // Catch: Throwable -> L9 Exception -> L12
        if (r102 == null) goto L17;
        FileOutputStream r22 = new FileOutputStream(r11);     // Catch: Throwable -> L21 Exception -> L23
        BufferedInputStream r32 = new BufferedInputStream(r102);     // Catch: Throwable -> L45 Exception -> L47
    L86:
        BufferedOutputStream r4 = new BufferedOutputStream(r22);     // Catch: Throwable -> L42 Exception -> L44
    L78:
        byte[] r03 = new byte[PKIFailureInfo.signerNotTrusted];     // Catch: Throwable -> L35 Exception -> L67
    L29:
        int r5 = r32.read(r03);     // Catch: Throwable -> L35 Exception -> L67
        if (r5 == (-1)) goto L38;
        r4.write(r03, 0, r5);     // Catch: Throwable -> L35 Exception -> L67
        r4.flush();     // Catch: Throwable -> L35 Exception -> L67
        r92.size_success.getAndAdd(r5);     // Catch: Throwable -> L35 Exception -> L67
        if (r92.isStop == false) goto L29;
        String r93 = "主动停止任务";
    L39:
        q4.a.e(r32);
        q4.a.e(r4);
        q4.a.e(r22);
        q4.a.e(r102);
    L72:
        r12.h();     // Catch: Exception -> L65
    L41:
        h(r12);
        if (new File(r11).exists() == false) goto L56;
        MyDb.get().addFile(r11);
    L56:
        return r93;
    L38:
        r93 = "";
        goto L39
    L35:
        th = th;
    L36:
        r02 = r32;
        FileOutputStream r42 = r4;
    L58:
        q4.a.e(r02);
        q4.a.e(r42);
        q4.a.e(r22);
        q4.a.e(r102);
        r12.h();     // Catch: Exception -> L66
    L60:
        h(r12);
        throw th;
    L37:
        r02 = r32;
        FileOutputStream r43 = r4;
    L51:
        r93 = "下载失败";
        q4.a.e(r02);
        q4.a.e(r43);
        q4.a.e(r22);
        q4.a.e(r102);
    L44:
        r4 = 0;
    L42:
        th = th;
        r4 = 0;
    L47:
        r43 = null;
    L45:
        th = th;
        r42 = null;
        goto L58
    L23:
        r22 = null;
    L13:
        r43 = r22;
    L21:
        th = th;
        r22 = null;
    L11:
        r42 = r22;
        goto L58
    L17:
        q4.a.e(r102);
        r12.h();     // Catch: Exception -> L64
    L19:
        h(r12);
        return "打开inputStream失败";
    L12:
        r102 = null;
        r22 = null;
    L9:
        th = th;
        r102 = null;
        r22 = null;
        goto L11
    L68:
        r12.h();     // Catch: Exception -> L63
    L7:
        h(r12);
        return "新建FTP连接失败";
    L50:
        r102 = null;
        r12 = null;
        r22 = null;
    L48:
        th = th;
        r102 = null;
        r12 = null;
        r22 = null;
        goto L11
    }

    public static void o(AccService r18, s r19, int r20) {
        fa.b r62 = fa.a.f5646a;
        if (r62.f() == true) goto L7;
        a0.u("adb未连接");
        return;
    L7:
        if (r20 != 3000) goto L16;
        int r12 = r19.o("keycode").e();
        int r02 = r19.o("action").e();
        if (r02 != 0) goto L11;
        r62.f5651b.keyCode(r12, true);
        return;
    L11:
        if (r02 <= 0) goto L373;
        if (r02 >= 4) goto L374;
    L13:
        if (r02 <= 0) goto L395;
        r62.f5651b.keyCode(r12, false);
        Thread.sleep(200);
        r02 = r02 - 1;
        goto L13
    L395:
        return;
    L374:
        return;
    L373:
        return;
    L16:
        if (r20 != 3011) goto L23;
        if (wa.s.c().f17719p == false) goto L20;
        r62.f5651b.keyCode(127, false);
    L21:
        wa.s.c().f17719p = !wa.s.c().f17719p;
        return;
    L20:
        r62.f5651b.keyCode(126, false);
        goto L21
    L23:
        if (r20 != 3001) goto L32;
        r19.o("api").e();
        int r13 = r19.o("action").e();
        int r22 = r19.o("x").e();
        int r03 = r19.o("y").e();
        if (r13 != 0) goto L27;
        wa.c.g(r62.d(), r22, r03, true);
        return;
    L27:
        if (r13 <= 0) goto L377;
        if (r13 >= 4) goto L378;
    L29:
        if (r13 <= 0) goto L396;
        wa.c.g(r62.d(), r22, r03, false);
        Thread.sleep(180);
        r13 = r13 - 1;
        goto L29
    L396:
        return;
    L378:
        return;
    L377:
        return;
    L32:
        if (r20 != 3010) goto L37;
        IInputManager r14 = r62.d();
        if (r14 == null) goto L379;
        q4.a.G(r14, r19);
        return;
    L379:
        return;
    L37:
        if (r20 != 3002) goto L40;
        r62.b().forceStopPackage(r19.o("str1").i(), 0);
        return;
    L40:
        if (r20 != 3003) goto L57;
        String r04 = r18.getRootInActiveWindow().getPackageName().toString();     // Catch: Exception -> L278
        if (r04.contains(".") == false) goto L382;
        String r23 = qf.c.u(r18);     // Catch: Exception -> L278
        if (r23.isEmpty() == true) goto L49;
        if (r23.equals(r04) == false) goto L49;
        return;
    L49:
        if (r04.startsWith("com.android.") == false) goto L51;
    L54:
        r18.performGlobalAction(1);     // Catch: Exception -> L278
        return;
    L51:
        if (r04.equals(r18.getPackageName()) == true) goto L54;
        r62.b().forceStopPackage(r04, 0);     // Catch: Exception -> L278
        return;
    L382:
        return;
    L394:
        return;
    L57:
        if (r20 != 3004) goto L111;
        IActivityManager r05 = r62.b();
        int r24 = Build.VERSION.SDK_INT;
        if (r24 < 28) goto L61;
        List r06 = r05.getTasks(50);
    L63:
        if (r06.size() > 1) goto L65;
        return;
    L65:
        if (r24 < 29) goto L67;
        int r25 = wa.f.a((ActivityManager.RunningTaskInfo) r06.get(0));
    L68:
        Collections.sort(r06, new qa.e(27));
        PrintStream r4 = System.out;
        r06.size();
        r4.getClass();
        Iterator r42 = r06.iterator();
    L70:
        if (r42.hasNext() == false) goto L89;
        ActivityManager.RunningTaskInfo r63 = (ActivityManager.RunningTaskInfo) r42.next();
        if (Build.VERSION.SDK_INT < 29) goto L74;
        int r82 = wa.f.a(r63);
    L75:
        if (r82 <= r25) goto L70;
        if (e0.d(r63) == null) goto L70;
        String r64 = e0.d(r63).getPackageName();
        if (r64.equals("com.android.systemui") == true) goto L70;
        if (r64.contains(".") == false) goto L70;
        Intent r65 = p000if.a.M(r64);
        if (r65 == null) goto L70;
        p000if.a.x0(1, r18, r65);
        return;
    L74:
        r82 = r63.id;
        goto L75
    L89:
        Iterator r07 = r06.iterator();
    L91:
        if (r07.hasNext() == false) goto L397;
        ActivityManager.RunningTaskInfo r43 = (ActivityManager.RunningTaskInfo) r07.next();
        if (Build.VERSION.SDK_INT < 29) goto L95;
        int r66 = wa.f.a(r43);
    L96:
        if (r66 == r25) goto L91;
        if (e0.d(r43) == null) goto L91;
        String r44 = e0.d(r43).getPackageName();
        if (r44.equals("com.android.systemui") == true) goto L91;
        if (r44.contains(".") == false) goto L91;
        Intent r45 = p000if.a.M(r44);
        if (r45 == null) goto L91;
        p000if.a.x0(1, r18, r45);
        return;
    L95:
        r66 = r43.id;
        goto L96
    L397:
        return;
    L67:
        r25 = ((ActivityManager.RunningTaskInfo) r06.get(0)).id;
        goto L68
    L61:
        r06 = r05.getTasks(50, 0);
        goto L63
    L111:
        if (r20 != 3005) goto L125;
        if (Environment.getExternalStorageState().contains("mounted") == true) goto L116;
        a0.t("截屏失败：没有内部存储卡");
        return;
    L116:
        File r08 = new File(fa.d.f5659a.d() + "/Download");
        r08.mkdir();     // Catch: Exception -> L119
    L120:
        CmdResult r09 = r62.f5651b.exec("screencap -p '" + r08.getPath() + "/截屏" + System.currentTimeMillis() + ".png'", 3333);
        if (r09.code != 0) goto L123;
        a0.w("截屏已保存到 Download 目录");
        return;
    L123:
        a0.t("截屏失败：" + r09.getAllStr());
        return;
    L125:
        if (r20 != 3006) goto L135;
        if (Environment.getExternalStorageState().contains("mounted") == true) goto L131;
        a0.t("获取失败：没有内部存储卡");
        return;
    L131:
        if (r62.f5651b.exec("uiautomator dump " + fa.d.f5659a.d() + "/Download/节点" + System.currentTimeMillis() + ".txt", PopupConst.DURATION_POPUP).code != 0) goto L133;
        a0.w("节点信息已保存到 Download 目录");
        return;
    L133:
        a0.t("获取节点失败");
        return;
    L135:
        if (r20 != 3008) goto L138;
        r62.f5651b.exec("am startservice -n \"" + r19.o("str1").i() + "\"", 3333);
        return;
    L138:
        if (r20 == 3009) goto L140;
        return;
    L140:
        if (r18.P0 == false) goto L142;
        return;
    L142:
        r18.P0 = true;
        a0.w("内存清理中");
        fa.d.f5659a.getClass();
        HashSet r26 = fa.e.a(r18);
        HashSet r72 = fa.e.b(r18);
        String r11 = "am force-stop '";
        if (r18.getPackageManager().checkPermission("android.permission.DEVICE_POWER", r18.getPackageName()) != 0) goto L161;
        Iterator r010 = fa.e.c(r18).iterator();
    L146:
        if (r010.hasNext() == false) goto L160;
        String r32 = (String) r010.next();
        if (r32.startsWith("com.android.") == true) goto L146;
        if (r32.startsWith("android.hardware.") == true) goto L146;
        if (t.f17728a.f17756w.contains(r32) == true) goto L146;
        if (r26.contains(r32) == true) goto L146;
        System.out.getClass();
        u9.d.r(new String[]{"am force-stop '" + r32 + "'"}).e0(null);
        goto L146
    L160:
        u9.d.r(new String[]{"am kill-all"}).e0(null);
    L274:
        a0.w("清理完成");
        r18.P0 = false;
        return;
    L161:
        boolean r142 = r62.f();
        HashSet r15 = new HashSet();
        if (r142 == false) goto L164;
        CmdResult r011 = r62.f5651b.exec("ps -A", 10000);
    L168:
        if (r011.lists.size() < 20) goto L170;
    L173:
        String r192 = "'";
        if (r011.lists.size() <= 20) goto L200;
        Iterator<String> r012 = r011.lists.iterator();
    L177:
        if (r012.hasNext() == false) goto L199;
        String r33 = r012.next();
        if (r33.endsWith("]") == true) goto L177;
        if (r33.startsWith("u") == true) goto L186;
        if (r33.startsWith("system") == false) goto L177;
    L186:
        int r83 = r33.lastIndexOf(" ");
        Iterator<String> r202 = r012;
        if (r83 == (-1)) goto L188;
        String r34 = r33.substring(r83 + 1).trim();
        int r84 = r34.lastIndexOf(":");
        String r17 = r11;
        if (r84 == (-1)) goto L192;
        r34 = r34.substring(0, r84);
    L192:
        int r85 = r34.lastIndexOf("@");
        if (r85 == (-1)) goto L196;
        r34 = r34.substring(0, r85);
    L196:
        if (r34.contains(".") == true) goto L198;
    L197:
        r012 = r202;
        r11 = r17;
        goto L177
    L198:
        r15.add(r34.trim());
        goto L197
    L188:
        r012 = r202;
        goto L177
    L199:
        String r172 = r11;
        HashSet r203 = r72;
    L239:
        Iterator r013 = r15.iterator();
    L241:
        if (r013.hasNext() == false) goto L274;
        String r16 = (String) r013.next();
        if (r16.startsWith("com.android.") == true) goto L241;
        if (r16.startsWith("android.hardware.") == true) goto L241;
        if (t.f17728a.f17756w.contains(r16) == true) goto L241;
        if (r26.contains(r16) == true) goto L241;
        HashSet r35 = r203;
        if (r35.contains(r16) == true) goto L256;
        System.out.getClass();
        if (r142 == false) goto L284;
        r62.f5651b.forceStop(r16, 0);     // Catch: Exception -> L261
        r62.f5651b.exec("am kill-all", 2000);     // Catch: Exception -> L261
    L260:
        String r110 = r192;
        String r112 = r172;
    L273:
        r192 = r110;
        r203 = r35;
        r172 = r112;
        goto L241
    L284:
        o0 r73 = n0.f5722a;     // Catch: Exception -> L272
        IUserService r86 = r73.f5730e;     // Catch: Exception -> L272
        if (r86 == null) goto L260;
        StringBuilder r10 = new StringBuilder();     // Catch: Exception -> L272
        r112 = r172;
        r10.append(r112);     // Catch: Exception -> L271
        r10.append(r16);     // Catch: Exception -> L271
        r110 = r192;
        r10.append(r110);     // Catch: Exception -> L279
        r86.exec(r10.toString(), 2000);     // Catch: Exception -> L279
        r73.f5730e.exec("am kill-all", 2000);     // Catch: Exception -> L279
    L271:
        r110 = r192;
    L272:
        r110 = r192;
        r112 = r172;
        goto L273
    L256:
        r203 = r35;
        goto L241
    L200:
        r172 = "am force-stop '";
        r203 = r72;
        if (r142 == false) goto L203;
        CmdResult r014 = r62.f5651b.exec("dumpsys -t 30000 meminfo", 30000);
    L205:
        if (r014.lists.size() < 20) goto L207;
    L280:
        Iterator<String> r015 = r014.lists.iterator();     // Catch: Exception -> L228
    L211:
        if (r015.hasNext() == false) goto L239;
        String r36 = r015.next();     // Catch: Exception -> L228
        if (r36.endsWith(")") == false) goto L211;
        if (r36.contains("pid") == false) goto L211;
        int r74 = r36.indexOf(":");     // Catch: Exception -> L228
        if (r74 == (-1)) goto L211;
        String r37 = r36.substring(r74 + 1).trim();     // Catch: Exception -> L228
        int r75 = r37.indexOf(" ");     // Catch: Exception -> L228
        if (r75 == (-1)) goto L211;
        String r38 = r37.substring(0, r75);     // Catch: Exception -> L228
        int r76 = r38.indexOf("@");     // Catch: Exception -> L228
        if (r76 == (-1)) goto L230;
        r38 = r38.substring(0, r76);     // Catch: Exception -> L228
    L230:
        int r77 = r38.indexOf(":");     // Catch: Exception -> L228
        if (r77 == (-1)) goto L234;
        r38 = r38.substring(0, r77);     // Catch: Exception -> L228
    L234:
        if (r38.contains(".") == false) goto L211;
        r15.add(r38);     // Catch: Exception -> L228
    L228:
        e = move-exception;
        e.printStackTrace();
        goto L239
    L207:
        if (r142 == false) goto L209;
        r014 = r62.f5651b.exec("dumpsys meminfo", 30000);
        goto L280
    L209:
        r014 = n0.f5722a.f5730e.exec("dumpsys meminfo", 30000);
        goto L280
    L203:
        r014 = n0.f5722a.f5730e.exec("dumpsys -t 30000 meminfo", 30000);
        goto L205
    L170:
        if (r142 == false) goto L172;
        r011 = r62.f5651b.exec("ps", 10000);
        goto L173
    L172:
        r011 = n0.f5722a.f5730e.exec("ps", 10000);
        goto L173
    L164:
        IUserService r39 = n0.f5722a.f5730e;
        if (r39 == null) goto L276;
        r011 = r39.exec("ps -A", 10000);
        goto L168
    L276:
        throw new Exception("无连接");
    }

    public static boolean p(FtpCopyProgressBean r10, WpPathBean r11) {
    L29:
        return false;
    L4:
        if (r10.isStop == false) goto L7;
        return false;
    L7:
        if (r10.rootDirPath_form.length() != 1) goto L9;
        String r22 = r10.rootDirPath_to + r11.path;     // Catch: Exception -> L29
    L10:
        System.out.getClass();     // Catch: Exception -> L29
        new File(r22).mkdir();     // Catch: Exception -> L29
        if (new File(r22).exists() == false) goto L14;
        MyDb.get().addFile(r22);     // Catch: Exception -> L29
    L14:
        if (r10.userInfo.A.p(r11.path) == true) goto L16;
        return false;
    L16:
        dh.g[] r23 = r10.userInfo.A.s(null);     // Catch: Exception -> L29
        if (r23 != null) goto L19;
        return false;
    L19:
        int r4 = r23.length;     // Catch: Exception -> L29
        int r5 = 0;
    L20:
        if (r5 >= r4) goto L28;
        dh.g r62 = r23[r5];     // Catch: Exception -> L29
        WpPathBean r82 = new WpPathBean(r62.f4667d, (r11.path + "/" + r62.f4667d).replace("//", "/"));     // Catch: Exception -> L29
        if (r62.a() == false) goto L26;
        r82.path += "/";
        if (p(r10, r82) == true) goto L27;
        return false;
    L27:
        r5 = r5 + 1;
        goto L20
    L26:
        r82.size_long = r62.f4665b;     // Catch: Exception -> L29
        r10.filePaths.add(r82);     // Catch: Exception -> L29
        goto L27
    L28:
        return true;
    L9:
        r22 = r10.rootDirPath_to + r11.path.substring(r10.rootDirPath_form.length());     // Catch: Exception -> L29
        goto L10
    }

    public static boolean q(FtpCopyProgressBean r11, WpPathBean r12) {
    L27:
        return false;
    L4:
        if (r11.isStop == false) goto L8;
        return false;
    L8:
        if (r11.rootDirPath_form.length() != 1) goto L10;
        String r13 = r11.rootDirPath_to + r12.path;     // Catch: Exception -> L27
    L11:
        r11.userInfo.A.u(r13);     // Catch: Exception -> L27
        if (r11.userInfo.A.p(r12.path) == true) goto L14;
        return false;
    L14:
        dh.g[] r14 = r11.userInfo.A.s(null);     // Catch: Exception -> L27
        if (r14 != null) goto L17;
        return false;
    L17:
        int r5 = r14.length;     // Catch: Exception -> L27
        int r62 = 0;
    L18:
        if (r62 >= r5) goto L26;
        dh.g r72 = r14[r62];     // Catch: Exception -> L27
        WpPathBean r92 = new WpPathBean(r72.f4667d, (r12.path + "/" + r72.f4667d).replace("//", "/"));     // Catch: Exception -> L27
        if (r72.a() == true) goto L22;
        r92.size_long = r72.f4665b;     // Catch: Exception -> L27
        r11.filePaths.add(r92);     // Catch: Exception -> L27
    L25:
        r62 = r62 + 1;
        goto L18
    L22:
        if (q(r11, r92) == true) goto L25;
        return false;
    L26:
        return true;
    L10:
        r13 = (r11.rootDirPath_to + "/" + r12.path.substring(r11.rootDirPath_form.length())).replace("//", "/");     // Catch: Exception -> L27
        goto L11
    }

    public static String r(File r20) {
        int r32 = 0;
        boolean r02 = r20.canRead();     // Catch: Throwable -> L5
    L7:
        if (r02 == true) goto L9;
        return "";
    L9:
        String r03 = r20.getName().toLowerCase();
        long r5 = r20.lastModified();
        ApkFileBean r72 = MyDb.get().getApkFileDao().getApkFileBean(r20.getPath());
        if (r72 == null) goto L16;
        if (r72.lastModified != r5) goto L16;
        StringBuilder r04 = new StringBuilder();
        DecimalFormat r12 = com.yunpan.appmanage.util.k.f4034u0;
        r04.append(com.yunpan.appmanage.util.j.f4033a.z);
        r04.append("apk_ico_cache/");
        r04.append(r72.packageName);
        r04.append("_");
        r04.append(r72.lastModified);
        return r04.toString();
    L16:
        if (p000if.a.Y(r03) == false) goto L19;
        return "";
    L19:
        if (r03.endsWith(".gj") == false) goto L266;
        byte[] r73 = new byte[102400];
        String r05 = System.currentTimeMillis() + "";
        StringBuilder r11 = new StringBuilder();
        DecimalFormat r122 = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k r123 = com.yunpan.appmanage.util.j.f4033a;
        r11.append(r123.Q);
        String r13 = File.separator;
        File r10 = new File(android.support.v4.media.session.a.u(r11, r13, r05, ".json"));
        StringBuilder r14 = new StringBuilder();
        r14.append(r123.Q);
        r14.append(r13);
        r14.append(r05);
        String r124 = ".png";
        r14.append(".png");
        File r112 = new File(r14.toString());
        ZipFile r132 = new ZipFile(r20);     // Catch: Exception -> L161
        Enumeration<? extends ZipEntry> r142 = r132.entries();     // Catch: Throwable -> L38
    L24:
        if (r142.hasMoreElements() == false) goto L104;
        ZipEntry r06 = r142.nextElement();     // Catch: Throwable -> L38
        String r15 = r06.getName();     // Catch: Throwable -> L38
        if (r15.endsWith(r124) == true) goto L271;
        String r19 = r124;
        Enumeration<? extends ZipEntry> r17 = r142;
        if (r15.endsWith("fest.json") == false) goto L103;
        InputStream r22 = r132.getInputStream(r06);     // Catch: Throwable -> L38 Exception -> L85
        FileOutputStream r33 = new FileOutputStream(r10);     // Catch: Throwable -> L87
    L236:
        int r07 = r22.read(r73);     // Catch: Throwable -> L80
        if (r07 <= 0) goto L82;
        r33.write(r73, 0, r07);     // Catch: Throwable -> L80
        goto L236
    L82:
        r33.close();     // Catch: Throwable -> L87
        r22.close();     // Catch: Throwable -> L38 Exception -> L85
        goto L103
    L80:
        th = move-exception;
        r33.close();     // Catch: Throwable -> L91
    L94:
        throw th;     // Catch: Throwable -> L87
    L91:
        th = move-exception;
        Throwable.class.getDeclaredMethod("addSuppressed", new Class[]{Throwable.class}).invoke(th, new Object[]{th});     // Catch: Throwable -> L87 Exception -> L198
    L87:
        th = move-exception;
        if (r22 != null) goto L215;
    L101:
        throw th;     // Catch: Throwable -> L38 Exception -> L85
    L215:
        r22.close();     // Catch: Throwable -> L98
    L98:
        th = move-exception;
        Throwable.class.getDeclaredMethod("addSuppressed", new Class[]{Throwable.class}).invoke(th, new Object[]{th});     // Catch: Throwable -> L38 Exception -> L199
    L85:
        e = move-exception;
        e.printStackTrace();     // Catch: Throwable -> L38
    L103:
        r142 = r17;
        r124 = r19;
        r32 = 0;
        goto L24
    L271:
        InputStream r152 = r132.getInputStream(r06);     // Catch: Throwable -> L38 Exception -> L40
        FileOutputStream r23 = new FileOutputStream(r112);     // Catch: Throwable -> L59
    L222:
        int r08 = r152.read(r73);     // Catch: Throwable -> L33
        if (r08 <= 0) goto L250;
        r23.write(r73, r32, r08);     // Catch: Throwable -> L33
        goto L222
    L250:
        r23.close();     // Catch: Throwable -> L42
        r152.close();     // Catch: Throwable -> L38 Exception -> L40
        r19 = r124;
        r17 = r142;
    L42:
        th = move-exception;
        Throwable r24 = th;
        r19 = r124;
    L61:
        if (r152 != null) goto L240;
    L63:
        r17 = r142;
    L246:
        throw r24;     // Catch: Throwable -> L38 Exception -> L70
    L70:
        e = e;
    L71:
        e.printStackTrace();     // Catch: Throwable -> L38
        goto L103
    L240:
        r152.close();     // Catch: Throwable -> L64
    L64:
        th = move-exception;
        r17 = r142;
        Throwable.class.getDeclaredMethod("addSuppressed", new Class[]{Throwable.class}).invoke(r24, new Object[]{th});     // Catch: Throwable -> L38 Exception -> L194
    L33:
        th = move-exception;
        r23.close();     // Catch: Throwable -> L47
    L45:
        r19 = r124;
    L46:
        Throwable r25 = th;
    L56:
        throw r25;     // Catch: Throwable -> L57
    L57:
        th = th;
    L55:
        r24 = th;
    L47:
        th = move-exception;
        r19 = r124;
        r25 = th;
        Throwable.class.getDeclaredMethod("addSuppressed", new Class[]{Throwable.class}).invoke(r25, new Object[]{th});     // Catch: Exception -> L197 Throwable -> L57
        goto L56
    L59:
        th = th;
        r19 = r124;
    L40:
        e = e;
        r19 = r124;
        r17 = r142;
        goto L71
    L104:
        r132.close();     // Catch: Exception -> L161
        if (a0.f(r10) == true) goto L108;
        return "";
    L108:
        ApkFileBean r16 = new ApkFileBean();
        StringBuilder r26 = new StringBuilder();
        BufferedReader r09 = new BufferedReader(new FileReader(r10));     // Catch: Exception -> L113
    L110:
        String r34 = r09.readLine();     // Catch: Exception -> L113
        if (r34 == null) goto L115;
        r26.append(r34);     // Catch: Exception -> L113
        r26.append(SignParameters.NEW_LINE);     // Catch: Exception -> L113
        goto L110
    L115:
        r09.close();     // Catch: Exception -> L113
    L209:
        s r010 = d.b.b0(r26.toString()).g();     // Catch: Exception -> L120
        r16.apkName = r010.o("name").i();     // Catch: Exception -> L120
        r16.packageName = r010.o("packageName").i();     // Catch: Exception -> L120
        r16.versionCode = r010.o("versionCode").h();     // Catch: Exception -> L120
        r16.versionName = r010.o("versionName").i();     // Catch: Exception -> L120
        r16.minSdk = r010.o("minSdkVersion").e();     // Catch: Exception -> L120
        r16.path = r20.getPath();     // Catch: Exception -> L120
        r16.abi = r010.o("abi").i();     // Catch: Exception -> L120
        r16.lastModified = r20.lastModified();     // Catch: Exception -> L120
        r16.insertTime = System.currentTimeMillis();     // Catch: Exception -> L120
        r16.isSystemUid = false;     // Catch: Exception -> L120
        r16.sign = "";     // Catch: Exception -> L120
        MyDb.get().getApkFileDao().insert(r16);     // Catch: Exception -> L120
    L123:
        if (a0.f(r112) == true) goto L238;
        return "";
    L238:
        FileInputStream r27 = new FileInputStream(r112);     // Catch: Exception -> L137
        FileOutputStream r35 = new FileOutputStream(com.yunpan.appmanage.util.j.f4033a.z + "apk_ico_cache/" + r16.packageName + "_" + r16.lastModified);     // Catch: Throwable -> L139
    L230:
        int r011 = r27.read(r73);     // Catch: Throwable -> L131
        if (r011 <= 0) goto L133;
        r35.write(r73, 0, r011);     // Catch: Throwable -> L131
        goto L230
    L133:
        r35.close();     // Catch: Throwable -> L139
        r27.close();     // Catch: Exception -> L137
        return com.yunpan.appmanage.util.j.f4033a.z + "apk_ico_cache/" + r16.packageName + "_" + r16.lastModified;
    L131:
        th = move-exception;
        r35.close();     // Catch: Throwable -> L143
        throw th;     // Catch: Throwable -> L139
    L143:
        th = move-exception;
        Throwable.class.getDeclaredMethod("addSuppressed", new Class[]{Throwable.class}).invoke(th, new Object[]{th});     // Catch: Throwable -> L139 Exception -> L200
        throw th;     // Catch: Throwable -> L139
    L294:
        throw th;     // Catch: Throwable -> L139
    L139:
        th = move-exception;
        r27.close();     // Catch: Throwable -> L149
        throw th;     // Catch: Exception -> L137
    L149:
        th = move-exception;
        Throwable.class.getDeclaredMethod("addSuppressed", new Class[]{Throwable.class}).invoke(th, new Object[]{th});     // Catch: Exception -> L201
        throw th;     // Catch: Exception -> L137
    L296:
        throw th;     // Catch: Exception -> L137
    L137:
        e = move-exception;
        e.printStackTrace();
        return "";
    L120:
        e = move-exception;
        e.printStackTrace();
    L113:
        e = move-exception;
        e.printStackTrace();
    L38:
        th = move-exception;
        r132.close();     // Catch: Throwable -> L157
        throw th;     // Catch: Exception -> L161
    L157:
        th = move-exception;
        Throwable.class.getDeclaredMethod("addSuppressed", new Class[]{Throwable.class}).invoke(th, new Object[]{th});     // Catch: Exception -> L202
        throw th;     // Catch: Exception -> L161
    L298:
        throw th;     // Catch: Exception -> L161
    L161:
        return "";
    L266:
        ef.b r18 = new ef.b(r20);     // Catch: Exception -> L192
        r18.M();     // Catch: Throwable -> L166
        ff.c r012 = r18.f4963e;     // Catch: Throwable -> L166
        ApkFileBean r36 = new ApkFileBean();     // Catch: Throwable -> L166
        r36.path = r20.getPath();     // Catch: Throwable -> L166
        r36.apkName = r012.f5814b;     // Catch: Throwable -> L166
        r36.packageName = r012.f5813a;     // Catch: Throwable -> L166
        r36.versionName = r012.f5816d;     // Catch: Throwable -> L166
        r36.versionCode = r012.f5817e.longValue();     // Catch: Throwable -> L166
        r36.minSdk = Integer.parseInt(r012.f5819g);     // Catch: Throwable -> L166
        r36.lastModified = r20.lastModified();     // Catch: Throwable -> L166
        r36.insertTime = System.currentTimeMillis();     // Catch: Throwable -> L166
        r36.isSystemUid = r012.f5818f.equals("android.uid.system");     // Catch: Throwable -> L166 Exception -> L168
    L170:
        r36.sign = "";     // Catch: Throwable -> L166
        MyDb.get().getApkFileDao().insert(r36);     // Catch: Throwable -> L166
        List r013 = r18.A();     // Catch: Throwable -> L166
        if (r013 != null) goto L173;
    L184:
        r18.close();     // Catch: Exception -> L192
        return "";
    L173:
        if (r013.isEmpty() == true) goto L184;
        Iterator r014 = r013.iterator();     // Catch: Throwable -> L166
    L176:
        if (r014.hasNext() == false) goto L184;
        ff.g r28 = (ff.g) r014.next();     // Catch: Throwable -> L166
        if (r28 == null) goto L176;
        byte[] r29 = r28.e();     // Catch: Throwable -> L166
        if (r29 == null) goto L176;
        StringBuilder r015 = new StringBuilder();     // Catch: Throwable -> L166
        DecimalFormat r74 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Throwable -> L166
        r015.append(com.yunpan.appmanage.util.j.f4033a.z);     // Catch: Throwable -> L166
        r015.append("apk_ico_cache/");     // Catch: Throwable -> L166
        r015.append(r36.packageName);     // Catch: Throwable -> L166
        r015.append("_");     // Catch: Throwable -> L166
        r015.append(r36.lastModified);     // Catch: Throwable -> L166
        String r016 = r015.toString();     // Catch: Throwable -> L166
        a0.q(r016, r29);     // Catch: Throwable -> L166
        r18.close();     // Catch: Exception -> L192
        return r016;
    L169:
        r36.isSystemUid = false;     // Catch: Throwable -> L166
    L166:
        th = move-exception;
        r18.close();     // Catch: Throwable -> L188
        throw th;     // Catch: Exception -> L192
    L188:
        th = move-exception;
        Throwable.class.getDeclaredMethod("addSuppressed", new Class[]{Throwable.class}).invoke(th, new Object[]{th});     // Catch: Exception -> L203
        throw th;     // Catch: Exception -> L192
    L300:
        throw th;     // Catch: Exception -> L192
    L192:
        return "";
    L5:
        r02 = false;
        goto L7
    }

    public static int s(int r22, View r32) {
        Context r02 = r32.getContext();
        TypedValue r23 = android.support.v4.media.session.b.F(r32.getContext(), r32.getClass().getCanonicalName(), r22);
        int r33 = r23.resourceId;
        if (r33 == 0) goto L6;
        return n0.g.c(r02, r33);
    L6:
        return r23.data;
    }

    public static int t(Context r12, int r22, int r32) {
        TypedValue r23 = android.support.v4.media.session.b.D(r12, r22);
        if (r23 == null) goto L9;
        int r02 = r23.resourceId;
        if (r02 == 0) goto L7;
        int r13 = n0.g.c(r12, r02);
    L8:
        Integer r14 = Integer.valueOf(r13);
    L10:
        if (r14 != null) goto L12;
        return r32;
    L12:
        return r14.intValue();
    L7:
        r13 = r23.data;
        goto L8
    L9:
        r14 = null;
        goto L10
    }

    public static int u(int[] r25, int[] r26, int r27) {
        if (r25.length >= 9) goto L5;
    L490:
        return 0;
    L5:
        if (r26.length < 38) goto L490;
        switch(r27) {
            case 0: goto L489;
            case 1: goto L487;
            case 2: goto L485;
            case 3: goto L483;
            case 4: goto L481;
            case 5: goto L479;
            case 6: goto L477;
            case 7: goto L475;
            default: goto L10;
        };
    L10:
        if (r27 == 9) goto L473;
        if (r27 == 10) goto L471;
        switch(r27) {
            case 12: goto L469;
            case 13: goto L467;
            case 14: goto L465;
            case 15: goto L463;
            default: goto L15;
        };
    L15:
        switch(r27) {
            case 26: goto L461;
            case 27: goto L459;
            case 28: goto L457;
            case 29: goto L455;
            case 30: goto L453;
            case 31: goto L451;
            case 32: goto L449;
            case 33: goto L447;
            case 34: goto L445;
            case 35: goto L443;
            case 36: goto L441;
            case 37: goto L439;
            case 38: goto L437;
            case 39: goto L435;
            case 40: goto L433;
            case 41: goto L431;
            case 42: goto L429;
            case 43: goto L427;
            case 44: goto L425;
            case 45: goto L423;
            case 46: goto L421;
            case 47: goto L419;
            case 48: goto L417;
            case 49: goto L415;
            case 50: goto L413;
            case 51: goto L411;
            case 52: goto L409;
            case 53: goto L407;
            case 54: goto L405;
            case 55: goto L403;
            case 56: goto L401;
            case 57: goto L399;
            case 58: goto L397;
            case 59: goto L395;
            case 60: goto L393;
            case 61: goto L391;
            case 62: goto L389;
            case 63: goto L387;
            case 64: goto L385;
            case 65: goto L383;
            case 66: goto L381;
            case 67: goto L379;
            case 68: goto L377;
            case 69: goto L375;
            case 70: goto L373;
            case 71: goto L371;
            default: goto L17;
        };
    L17:
        switch(r27) {
            case 73: goto L369;
            case 74: goto L367;
            case 75: goto L365;
            case 76: goto L363;
            case 77: goto L361;
            case 78: goto L359;
            case 79: goto L357;
            case 80: goto L355;
            case 81: goto L353;
            case 82: goto L351;
            case 83: goto L349;
            case 84: goto L347;
            case 85: goto L345;
            case 86: goto L343;
            case 87: goto L341;
            case 88: goto L339;
            case 89: goto L337;
            case 90: goto L335;
            case 91: goto L333;
            case 92: goto L331;
            case 93: goto L329;
            case 94: goto L327;
            case 95: goto L325;
            case 96: goto L323;
            case 97: goto L321;
            case 98: goto L319;
            case 99: goto L317;
            case 100: goto L315;
            case 101: goto L313;
            default: goto L19;
        };
    L19:
        switch(r27) {
            case 103: goto L311;
            case 104: goto L309;
            case 105: goto L307;
            case 106: goto L305;
            case 107: goto L303;
            case 108: goto L301;
            case 109: goto L299;
            case 110: goto L297;
            case 111: goto L295;
            case 112: goto L293;
            case 113: goto L291;
            case 114: goto L289;
            case 115: goto L287;
            case 116: goto L285;
            case 117: goto L283;
            case 118: goto L281;
            case 119: goto L279;
            case 120: goto L277;
            case 121: goto L275;
            case 122: goto L273;
            case 123: goto L271;
            case 124: goto L269;
            case 125: goto L267;
            case 126: goto L265;
            case 127: goto L263;
            case 128: goto L261;
            case 129: goto L259;
            case 130: goto L257;
            case 131: goto L255;
            case 132: goto L253;
            case 133: goto L251;
            case 134: goto L249;
            case 135: goto L247;
            case 136: goto L245;
            case 137: goto L243;
            case 138: goto L241;
            default: goto L21;
        };
    L21:
        switch(r27) {
            case 140: goto L239;
            case 141: goto L237;
            case 142: goto L235;
            case 143: goto L233;
            case 144: goto L231;
            case 145: goto L229;
            case 146: goto L227;
            case 147: goto L225;
            case 148: goto L223;
            case 149: goto L221;
            case 150: goto L219;
            default: goto L23;
        };
    L23:
        switch(r27) {
            case 200: goto L217;
            case 201: goto L215;
            case 202: goto L213;
            case 203: goto L211;
            case 204: goto L209;
            case 205: goto L207;
            case 206: goto L205;
            case 207: goto L203;
            case 208: goto L201;
            case 209: goto L199;
            case 210: goto L197;
            case 211: goto L195;
            case 212: goto L193;
            case 213: goto L191;
            case 214: goto L189;
            case 215: goto L187;
            case 216: goto L185;
            case 217: goto L183;
            case 218: goto L181;
            case 219: goto L179;
            case 220: goto L177;
            case 221: goto L175;
            case 222: goto L173;
            case 223: goto L171;
            case 224: goto L169;
            case 225: goto L167;
            case 226: goto L165;
            case 227: goto L163;
            case 228: goto L161;
            case 229: goto L159;
            case 230: goto L157;
            case 231: goto L155;
            case 232: goto L153;
            case 233: goto L151;
            default: goto L24;
        };
    L24:
        switch(r27) {
            case 236: goto L149;
            case 237: goto L147;
            case 238: goto L145;
            default: goto L25;
        };
    L25:
        switch(r27) {
            case 10000: goto L143;
            case 10001: goto L141;
            case 10002: goto L139;
            default: goto L27;
        };
    L27:
        switch(r27) {
            case 10021: goto L137;
            case 10022: goto L135;
            case 10023: goto L133;
            case 10024: goto L131;
            case 10025: goto L129;
            case 10026: goto L127;
            case 10027: goto L125;
            default: goto L29;
        };
    L29:
        switch(r27) {
            case 10040: goto L123;
            case 10041: goto L121;
            case 10042: goto L119;
            case 10043: goto L117;
            case 10044: goto L115;
            case 10045: goto L113;
            case 10046: goto L111;
            case 10047: goto L109;
            case 10048: goto L107;
            case 10049: goto L105;
            case 10050: goto L103;
            case 10051: goto L101;
            case 10052: goto L99;
            case 10053: goto L97;
            case 10054: goto L95;
            case 10055: goto L93;
            case 10056: goto L91;
            default: goto L30;
        };
    L30:
        switch(r27) {
            case 10069: goto L89;
            case 10070: goto L87;
            case 10071: goto L85;
            default: goto L31;
        };
    L31:
        switch(r27) {
            case 10089: goto L83;
            case 10090: goto L81;
            case 10091: goto L79;
            default: goto L32;
        };
    L32:
        switch(r27) {
            case 10109: goto L77;
            case 10110: goto L75;
            case 10111: goto L73;
            default: goto L34;
        };
    L34:
        switch(r27) {
            case 10115: goto L71;
            case 10116: goto L69;
            case 10117: goto L67;
            case 10118: goto L65;
            case 10119: goto L63;
            case 10120: goto L61;
            case 10121: goto L59;
            default: goto L35;
        };
    L35:
        switch(r27) {
            case 10126: goto L57;
            case 10127: goto L55;
            case 10128: goto L53;
            default: goto L36;
        };
    L36:
        if (r27 == 18) goto L51;
        if (r27 == 10015) goto L49;
        if (r27 == 10062) goto L47;
        if (r27 == 10143) goto L45;
        return 0;
    L45:
        return (r26[12] >> 7) & 1;
    L47:
        return (r26[29] >> 4) & 7;
    L49:
        return r26[13] & 1;
    L51:
        return (r26[3] >> 4) & 1;
    L53:
        return (r26[13] >> 3) & 1;
    L55:
        return (r26[13] >> 2) & 1;
    L57:
        return (r26[13] >> 1) & 1;
    L59:
        return (r26[36] >> 2) & 1;
    L61:
        return (r26[35] >> 1) & 1;
    L63:
        return r26[35] & 1;
    L65:
        return (r26[20] >> 2) & 1;
    L67:
        return (r26[11] >> 6) & 3;
    L69:
        return (r26[9] >> 6) & 1;
    L71:
        return (r25[8] >> 1) & 1;
    L73:
        return (r26[34] >> 1) & 1;
    L75:
        return (r26[34] >> 3) & 1;
    L77:
        return (r26[34] >> 2) & 1;
    L79:
        return (r26[19] >> 6) & 1;
    L81:
        return (r26[11] >> 5) & 1;
    L83:
        return (r26[11] >> 4) & 1;
    L85:
        return (r26[16] >> 7) & 1;
    L87:
        return (r26[19] >> 4) & 1;
    L89:
        return (r26[19] >> 3) & 1;
    L91:
        return (r26[25] >> 2) & 1;
    L93:
        return (r26[22] >> 7) & 1;
    L95:
        return (r26[22] >> 6) & 1;
    L97:
        return (r26[22] >> 5) & 1;
    L99:
        return (r26[22] >> 4) & 1;
    L101:
        return (r26[22] >> 3) & 1;
    L103:
        return (r26[20] >> 1) & 1;
    L105:
        return (r26[19] >> 7) & 1;
    L107:
        return (r25[6] >> 1) & 1;
    L109:
        return (r26[29] >> 2) & 1;
    L111:
        return (r26[22] >> 2) & 1;
    L113:
        return (r26[22] >> 1) & 1;
    L115:
        return r26[22] & 1;
    L117:
        return (r25[9] >> 3) & 1;
    L119:
        return (r25[9] >> 2) & 1;
    L121:
        return (r25[9] >> 1) & 1;
    L123:
        return (r25[5] >> 7) & 1;
    L125:
        return r25[9] & 1;
    L127:
        return r25[0] & 3;
    L129:
        return (r26[29] >> 1) & 1;
    L131:
        return r26[29] & 1;
    L133:
        return (r26[28] >> 7) & 1;
    L135:
        return (r26[19] >> 2) & 1;
    L137:
        return (r26[28] >> 5) & 1;
    L139:
        return (r26[11] >> 3) & 1;
    L141:
        return (r26[11] >> 2) & 1;
    L143:
        return (r26[11] >> 1) & 1;
    L145:
        return (r26[0] >> 2) & 3;
    L147:
        return (r26[28] >> 6) & 1;
    L149:
        return (r26[9] >> 5) & 1;
    L151:
        return (r26[8] >> 1) & 1;
    L153:
        return r25[8] & 1;
    L155:
        return (r26[9] >> 4) & 1;
    L157:
        return (r26[28] >> 5) & 1;
    L159:
        return (r26[19] >> 1) & 1;
    L161:
        return (r26[9] >> 3) & 1;
    L163:
        return r26[28] & 15;
    L165:
        return (r25[1] >> 3) & 1;
    L167:
        return r26[19] & 1;
    L169:
        return (r26[27] >> 3) & 31;
    L171:
        return r26[27] & 7;
    L173:
        return r25[3] & 1;
    L175:
        return (r25[7] >> 6) & 3;
    L177:
        return (r25[7] >> 4) & 3;
    L179:
        return r25[7] & 15;
    L181:
        return (r25[6] >> 6) & 3;
    L183:
        return (r25[6] >> 4) & 3;
    L185:
        return (r25[6] >> 2) & 3;
    L187:
        return (r25[5] >> 6) & 1;
    L189:
        return (r25[5] >> 3) & 7;
    L191:
        return r25[5] & 7;
    L193:
        return (r25[4] >> 4) & 15;
    L195:
        return (r25[4] >> 1) & 7;
    L197:
        return r25[4] & 1;
    L199:
        return (r25[2] >> 6) & 3;
    L201:
        return (r25[2] >> 5) & 1;
    L203:
        return (r25[2] >> 4) & 1;
    L205:
        return (r25[2] >> 3) & 1;
    L207:
        return (r25[2] >> 2) & 1;
    L209:
        return r25[2] & 3;
    L211:
        return (r25[1] >> 2) & 1;
    L213:
        return (r25[1] >> 1) & 1;
    L215:
        return r25[1] & 1;
    L217:
        return r25[0] & 15;
    L219:
        return (r26[3] >> 6) & 1;
    L221:
        return r26[34] & 1;
    L223:
        return (r26[33] >> 7) & 1;
    L225:
        return (r26[33] >> 6) & 1;
    L227:
        return (r26[33] >> 4) & 3;
    L229:
        return (r26[33] >> 2) & 3;
    L231:
        return r26[33] & 3;
    L233:
        return (r26[32] >> 7) & 1;
    L235:
        return (r26[32] >> 6) & 1;
    L237:
        return (r26[32] >> 4) & 3;
    L239:
        return (r26[32] >> 2) & 3;
    L241:
        return (r26[31] >> 6) & 3;
    L243:
        return (r26[31] >> 5) & 1;
    L245:
        return (r26[31] >> 4) & 1;
    L247:
        return (r26[31] >> 3) & 1;
    L249:
        return (r26[31] >> 1) & 3;
    L251:
        return r26[31] & 1;
    L253:
        return (r26[30] >> 7) & 1;
    L255:
        return (r26[30] >> 5) & 3;
    L257:
        return (r26[30] >> 3) & 3;
    L259:
        return (r26[30] >> 2) & 1;
    L261:
        return (r26[30] >> 1) & 1;
    L263:
        return r26[30] & 1;
    L265:
        return (r26[26] >> 7) & 1;
    L267:
        return (r26[26] >> 6) & 1;
    L269:
        return (r26[26] >> 5) & 1;
    L271:
        return (r26[26] >> 4) & 1;
    L273:
        return (r26[26] >> 3) & 1;
    L275:
        return (r26[26] >> 2) & 1;
    L277:
        return (r26[26] >> 1) & 1;
    L279:
        return r26[26] & 1;
    L281:
        return (r26[25] >> 7) & 1;
    L283:
        return (r26[25] >> 6) & 1;
    L285:
        return (r26[25] >> 5) & 1;
    L287:
        return (r26[25] >> 4) & 1;
    L289:
        return (r26[25] >> 3) & 1;
    L291:
        return (r26[9] >> 7) & 1;
    L293:
        return (r26[25] >> 1) & 1;
    L295:
        return r26[25] & 1;
    L297:
        return (r26[24] >> 6) & 3;
    L299:
        return (r26[24] >> 5) & 1;
    L301:
        return (r26[24] >> 4) & 1;
    L303:
        return (r26[24] >> 3) & 1;
    L305:
        return (r26[24] >> 2) & 1;
    L307:
        return (r26[24] >> 1) & 1;
    L309:
        return r26[24] & 1;
    L311:
        return (r26[23] >> 7) & 1;
    L313:
        return (r26[23] >> 5) & 1;
    L315:
        return (r26[23] >> 4) & 1;
    L317:
        return (r26[23] >> 3) & 1;
    L319:
        return (r26[23] >> 2) & 1;
    L321:
        return (r26[23] >> 1) & 1;
    L323:
        return r26[23] & 1;
    L325:
        return (r26[21] >> 7) & 1;
    L327:
        return (r26[21] >> 6) & 1;
    L329:
        return (r26[21] >> 5) & 1;
    L331:
        return (r26[21] >> 4) & 1;
    L333:
        return (r26[21] >> 3) & 1;
    L335:
        return (r26[21] >> 2) & 1;
    L337:
        return (r26[21] >> 1) & 1;
    L339:
        return r26[21] & 1;
    L341:
        return (r26[18] >> 7) & 1;
    L343:
        return (r26[18] >> 6) & 1;
    L345:
        return (r26[18] >> 5) & 1;
    L347:
        return (r26[18] >> 4) & 1;
    L349:
        return (r26[18] >> 3) & 1;
    L351:
        return (r26[18] >> 2) & 1;
    L353:
        return (r26[18] >> 1) & 1;
    L355:
        return r26[18] & 1;
    L357:
        return (r26[17] >> 7) & 1;
    L359:
        return (r26[17] >> 6) & 3;
    L361:
        return (r26[17] >> 5) & 1;
    L363:
        return (r26[17] >> 4) & 1;
    L365:
        return (r26[17] >> 3) & 1;
    L367:
        return (r26[17] >> 2) & 1;
    L369:
        return r26[17] & 3;
    L371:
        return (r26[16] >> 6) & 1;
    L373:
        return (r26[16] >> 5) & 1;
    L375:
        return (r26[16] >> 4) & 1;
    L377:
        return (r26[16] >> 3) & 1;
    L379:
        return (r26[16] >> 2) & 1;
    L381:
        return r26[16] & 3;
    L383:
        return (r26[15] >> 7) & 1;
    L385:
        return (r26[15] >> 6) & 1;
    L387:
        return (r26[15] >> 5) & 1;
    L389:
        return (r26[15] >> 4) & 1;
    L391:
        return (r26[15] >> 3) & 1;
    L393:
        return (r26[15] >> 2) & 1;
    L395:
        return (r26[15] >> 1) & 1;
    L397:
        return r26[15] & 1;
    L399:
        return (r26[14] >> 7) & 1;
    L401:
        return (r26[14] >> 6) & 1;
    L403:
        return (r26[14] >> 5) & 1;
    L405:
        return (r26[14] >> 4) & 1;
    L407:
        return (r26[14] >> 2) & 3;
    L409:
        return r26[14] & 3;
    L411:
        return (r26[13] >> 6) & 3;
    L413:
        return (r26[13] >> 4) & 3;
    L415:
        return (r26[12] >> 6) & 1;
    L417:
        return (r26[12] >> 3) & 7;
    L419:
        return r26[12] & 7;
    L421:
        return r26[11] & 1;
    L423:
        return (r26[10] >> 7) & 1;
    L425:
        return (r26[10] >> 6) & 1;
    L427:
        return (r26[10] >> 5) & 1;
    L429:
        return (r26[10] >> 4) & 1;
    L431:
        return (r26[10] >> 3) & 1;
    L433:
        return (r26[10] >> 2) & 1;
    L435:
        return (r26[10] >> 1) & 1;
    L437:
        return r26[10] & 1;
    L439:
        return (r26[9] >> 2) & 1;
    L441:
        return (r26[9] >> 1) & 1;
    L443:
        return r26[9] & 1;
    L445:
        return (r26[8] >> 7) & 1;
    L447:
        return (r26[8] >> 6) & 1;
    L449:
        return (r26[8] >> 5) & 1;
    L451:
        return (r26[8] >> 4) & 1;
    L453:
        return r26[8] & 1;
    L455:
        return (r26[7] >> 7) & 1;
    L457:
        return (r26[7] >> 4) & 7;
    L459:
        return r26[7] & 15;
    L461:
        return (r26[3] >> 5) & 1;
    L463:
        return (r26[3] >> 3) & 1;
    L465:
        return (r26[3] >> 2) & 1;
    L467:
        return (r26[3] >> 1) & 1;
    L469:
        return r26[3] & 1;
    L471:
        return (r26[2] >> 7) & 1;
    L473:
        return (r26[2] >> 6) & 1;
    L475:
        return (r26[2] >> 5) & 1;
    L477:
        return (r26[2] >> 4) & 1;
    L479:
        return (r26[2] >> 3) & 1;
    L481:
        return (r26[2] >> 2) & 1;
    L483:
        return (r26[2] >> 1) & 1;
    L485:
        return r26[2] & 1;
    L487:
        return r26[1];
    L489:
        return r26[0] & 3;
    }

    public static x4.v v(Object r32) {
        if (r32 != null) goto L6;
        return x4.k.f18125a;
    L6:
        if ((r32 instanceof Boolean) == false) goto L13;
        if (((Boolean) r32).booleanValue() == false) goto L11;
        return x4.d.f18118c;
    L11:
        return x4.d.f18117b;
    L13:
        if ((r32 instanceof Byte) == false) goto L17;
        return new x4.e(((Byte) r32).byteValue());
    L17:
        if ((r32 instanceof Character) == false) goto L21;
        return new x4.f(((Character) r32).charValue());
    L21:
        if ((r32 instanceof Double) == false) goto L25;
        return new x4.g(Double.doubleToLongBits(((Double) r32).doubleValue()));
    L25:
        if ((r32 instanceof Float) == false) goto L29;
        return new x4.i(Float.floatToIntBits(((Float) r32).floatValue()));
    L29:
        if ((r32 instanceof Integer) == false) goto L33;
        return x4.j.h(((Integer) r32).intValue());
    L33:
        if ((r32 instanceof Long) == false) goto L37;
        return new x4.o(((Long) r32).longValue());
    L37:
        if ((r32 instanceof Short) == false) goto L41;
        return new x4.s(((Short) r32).shortValue());
    L41:
        if ((r32 instanceof String) == false) goto L45;
        return new x4.t((String) r32);
    L45:
        if ((r32 instanceof Class) == false) goto L49;
        return new x4.u(q4.j.a((Class) r32).f13020b);
    L49:
        if ((r32 instanceof q4.j) == false) goto L53;
        return new x4.u(((q4.j) r32).f13020b);
    L53:
        throw new UnsupportedOperationException("Not a constant: " + r32);
    }

    public static String w(long r5, String r72, String r82) {
        long r02 = System.currentTimeMillis();
        StringBuilder r22 = new StringBuilder("downloadId=");
        r22.append(qf.c.a(r5 + "|"));
        r22.append("&enable=1&devType=6&uuid=");
        r22.append(r72);
        r22.append("&timestamp=");
        r22.append(qf.c.a(r02 + ""));
        r22.append("&auth=");
        r22.append(qf.c.a(r5 + "|" + r02));
        return g.b.l("&shareId=", r82, r22);
    }

    public static Drawable x(Context r12, int r22) {
        return p2.d().f(r12, r22);
    }

    public static fh.c y(long r62, String r82, n5 r92) {
        dh.j r93 = N(r92);
        if (r93 == null) goto L15;
        long r02 = 0;
        sh.c r22 = sh.c.f14573c;
        long r4 = r02 / 1000;
        int r12 = (int) (r02 % 1000);
        if (r12 >= 0) goto L7;
        r12 = r12 + 1000;
        r4 = r4 - 1;
    L7:
        r93.f4654u = sh.c.a(r12 * 1000000, r4);
        if (r62 <= 0) goto L13;
        if (r62 < 0) goto L13;
        r93.A = r62;
    L13:
        return r93.x(r82);
    L15:
        throw new Exception("FTP连接失败");
    }

    public static float z(int r22, String[] r32) {
        float r23 = Float.parseFloat(r32[r22]);
        if (r23 < 0.0f) goto L8;
        if (r23 > 1.0f) goto L8;
        return r23;
    L8:
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + r23);
    }

    public abstract void O(int r12);

    public abstract void P(Typeface r12, boolean r22);

    @Override // x0.m1
    public void b() {
    }

    @Override // x0.m1
    public void a(View r12) {
    }
}