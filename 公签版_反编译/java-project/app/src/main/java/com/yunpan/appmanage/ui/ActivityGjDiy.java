package com.yunpan.appmanage.ui;

import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.apksig.ApkSigner;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import d0.f;
import da.g;
import ef.b;
import fa.g0;
import fa.h0;
import ha.u9;
import ha.vb;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
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
import kh.e;
import mc.c;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.greenrobot.eventbus.ThreadMode;
import p000if.a;
import ua.z1;
import x9.w3;
import z7.s;

/* loaded from: classes.dex */
public class ActivityGjDiy extends g implements View.OnClickListener, View.OnKeyListener {
    public static final /* synthetic */ int V = 0;
    public ImageView C;
    public ImageView D;
    public TextView E;
    public TextView F;
    public TextView G;
    public EditText H;
    public EditText I;
    public EditText K;
    public w3 L;
    public ConstraintLayout M;
    public String N;
    public String P;
    public String R;
    public u9 S;
    public s O = null;
    public boolean T = false;

    /* JADX WARN: Removed duplicated region for block: B:139:0x044b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String x(String str) {
        InputStream inputStream;
        String str2;
        String str3;
        String str4;
        InputStream inputStream2;
        InputStream fileInputStream;
        KeyStore keyStore;
        String str5;
        File file = new File(AppStart.f3772h.getFilesDir() + "/gj_ico.png");
        File file2 = new File(AppStart.f3772h.getFilesDir() + "/gj_banner.png");
        if (!file.exists() && !file2.exists()) {
            throw new Exception("不需要修改");
        }
        b bVar = new b(str);
        try {
            bVar.M();
            if (!bVar.f4963e.f5813a.equals(AppStart.f3772h.getPackageName())) {
                throw new Exception("不需要修改");
            }
            bVar.M();
            String str6 = bVar.f4962d;
            String strN = a.N(str6, "icon=\"", "\"", false);
            String strN2 = a.N(str6, "banner=\"", "\"", false);
            byte[] bArrA = a0.f(file) ? a0.A(new FileInputStream(file)) : null;
            byte[] bArrA2 = a0.f(file2) ? a0.A(new FileInputStream(file2)) : null;
            bVar.close();
            Toaster.showLong((CharSequence) "正在修改自定义图标");
            String str7 = AppStart.f3772h.getFilesDir() + "/cache/";
            h0 h0Var = g0.f5682a;
            if (!h0Var.d().isEmpty()) {
                str7 = h0Var.d() + "/." + AppStart.f3772h.getPackageName() + "/cache/";
            }
            new File(str7).mkdirs();
            String str8 = "/";
            StringBuilder sbB = f.b(str7, "/");
            sbB.append(System.currentTimeMillis());
            File file3 = new File(sbB.toString());
            ZipFile zipFile = new ZipFile(new File(str));
            try {
                ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file3)));
                try {
                    Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                    while (enumerationEntries.hasMoreElements()) {
                        ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                        if (!zipEntryNextElement.getName().startsWith("META-INF/")) {
                            ZipEntry zipEntry = new ZipEntry(zipEntryNextElement.getName());
                            zipEntry.setMethod(zipEntryNextElement.getMethod());
                            if (zipEntry.getMethod() != 0) {
                                str5 = str8;
                            } else if (!zipEntryNextElement.getName().equals(strN) || bArrA == null) {
                                str5 = str8;
                                if (!zipEntryNextElement.getName().equals(strN2) || bArrA2 == null) {
                                    zipEntry.setSize(zipEntryNextElement.getSize());
                                    zipEntry.setCompressedSize(zipEntryNextElement.getCompressedSize());
                                    zipEntry.setCrc(zipEntryNextElement.getCrc());
                                } else {
                                    zipEntry.setSize(bArrA2.length);
                                    zipEntry.setCompressedSize(bArrA2.length);
                                    CRC32 crc32 = new CRC32();
                                    crc32.update(bArrA2);
                                    zipEntry.setCrc(crc32.getValue());
                                }
                            } else {
                                str5 = str8;
                                zipEntry.setSize(bArrA.length);
                                zipEntry.setCompressedSize(bArrA.length);
                                CRC32 crc322 = new CRC32();
                                crc322.update(bArrA);
                                zipEntry.setCrc(crc322.getValue());
                            }
                            zipEntry.setExtra(null);
                            zipOutputStream.putNextEntry(zipEntry);
                            if (zipEntryNextElement.getName().equals(strN) && bArrA != null) {
                                zipOutputStream.write(bArrA);
                            } else if (!zipEntryNextElement.getName().equals(strN2) || bArrA2 == null) {
                                InputStream inputStream3 = zipFile.getInputStream(zipEntryNextElement);
                                try {
                                    byte[] bArr = new byte[8192];
                                    while (true) {
                                        int i10 = inputStream3.read(bArr);
                                        if (i10 == -1) {
                                            break;
                                        }
                                        zipOutputStream.write(bArr, 0, i10);
                                    }
                                    inputStream3.close();
                                } catch (Throwable th2) {
                                    if (inputStream3 == null) {
                                        throw th2;
                                    }
                                    try {
                                        inputStream3.close();
                                        throw th2;
                                    } catch (Throwable th3) {
                                        try {
                                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                            throw th2;
                                        } catch (Exception unused) {
                                            throw th2;
                                        }
                                    }
                                }
                            } else {
                                zipOutputStream.write(bArrA2);
                            }
                            zipOutputStream.closeEntry();
                            str8 = str5;
                        }
                    }
                    String str9 = str8;
                    zipOutputStream.close();
                    zipFile.close();
                    StringBuilder sbB2 = f.b(str7, str9);
                    sbB2.append(System.currentTimeMillis());
                    File file4 = new File(sbB2.toString());
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "r");
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file4);
                        try {
                            android.support.v4.media.session.b.a(randomAccessFile, fileOutputStream);
                            fileOutputStream.close();
                            randomAccessFile.close();
                            try {
                                file3.delete();
                            } catch (Exception unused2) {
                            }
                            File file5 = new File(AppStart.f3772h.getFilesDir() + "/gj_sign");
                            s sVarG = file5.exists() ? d.b.b0(q4.a.J(file5)).g() : null;
                            String strI = "ctmming";
                            String strI2 = "mingkey";
                            int i11 = 0;
                            String strI3 = strI;
                            while (true) {
                                try {
                                    DecimalFormat decimalFormat = k.f4034u0;
                                    k kVar = j.f4033a;
                                    if (kVar.f4064p.equals(AppStart.f3772h.getString(R.string.sign_sha256_gj).toUpperCase())) {
                                        fileInputStream = AppStart.f3772h.getResources().openRawResource(R.raw.jks0);
                                    } else if (kVar.f4064p.equals(AppStart.f3772h.getString(R.string.sign_sha256_ys).toUpperCase())) {
                                        fileInputStream = AppStart.f3772h.getResources().openRawResource(R.raw.jks1);
                                    } else if (kVar.f4064p.equals(AppStart.f3772h.getString(R.string.sign_sha256_rk3288).toUpperCase())) {
                                        fileInputStream = AppStart.f3772h.getResources().openRawResource(R.raw.jks3);
                                    } else if (kVar.f4064p.equals(AppStart.f3772h.getString(R.string.sign_sha256_fske).toUpperCase())) {
                                        fileInputStream = AppStart.f3772h.getResources().openRawResource(R.raw.jks2);
                                    } else if (kVar.f4064p.equals(AppStart.f3772h.getString(R.string.sign_sha256_sc9853).toUpperCase())) {
                                        fileInputStream = AppStart.f3772h.getResources().openRawResource(R.raw.jks4);
                                    } else {
                                        if (!file5.exists()) {
                                            throw new Exception("签名文件不存在");
                                        }
                                        strI3 = sVarG.o("sign_password").i();
                                        strI2 = sVarG.o("sign_alias").i();
                                        strI = sVarG.o("sign_alias_password").i();
                                        fileInputStream = new FileInputStream(file5);
                                    }
                                    str2 = strI2;
                                    str3 = strI;
                                    str4 = strI3;
                                    inputStream2 = fileInputStream;
                                    try {
                                        if (i11 == 0) {
                                            try {
                                                keyStore = KeyStore.getInstance("PKCS12", new BouncyCastleProvider());
                                            } catch (Throwable th4) {
                                                th = th4;
                                                inputStream = inputStream2;
                                                if (inputStream != null) {
                                                    inputStream.close();
                                                }
                                                throw th;
                                            }
                                        } else {
                                            keyStore = i11 == 1 ? KeyStore.getInstance("BKS", new BouncyCastleProvider()) : KeyStore.getInstance("JKS", new c.a(1));
                                        }
                                        keyStore.load(inputStream2, str4.toCharArray());
                                        if (inputStream2 != null) {
                                            inputStream2.close();
                                        }
                                        PrivateKey privateKey = (PrivateKey) keyStore.getKey(str2, str3.toCharArray());
                                        X509Certificate x509Certificate = (X509Certificate) keyStore.getCertificate(str2);
                                        StringBuilder sbB3 = f.b(str7, str9);
                                        sbB3.append(System.currentTimeMillis());
                                        File file6 = new File(sbB3.toString());
                                        new ApkSigner.Builder((List<ApkSigner.SignerConfig>) Collections.singletonList(new ApkSigner.SignerConfig.Builder("CERT", privateKey, Collections.singletonList(x509Certificate)).build())).setInputApk(file4).setOutputApk(file6).setCreatedBy("yygj").setV1SigningEnabled(true).setV2SigningEnabled(true).setV3SigningEnabled(false).setV4SigningEnabled(false).build().sign();
                                        try {
                                            file4.delete();
                                        } catch (Exception unused3) {
                                        }
                                        return file6.getAbsolutePath();
                                    } catch (Exception e7) {
                                        e = e7;
                                        if (i11 == 2) {
                                            throw e;
                                        }
                                        if (inputStream2 != null) {
                                            inputStream2.close();
                                        }
                                        i11++;
                                        strI3 = str4;
                                        strI = str3;
                                        strI2 = str2;
                                    }
                                } catch (Exception e10) {
                                    e = e10;
                                    str2 = strI2;
                                    str3 = strI;
                                    str4 = strI3;
                                    inputStream2 = null;
                                } catch (Throwable th5) {
                                    th = th5;
                                    inputStream = null;
                                    if (inputStream != null) {
                                    }
                                    throw th;
                                }
                                i11++;
                                strI3 = str4;
                                strI = str3;
                                strI2 = str2;
                            }
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } finally {
            try {
                bVar.close();
            } catch (Throwable th6) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th6);
                } catch (Exception unused4) {
                }
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Exception {
        int i10 = 17;
        if (view.getId() == R.id.v_icon || view.getId() == R.id.v_btn_select1 || view.getId() == R.id.v_banner || view.getId() == R.id.v_btn_select2) {
            new vb(this, this).c("选择图标(.png)", new ma.b(this, i10, view));
            return;
        }
        if (view.getId() == R.id.v_btn_return) {
            finish();
            return;
        }
        if (view.getId() == R.id.v_btn_select3) {
            new vb(this, this).c("选择图标(.png)", new z1(this));
            return;
        }
        if (view.getId() == R.id.v_btn_recovery1) {
            this.P = "";
            if (a0.g(getFilesDir() + "/gj_ico.png")) {
                this.C.setImageResource(R.raw.gj_ico2);
                return;
            } else {
                this.C.setImageResource(R.drawable.gj_ico);
                return;
            }
        }
        if (view.getId() == R.id.v_btn_recovery2) {
            this.R = "";
            if (a0.g(getFilesDir() + "/gj_banner.png")) {
                this.D.setImageResource(R.raw.gj_banner2);
                return;
            } else {
                this.D.setImageResource(R.drawable.gj_banner);
                return;
            }
        }
        if (view.getId() == R.id.v_btn_ok) {
            if (this.M.getVisibility() != 8) {
                w3 w3Var = this.L;
                if (w3Var == null) {
                    a0.u("请选择jks签名文件");
                    return;
                }
                if (!a0.g(w3Var.f18365b)) {
                    a0.u("jks签名文件不存在");
                    return;
                }
                this.O.m("sign_file", this.L.f18365b);
                this.O.m("sign_password", this.K.getText().toString());
                this.O.m("sign_alias", this.I.getText().toString());
                this.O.m("sign_alias_password", this.H.getText().toString());
                s sVar = this.O;
                String str = this.L.f18365b;
                sVar.m("sign_type", str.substring(str.lastIndexOf(".") + 1).toUpperCase());
                if (this.O.o("sign_type").i().equals("P12")) {
                    this.O.m("sign_type", "PKCS12");
                }
                try {
                    com.yunpan.appmanage.util.h0.c(new File(this.O.o("sign_file").i()), this.O.o("sign_alias").i(), this.O.o("sign_password").i(), this.O.o("sign_alias_password").i());
                    try {
                        DecimalFormat decimalFormat = k.f4034u0;
                        if (!com.yunpan.appmanage.util.h0.b(new File(j.f4033a.f4043e), new File(this.O.o("sign_file").i()), this.O.o("sign_alias").i(), this.O.o("sign_password").i())) {
                            throw new Exception("签名与当前APK签名不匹配");
                        }
                        a0.e(this.L.f18365b, getFilesDir() + "/gj_sign");
                    } catch (Exception e7) {
                        a0.u(String.valueOf(e7.getMessage()));
                        return;
                    }
                } catch (Exception unused) {
                    a0.u("签名文件或签名密码不正确");
                    return;
                }
            } else {
                try {
                    this.O.r("sign_file");
                } catch (Exception unused2) {
                }
            }
            new c(0, new z1(this)).d(rc.f.f13757b).a(fc.b.a()).b(new ka.c(i10, this));
        }
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        e.b().l(this);
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            this.T = true;
            return false;
        }
        if (keyEvent.getAction() != 1 || !this.T) {
            return false;
        }
        this.T = false;
        if (i10 == 20) {
            if (view.getId() == R.id.v_edit_alias_password) {
                this.G.requestFocus();
            } else if (view.getId() == R.id.v_edit_alias) {
                this.H.requestFocus();
            } else if (view.getId() == R.id.v_edit_password) {
                this.I.requestFocus();
            }
        } else if (i10 == 19) {
            if (view.getId() == R.id.v_edit_alias_password) {
                this.I.requestFocus();
            } else if (view.getId() == R.id.v_edit_alias) {
                this.K.requestFocus();
            } else if (view.getId() == R.id.v_edit_password) {
                this.F.requestFocus();
            }
            return true;
        }
        return false;
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(String str) {
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_gj_diy;
    }

    @Override // da.g
    public final void u() {
        e.b().j(this);
        this.C = (ImageView) findViewById(R.id.v_icon);
        this.D = (ImageView) findViewById(R.id.v_banner);
        if (a0.g(getFilesDir() + "/gj_ico.png")) {
            this.C.setImageURI(Uri.parse(getFilesDir() + "/gj_ico.png"));
        } else {
            this.C.setImageResource(R.drawable.gj_ico);
        }
        if (a0.g(getFilesDir() + "/gj_banner.png")) {
            this.D.setImageURI(Uri.parse(getFilesDir() + "/gj_banner.png"));
        } else {
            this.D.setImageResource(R.drawable.gj_banner);
        }
        this.C.setOnClickListener(this);
        this.D.setOnClickListener(this);
        this.F = (TextView) findViewById(R.id.v_btn_select3);
        findViewById(R.id.v_btn_select1).setOnClickListener(this);
        findViewById(R.id.v_btn_select2).setOnClickListener(this);
        this.F.setOnClickListener(this);
        findViewById(R.id.v_btn_recovery1).setOnClickListener(this);
        findViewById(R.id.v_btn_recovery2).setOnClickListener(this);
        findViewById(R.id.v_btn_return).setOnClickListener(this);
        TextView textView = (TextView) findViewById(R.id.v_btn_ok);
        this.G = textView;
        textView.setOnClickListener(this);
        findViewById(R.id.v_btn_select1).requestFocus();
        this.E = (TextView) findViewById(R.id.v_key_file);
        this.K = (EditText) findViewById(R.id.v_edit_password);
        this.I = (EditText) findViewById(R.id.v_edit_alias);
        this.H = (EditText) findViewById(R.id.v_edit_alias_password);
        this.K.setOnKeyListener(this);
        this.I.setOnKeyListener(this);
        this.H.setOnKeyListener(this);
        this.M = (ConstraintLayout) findViewById(R.id.v_lay_key);
        String str = this.A.getFilesDir() + "/diy.json";
        this.N = str;
        if (a0.g(str)) {
            try {
                s sVarG = d.b.b0(q4.a.J(new File(this.N))).g();
                this.O = sVarG;
                if (sVarG.f19480a.containsKey("sign_file")) {
                    this.E.setText(new File(this.O.o("sign_file").i()).getName());
                    this.K.setText(this.O.o("sign_password").i());
                    this.I.setText(this.O.o("sign_alias").i());
                    this.H.setText(this.O.o("sign_alias_password").i());
                }
            } catch (Exception unused) {
            }
        }
        if (this.O == null) {
            this.O = new s();
        }
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = j.f4033a;
        if (kVar.f4064p.equals(getString(R.string.sign_sha256_ys).toUpperCase()) || kVar.f4064p.equals(getString(R.string.sign_sha256_gj).toUpperCase()) || kVar.f4064p.equals(getString(R.string.sign_sha256_rk3288).toUpperCase()) || kVar.f4064p.equals(getString(R.string.sign_sha256_fske).toUpperCase()) || kVar.f4064p.equals(getString(R.string.sign_sha256_sc9853).toUpperCase())) {
            this.M.setVisibility(8);
        }
        this.S = new u9(this, this);
    }
}
