package com.yunpan.appmanage.carsdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Base64;
import j$.nio.charset.StandardCharsets;
import java.io.IOException;
import java.io.StringWriter;
import java.nio.charset.Charset;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public c5.c f3835a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3836b = false;

    /* renamed from: c, reason: collision with root package name */
    public final f f3837c;

    /* renamed from: d, reason: collision with root package name */
    public String f3838d;

    public i() {
        new h(0);
        this.f3837c = new f(0, this);
    }

    public static String e(Context context) {
        ArrayList arrayList = new ArrayList();
        List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(new Intent("com.baidu.naviauto.imaplbs.lbsservice"), 0);
        if (listQueryIntentServices != null && !listQueryIntentServices.isEmpty()) {
            Iterator<ResolveInfo> it = listQueryIntentServices.iterator();
            while (it.hasNext()) {
                String str = it.next().serviceInfo.packageName;
                if (!TextUtils.isEmpty(str)) {
                    arrayList.add(str);
                }
            }
        }
        if (!arrayList.isEmpty() && arrayList.size() > 1) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String str2 = (String) it2.next();
                System.out.getClass();
                if (!str2.equals("com.baidu.naviauto")) {
                    return str2;
                }
            }
        }
        return "com.baidu.naviauto";
    }

    public final void a(Context context) {
        try {
            Intent intent = new Intent("com.baidu.naviauto.imaplbs.lbsservice");
            intent.setPackage("com.baidu.naviauto");
            intent.putExtra("package", context.getPackageName());
            context.bindService(intent, this.f3837c, 1);
            System.out.getClass();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public final String b(String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        String str2 = this.f3838d;
        if (str2 == null || str2.isEmpty()) {
            return str;
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(Base64.decode(this.f3838d.getBytes(), 0), "AES");
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(2, secretKeySpec, new IvParameterSpec("7777889654578967".getBytes()));
        return new String(cipher.doFinal(Base64.decode(str.getBytes(), 0)), StandardCharsets.UTF_8);
    }

    public final String c(String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        String str2 = this.f3838d;
        if (str2 == null || str2.isEmpty()) {
            return str;
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(Base64.decode(this.f3838d.getBytes(), 0), "AES");
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(1, secretKeySpec, new IvParameterSpec("7777889654578967".getBytes()));
        Charset charset = StandardCharsets.UTF_8;
        return new String(Base64.encode(cipher.doFinal(str.getBytes(charset)), 0), charset);
    }

    public final int d() {
        try {
            return Integer.valueOf(d.b.b0(h("get_day_night_mode", null)).g().o("result").i()).intValue();
        } catch (Exception unused) {
            return -1;
        }
    }

    public final boolean f(int i10) {
        try {
            return Boolean.valueOf(d.b.b0(h("is_hcset", String.valueOf(i10))).g().o("result").i()).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean g() {
        try {
            return Boolean.valueOf(d.b.b0(h("is_in_cruise", null)).g().o("result").i()).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public final String h(String str, String str2) {
        z7.s sVarG;
        if (!this.f3836b || this.f3835a == null) {
            com.yunpan.appmanage.util.a0.u("百度地图未启动");
            return "{\"errorCode\":12,\"errorMessage\":\"Service not bound\"}";
        }
        System.out.getClass();
        g gVar = new g();
        gVar.f3805a = str;
        gVar.f3806b = str2;
        gVar.f3807c = new Random().nextInt(100000);
        gVar.f3808d = String.valueOf(Process.myPid());
        z7.m mVar = new z7.m();
        StringWriter stringWriter = new StringWriter();
        try {
            mVar.g(gVar, g.class, mVar.d(stringWriter));
            try {
                String strB = b(((c5.a) this.f3835a).h(c(stringWriter.toString())));
                try {
                    sVarG = d.b.b0(strB).g();
                } catch (Exception unused) {
                }
                if (sVarG.o("errorCode").e() == 0 || sVarG.o("errorMessage").i().contains("不在导航状态")) {
                    return strB;
                }
                com.yunpan.appmanage.util.a0.u("百度地图：" + sVarG.o("errorMessage").i());
                return strB;
            } catch (RemoteException e7) {
                return "{\"errorCode\":3,\"errorMessage\":\"" + e7.getMessage() + "\"}";
            } catch (Exception e10) {
                return da.b.b(e10, new StringBuilder("{\"errorCode\":4,\"errorMessage\":\""), "\"}");
            }
        } catch (IOException e11) {
            throw new z7.q(e11);
        }
    }
}
