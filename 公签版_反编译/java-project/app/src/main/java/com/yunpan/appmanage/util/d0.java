package com.yunpan.appmanage.util;

import android.os.Environment;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.yunpan.appmanage.base.AppStart;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import x9.n5;

/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4007a;

    /* renamed from: b, reason: collision with root package name */
    public final z7.s f4008b;

    /* renamed from: c, reason: collision with root package name */
    public final z7.o f4009c;

    public d0(int i10) {
        z7.o oVar;
        z7.o oVar2;
        this.f4007a = i10;
        switch (i10) {
            case 1:
                File file = new File(AppStart.f3772h.getFilesDir().getAbsolutePath(), "wpList.json");
                if (!file.exists()) {
                    w wVar = v.f4106a;
                    wVar.getClass();
                    try {
                        oVar = wVar.f4123i.o("wpList").f();
                    } catch (Exception unused) {
                        oVar = new z7.o();
                    }
                    ArrayList arrayList = oVar.f19478a;
                    if (!arrayList.isEmpty()) {
                        this.f4009c = new z7.o();
                        for (int i11 = 0; i11 < arrayList.size(); i11++) {
                            this.f4009c.k(oVar.l(i11).g());
                        }
                        z7.s sVar = new z7.s();
                        this.f4008b = sVar;
                        sVar.j("wpList", this.f4009c);
                        f();
                        w wVar2 = v.f4106a;
                        wVar2.getClass();
                        try {
                            wVar2.f4123i.r("wpList");
                        } catch (Exception unused2) {
                        }
                        wVar2.m();
                    }
                }
                try {
                    z7.s sVarG = d.b.b0(q4.a.J(file)).g();
                    this.f4008b = sVarG;
                    this.f4009c = sVarG.p("wpList");
                    break;
                } catch (Exception unused3) {
                    z7.s sVar2 = new z7.s();
                    this.f4008b = sVar2;
                    sVar2.j("wpList", new z7.o());
                    f();
                    this.f4009c = new z7.o();
                    return;
                }
            default:
                File file2 = new File(AppStart.f3772h.getFilesDir().getAbsolutePath(), "urlList.json");
                if (!file2.exists()) {
                    w wVar3 = v.f4106a;
                    wVar3.getClass();
                    try {
                        oVar2 = wVar3.f4123i.o("YpUrl").f();
                    } catch (Exception unused4) {
                        oVar2 = new z7.o();
                    }
                    ArrayList arrayList2 = oVar2.f19478a;
                    if (arrayList2.isEmpty()) {
                        z7.o oVar3 = new z7.o();
                        oVar3.j("应用管家-蓝奏盘：https://wwo.lanzouj.com/b048jxb9a#6666");
                        oVar3.j("应用管家-光鸭云：https://www.guangyapan.com/s/1956000098018152457_ardOljitEJ37HnkI");
                        oVar3.j("应用管家-小飞机：https://share.feijipan.com/s/ZHVcIJIu");
                        z7.s sVar3 = new z7.s();
                        this.f4008b = sVar3;
                        sVar3.j("YpUrl", oVar3);
                        f();
                    } else {
                        this.f4009c = new z7.o();
                        for (int i12 = 0; i12 < arrayList2.size(); i12++) {
                            this.f4009c.j(oVar2.l(i12).i());
                        }
                        z7.s sVar4 = new z7.s();
                        this.f4008b = sVar4;
                        sVar4.j("YpUrl", this.f4009c);
                        f();
                        w wVar4 = v.f4106a;
                        wVar4.getClass();
                        try {
                            wVar4.f4123i.r("YpUrl");
                        } catch (Exception unused5) {
                        }
                        wVar4.m();
                    }
                }
                try {
                    z7.s sVarG2 = d.b.b0(q4.a.J(file2)).g();
                    this.f4008b = sVarG2;
                    this.f4009c = sVarG2.p("YpUrl");
                    break;
                } catch (Exception unused6) {
                    z7.s sVar5 = new z7.s();
                    this.f4008b = sVar5;
                    sVar5.j("YpUrl", new z7.o());
                    f();
                    this.f4009c = new z7.o();
                }
        }
    }

    public void a(n5 n5Var) {
        if (n5Var == null) {
            return;
        }
        try {
            z7.o oVarF = this.f4008b.o("wpList").f();
            int i10 = 0;
            while (true) {
                if (i10 >= oVarF.f19478a.size()) {
                    i10 = -1;
                    break;
                }
                z7.s sVarG = oVarF.l(i10).g();
                int iE = sVarG.o("type").e();
                int i11 = n5Var.f18290a;
                if (iE == i11) {
                    if (i11 == 1 || i11 == 2 || i11 == 20 || i11 == 21) {
                        if (n5Var.f18294e.equals(sVarG.o("user").i())) {
                            break;
                        }
                    } else if ((i11 == 3 || i11 == 4 || i11 == 5 || i11 == 6 || i11 == 7) && n5Var.f18294e.equals(sVarG.o("user").i()) && n5Var.f18292c.equals(sVarG.o("ip").i())) {
                        break;
                    }
                }
                i10++;
            }
            if (i10 == -1) {
                oVarF.k(n5Var.c());
            } else {
                oVarF.o(i10, n5Var.c());
            }
            this.f4008b.j("wpList", oVarF);
            f();
        } catch (Exception unused) {
        }
    }

    public void b(int i10) {
        try {
            z7.o oVarF = this.f4008b.o("YpUrl").f();
            oVarF.n(i10);
            this.f4008b.j("YpUrl", oVarF);
            f();
            g();
        } catch (Exception unused) {
        }
    }

    public ArrayList c() {
        ArrayList arrayList = new ArrayList();
        try {
            z7.o oVarF = this.f4008b.o("wpList").f();
            for (int i10 = 0; i10 < oVarF.f19478a.size(); i10++) {
                try {
                    arrayList.add(new n5(oVarF.l(i10).g()));
                } catch (Exception unused) {
                }
            }
        } catch (Exception unused2) {
        }
        return arrayList;
    }

    public void d() throws IOException {
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        if (!a0.g(absolutePath)) {
            absolutePath = "/sdcard";
        }
        StringBuilder sbB = d0.f.b(absolutePath, "/.");
        sbB.append(AppStart.f3772h.getPackageName());
        sbB.append("/网盘地址备份.txt");
        File file = new File(sbB.toString());
        try {
            if (file.canRead() && file.exists()) {
                StringBuilder sb2 = new StringBuilder();
                try {
                    BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb2.append(line);
                        sb2.append(SignParameters.NEW_LINE);
                    }
                    bufferedReader.close();
                } catch (FileNotFoundException e7) {
                    e7.printStackTrace();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                String string = sb2.toString();
                if (string.isEmpty()) {
                    return;
                }
                z7.o oVarF = d.b.b0(string).f();
                ArrayList arrayList = oVarF.f19478a;
                if (arrayList.size() > 1) {
                    for (int i10 = 0; i10 < arrayList.size(); i10++) {
                        this.f4008b.j("YpUrl", oVarF);
                        f();
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public ArrayList e() {
        ArrayList arrayList = new ArrayList();
        try {
            d();
            z7.o oVarF = this.f4008b.o("YpUrl").f();
            for (int i10 = 0; i10 < oVarF.f19478a.size(); i10++) {
                arrayList.add(oVarF.l(i10).i());
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    public final void f() {
        switch (this.f4007a) {
            case 0:
                q4.a.N(new File(AppStart.f3772h.getFilesDir().getAbsolutePath(), "urlList.json"), this.f4008b);
                break;
            default:
                q4.a.N(new File(AppStart.f3772h.getFilesDir().getAbsolutePath(), "wpList.json"), this.f4008b);
                break;
        }
    }

    public void g() throws IOException {
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        if (!a0.g(absolutePath)) {
            absolutePath = "/sdcard";
        }
        StringBuilder sbB = d0.f.b(absolutePath, "/.");
        sbB.append(AppStart.f3772h.getPackageName());
        sbB.append("/");
        File file = new File(sbB.toString());
        try {
            if (!file.exists()) {
                file.mkdirs();
            }
        } catch (Exception unused) {
        }
        StringBuilder sbB2 = d0.f.b(absolutePath, "/.");
        sbB2.append(AppStart.f3772h.getPackageName());
        sbB2.append("/网盘地址备份.txt");
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(new File(sbB2.toString())));
            bufferedWriter.write(this.f4008b.o("YpUrl").toString());
            bufferedWriter.close();
        } catch (IOException e7) {
            e7.printStackTrace();
        }
    }

    public void h(int i10, n5 n5Var) {
        if (n5Var == null) {
            return;
        }
        try {
            z7.o oVarF = this.f4008b.o("wpList").f();
            oVarF.o(i10, n5Var.c());
            this.f4008b.j("wpList", oVarF);
            f();
        } catch (Exception unused) {
        }
    }
}
