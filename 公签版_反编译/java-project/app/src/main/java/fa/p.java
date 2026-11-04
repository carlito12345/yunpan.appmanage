package fa;

import android.os.Build;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.base.AppStart;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5734a;

    /* renamed from: b, reason: collision with root package name */
    public y9.b f5735b;

    /* renamed from: c, reason: collision with root package name */
    public Socket f5736c;

    /* renamed from: d, reason: collision with root package name */
    public y9.f f5737d;

    /* renamed from: e, reason: collision with root package name */
    public y9.g f5738e;

    /* renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f5739f;

    public p(int i10) {
        this.f5734a = i10;
        switch (i10) {
            case 1:
                this.f5739f = new AtomicBoolean(false);
                break;
            default:
                this.f5739f = new AtomicBoolean(false);
                break;
        }
    }

    public final void a() throws Exception {
        switch (this.f5734a) {
            case 0:
                com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                if (!wVar.l.trim().isEmpty()) {
                    this.f5735b.J("shell:" + wVar.l.trim());
                    Thread.sleep(333L);
                }
                y9.f fVarJ = this.f5735b.J("shell:");
                this.f5737d = fVarJ;
                if (this.f5736c == null || fVarJ.f19008f) {
                    throw new Exception("未连接");
                }
                y9.g gVar = fVarJ.f19007e;
                this.f5738e = gVar;
                if (gVar == null) {
                    throw new Exception("连接输出流出错");
                }
                if (!wVar.f4130m) {
                    if (wVar.l.isEmpty()) {
                        this.f5737d.A("adb36987\n");
                        h(2000L);
                    } else {
                        this.f5737d.A(wVar.l + SignParameters.NEW_LINE);
                        h(2000L);
                    }
                }
                this.f5737d.A("id\n");
                Thread.sleep(888L);
                g();
                this.f5737d.A("id\n");
                Iterator it = h(2000L).f5725c.iterator();
                String strK = "";
                while (it.hasNext()) {
                    strK = g.b.k(strK, (String) it.next(), SignParameters.NEW_LINE);
                }
                if (strK.toLowerCase().contains("tream open actively rejected")) {
                    this.f5737d.close();
                    this.f5737d = null;
                    throw new Exception("adb shell 需要密码");
                }
                if (strK.contains("uid=")) {
                    return;
                }
                if (com.yunpan.appmanage.util.v.f4106a.G) {
                    Toaster.showLong((CharSequence) "adb shell密码错误");
                }
                throw new Exception("可以连接，但adb shell需要密码");
            default:
                com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                if (!wVar2.l.trim().isEmpty()) {
                    this.f5735b.J("shell:" + wVar2.l.trim());
                    Thread.sleep(333L);
                }
                y9.f fVarJ2 = this.f5735b.J("shell:");
                this.f5737d = fVarJ2;
                if (this.f5736c == null || fVarJ2.f19008f) {
                    throw new Exception("未连接");
                }
                y9.g gVar2 = fVarJ2.f19007e;
                this.f5738e = gVar2;
                if (gVar2 == null) {
                    throw new Exception("连接输出流出错");
                }
                if (!wVar2.f4130m) {
                    if (wVar2.l.isEmpty()) {
                        this.f5737d.A("adb36987\n");
                        i(2000L);
                    } else {
                        this.f5737d.A(wVar2.l + SignParameters.NEW_LINE);
                        i(2000L);
                    }
                }
                this.f5737d.A("id\n");
                Thread.sleep(888L);
                g();
                this.f5737d.A("id\n");
                Iterator it2 = i(2000L).f5725c.iterator();
                String strK2 = "";
                while (it2.hasNext()) {
                    strK2 = g.b.k(strK2, (String) it2.next(), SignParameters.NEW_LINE);
                }
                if (strK2.toLowerCase().contains("tream open actively rejected")) {
                    this.f5737d.close();
                    this.f5737d = null;
                    throw new Exception("adb shell 需要密码");
                }
                if (strK2.contains("uid=")) {
                    return;
                }
                if (com.yunpan.appmanage.util.v.f4106a.G) {
                    Toaster.showLong((CharSequence) "adb shell密码错误");
                }
                throw new Exception("可以连接，但adb shell需要密码");
        }
    }

    public o b(String str) {
        y9.f fVar;
        o oVar = new o(0);
        if (this.f5736c == null || (fVar = this.f5737d) == null || fVar.f19008f || this.f5738e == null) {
            oVar.f5723a = -1;
            oVar.f5725c.add("未连接adb");
            return oVar;
        }
        try {
            return l(str);
        } catch (Exception unused) {
            oVar.f5723a = 404;
            oVar.f5724b = "执行失败";
            oVar.f5725c.add(oVar.f5724b);
            return oVar;
        }
    }

    public o c(String str) {
        y9.f fVar;
        o oVar = new o(1);
        if (this.f5736c == null || (fVar = this.f5737d) == null || fVar.f19008f || this.f5738e == null) {
            oVar.f5723a = -1;
            oVar.f5725c.add("未连接adb");
            return oVar;
        }
        try {
            return m(str);
        } catch (Exception unused) {
            oVar.f5723a = 404;
            oVar.f5724b = "执行失败";
            oVar.f5725c.add(oVar.f5724b);
            return oVar;
        }
    }

    public boolean d() throws Exception {
        if (j() || q.f5740a.isConnected()) {
            return true;
        }
        AtomicBoolean atomicBoolean = this.f5739f;
        atomicBoolean.set(true);
        try {
            a.a();
            a.b();
            com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
            if (wVar.f4134o && Build.VERSION.SDK_INT >= 21) {
                throw new Exception("使用新版Adb协议");
            }
            try {
                this.f5736c = new Socket("", wVar.f4127k);
            } catch (Exception unused) {
                try {
                    com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                    if (wVar2.f4127k != 5557) {
                        this.f5736c = new Socket("", 5557);
                        wVar2.n(5557);
                    } else {
                        this.f5736c = new Socket("", 5555);
                        wVar2.n(5555);
                    }
                } catch (Exception e7) {
                    com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                    boolean z = wVar3.z;
                    if (!z && !wVar3.A) {
                        throw e7;
                    }
                    if (z && !u9.d.r("setprop service.adb.tcp.port 5555").l0().q()) {
                        throw e7;
                    }
                    if (wVar3.A && !u9.d.r("setprop persist.adb.tcp.port 5555").l0().q()) {
                        throw e7;
                    }
                    Thread.sleep(333L);
                    if (u9.d.r("setprop ctl.restart adbd").l0().f2426b != 0) {
                        throw e7;
                    }
                    Thread.sleep(2000L);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    do {
                        try {
                            this.f5736c = new Socket("", 5555);
                            break;
                        } catch (Exception unused2) {
                            Thread.sleep(222L);
                            if (System.currentTimeMillis() - jCurrentTimeMillis < PopupConst.DURATION_POPUP_SHORT) {
                            }
                        }
                    } while (System.currentTimeMillis() - jCurrentTimeMillis < PopupConst.DURATION_POPUP_SHORT);
                    Socket socket = this.f5736c;
                    if (socket == null || socket.isClosed()) {
                        throw new Exception("无法连接，自动打开无线adb");
                    }
                    com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                    if (wVar4.f4127k != 5555) {
                        wVar4.n(5555);
                    }
                }
            }
            y9.b bVarA = y9.b.A(this.f5736c, a.c(AppStart.f3772h));
            this.f5735b = bVarA;
            bVarA.r();
            a();
            b(Name.MARK);
            if (!a.f5646a.f()) {
                b(b.a(AppStart.f3772h));
            }
            atomicBoolean.set(false);
            return true;
        } catch (Exception e10) {
            e10.getMessage();
            f();
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    r rVar = q.f5740a;
                    rVar.L();
                    if (rVar.isConnected()) {
                        atomicBoolean.set(false);
                        return true;
                    }
                } catch (Exception e11) {
                    if (wa.t.f17728a.f17755v) {
                        wa.w.b("开机adb失败：" + e11.getMessage());
                    }
                }
            } else if (wa.t.f17728a.f17755v) {
                wa.w.b("连接失败：" + e10.getMessage());
            }
            atomicBoolean.set(false);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean e(String str) {
        y9.f fVar;
        if ((this.f5736c == null || (fVar = this.f5737d) == null || fVar.f19008f || this.f5738e == null) ? false : true) {
            return true;
        }
        AtomicBoolean atomicBoolean = this.f5739f;
        atomicBoolean.set(true);
        try {
            this.f5736c = new Socket(str, 5555);
            y9.b bVarA = y9.b.A(this.f5736c, a.c(AppStart.f3772h));
            this.f5735b = bVarA;
            bVarA.r();
            a();
            atomicBoolean.set(false);
            return true;
        } catch (Exception e7) {
            e7.printStackTrace();
            try {
                try {
                    y9.f fVar2 = this.f5737d;
                    if (fVar2 != null) {
                        fVar2.close();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                try {
                    try {
                        y9.g gVar = this.f5738e;
                        if (gVar != null) {
                            gVar.f19009a = false;
                        }
                    } finally {
                        this.f5738e = null;
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                try {
                    try {
                        y9.b bVar = this.f5735b;
                        if (bVar != null) {
                            bVar.close();
                        }
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                    try {
                        try {
                            Socket socket = this.f5736c;
                            if (socket != null) {
                                socket.close();
                            }
                        } finally {
                            this.f5736c = null;
                        }
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                    atomicBoolean.set(false);
                    return false;
                } finally {
                    this.f5735b = null;
                }
            } finally {
                this.f5737d = null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void f() {
        try {
            try {
                y9.f fVar = this.f5737d;
                if (fVar != null) {
                    fVar.close();
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
            try {
                try {
                    y9.g gVar = this.f5738e;
                    if (gVar != null) {
                        gVar.f19009a = false;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                try {
                    try {
                        y9.b bVar = this.f5735b;
                        if (bVar != null) {
                            bVar.close();
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                    try {
                        try {
                            Socket socket = this.f5736c;
                            if (socket != null) {
                                socket.close();
                            }
                        } finally {
                            this.f5736c = null;
                        }
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                } finally {
                    this.f5735b = null;
                }
            } finally {
                this.f5738e = null;
            }
        } finally {
            this.f5737d = null;
        }
    }

    public final void g() throws InterruptedException {
        int i10 = 0;
        switch (this.f5734a) {
            case 0:
                try {
                    this.f5737d.J(new byte[]{0, 28, 10});
                    Thread.sleep(60L);
                } catch (Exception unused) {
                }
                try {
                    byte[] bArr = new byte[6666];
                    do {
                        if (this.f5738e.read(bArr) <= 0) {
                            i10++;
                        }
                    } while (i10 < 3);
                } catch (Exception unused2) {
                    return;
                }
            default:
                try {
                    this.f5737d.J(new byte[]{0, 28, 10});
                    Thread.sleep(60L);
                } catch (Exception unused3) {
                }
                try {
                    byte[] bArr2 = new byte[6666];
                    do {
                        if (this.f5738e.read(bArr2) <= 0) {
                            i10++;
                        }
                    } while (i10 < 3);
                } catch (Exception unused4) {
                }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public o h(long j10) throws InterruptedException, IOException {
        byte b10;
        int i10 = 2;
        o oVar = new o(0);
        long jCurrentTimeMillis = System.currentTimeMillis();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[6666];
        int i11 = 0;
        boolean z = false;
        while (true) {
            if (!this.f5735b.f18985f) {
                break;
            }
            if (System.currentTimeMillis() - jCurrentTimeMillis > j10) {
                System.currentTimeMillis();
                new String(byteArrayOutputStream.toByteArray(), Charset.forName(HTTP.UTF_8));
                break;
            }
            int i12 = this.f5738e.read(bArr);
            if (i12 <= 0) {
                i11++;
                if (i11 > i10) {
                    if (byteArrayOutputStream.size() > 4 && byteArrayOutputStream.size() < 20 && new String(byteArrayOutputStream.toByteArray(), Charset.forName(HTTP.UTF_8)).trim().endsWith("assword:")) {
                        break;
                    }
                    try {
                        Thread.sleep(200L);
                    } catch (Exception unused) {
                    }
                }
            } else {
                byteArrayOutputStream.write(bArr, 0, i12);
                if (byteArrayOutputStream.size() > 4) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    int length = byteArray.length;
                    if (byteArray[length - 1] != 32 || (((b10 = byteArray[length - 2]) != 38 && b10 != 35 && b10 != 36) || byteArray[length - 3] != 32 || byteArray[length - 4] != 47 || byteArray[length - 5] != 58)) {
                        String str = new String(byteArray, Charset.forName(HTTP.UTF_8));
                        if (!str.contains(":") || (!str.endsWith(" $ ") && !str.endsWith(" # "))) {
                            i11 = 0;
                        }
                    }
                    i11 = 0;
                    z = true;
                }
            }
            if (z) {
                break;
            }
            i10 = 2;
        }
        if (z) {
            String str2 = new String(byteArrayOutputStream.toByteArray(), Charset.forName(HTTP.UTF_8));
            String strSubstring = str2.substring(str2.lastIndexOf(SignParameters.NEW_LINE) + 1);
            if (strSubstring.contains("|")) {
                oVar.f5723a = new Integer(strSubstring.substring(0, strSubstring.indexOf("|"))).intValue();
            } else {
                oVar.f5723a = 0;
            }
            ArrayList arrayList = new ArrayList(Arrays.asList(str2.split(SignParameters.NEW_LINE)));
            oVar.f5725c = arrayList;
            if (!arrayList.isEmpty()) {
                oVar.f5725c.remove(0);
            }
        } else {
            try {
                this.f5737d.J(new byte[]{0, 28, 10});
                Thread.sleep(60L);
            } catch (Exception unused2) {
            }
            oVar.f5723a = 404;
            oVar.f5724b = "命令执行超时";
            oVar.f5725c.add("命令执行超时");
        }
        return oVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public o i(long j10) throws InterruptedException, IOException {
        byte b10;
        int i10 = 2;
        o oVar = new o(1);
        long jCurrentTimeMillis = System.currentTimeMillis();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[6666];
        int i11 = 0;
        boolean z = false;
        while (true) {
            if (!this.f5735b.f18985f) {
                break;
            }
            if (System.currentTimeMillis() - jCurrentTimeMillis > j10) {
                System.currentTimeMillis();
                new String(byteArrayOutputStream.toByteArray(), Charset.forName(HTTP.UTF_8));
                break;
            }
            int i12 = this.f5738e.read(bArr);
            if (i12 <= 0) {
                i11++;
                if (i11 > i10) {
                    if (byteArrayOutputStream.size() > 4 && byteArrayOutputStream.size() < 20 && new String(byteArrayOutputStream.toByteArray(), Charset.forName(HTTP.UTF_8)).trim().endsWith("assword:")) {
                        break;
                    }
                    try {
                        Thread.sleep(200L);
                    } catch (Exception unused) {
                    }
                }
            } else {
                byteArrayOutputStream.write(bArr, 0, i12);
                if (byteArrayOutputStream.size() > 4) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    int length = byteArray.length;
                    if (byteArray[length - 1] != 32 || (((b10 = byteArray[length - 2]) != 38 && b10 != 35 && b10 != 36) || byteArray[length - 3] != 32 || byteArray[length - 4] != 47 || byteArray[length - 5] != 58)) {
                        String str = new String(byteArray, Charset.forName(HTTP.UTF_8));
                        if (!str.contains(":") || (!str.endsWith(" $ ") && !str.endsWith(" # "))) {
                            i11 = 0;
                        }
                    }
                    i11 = 0;
                    z = true;
                }
            }
            if (z) {
                break;
            }
            i10 = 2;
        }
        if (z) {
            String str2 = new String(byteArrayOutputStream.toByteArray(), Charset.forName(HTTP.UTF_8));
            String strSubstring = str2.substring(str2.lastIndexOf(SignParameters.NEW_LINE) + 1);
            if (strSubstring.contains("|")) {
                oVar.f5723a = new Integer(strSubstring.substring(0, strSubstring.indexOf("|"))).intValue();
            } else {
                oVar.f5723a = 0;
            }
            ArrayList arrayList = new ArrayList(Arrays.asList(str2.split(SignParameters.NEW_LINE)));
            oVar.f5725c = arrayList;
            if (!arrayList.isEmpty()) {
                oVar.f5725c.remove(0);
            }
        } else {
            try {
                this.f5737d.J(new byte[]{0, 28, 10});
                Thread.sleep(60L);
            } catch (Exception unused2) {
            }
            oVar.f5723a = 404;
            oVar.f5724b = "命令执行超时";
            oVar.f5725c.add("命令执行超时");
        }
        return oVar;
    }

    public boolean j() {
        y9.f fVar;
        return (this.f5736c == null || (fVar = this.f5737d) == null || fVar.f19008f || this.f5738e == null) ? false : true;
    }

    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8 */
    public void k(String str) throws Exception {
        String str2;
        Throwable th2;
        String str3;
        Throwable th3;
        long length;
        ?? r12 = 2;
        int i10 = 2;
        String str4 = "addSuppressed";
        try {
            y9.f fVarJ = this.f5735b.J("sync:");
            try {
                FileInputStream fileInputStream = new FileInputStream(str);
                try {
                    fVarJ.J(p000if.a.n("SEND".getBytes(), p000if.a.W("/sdcard/.gj123.apk,33206".length())));
                    fVarJ.J("/sdcard/.gj123.apk".getBytes());
                    fVarJ.J(",33206".getBytes());
                    byte[] bArr = new byte[4000];
                    long j10 = 0;
                    try {
                        try {
                            length = new File(str).length();
                        } catch (Exception unused) {
                            length = 0;
                        }
                    } catch (Throwable th4) {
                        th3 = th4;
                        str2 = str4;
                        try {
                            fileInputStream.close();
                            throw th3;
                        } catch (Throwable th5) {
                            try {
                                try {
                                    Throwable.class.getDeclaredMethod(str2, Throwable.class).invoke(th3, th5);
                                    throw th3;
                                } catch (Throwable th6) {
                                    th = th6;
                                    th2 = th;
                                    str3 = str2;
                                    try {
                                        fVarJ.close();
                                        throw th2;
                                    } catch (Throwable th7) {
                                        try {
                                            Throwable.class.getDeclaredMethod(str3, Throwable.class).invoke(th2, th7);
                                            throw th2;
                                        } catch (Exception unused2) {
                                            throw th2;
                                        }
                                    }
                                }
                            } catch (Exception unused3) {
                                throw th3;
                            }
                        }
                    }
                    try {
                        if (length == 0) {
                            throw new Exception("此文件疑是损坏");
                        }
                        int i11 = 0;
                        while (true) {
                            int i12 = fileInputStream.read(bArr);
                            if (i12 < 0) {
                                byte[] bytes = "DONE".getBytes();
                                byte[] bArrW = p000if.a.W((int) System.currentTimeMillis());
                                byte[][] bArr2 = new byte[i10][];
                                bArr2[0] = bytes;
                                bArr2[1] = bArrW;
                                fVarJ.J(p000if.a.n(bArr2));
                                Thread.sleep(100L);
                                byte[] bytes2 = "QUIT".getBytes();
                                byte[] bArrW2 = p000if.a.W(0);
                                byte[][] bArr3 = new byte[i10][];
                                bArr3[0] = bytes2;
                                bArr3[1] = bArrW2;
                                fVarJ.J(p000if.a.n(bArr3));
                                Thread.sleep(100L);
                                try {
                                    fileInputStream.close();
                                    fVarJ.close();
                                    return;
                                } catch (Throwable th8) {
                                    th2 = th8;
                                    str3 = str4;
                                    fVarJ.close();
                                    throw th2;
                                }
                            }
                            byte[] bytes3 = "DATA".getBytes();
                            byte[] bArrW3 = p000if.a.W(i12);
                            byte[][] bArr4 = new byte[i10][];
                            bArr4[0] = bytes3;
                            bArr4[1] = bArrW3;
                            fVarJ.J(p000if.a.n(bArr4));
                            if (i12 == 4000) {
                                fVarJ.J(bArr);
                            } else {
                                byte[] bArr5 = new byte[i12];
                                System.arraycopy(bArr, 0, bArr5, 0, i12);
                                fVarJ.J(bArr5);
                            }
                            String str5 = str4;
                            j10 += i12;
                            int i13 = (int) ((100 * j10) / length);
                            if (i11 != i13) {
                                i11 = i13;
                            }
                            str4 = str5;
                            i10 = 2;
                        }
                    } catch (Throwable th9) {
                        th = th9;
                        th3 = th;
                        str2 = r12;
                        fileInputStream.close();
                        throw th3;
                    }
                } catch (Throwable th10) {
                    th = th10;
                    r12 = str4;
                }
            } catch (Throwable th11) {
                th = th11;
                str2 = "addSuppressed";
            }
        } catch (Exception e7) {
            e7.printStackTrace();
            throw new Exception(g.b.z(e7, new StringBuilder("传输失败：")));
        }
    }

    public o l(String str) {
        o oVarH;
        synchronized (this) {
            try {
                g();
                this.f5737d.A(str + SignParameters.NEW_LINE);
                oVarH = h(str.startsWith("cp ") ? 3000000 : (str.startsWith("\\cp ") || str.startsWith("cp -R '")) ? 3000001 : str.startsWith("ls -lR ") ? 3000002 : (str.contains("pm install ") || str.startsWith("cmd package install")) ? 600000 : str.startsWith("rm ") ? 15000 : 50000);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return oVarH;
    }

    public o m(String str) {
        o oVarI;
        synchronized (this) {
            try {
                g();
                this.f5737d.A(str.concat(SignParameters.NEW_LINE));
                oVarI = i(str.startsWith("cp ") ? 3000000 : (str.startsWith("\\cp ") || str.startsWith("cp -R '")) ? 3000001 : str.startsWith("ls -lR ") ? 3000002 : (str.contains("pm install ") || str.startsWith("cmd package install")) ? 600000 : str.startsWith("rm ") ? 15000 : 50000);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return oVarI;
    }
}
