package ua;

import com.android.apksig.ApkSigner;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityGjDiy;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

/* loaded from: classes.dex */
public final /* synthetic */ class z1 implements ea.f, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityGjDiy f16072a;

    public /* synthetic */ z1(ActivityGjDiy activityGjDiy) {
        this.f16072a = activityGjDiy;
    }

    @Override // ea.f
    public void a(x9.w3 w3Var) {
        int i10 = ActivityGjDiy.V;
        ActivityGjDiy activityGjDiy = this.f16072a;
        activityGjDiy.getClass();
        if (!w3Var.f18365b.toLowerCase().endsWith(".jks") && !w3Var.f18365b.toLowerCase().endsWith(".bks")) {
            com.yunpan.appmanage.util.a0.u("请选择jks格式的签名文件");
        }
        activityGjDiy.E.setText(w3Var.f18364a);
        activityGjDiy.L = w3Var;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:227|92|(1:94)(2:100|(1:102)(2:103|(1:105)(2:106|(1:108)(2:109|(1:111)(2:112|(11:114|189|(2:203|116)(2:121|(1:123)(1:124))|125|235|(1:127)|128|197|129|130|248)(3:132|133|233))))))|95|189|(0)(0)|125|235|(0)|128|197|129|130|248) */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0477 A[Catch: Exception -> 0x0060, TRY_ENTER, TryCatch #11 {Exception -> 0x0060, blocks: (B:3:0x0012, B:12:0x0063, B:19:0x00a4, B:30:0x0157, B:32:0x017e, B:33:0x019f, B:83:0x02f0, B:87:0x0322, B:127:0x0477, B:128:0x047a, B:130:0x04eb, B:140:0x051b, B:141:0x051e, B:136:0x0511, B:157:0x0553, B:171:0x056a, B:170:0x0567, B:177:0x0574, B:176:0x0571, B:16:0x0084, B:18:0x008c, B:7:0x003f, B:9:0x0047, B:166:0x0561, B:172:0x056b, B:34:0x01d0, B:82:0x02ed, B:165:0x0560, B:164:0x055d, B:20:0x00b4, B:22:0x00de, B:26:0x0110, B:28:0x0129, B:29:0x0146, B:25:0x00ff, B:84:0x0317, B:86:0x031f, B:151:0x053b, B:150:0x052b), top: B:209:0x0012, inners: #4, #10, #14, #20, #23 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x051b A[Catch: Exception -> 0x0060, TRY_ENTER, TryCatch #11 {Exception -> 0x0060, blocks: (B:3:0x0012, B:12:0x0063, B:19:0x00a4, B:30:0x0157, B:32:0x017e, B:33:0x019f, B:83:0x02f0, B:87:0x0322, B:127:0x0477, B:128:0x047a, B:130:0x04eb, B:140:0x051b, B:141:0x051e, B:136:0x0511, B:157:0x0553, B:171:0x056a, B:170:0x0567, B:177:0x0574, B:176:0x0571, B:16:0x0084, B:18:0x008c, B:7:0x003f, B:9:0x0047, B:166:0x0561, B:172:0x056b, B:34:0x01d0, B:82:0x02ed, B:165:0x0560, B:164:0x055d, B:20:0x00b4, B:22:0x00de, B:26:0x0110, B:28:0x0129, B:29:0x0146, B:25:0x00ff, B:84:0x0317, B:86:0x031f, B:151:0x053b, B:150:0x052b), top: B:209:0x0012, inners: #4, #10, #14, #20, #23 }] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0440 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws Throwable {
        ef.b bVar2;
        byte[] bArrA;
        byte[] bArrA2;
        InputStream inputStream;
        InputStream fileInputStream;
        InputStream inputStreamOpenRawResource;
        KeyStore keyStore;
        File file;
        int i10 = ActivityGjDiy.V;
        ActivityGjDiy activityGjDiy = this.f16072a;
        activityGjDiy.getClass();
        try {
            q4.a.N(new File(activityGjDiy.N), activityGjDiy.O);
            if (activityGjDiy.P != null) {
                try {
                    new File(activityGjDiy.getFilesDir() + "/gj_ico.png").delete();
                } catch (Exception unused) {
                }
                if (!activityGjDiy.P.isEmpty()) {
                    com.yunpan.appmanage.util.a0.e(activityGjDiy.P, activityGjDiy.getFilesDir() + "/gj_ico.png");
                }
            }
            if (activityGjDiy.R != null) {
                try {
                    new File(activityGjDiy.getFilesDir() + "/gj_banner.png").delete();
                } catch (Exception unused2) {
                }
                if (!activityGjDiy.R.isEmpty()) {
                    com.yunpan.appmanage.util.a0.e(activityGjDiy.R, activityGjDiy.getFilesDir() + "/gj_banner.png");
                }
            }
            bVar.f("查找图标中");
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            bVar2 = new ef.b(com.yunpan.appmanage.util.j.f4033a.f4043e);
        } catch (Exception e7) {
            Thread.sleep(666L);
            PrintStream printStream = System.out;
            e7.getMessage();
            printStream.getClass();
            com.yunpan.appmanage.util.a0.u(String.valueOf(e7.getMessage()));
            bVar.d(e7);
            return;
        }
        try {
            bVar2.M();
            String str = bVar2.f4962d;
            String strN = p000if.a.N(str, "icon=\"", "\"", false);
            String strN2 = p000if.a.N(str, "banner=\"", "\"", false);
            if (com.yunpan.appmanage.util.a0.g(activityGjDiy.getFilesDir() + "/gj_ico.png")) {
                bArrA = com.yunpan.appmanage.util.a0.A(new FileInputStream(activityGjDiy.getFilesDir() + "/gj_ico.png"));
            } else {
                bArrA = com.yunpan.appmanage.util.a0.A(activityGjDiy.A.getResources().openRawResource(R.raw.gj_ico2));
            }
            if (com.yunpan.appmanage.util.a0.g(activityGjDiy.getFilesDir() + "/gj_banner.png")) {
                bArrA2 = com.yunpan.appmanage.util.a0.A(new FileInputStream(activityGjDiy.getFilesDir() + "/gj_banner.png"));
            } else {
                bArrA2 = com.yunpan.appmanage.util.a0.A(activityGjDiy.A.getResources().openRawResource(R.raw.gj_banner2));
            }
            bVar2.close();
            bVar.f("替换图标中");
            String str2 = activityGjDiy.getFilesDir() + "/cache/";
            if (!fa.g0.f5682a.d().isEmpty()) {
                str2 = fa.g0.f5682a.d() + "/." + com.yunpan.appmanage.util.j.f4033a.f4041d + "/cache/";
            }
            new File(str2).mkdirs();
            File file2 = new File(str2 + "/" + System.currentTimeMillis());
            ZipFile zipFile = new ZipFile(new File(com.yunpan.appmanage.util.j.f4033a.f4043e));
            try {
                ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file2)));
                try {
                    Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                    while (true) {
                        if (!enumerationEntries.hasMoreElements()) {
                            break;
                        }
                        ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                        Enumeration<? extends ZipEntry> enumeration = enumerationEntries;
                        if (zipEntryNextElement.getName().startsWith("META-INF/")) {
                            enumerationEntries = enumeration;
                        } else {
                            ZipEntry zipEntry = new ZipEntry(zipEntryNextElement.getName());
                            zipEntry.setMethod(zipEntryNextElement.getMethod());
                            if (zipEntry.getMethod() != 0) {
                                file = file2;
                            } else if (zipEntryNextElement.getName().equals(strN)) {
                                file = file2;
                                zipEntry.setSize(bArrA.length);
                                zipEntry.setCompressedSize(bArrA.length);
                                CRC32 crc32 = new CRC32();
                                crc32.update(bArrA);
                                zipEntry.setCrc(crc32.getValue());
                            } else {
                                file = file2;
                                if (zipEntryNextElement.getName().equals(strN2)) {
                                    zipEntry.setSize(bArrA2.length);
                                    zipEntry.setCompressedSize(bArrA2.length);
                                    CRC32 crc322 = new CRC32();
                                    crc322.update(bArrA2);
                                    zipEntry.setCrc(crc322.getValue());
                                } else {
                                    zipEntry.setSize(zipEntryNextElement.getSize());
                                    zipEntry.setCompressedSize(zipEntryNextElement.getCompressedSize());
                                    zipEntry.setCrc(zipEntryNextElement.getCrc());
                                }
                            }
                            zipEntry.setExtra(null);
                            zipOutputStream.putNextEntry(zipEntry);
                            if (zipEntryNextElement.getName().equals(strN)) {
                                zipOutputStream.write(bArrA);
                            } else if (zipEntryNextElement.getName().equals(strN2)) {
                                zipOutputStream.write(bArrA2);
                            } else {
                                InputStream inputStream2 = zipFile.getInputStream(zipEntryNextElement);
                                try {
                                    byte[] bArr = new byte[8192];
                                    while (true) {
                                        int i11 = inputStream2.read(bArr);
                                        if (i11 == -1) {
                                            break;
                                        } else {
                                            zipOutputStream.write(bArr, 0, i11);
                                        }
                                    }
                                    inputStream2.close();
                                } catch (Throwable th2) {
                                    if (inputStream2 == null) {
                                        throw th2;
                                    }
                                    try {
                                        inputStream2.close();
                                        throw th2;
                                    } catch (Throwable th3) {
                                        try {
                                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                            throw th2;
                                        } catch (Exception unused3) {
                                            throw th2;
                                        }
                                    }
                                }
                            }
                            zipOutputStream.closeEntry();
                            enumerationEntries = enumeration;
                            file2 = file;
                        }
                        Thread.sleep(666L);
                        PrintStream printStream2 = System.out;
                        e7.getMessage();
                        printStream2.getClass();
                        com.yunpan.appmanage.util.a0.u(String.valueOf(e7.getMessage()));
                        bVar.d(e7);
                        return;
                    }
                    File file3 = file2;
                    zipOutputStream.close();
                    zipFile.close();
                    File file4 = new File(str2 + "/" + System.currentTimeMillis());
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "r");
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file4);
                        try {
                            android.support.v4.media.session.b.a(randomAccessFile, fileOutputStream);
                            fileOutputStream.close();
                            randomAccessFile.close();
                            try {
                                file3.delete();
                            } catch (Exception unused4) {
                            }
                            String strI = "ctmming";
                            String strI2 = strI;
                            int i12 = 0;
                            String strI3 = "mingkey";
                            while (true) {
                                try {
                                    try {
                                        if (com.yunpan.appmanage.util.j.f4033a.f4064p.equals(activityGjDiy.A.getString(R.string.sign_sha256_gj).toUpperCase())) {
                                            inputStreamOpenRawResource = activityGjDiy.A.getResources().openRawResource(R.raw.jks0);
                                        } else if (com.yunpan.appmanage.util.j.f4033a.f4064p.equals(activityGjDiy.A.getString(R.string.sign_sha256_ys).toUpperCase())) {
                                            inputStreamOpenRawResource = activityGjDiy.A.getResources().openRawResource(R.raw.jks1);
                                        } else if (com.yunpan.appmanage.util.j.f4033a.f4064p.equals(activityGjDiy.A.getString(R.string.sign_sha256_rk3288).toUpperCase())) {
                                            inputStreamOpenRawResource = activityGjDiy.A.getResources().openRawResource(R.raw.jks3);
                                        } else if (com.yunpan.appmanage.util.j.f4033a.f4064p.equals(activityGjDiy.A.getString(R.string.sign_sha256_fske).toUpperCase())) {
                                            inputStreamOpenRawResource = activityGjDiy.A.getResources().openRawResource(R.raw.jks2);
                                        } else {
                                            if (!com.yunpan.appmanage.util.j.f4033a.f4064p.equals(activityGjDiy.A.getString(R.string.sign_sha256_sc9853).toUpperCase())) {
                                                File file5 = new File(activityGjDiy.getFilesDir() + "/gj_sign");
                                                if (!file5.exists()) {
                                                    throw new Exception("签名文件不存在");
                                                }
                                                strI = activityGjDiy.O.o("sign_password").i();
                                                strI3 = activityGjDiy.O.o("sign_alias").i();
                                                strI2 = activityGjDiy.O.o("sign_alias_password").i();
                                                fileInputStream = new FileInputStream(file5);
                                                if (i12 != 0) {
                                                    try {
                                                        keyStore = KeyStore.getInstance("PKCS12", new BouncyCastleProvider());
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                        inputStream = fileInputStream;
                                                        if (inputStream != null) {
                                                            inputStream.close();
                                                        }
                                                        throw th;
                                                    }
                                                } else {
                                                    keyStore = i12 == 1 ? KeyStore.getInstance("BKS", new BouncyCastleProvider()) : KeyStore.getInstance("JKS", new c.a(1));
                                                }
                                                keyStore.load(fileInputStream, strI.toCharArray());
                                                if (fileInputStream != null) {
                                                    fileInputStream.close();
                                                }
                                                PrivateKey privateKey = (PrivateKey) keyStore.getKey(strI3, strI2.toCharArray());
                                                X509Certificate x509Certificate = (X509Certificate) keyStore.getCertificate(strI3);
                                                File file6 = new File(str2 + "/" + System.currentTimeMillis());
                                                new ApkSigner.Builder((List<ApkSigner.SignerConfig>) Collections.singletonList(new ApkSigner.SignerConfig.Builder("CERT", privateKey, Collections.singletonList(x509Certificate)).build())).setInputApk(file4).setOutputApk(file6).setCreatedBy(activityGjDiy.A.getPackageName()).setV1SigningEnabled(true).setV2SigningEnabled(true).setV3SigningEnabled(false).setV4SigningEnabled(false).build().sign();
                                                file4.delete();
                                                Toaster.show((CharSequence) "安装中");
                                                kh.e.b().f(new ja.a(2, file6.getAbsolutePath()));
                                                bVar.b();
                                                return;
                                            }
                                            inputStreamOpenRawResource = activityGjDiy.A.getResources().openRawResource(R.raw.jks4);
                                        }
                                        if (i12 != 0) {
                                        }
                                        keyStore.load(fileInputStream, strI.toCharArray());
                                        if (fileInputStream != null) {
                                        }
                                        PrivateKey privateKey2 = (PrivateKey) keyStore.getKey(strI3, strI2.toCharArray());
                                        X509Certificate x509Certificate2 = (X509Certificate) keyStore.getCertificate(strI3);
                                        File file62 = new File(str2 + "/" + System.currentTimeMillis());
                                        new ApkSigner.Builder((List<ApkSigner.SignerConfig>) Collections.singletonList(new ApkSigner.SignerConfig.Builder("CERT", privateKey2, Collections.singletonList(x509Certificate2)).build())).setInputApk(file4).setOutputApk(file62).setCreatedBy(activityGjDiy.A.getPackageName()).setV1SigningEnabled(true).setV2SigningEnabled(true).setV3SigningEnabled(false).setV4SigningEnabled(false).build().sign();
                                        file4.delete();
                                        Toaster.show((CharSequence) "安装中");
                                        kh.e.b().f(new ja.a(2, file62.getAbsolutePath()));
                                        bVar.b();
                                        return;
                                    } catch (Exception e10) {
                                        e = e10;
                                        if (i12 == 2) {
                                            throw e;
                                        }
                                        if (fileInputStream != null) {
                                            fileInputStream.close();
                                        }
                                        i12++;
                                    }
                                    fileInputStream = inputStreamOpenRawResource;
                                } catch (Exception e11) {
                                    e = e11;
                                    fileInputStream = null;
                                } catch (Throwable th5) {
                                    th = th5;
                                    inputStream = null;
                                    if (inputStream != null) {
                                    }
                                    throw th;
                                }
                                i12++;
                            }
                        } finally {
                        }
                    } finally {
                    }
                } catch (Throwable th6) {
                    try {
                        zipOutputStream.close();
                        throw th6;
                    } catch (Throwable th7) {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th6, th7);
                        throw th6;
                    }
                }
            } finally {
            }
        } finally {
        }
    }
}
