package com.yunpan.appmanage.util;

import android.os.Build;
import com.android.apksig.ApkVerifier;
import java.io.File;
import java.io.FileInputStream;
import java.security.KeyStore;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class h0 {
    public static String a(File file) throws Throwable {
        int iMax = Math.max(Build.VERSION.SDK_INT, 24);
        ApkVerifier.Result resultVerify = new ApkVerifier.Builder(file).setMinCheckedPlatformVersion(iMax).setMaxCheckedPlatformVersion(iMax).build().verify();
        if (!resultVerify.isVerified()) {
            throw new SecurityException("APK 签名无效");
        }
        Iterator<X509Certificate> it = resultVerify.getSignerCertificates().iterator();
        if (!it.hasNext()) {
            throw new SecurityException("无法获取签名证书");
        }
        return s1.g.h(MessageDigest.getInstance("SHA-256").digest(it.next().getEncoded()));
    }

    public static boolean b(File file, File file2, String str, String str2) throws Exception {
        KeyStore keyStore;
        int i10 = 0;
        while (true) {
            if (i10 == 0) {
                try {
                    keyStore = KeyStore.getInstance("PKCS12", new c.a(1));
                } catch (Exception e7) {
                    if (i10 == 2) {
                        throw e7;
                    }
                    i10++;
                }
            } else {
                keyStore = i10 == 1 ? KeyStore.getInstance("BKS", new c.a(1)) : KeyStore.getInstance("JKS", new c.a(1));
            }
            FileInputStream fileInputStream = new FileInputStream(file2);
            try {
                keyStore.load(fileInputStream, str2.toCharArray());
                fileInputStream.close();
                X509Certificate x509Certificate = (X509Certificate) keyStore.getCertificate(str);
                int iMax = Math.max(Build.VERSION.SDK_INT, 24);
                ApkVerifier.Result resultVerify = new ApkVerifier.Builder(file).setMinCheckedPlatformVersion(iMax).setMaxCheckedPlatformVersion(iMax).build().verify();
                if (!resultVerify.isVerified()) {
                    throw new SecurityException("APK 签名无效");
                }
                Iterator<X509Certificate> it = resultVerify.getSignerCertificates().iterator();
                while (it.hasNext()) {
                    if (MessageDigest.isEqual(MessageDigest.getInstance("SHA-256").digest(it.next().getEncoded()), MessageDigest.getInstance("SHA-256").digest(x509Certificate.getEncoded()))) {
                        return true;
                    }
                }
                return false;
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
        }
    }

    public static void c(File file, String str, String str2, String str3) {
        KeyStore keyStore;
        int i10 = 0;
        while (true) {
            if (i10 == 0) {
                try {
                    keyStore = KeyStore.getInstance("PKCS12", new c.a(1));
                } catch (Exception e7) {
                    if (i10 == 2) {
                        throw e7;
                    }
                    i10++;
                }
            } else {
                keyStore = i10 == 1 ? KeyStore.getInstance("BKS", new c.a(1)) : KeyStore.getInstance("JKS", new c.a(1));
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                keyStore.load(fileInputStream, str2.toCharArray());
                fileInputStream.close();
                return;
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
        }
    }
}
