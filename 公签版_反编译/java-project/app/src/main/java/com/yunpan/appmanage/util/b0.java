package com.yunpan.appmanage.util;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.yunpan.appmanage.base.AppStart;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: a, reason: collision with root package name */
    public File f3998a;

    /* renamed from: b, reason: collision with root package name */
    public z7.s f3999b;

    /* renamed from: c, reason: collision with root package name */
    public Object f4000c;

    public b0(int i10) {
        switch (i10) {
            case 1:
                this.f4000c = "";
                break;
            default:
                this.f3999b = null;
                break;
        }
    }

    public String a() {
        return (String) this.f4000c;
    }

    public void b() {
        boolean z = false;
        boolean z4 = true;
        File file = new File(AppStart.f3772h.getFilesDir().getAbsolutePath(), "MyInitOften.json");
        this.f3998a = file;
        if (!file.exists()) {
            try {
                this.f3998a.getParentFile().mkdirs();
                this.f3998a.createNewFile();
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        StringBuilder sb2 = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(this.f3998a));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb2.append(line);
                    sb2.append(SignParameters.NEW_LINE);
                } catch (Throwable th2) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                    throw th2;
                }
            }
            bufferedReader.close();
        } catch (Exception unused2) {
        }
        try {
        } catch (Exception unused3) {
            this.f3999b = new z7.s();
            z = true;
        }
        if (sb2.length() == 0) {
            throw new Exception();
        }
        this.f3999b = d.b.b0(sb2.toString()).g();
        if (this.f3999b.f19480a.containsKey("enabled_accessibility_services")) {
            this.f4000c = this.f3999b.o("enabled_accessibility_services").i();
            z4 = z;
        } else {
            this.f3999b.m("enabled_accessibility_services", "");
        }
        if (z4) {
            d();
        }
    }

    public void c(AppStart appStart) {
        this.f4000c = appStart;
        File file = new File(((AppStart) this.f4000c).getFilesDir().getAbsolutePath(), "storageUri.json");
        this.f3998a = file;
        if (!file.exists()) {
            try {
                this.f3998a.getParentFile().mkdirs();
                this.f3998a.createNewFile();
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        StringBuilder sb2 = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(this.f3998a));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb2.append(line);
                sb2.append(SignParameters.NEW_LINE);
            }
            bufferedReader.close();
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
        } catch (IOException e11) {
            e11.printStackTrace();
        }
        String string = sb2.toString();
        if (string.isEmpty()) {
            string = "{}";
        }
        try {
            this.f3999b = d.b.b0(string).g();
        } catch (Exception unused) {
        }
    }

    public void d() throws IOException {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(this.f3998a));
            bufferedWriter.write(this.f3999b.toString());
            bufferedWriter.close();
        } catch (IOException e7) {
            e7.printStackTrace();
        }
    }

    public void e(String str) throws IOException {
        this.f4000c = str;
        try {
            this.f3999b.m("enabled_accessibility_services", str);
        } catch (Exception unused) {
        }
        d();
    }
}
