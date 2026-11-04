package com.yunpan.appmanage.util;

import com.yunpan.appmanage.base.AppStart;
import java.io.File;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import okhttp3.Cache;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.internal.Version;

/* loaded from: classes.dex */
public abstract class f0 {

    /* renamed from: a, reason: collision with root package name */
    public static o9.a f4019a;

    /* renamed from: b, reason: collision with root package name */
    public static OkHttpClient f4020b;

    public static String a(int i10) {
        switch (i10) {
            case 1:
                return "https://doh.pub/dns-query";
            case 2:
                return "https://dns.alidns.com/dns-query";
            case 3:
                return "https://doh.360.cn/dns-query";
            case 4:
                return "https://dns.google/dns-query";
            case 5:
                return "https://dns.adguard.com/dns-query";
            case 6:
                return "https://dns.quad9.net/dns-query";
            default:
                return "";
        }
    }

    public static void b() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        j9.a aVar = new j9.a("OkExoPlayer");
        aVar.d(1);
        aVar.f9811b = Level.OFF;
        builder.addInterceptor(aVar);
        try {
            c(builder);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        builder.cache(new Cache(new File(AppStart.f3772h.getCacheDir().getAbsolutePath(), "dohcache"), 20971520L));
        OkHttpClient okHttpClientBuild = builder.build();
        String strA = a(0);
        androidx.room.i iVar = new androidx.room.i(6, false);
        iVar.f2405b = okHttpClientBuild;
        iVar.f2406c = strA.isEmpty() ? null : HttpUrl.get(strA);
        f4019a = new o9.a(iVar);
        OkHttpClient.Builder builder2 = new OkHttpClient.Builder();
        j9.a aVar2 = new j9.a("OkGo");
        aVar2.d(1);
        aVar2.f9811b = Level.OFF;
        OkHttpClient.Builder builderAddInterceptor = builder2.addInterceptor(aVar2);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient.Builder builderDns = builderAddInterceptor.readTimeout(120L, timeUnit).writeTimeout(120L, timeUnit).connectTimeout(3L, timeUnit).dns(f4019a);
        try {
            c(builderDns);
        } catch (Throwable th3) {
            th3.printStackTrace();
        }
        k9.a.f10204d = Version.userAgent();
        OkHttpClient okHttpClientBuild2 = builderDns.build();
        b9.b bVar = b9.a.f2665a;
        bVar.getClass();
        n9.a.b(okHttpClientBuild2, "okHttpClient == null");
        bVar.f2667b = okHttpClientBuild2;
        f4020b = okHttpClientBuild2;
        builderDns.followRedirects(false);
        builderDns.followSslRedirects(false);
        builderDns.build();
    }

    public static synchronized void c(OkHttpClient.Builder builder) {
        try {
            hh.c cVar = va.a.f16719d;
            builder.sslSocketFactory(new va.a(cVar), cVar);
            builder.hostnameVerifier(i9.b.f8650b);
        } catch (Exception e7) {
            throw new RuntimeException(e7);
        }
    }
}
