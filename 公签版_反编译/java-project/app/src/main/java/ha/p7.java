package ha;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.CmdBean;
import com.yunpan.appmanage.bean.ImageData;
import com.yunpan.appmanage.bean.InstallerBean;
import com.yunpan.appmanage.bean.IntIntBean;
import com.yunpan.appmanage.bean.KeyCodeBean;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.bean.NameContentSelectBean;
import com.yunpan.appmanage.bean.NamePackBoolSelectBean;
import com.yunpan.appmanage.bean.ShortcutCmdBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.bean.WpVideoStreamBean;
import com.yunpan.appmanage.httpserver.RemoteServer;
import com.yunpan.appmanage.service.HttpService;
import com.yunpan.appmanage.service.StartService;
import com.yunpan.appmanage.ui.ActivityGjDiy;
import com.yunpan.appmanage.ui.ActivityImage2;
import com.yunpan.appmanage.ui.ActivityShell;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Set;
import okhttp3.ResponseBody;

/* loaded from: classes.dex */
public final /* synthetic */ class p7 implements c6.e, a6, fa.w, ea.f, ec.d, u1.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7576a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7577b;

    public /* synthetic */ p7(int i10, Object obj) {
        this.f7576a = i10;
        this.f7577b = obj;
    }

    private final void b(c6.g gVar, View view, int i10) {
        mc.g gVarA;
        String string;
        StringBuilder sb2;
        int i11;
        int i12 = 6;
        int i13 = 2;
        int i14 = 4;
        int i15 = 3;
        int i16 = 5;
        int i17 = 1;
        int i18 = 0;
        ve veVar = (ve) this.f7577b;
        String str = (String) veVar.f7963h.t(i10);
        String strI = "";
        if (str.equals("播放")) {
            veVar.dismiss();
            x9.n5 n5Var = veVar.f7965j;
            int i19 = n5Var.f18290a;
            if (i19 == 7) {
                int iIndexOf = veVar.f7966k.path.indexOf("//") + 2;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(veVar.f7966k.path.substring(0, iIndexOf));
                sb3.append(veVar.f7965j.f18294e);
                sb3.append(":");
                sb3.append(veVar.f7965j.f18295f);
                sb3.append("@");
                string = android.support.v4.media.session.a.p(veVar.f7966k.path, iIndexOf, sb3);
            } else {
                if (i19 == 3) {
                    if (n5Var.f18309v.isEmpty()) {
                        sb2 = new StringBuilder("smb://");
                        sb2.append(veVar.f7965j.f18294e);
                        sb2.append(":");
                        sb2.append(veVar.f7965j.f18295f);
                        sb2.append("@");
                        sb2.append(veVar.f7965j.f18292c);
                        sb2.append(":");
                        i11 = veVar.f7965j.f18293d;
                    } else {
                        sb2 = new StringBuilder("smb://");
                        sb2.append(veVar.f7965j.f18309v);
                        sb2.append("\\");
                        sb2.append(veVar.f7965j.f18294e);
                        sb2.append(":");
                        sb2.append(veVar.f7965j.f18295f);
                        sb2.append("@");
                        sb2.append(veVar.f7965j.f18292c);
                        sb2.append(":");
                        i11 = veVar.f7965j.f18293d;
                    }
                    strI = android.support.v4.media.session.a.s(sb2, i11, "/");
                } else if (i19 == 4) {
                    strI = "ftp://" + veVar.f7965j.f18294e + ":" + veVar.f7965j.f18295f + "@" + veVar.f7965j.f18292c + ":" + veVar.f7965j.f18293d;
                } else if (i19 == 5) {
                    strI = "ftps://" + veVar.f7965j.f18294e + ":" + veVar.f7965j.f18295f + "@" + veVar.f7965j.f18292c + ":" + veVar.f7965j.f18293d;
                } else if (i19 == 6) {
                    strI = "sftp://" + veVar.f7965j.f18294e + ":" + veVar.f7965j.f18295f + "@" + veVar.f7965j.f18292c + ":" + veVar.f7965j.f18293d;
                }
                StringBuilder sbM = g.b.m(strI);
                sbM.append(veVar.f7966k.path.replace("\\", "/"));
                string = sbM.toString();
            }
            new gf(veVar.f6724a, veVar.f6725b).a(string);
            return;
        }
        ua.t8 t8Var = veVar.f7964i;
        ua.i9 i9Var = t8Var.f15972b;
        i9Var.getClass();
        boolean zEquals = str.equals("下载");
        int i20 = t8Var.f15973c;
        if (zEquals) {
            i9Var.q(i20, false);
        } else if (str.equals("安装")) {
            i9Var.q(i20, true);
        } else if (str.equals("看图")) {
            ArrayList arrayList = new ArrayList();
            int size = 0;
            while (i18 < i9Var.f15751q.b()) {
                if (p000if.a.c0(((WpPathBean) i9Var.f15751q.t(i18)).name)) {
                    arrayList.add((WpPathBean) i9Var.f15751q.t(i18));
                    if (i18 == i20) {
                        size = arrayList.size() - 1;
                    }
                }
                i18++;
            }
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.j.f4033a.f4076y = new ImageData(size, (x9.n5) i9Var.f15746j.t(i9Var.T), arrayList);
            i9Var.l(ActivityImage2.class);
        } else if (str.equals("删除")) {
            x9.n5 n5Var2 = (x9.n5) i9Var.f15746j.t(i9Var.T);
            WpPathBean wpPathBean = (WpPathBean) i9Var.f15751q.t(i20);
            if (n5Var2.f18290a == 1) {
                gVarA = new mc.c(i18, new ba.b(n5Var2, wpPathBean, i15)).d(rc.f.f13757b).a(fc.b.a());
            } else {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(wpPathBean);
                int i21 = n5Var2.f18290a;
                if (i21 == 20) {
                    gVarA = new mc.c(i18, new ba.c(n5Var2, arrayList2, i13)).d(rc.f.f13757b).a(fc.b.a());
                } else if (i21 == 21) {
                    gVarA = new mc.c(i18, new ba.c(arrayList2, n5Var2, i18)).d(rc.f.f13757b).a(fc.b.a());
                } else if (i21 == 2) {
                    gVarA = new mc.c(i18, new ba.c(n5Var2, arrayList2, i17)).d(rc.f.f13757b).a(fc.b.a());
                } else if (i21 == 3) {
                    gVarA = new mc.c(i18, new ba.c(n5Var2, arrayList2, i16)).d(rc.f.f13757b).a(fc.b.a());
                } else if (i21 == 4) {
                    gVarA = new mc.c(i18, new ba.c(arrayList2, n5Var2, i15)).d(rc.f.f13757b).a(fc.b.a());
                } else if (i21 == 5) {
                    gVarA = new mc.c(i18, new ba.c(arrayList2, n5Var2, i14)).d(rc.f.f13757b).a(fc.b.a());
                } else if (i21 == 6) {
                    gVarA = new mc.c(i18, new ba.f(n5Var2, arrayList2, 12)).d(rc.f.f13757b).a(fc.b.a());
                } else if (i21 == 7) {
                    gVarA = new mc.c(i18, new ba.c(n5Var2, arrayList2, i12)).d(rc.f.f13757b).a(fc.b.a());
                }
            }
            gVarA.b(new ua.z8(i9Var, i20, i18));
        } else if (str.equals("移动")) {
            ff ffVar = new ff(i9Var.f4530f, i9Var.f4529e);
            x9.n5 n5Var3 = (x9.n5) i9Var.f15746j.t(i9Var.T);
            WpPathBean wpPathBean2 = (WpPathBean) i9Var.f15749n.t(0);
            ua.t8 t8Var2 = new ua.t8(i9Var, i20, i15);
            ffVar.show();
            ffVar.f7071t = t8Var2;
            ffVar.f7070s = n5Var3;
            ffVar.f7061g.setText("移动到");
            ffVar.f7063i.q(wpPathBean2);
            ffVar.a();
        } else if (str.equals("改名")) {
            new z6(i9Var.f4530f, i9Var.f4529e, "修改名称", ((WpPathBean) i9Var.f15751q.t(i20)).name, "请输入名称", "确定", (String) null, new ua.t8(i9Var, i20, i13)).show();
        } else if (str.equals("分享")) {
            x9.n5 n5Var4 = (x9.n5) i9Var.f15746j.t(i9Var.T);
            WpPathBean wpPathBean3 = (WpPathBean) i9Var.f15751q.t(i20);
            int i22 = n5Var4.f18290a;
            if (i22 == 1 || i22 == 2 || i22 == 20 || i22 == 21) {
                (i22 == 1 ? new mc.c(i18, new ba.b(n5Var4, wpPathBean3, i14)).d(rc.f.f13757b).a(fc.b.a()) : i22 == 2 ? new mc.c(i18, new ba.b(wpPathBean3, n5Var4, 8)).d(rc.f.f13757b).a(fc.b.a()) : i22 == 21 ? new mc.c(i18, new ba.b(wpPathBean3, n5Var4, i17)).d(rc.f.f13757b).a(fc.b.a()) : new mc.c(i18, new ba.b(n5Var4, wpPathBean3, 10)).d(rc.f.f13757b).a(fc.b.a())).b(new m6(26));
            }
        } else if (str.equals("复制")) {
            ff ffVar2 = new ff(i9Var.f4530f, i9Var.f4529e);
            x9.n5 n5Var5 = (x9.n5) i9Var.f15746j.t(i9Var.T);
            WpPathBean wpPathBean4 = (WpPathBean) i9Var.f15749n.t(0);
            ua.t8 t8Var3 = new ua.t8(i9Var, i20, i17);
            ffVar2.show();
            ffVar2.f7071t = t8Var3;
            ffVar2.f7070s = n5Var5;
            ffVar2.f7061g.setText("复制到");
            ffVar2.f7063i.q(wpPathBean4);
            ffVar2.a();
        } else if (str.equals("描述")) {
            x9.n5 n5Var6 = (x9.n5) i9Var.f15746j.t(i9Var.T);
            WpPathBean wpPathBean5 = (WpPathBean) i9Var.f15751q.t(i20);
            int i23 = n5Var6.f18290a;
            if (i23 == 1) {
                new mc.c(i18, new ba.b(n5Var6, wpPathBean5, i16)).d(rc.f.f13757b).a(fc.b.a()).b(new ze(i9Var, n5Var6, wpPathBean5, i16));
            } else if (i23 == 20) {
                try {
                    strI = wpPathBean5.jsonObject.o(wpPathBean5.is_dir ? "folderDesc" : "fileDesc").i();
                } catch (Exception unused) {
                }
                f7 f7Var = new f7(i9Var.f4530f, i9Var.f4529e);
                com.hjq.permissions.b bVar = new com.hjq.permissions.b(i9Var, n5Var6, wpPathBean5, 16);
                f7Var.show();
                f7Var.f7030k = bVar;
                f7Var.f7028i.setText("修改描述");
                f7Var.f7027h.setText(strI);
                f7Var.f7027h.setHint("描述(可留空，建议200字数以内)");
            }
        }
        veVar.dismiss();
    }

    @Override // ea.f
    public void a(x9.w3 w3Var) {
        h5.m mVar = (h5.m) this.f7577b;
        mVar.getClass();
        if (w3Var != null) {
            long j10 = w3Var.f18367d;
            if (j10 > 0) {
                if (j10 > 1048576) {
                    com.yunpan.appmanage.util.a0.u("背景图文件过大，禁止设置 \n 建议图片在500kb以内");
                    return;
                }
                new mc.c(0, new d2.w(new File(((fc) mVar.f6611b).f6725b.getFilesDir().getParentFile().getPath() + "/bj.png"), 24, w3Var)).d(rc.f.f13757b).a(fc.b.a()).b(new m6(4));
            }
        }
    }

    @Override // u1.f
    public void accept(Object obj) {
        Object obj2 = this.f7577b;
        switch (this.f7576a) {
            case 4:
                v9 v9Var = (v9) obj2;
                v9Var.f7935i.setText("来自：" + v9Var.f7941q.rootDirPath_form + "  (" + v9Var.f7941q.filePaths.size() + ")个文件");
                TextView textView = v9Var.f7936j;
                StringBuilder sb2 = new StringBuilder("目的：");
                sb2.append(v9Var.f7941q.rootDirPath_to);
                textView.setText(sb2.toString());
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                double d10 = v9Var.f7941q.size_success.get();
                Double.isNaN(d10);
                double d11 = v9Var.f7941q.size_count.get();
                Double.isNaN(d11);
                v9Var.f7944v = decimalFormat2.format((d10 * 100.0d) / d11);
                v9Var.f7934h.setText(v9Var.f7944v + "%");
                v9Var.f7938m.setCurrentCount(Float.valueOf(v9Var.f7944v).floatValue());
                v9Var.f7937k.setText(p000if.a.D0(v9Var.f7941q.size_success.get()) + "/" + p000if.a.D0(v9Var.f7941q.size_count.get()));
                v9Var.f7939n.setText(v9Var.f7941q.file_success + "/" + v9Var.f7941q.file_count);
                long jCurrentTimeMillis = System.currentTimeMillis();
                TextView textView2 = v9Var.f7940p;
                long j10 = jCurrentTimeMillis - v9Var.f7943t;
                textView2.setText(v9.b(j10));
                long j11 = v9Var.f7941q.size_success.get();
                v9Var.l.setText("均速:" + v9.a(0L, j11, j10) + " MB/s   实时:" + v9.a(v9Var.r, j11, jCurrentTimeMillis - v9Var.f7942s) + " MB/s");
                v9Var.f7942s = jCurrentTimeMillis;
                v9Var.r = j11;
                break;
            default:
                ((u7.d0) obj2).b((i3.a) obj);
                break;
        }
    }

    @Override // fa.w
    public void c(String str, boolean z) {
        hb hbVar = (hb) this.f7577b;
        hbVar.getClass();
        if (!z) {
            com.yunpan.appmanage.util.a0.s(str, true);
            return;
        }
        com.yunpan.appmanage.util.a0.v("新建成功", true);
        hbVar.f7167h.a(hbVar.f7166g);
        hbVar.dismiss();
    }

    @Override // ha.a6
    public void f(x9.w3 w3Var) {
        switch (this.f7576a) {
            case 8:
                h3 h3Var = (h3) this.f7577b;
                h3Var.getClass();
                String str = w3Var.f18365b;
                sa saVar = (sa) h3Var.f7143d;
                saVar.getClass();
                if (!fa.a.f5647b.c()) {
                    com.yunpan.appmanage.util.a0.s("OTG已断开，请重新连接", false);
                    saVar.dismiss();
                    break;
                } else if (!com.yunpan.appmanage.util.a0.g(str)) {
                    com.yunpan.appmanage.util.a0.t("apk文件不存在");
                    break;
                } else {
                    new mc.c(0, new b8.a(str, 5)).d(rc.f.f13757b).a(fc.b.a()).b(new ra(saVar, 0));
                    break;
                }
            default:
                qd qdVar = ((pd) this.f7577b).f7588c;
                qdVar.getClass();
                new mc.c(0, new d2.w(qdVar, 26, w3Var)).d(rc.f.f13757b).a(fc.b.a()).b(new pd(qdVar, 2));
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:157:0x03df A[Catch: all -> 0x03e0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x03e0, blocks: (B:157:0x03df, B:154:0x03cc), top: B:177:0x03cc }] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x03c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws Exception {
        String str;
        Class<Throwable> cls;
        Throwable th2;
        Throwable th3;
        Throwable th4;
        Throwable th5;
        Class<Throwable> cls2;
        long jContentLength;
        byte[] bArr;
        long j10;
        String strX;
        Object obj = this.f7577b;
        int i10 = 1;
        switch (this.f7576a) {
            case 22:
                String str2 = "addSuppressed";
                Class<Throwable> cls3 = Throwable.class;
                PrintStream printStream = System.out;
                z6 z6Var = (z6) obj;
                ba.o oVar = (ba.o) z6Var.f8156m;
                String str3 = oVar.f2731f;
                printStream.getClass();
                try {
                    ResponseBody responseBodyZ = s1.g.z(oVar.f2731f, oVar.f2732g, oVar.f2733h, oVar.f2734i, oVar.f2735j);
                    try {
                        InputStream inputStreamByteStream = responseBodyZ.byteStream();
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(z6Var.f8152h);
                            try {
                                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStreamByteStream);
                                try {
                                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                                    try {
                                        jContentLength = responseBodyZ.contentLength();
                                        bArr = new byte[1048576];
                                        j10 = 0;
                                    } catch (Throwable th6) {
                                        th = th6;
                                        str = str2;
                                        cls2 = cls3;
                                    }
                                    while (true) {
                                        int i11 = bufferedInputStream.read(bArr);
                                        if (i11 == -1) {
                                            str = str2;
                                            cls2 = cls3;
                                            bVar.f("下载完成");
                                            try {
                                                bufferedOutputStream.close();
                                                try {
                                                    bufferedInputStream.close();
                                                    try {
                                                        fileOutputStream.close();
                                                        if (inputStreamByteStream != null) {
                                                            try {
                                                                inputStreamByteStream.close();
                                                            } catch (Throwable th7) {
                                                                th2 = th7;
                                                                cls = cls2;
                                                                try {
                                                                    responseBodyZ.close();
                                                                    throw th2;
                                                                } catch (Throwable th8) {
                                                                    try {
                                                                        cls.getDeclaredMethod(str, cls).invoke(th2, th8);
                                                                        throw th2;
                                                                    } catch (Exception unused) {
                                                                        throw th2;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        responseBodyZ.close();
                                                        try {
                                                            strX = ActivityGjDiy.x(z6Var.f8152h);
                                                            new File(z6Var.f8152h).delete();
                                                            try {
                                                            } catch (Exception unused2) {
                                                                com.yunpan.appmanage.util.a0.e(strX, z6Var.f8152h);
                                                            }
                                                        } catch (Exception unused3) {
                                                        }
                                                        if (!new File(strX).renameTo(new File(z6Var.f8152h))) {
                                                            throw new Exception("失败");
                                                        }
                                                        bVar.b();
                                                        return;
                                                    } catch (Throwable th9) {
                                                        th3 = th9;
                                                        cls = cls2;
                                                        if (inputStreamByteStream != null) {
                                                        }
                                                        th = th;
                                                        th2 = th;
                                                        responseBodyZ.close();
                                                        throw th2;
                                                    }
                                                } catch (Throwable th10) {
                                                    th4 = th10;
                                                    cls = cls2;
                                                    try {
                                                        fileOutputStream.close();
                                                        throw th4;
                                                    } catch (Throwable th11) {
                                                        try {
                                                            try {
                                                                cls.getDeclaredMethod(str, cls).invoke(th4, th11);
                                                                throw th4;
                                                            } catch (Throwable th12) {
                                                                th = th12;
                                                                th3 = th;
                                                                if (inputStreamByteStream != null) {
                                                                    throw th3;
                                                                }
                                                                try {
                                                                    inputStreamByteStream.close();
                                                                    throw th3;
                                                                } catch (Throwable th13) {
                                                                    try {
                                                                        try {
                                                                            cls.getDeclaredMethod(str, cls).invoke(th3, th13);
                                                                            throw th3;
                                                                        } catch (Throwable th14) {
                                                                            th = th14;
                                                                            th2 = th;
                                                                            responseBodyZ.close();
                                                                            throw th2;
                                                                        }
                                                                    } catch (Exception unused4) {
                                                                        throw th3;
                                                                    }
                                                                }
                                                                th = th14;
                                                                th2 = th;
                                                                responseBodyZ.close();
                                                                throw th2;
                                                            }
                                                        } catch (Exception unused5) {
                                                            throw th4;
                                                        }
                                                    }
                                                }
                                            } catch (Throwable th15) {
                                                th5 = th15;
                                                cls = cls2;
                                                try {
                                                    bufferedInputStream.close();
                                                    throw th5;
                                                } catch (Throwable th16) {
                                                    try {
                                                        try {
                                                            cls.getDeclaredMethod(str, cls).invoke(th5, th16);
                                                            throw th5;
                                                        } catch (Exception unused6) {
                                                            throw th5;
                                                        }
                                                    } catch (Throwable th17) {
                                                        th = th17;
                                                        th4 = th;
                                                        fileOutputStream.close();
                                                        throw th4;
                                                    }
                                                }
                                            }
                                        }
                                        str = str2;
                                        cls2 = cls3;
                                        long j11 = j10 + i11;
                                        try {
                                            bufferedOutputStream.write(bArr, 0, i11);
                                            bufferedOutputStream.flush();
                                            double d10 = j11;
                                            double d11 = jContentLength;
                                            Double.isNaN(d10);
                                            Double.isNaN(d11);
                                            bVar.f(Integer.valueOf((int) Math.floor((d10 / d11) * 100.0d)));
                                            str2 = str;
                                            cls3 = cls2;
                                            j10 = j11;
                                        } catch (Throwable th18) {
                                            th = th18;
                                        }
                                        th = th18;
                                        Throwable th19 = th;
                                        try {
                                            bufferedOutputStream.close();
                                            cls = cls2;
                                            throw th19;
                                        } catch (Throwable th20) {
                                            try {
                                                cls = cls2;
                                                try {
                                                    try {
                                                        cls.getDeclaredMethod(str, cls2).invoke(th19, th20);
                                                        throw th19;
                                                    } catch (Throwable th21) {
                                                        th = th21;
                                                        th5 = th;
                                                        bufferedInputStream.close();
                                                        throw th5;
                                                    }
                                                } catch (Exception unused7) {
                                                    throw th19;
                                                }
                                            } catch (Exception unused8) {
                                            } catch (Throwable th22) {
                                                th = th22;
                                                cls = cls2;
                                                th5 = th;
                                                bufferedInputStream.close();
                                                throw th5;
                                            }
                                        }
                                    }
                                } catch (Throwable th23) {
                                    th = th23;
                                    str = "addSuppressed";
                                    cls = cls3;
                                }
                            } catch (Throwable th24) {
                                th = th24;
                                str = "addSuppressed";
                                cls = cls3;
                            }
                        } catch (Throwable th25) {
                            th = th25;
                            str = "addSuppressed";
                            cls = cls3;
                        }
                    } catch (Throwable th26) {
                        th = th26;
                        str = "addSuppressed";
                        cls = cls3;
                    }
                } catch (Exception e7) {
                    bVar.d(e7);
                    return;
                }
            case 25:
                bf bfVar = (bf) obj;
                x9.n5 n5Var = bfVar.f6828h;
                try {
                    bVar.f(s1.g.L(n5Var));
                    while (true) {
                        boolean z = bfVar.f6829i;
                        if (z) {
                            if (z) {
                                bVar.d(new Exception("已关闭登录"));
                                return;
                            } else {
                                bVar.d(new Exception("登录失败"));
                                return;
                            }
                        }
                        Thread.sleep(1000L);
                        String str4 = "{\"grant_type\":\"urn:ietf:params:oauth:grant-type:device_code\",\"device_code\":\"" + n5Var.f18304p + "\",\"client_id\":\"aMe-8VSlkrbQXpUR\"}";
                        System.out.getClass();
                        z7.s sVarG = d.b.b0(s1.g.G("https://account.guangyapan.com/v1/auth/token", str4)).g();
                        b8.n nVar = sVarG.f19480a;
                        if (nVar.containsKey("access_token")) {
                            n5Var.r = sVarG.o("access_token").i();
                            n5Var.f18306s = sVarG.o("refresh_token").i();
                            n5Var.f18307t = sVarG.o("sub").i();
                            s1.g.k0(n5Var);
                            bVar.b();
                            return;
                        }
                        if (!nVar.containsKey("error_code")) {
                            bVar.d(new Exception("出错：请重新尝试"));
                            return;
                        } else if (sVarG.o("error_code").e() == 4052) {
                            bVar.f(s1.g.L(n5Var));
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    bVar.d(e10);
                    return;
                }
            default:
                bf bfVar2 = (bf) obj;
                x9.n5 n5Var2 = bfVar2.f6828h;
                try {
                    bVar.f(qf.c.L(n5Var2));
                    while (true) {
                        boolean z4 = bfVar2.f6829i;
                        if (z4) {
                            if (z4) {
                                bVar.d(new Exception("已关闭登录"));
                                return;
                            } else {
                                bVar.d(new Exception("登录失败"));
                                return;
                            }
                        }
                        z7.s sVarM = qf.c.M(n5Var2, "https://login.123pan.com/api/user/qr-code/result?uniID=" + n5Var2.f18301m);
                        PrintStream printStream2 = System.out;
                        sVarM.toString();
                        printStream2.getClass();
                        int iE = sVarM.o("code").e();
                        if (iE == 200) {
                            n5Var2.f18300k = sVarM.o("data").g().o("token").i();
                            bVar.b();
                            return;
                        }
                        if (iE == 0) {
                            int iE2 = sVarM.o("data").g().o("loginStatus").e();
                            sVarM.o("data").g().o("scanPlatform").e();
                            if (iE2 == i10) {
                                bVar.f(Integer.valueOf(iE2));
                            } else if (iE2 == 3) {
                                z7.s sVarN = qf.c.N(n5Var2, "https://login.123pan.com/api/user/qr-code/wx_code", "{\"uniID\":\"" + n5Var2.f18301m + "\"}");
                                if (sVarN.o("code").e() == 0) {
                                    z7.s sVarN2 = qf.c.N(n5Var2, "https://login.123pan.com/api/user/sign_in", "{\"from\":\"web\",\"wechat_code\":\"" + sVarN.o("data").g().o("wxCode").i() + "\",\"type\":4,\"remember\":true,\"gray\":true}");
                                    if (sVarN2.o("code").e() == 200) {
                                        if (!sVarN2.o("data").g().o("bind").b()) {
                                            bVar.d(new Exception("此微信号未绑定123云盘账号"));
                                            return;
                                        } else {
                                            n5Var2.f18300k = sVarN2.o("data").g().o("token").i();
                                            bVar.b();
                                            return;
                                        }
                                    }
                                    bVar.d(new Exception("登录失败：" + sVarN2.o("message").i()));
                                } else {
                                    bVar.d(new Exception("登录失败：" + sVarN.o("message").i()));
                                }
                            } else if (iE2 == 4) {
                                bVar.f(qf.c.L(n5Var2));
                                bVar.f(Integer.valueOf(iE2));
                                com.yunpan.appmanage.util.a0.w("二维码已刷新");
                            }
                        }
                        Thread.sleep(500L);
                        i10 = 1;
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                    bVar.d(e11);
                    return;
                }
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        x9.a1 a1Var;
        ClipData primaryClip;
        BluetoothAdapter defaultAdapter;
        int i11 = 6;
        int i12 = 5;
        int i13 = 4;
        int i14 = 3;
        int i15 = 2;
        final int i16 = 0;
        final int i17 = 1;
        Object obj = this.f7577b;
        switch (this.f7576a) {
            case 0:
                r7 r7Var = (r7) obj;
                r7Var.getClass();
                s1.g.Y(view);
                r7Var.dismiss();
                String str = ((com.yunpan.appmanage.util.d) r7Var.f7688i.t(i10)).f4004b;
                ua.d8 d8Var = r7Var.f7686g;
                switch (d8Var.f15640a) {
                    case 8:
                        d8Var.f15641b.E(str);
                        break;
                    default:
                        d8Var.f15641b.z(str);
                        break;
                }
            case 1:
                z7 z7Var = (z7) obj;
                z7Var.f8158g.e(((IntIntBean) z7Var.f8160i.t(i10)).int1);
                z7Var.dismiss();
                break;
            case 2:
                n9 n9Var = (n9) obj;
                n9Var.getClass();
                NameContentSelectBean nameContentSelectBean = (NameContentSelectBean) gVar.t(i10);
                if (i10 == 0) {
                    nameContentSelectBean.isSelect = !nameContentSelectBean.isSelect;
                    gVar.e(i10);
                    n9Var.f7475i.k("auto_parking", Boolean.valueOf(nameContentSelectBean.isSelect));
                    z7.s sVar = n9Var.f7475i;
                    Context context = n9Var.f6725b;
                    q4.a.R(context, sVar);
                    ta.m.c(context, "UP_INIT_AIONY");
                    break;
                }
                break;
            case 3:
                final t9 t9Var = (t9) obj;
                int i18 = ((KeyMapSelectBean) t9Var.f7823i.t(i10)).gn_type;
                if (i18 != -1) {
                    if (i18 != -2) {
                        if (i18 != -10) {
                            if (i18 != 3 || !view.isFocused()) {
                                if (i18 == 4001 && !view.isFocused()) {
                                    com.yunpan.appmanage.util.a0.u("此功能仅适合遥控器操作");
                                    break;
                                } else {
                                    Context context2 = t9Var.f6725b;
                                    if (i18 == 417 && !XXPermissions.isGrantedPermission(context2, PermissionLists.getRecordAudioPermission())) {
                                        fa.b0.f5652a.getClass();
                                        if (!a2.w0.O()) {
                                            XXPermissions.with(context2).permission(PermissionLists.getBluetoothConnectPermission()).request(new g2.c(13));
                                            break;
                                        } else {
                                            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.j.f4033a.f4048g0.submit(new Runnable() { // from class: ha.r9
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    t9 t9Var2 = t9Var;
                                                    int i19 = i16;
                                                    t9Var2.getClass();
                                                    switch (i19) {
                                                        case 0:
                                                            a2.w0 w0Var = fa.b0.f5652a;
                                                            StringBuilder sb2 = new StringBuilder("appops set ");
                                                            Context context3 = t9Var2.f6725b;
                                                            sb2.append(context3.getPackageName());
                                                            sb2.append(" RECORD_AUDIO ignore");
                                                            String string = sb2.toString();
                                                            w0Var.getClass();
                                                            a2.w0.q(2000L, string);
                                                            a2.w0.q(2000L, "cmd appops set " + context3.getPackageName() + " RECORD_AUDIO ignore");
                                                            break;
                                                        default:
                                                            a2.w0 w0Var2 = fa.b0.f5652a;
                                                            StringBuilder sb3 = new StringBuilder();
                                                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                                            sb3.append(com.yunpan.appmanage.util.j.f4033a.f4047g ? "cmd " : "");
                                                            sb3.append("appops set ");
                                                            sb3.append(t9Var2.f6725b.getPackageName());
                                                            sb3.append(" SYSTEM_ALERT_WINDOW allow");
                                                            String string2 = sb3.toString();
                                                            w0Var2.getClass();
                                                            a2.w0.q(2000L, string2);
                                                            break;
                                                    }
                                                }
                                            });
                                        }
                                    }
                                    if (i18 != 415) {
                                        if (i18 != 414) {
                                            if (i18 >= 5000 && i18 < 5500) {
                                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                                if (!com.yunpan.appmanage.util.j.f4033a.f4055k) {
                                                    com.yunpan.appmanage.util.a0.t("此功能是埃安Y车机专用(广汽相同系统也可以)\n\n需安装：公签UID版(原生)");
                                                    break;
                                                }
                                            }
                                        } else if (Build.VERSION.SDK_INT < 28) {
                                            com.yunpan.appmanage.util.a0.u("此功能可能不适合您的系统");
                                        }
                                    } else if (context2.getPackageManager().checkPermission("android.permission.MODIFY_DAY_NIGHT_MODE", context2.getPackageName()) != 0) {
                                        com.yunpan.appmanage.util.a0.u("此功能仅适合公签系统");
                                    }
                                    if (i18 != 406 && i18 != 407) {
                                        if (i18 == 641 && (Settings.Global.getInt(context2.getContentResolver(), "enable_freeform_support", 0) != 1 || Settings.Global.getInt(context2.getContentResolver(), "force_resizable_activities", 0) != 1)) {
                                            new z6(t9Var.f6724a, t9Var.f6725b, "检测到你系统没有开启多窗口模式", "是否需要帮你开启多窗模式呢？", "开启", "取消", new h5.m(11, t9Var)).show();
                                            break;
                                        } else if (i18 != 320) {
                                            if (i18 != 700 && i18 != 702) {
                                                int i19 = Build.VERSION.SDK_INT;
                                                if (i19 >= 33 && ((i18 == 512 || i18 == 511 || i18 == 510) && !XXPermissions.isGrantedPermission(context2, PermissionLists.getBluetoothConnectPermission()))) {
                                                    XXPermissions.with(context2).permission(PermissionLists.getBluetoothConnectPermission()).request(new g2.c(14));
                                                    break;
                                                } else if (i19 >= 23 && ((i18 == 622 || i18 == 620 || i18 == 621) && !XXPermissions.isGrantedPermission(context2, PermissionLists.getWriteSettingsPermission()))) {
                                                    XXPermissions.with(context2).permission(PermissionLists.getWriteSettingsPermission()).request(new g2.c(15));
                                                    break;
                                                } else if (i18 == 414 && !p000if.a.b0(context2)) {
                                                    com.yunpan.appmanage.util.a0.u("请先授予【修改系统安全设置】权限");
                                                    break;
                                                } else if ((i18 != 706 && i18 != 607 && i18 != 701 && i18 != 705 && i18 != 4000 && i18 != 4001) || XXPermissions.isGrantedPermission(context2, PermissionLists.getSystemAlertWindowPermission())) {
                                                    if ((i18 != 42 && i18 != 43) || i19 < 28 || XXPermissions.isGrantedPermission(context2, PermissionLists.getAnswerPhoneCallsPermission())) {
                                                        if (i18 >= 900 && i18 < 1000) {
                                                            if (!com.yunpan.appmanage.util.v.f4106a.f4136p) {
                                                                fa.o0 o0Var = fa.n0.f5722a;
                                                                o0Var.getClass();
                                                                if (!fa.o0.f()) {
                                                                    com.yunpan.appmanage.util.a0.u("请先安装 Shizuku");
                                                                    break;
                                                                } else if (!o0Var.f5726a) {
                                                                    com.yunpan.appmanage.util.a0.u("请先激活 Shizuku");
                                                                    break;
                                                                } else if (o0Var.f5730e == null) {
                                                                    com.yunpan.appmanage.util.a0.u("请先激活 Shizuku 并 授权于我");
                                                                    break;
                                                                }
                                                            } else {
                                                                com.yunpan.appmanage.util.a0.u("你已在【" + context2.getString(R.string.str_gj) + "设置】里勾选【不是shizuku】");
                                                                break;
                                                            }
                                                        }
                                                        if (((i18 >= 20 && i18 <= 25) || i18 == 402 || i18 == 403 || i18 == 405) && i19 >= 18 && !XXPermissions.isGrantedPermission(context2, PermissionLists.getBindNotificationListenerServicePermission(StartService.class))) {
                                                            com.yunpan.appmanage.util.a0.u("请先授予【通知使用权】权限");
                                                            break;
                                                        } else if ((i18 != 42 && i18 != 43) || XXPermissions.isGrantedPermission(context2, PermissionLists.getAnswerPhoneCallsPermission())) {
                                                            if (i18 >= 2000 && i18 < 3000) {
                                                                if (i18 == 2005) {
                                                                    Toaster.show((CharSequence) "智能：检测到没有连蓝牙时会重启蓝牙模块");
                                                                } else if (i18 == 2006) {
                                                                    Toaster.show((CharSequence) "智能：检测没有连wifi时会重启wifi模块");
                                                                } else if (i18 == 2011) {
                                                                    Toaster.show((CharSequence) "如果没连蓝牙时，会重新扫描蓝牙\n如果没连wifi时，会重新扫描WIFI");
                                                                } else if (i18 == 2010) {
                                                                    Toaster.show((CharSequence) "如果没连蓝牙时，会重启蓝牙模式\n如果没连wifi时，会重启WIFI模块");
                                                                }
                                                            }
                                                            t9Var.f7825k.a((KeyMapSelectBean) t9Var.f7823i.t(i10));
                                                            t9Var.dismiss();
                                                            break;
                                                        } else {
                                                            XXPermissions.with(context2).permission(PermissionLists.getAnswerPhoneCallsPermission()).request(new g2.c(17));
                                                            break;
                                                        }
                                                    } else {
                                                        XXPermissions.with(context2).permission(PermissionLists.getAnswerPhoneCallsPermission()).request(new l2(i12));
                                                        break;
                                                    }
                                                } else {
                                                    fa.b0.f5652a.getClass();
                                                    if (a2.w0.O()) {
                                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                                        com.yunpan.appmanage.util.j.f4033a.f4048g0.submit(new Runnable() { // from class: ha.r9
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                t9 t9Var2 = t9Var;
                                                                int i192 = i17;
                                                                t9Var2.getClass();
                                                                switch (i192) {
                                                                    case 0:
                                                                        a2.w0 w0Var = fa.b0.f5652a;
                                                                        StringBuilder sb2 = new StringBuilder("appops set ");
                                                                        Context context3 = t9Var2.f6725b;
                                                                        sb2.append(context3.getPackageName());
                                                                        sb2.append(" RECORD_AUDIO ignore");
                                                                        String string = sb2.toString();
                                                                        w0Var.getClass();
                                                                        a2.w0.q(2000L, string);
                                                                        a2.w0.q(2000L, "cmd appops set " + context3.getPackageName() + " RECORD_AUDIO ignore");
                                                                        break;
                                                                    default:
                                                                        a2.w0 w0Var2 = fa.b0.f5652a;
                                                                        StringBuilder sb3 = new StringBuilder();
                                                                        DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                                                        sb3.append(com.yunpan.appmanage.util.j.f4033a.f4047g ? "cmd " : "");
                                                                        sb3.append("appops set ");
                                                                        sb3.append(t9Var2.f6725b.getPackageName());
                                                                        sb3.append(" SYSTEM_ALERT_WINDOW allow");
                                                                        String string2 = sb3.toString();
                                                                        w0Var2.getClass();
                                                                        a2.w0.q(2000L, string2);
                                                                        break;
                                                                }
                                                            }
                                                        });
                                                    }
                                                    XXPermissions.with(context2).permission(PermissionLists.getSystemAlertWindowPermission()).request(new g2.c(16));
                                                    break;
                                                }
                                            } else {
                                                new z6(t9Var.f6724a, t9Var.f6725b, "获取系统当前显示窗口的布局属性\n\n会把内容保存在：内部存储/1窗口布局  这个文件夹里", "", "知道了", "", new s9(t9Var, i10, i17)).show();
                                                break;
                                            }
                                        } else if (!p000if.a.b0(context2)) {
                                            com.yunpan.appmanage.util.a0.u("无权限");
                                            break;
                                        } else {
                                            new z6(t9Var.f6724a, t9Var.f6725b, "全屏沉浸切换：此功能和[功能面板]中的[车机应用沉浸]功能原理是一样的，如果你用[车机应用沉浸]功能无效的话，那么就不要用这功能，不适合！", "", "确定", "取消", new s9(t9Var, i10, i16)).show();
                                            break;
                                        }
                                    } else {
                                        new tb(t9Var.f6724a, t9Var.f6725b, i18 == 406 ? wa.t.f17728a.f17757x : wa.t.f17728a.f17758y, new androidx.leanback.widget.i(i18, 4)).show();
                                        t9Var.dismiss();
                                        break;
                                    }
                                }
                            } else {
                                com.yunpan.appmanage.util.a0.u("此功能不适合遥控器操作");
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.u("此功能尚未完成，敬请期待");
                            break;
                        }
                    } else if (((KeyMapSelectBean) t9Var.f7823i.t(i10)).ico == R.drawable.return1) {
                        t9Var.dismiss();
                        break;
                    }
                }
                break;
            case 4:
            case 8:
            case 11:
            case 15:
            case 17:
            case 20:
            case 22:
            default:
                gf gfVar = (gf) obj;
                x9.t3 t3Var = (x9.t3) gfVar.f7126h.t(i10);
                String str2 = t3Var.f18339c;
                DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                if (!kVar.F) {
                    RemoteServer remoteServer = kVar.E;
                    if (remoteServer != null) {
                        remoteServer.stop();
                        kVar.E = null;
                    }
                    kVar.f4035a.startService(new Intent(kVar.f4035a, (Class<?>) HttpService.class));
                    kVar.F = true;
                }
                gfVar.dismiss();
                WpVideoStreamBean wpVideoStreamBean = kVar.I;
                if (wpVideoStreamBean != null) {
                    ce.x0 x0Var = wpVideoStreamBean.randomFile_smb1;
                    if (x0Var != null) {
                        try {
                            x0Var.f3216a.b();
                        } catch (Exception unused) {
                        }
                        com.yunpan.appmanage.util.j.f4033a.I.randomFile_smb1 = null;
                    } else {
                        vd.x xVar = wpVideoStreamBean.randomFile_smb2;
                        if (xVar != null) {
                            try {
                                xVar.close();
                            } catch (Exception unused2) {
                            }
                            WpVideoStreamBean wpVideoStreamBean2 = com.yunpan.appmanage.util.j.f4033a.I;
                            wpVideoStreamBean2.randomFile_smb2 = null;
                            try {
                                wpVideoStreamBean2.file_smb2.close();
                            } catch (Exception unused3) {
                            }
                            com.yunpan.appmanage.util.j.f4033a.I.file_smb2 = null;
                        }
                    }
                    com.yunpan.appmanage.util.j.f4033a.I = null;
                }
                com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                x9.n5 n5Var = kVar2.A;
                int i20 = n5Var.f18290a;
                String str3 = t3Var.f18340d;
                if (i20 == 3) {
                    new mc.c(i16, new ma.b(n5Var, i15, kVar2.H)).d(rc.f.f13757b).a(fc.b.a()).b(new ze((Object) gfVar, (Object) str2, (Object) str3, i15));
                    break;
                } else {
                    try {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.addCategory("android.intent.category.DEFAULT");
                        intent.setFlags(67108864);
                        intent.setDataAndType(Uri.parse(gfVar.f7127i), gfVar.f7128j);
                        intent.setComponent(new ComponentName(str2, str3));
                        gfVar.f6725b.startActivity(intent);
                        break;
                    } catch (Exception unused4) {
                        Toaster.show((CharSequence) "无法调用第三方打开");
                    }
                }
            case 5:
                fa faVar = (fa) obj;
                faVar.f7037j.b(i10);
                faVar.dismiss();
                break;
            case 6:
                ha haVar = (ha) obj;
                haVar.f7164j.b(i10);
                haVar.dismiss();
                break;
            case 7:
                ja jaVar = (ja) obj;
                jaVar.l.b(i10);
                jaVar.dismiss();
                break;
            case 9:
                ta taVar = (ta) obj;
                taVar.dismiss();
                androidx.fragment.app.f fVar = taVar.f7827h;
                ua.x7 x7Var = (ua.x7) fVar.f1257b;
                x7Var.getClass();
                x7Var.n((UsbManager) fVar.f1258c, (UsbDevice) ((ArrayList) fVar.f1259d).get(i10), (UsbInterface) ((ArrayList) fVar.f1260e).get(i10), true);
                break;
            case 10:
                cb cbVar = (cb) obj;
                cbVar.getClass();
                com.bumptech.glide.c.j(view);
                s1.g.Y(view);
                if (i10 != 4 && i10 != 5) {
                    if (i10 != 6) {
                        if (i10 != 7) {
                            cbVar.a(i10);
                            break;
                        } else {
                            new z6(cbVar.f6724a, cbVar.f6725b, "这是重启进入bootloader模式，不了解bootloader请不要执行这条命令", "", "取消执行", "我想试试", new ab(cbVar, i10, i15)).show();
                            break;
                        }
                    } else {
                        new z6(cbVar.f6724a, cbVar.f6725b, "这是重启后进入恢复模式，不懂或不了解请不要执行这条命令", "", "取消执行", "我想试试", new ab(cbVar, i10, i17)).show();
                        break;
                    }
                } else {
                    new z6(cbVar.f6724a, cbVar.f6725b, "一般用上面的命令即可重启/关机，没必要用这条命令哦，如果上面都不行，那就用这条", "", "取消执行", "我想试试", new ab(cbVar, i10, i16)).show();
                    break;
                }
            case 12:
                tb tbVar = (tb) obj;
                if (tbVar.f7831j != null && (a1Var = tbVar.f7829h) != null && i10 < a1Var.b()) {
                    NamePackBoolSelectBean namePackBoolSelectBean = (NamePackBoolSelectBean) tbVar.f7829h.t(i10);
                    namePackBoolSelectBean.isSelected = !namePackBoolSelectBean.isSelected;
                    tbVar.f7829h.e(i10);
                    boolean z = namePackBoolSelectBean.isSelected;
                    Set set = tbVar.f7832k;
                    if (!z) {
                        set.remove(namePackBoolSelectBean.pack);
                        break;
                    } else {
                        set.add(namePackBoolSelectBean.pack);
                        break;
                    }
                }
                break;
            case 13:
                wb wbVar = (wb) obj;
                wbVar.getClass();
                com.bumptech.glide.c.j(view);
                s1.g.Y(view);
                InstallerBean installerBean = (InstallerBean) wbVar.f8011h.t(i10);
                com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                String str4 = installerBean.str_pack + "/" + installerBean.str_class;
                wVar.f4114d0 = str4;
                try {
                    wVar.f4123i.m("InstallerClass", str4);
                } catch (Exception unused5) {
                }
                wVar.m();
                wbVar.dismiss();
                break;
            case 14:
                yb ybVar = (yb) obj;
                ybVar.f8105i.a((KeyCodeBean) ybVar.f8104h.t(i10));
                ybVar.dismiss();
                break;
            case 16:
                lc lcVar = (lc) obj;
                String strReplace = ((ShortcutCmdBean) lcVar.f7372g.get(i10)).cmd;
                if (strReplace.contains("[剪切板]")) {
                    ClipboardManager clipboardManager = (ClipboardManager) lcVar.f6725b.getSystemService("clipboard");
                    if (clipboardManager == null) {
                        com.yunpan.appmanage.util.a0.t("无法获取剪切板对象");
                        break;
                    } else {
                        String strTrim = (!clipboardManager.hasPrimaryClip() || (primaryClip = clipboardManager.getPrimaryClip()) == null || primaryClip.getItemCount() <= 0) ? "" : primaryClip.getItemAt(0).getText().toString().trim();
                        if (strTrim.isEmpty()) {
                            com.yunpan.appmanage.util.a0.t("剪切板没有内容");
                            break;
                        } else if (strTrim.contains(SignParameters.NEW_LINE)) {
                            com.yunpan.appmanage.util.a0.t("剪切板内容有换行符");
                            break;
                        } else {
                            strReplace = strReplace.replace("[剪切板]", strTrim);
                        }
                    }
                }
                lcVar.dismiss();
                h3 h3Var = (h3) lcVar.f7373h.f15694b;
                h3Var.getClass();
                boolean zContains = strReplace.contains("[包名]");
                ActivityShell activityShell = (ActivityShell) h3Var.f7143d;
                if (!zContains) {
                    if (!strReplace.contains("[主活动]")) {
                        if (!strReplace.contains("[键码]")) {
                            ActivityShell.x(activityShell, strReplace);
                            break;
                        } else {
                            new yb(activityShell, activityShell, new ua.k6(h3Var, strReplace, i15)).show();
                            break;
                        }
                    } else {
                        int i21 = ActivityShell.M;
                        da.g gVar2 = activityShell.A;
                        new q2(gVar2, gVar2, 3, new ua.k6(h3Var, strReplace, i17)).show();
                        break;
                    }
                } else {
                    int i22 = ActivityShell.M;
                    da.g gVar3 = activityShell.A;
                    new q2(gVar3, gVar3, 0, new ua.k6(h3Var, strReplace, i16)).show();
                    break;
                }
                break;
            case 18:
                qc qcVar = (qc) obj;
                qcVar.getClass();
                s1.g.Y(view);
                qcVar.dismiss();
                com.yunpan.appmanage.util.d dVar = (com.yunpan.appmanage.util.d) qcVar.f7635i.t(i10);
                s5 s5Var = (s5) qcVar.f7633g.f7577b;
                ((EditText) s5Var.l).setText(dVar.f4004b);
                ((EditText) s5Var.f7738m).setText(String.valueOf(dVar.f4005c));
                break;
            case 19:
                id idVar = (id) obj;
                idVar.getClass();
                com.bumptech.glide.c.j(view);
                s1.g.Y(view);
                x9.b1 b1Var = idVar.f7221h;
                String str5 = ((CmdBean) b1Var.t(i10)).name;
                boolean zEquals = str5.equals("选择默认桌面");
                Context context3 = idVar.f6725b;
                if (zEquals) {
                    if (qf.c.r(context3).size() >= 2) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            new z6(idVar.f6724a, idVar.f6725b, "弹出默认桌面选择器，请选中你需要的桌面应用 \n\n然后第二次点击此按钮，点击【始终】即可设置为默认桌面！", "", "明白", "算了", new gd(idVar, i16)).show();
                            break;
                        } else {
                            qf.c.Z(context3);
                            break;
                        }
                    } else {
                        Toaster.show((CharSequence) "只有一个桌面应用，无需设置");
                        break;
                    }
                } else if (str5.contains("热点开关")) {
                    if (Build.VERSION.SDK_INT < 36) {
                        new z6(idVar.f6724a, idVar.f6725b, "热点开关", "", "开", "关", new gd(idVar, i17)).show();
                        break;
                    } else {
                        com.yunpan.appmanage.util.a0.u("此功能不支持安卓16及以上新系统");
                        break;
                    }
                } else if (str5.contains("wifi开关")) {
                    new z6(idVar.f6724a, idVar.f6725b, "wifi开关", "", "开", "关", new gd(idVar, i15)).show();
                    break;
                } else if (str5.contains("蓝牙开关")) {
                    int i23 = Build.VERSION.SDK_INT;
                    if (i23 >= 31 && !XXPermissions.isGrantedPermission(context3, PermissionLists.getBluetoothConnectPermission())) {
                        XXPermissions.with(context3).permission(PermissionLists.getBluetoothConnectPermission()).request(new g2.c(29));
                        break;
                    } else {
                        if (i23 >= 18) {
                            BluetoothManager bluetoothManagerD = b1.o.d(context3.getSystemService("bluetooth"));
                            if (bluetoothManagerD == null) {
                                com.yunpan.appmanage.util.a0.w("蓝牙不可用，无蓝牙功能");
                                break;
                            } else {
                                defaultAdapter = bluetoothManagerD.getAdapter();
                            }
                        } else {
                            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                        }
                        if (defaultAdapter != null) {
                            if (!defaultAdapter.isEnabled()) {
                                com.yunpan.appmanage.util.a0.w(defaultAdapter.enable() ? "已开启蓝牙" : "无法开启蓝牙");
                                break;
                            } else {
                                defaultAdapter.disable();
                                com.yunpan.appmanage.util.a0.w("已关闭蓝牙");
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.w("蓝牙不可用，无蓝牙功能");
                            break;
                        }
                    }
                } else if (!((CmdBean) b1Var.t(i10)).str1.isEmpty()) {
                    String str6 = ((CmdBean) b1Var.t(i10)).str1;
                    String str7 = ((CmdBean) b1Var.t(i10)).str2;
                    try {
                        if (str7.isEmpty()) {
                            Intent intent2 = new Intent(str6);
                            intent2.setFlags(268435456);
                            if (context3.getPackageManager().queryIntentActivities(intent2, 0).size() > 1) {
                                p000if.a.x0(1, context3, Intent.createChooser(intent2, "请选择"));
                            } else {
                                p000if.a.x0(1, context3, intent2);
                            }
                        } else {
                            Intent intent3 = new Intent();
                            intent3.setComponent(new ComponentName(str6, str7));
                            intent3.setFlags(268435456);
                            p000if.a.x0(1, context3, intent3);
                        }
                        break;
                    } catch (Exception unused6) {
                        if (str7.equals("com.android.settings.Settings")) {
                            try {
                                Intent intent4 = new Intent("android.settings.SETTINGS");
                                intent4.setFlags(268435456);
                                if (context3.getPackageManager().queryIntentActivities(intent4, 0).size() > 1) {
                                    p000if.a.x0(1, context3, Intent.createChooser(intent4, "请选择"));
                                } else {
                                    p000if.a.x0(1, context3, intent4);
                                }
                                return;
                            } catch (Exception unused7) {
                                Toaster.show((CharSequence) "不存在，无法调用此功能！");
                                return;
                            }
                        }
                        Toaster.show((CharSequence) "不存在，无法调用此功能！");
                        return;
                    }
                }
                break;
            case 21:
                ie ieVar = (ie) obj;
                ieVar.f7226k.b(i10);
                ieVar.dismiss();
                break;
            case 23:
                te teVar = (te) obj;
                teVar.getClass();
                com.bumptech.glide.c.j(view);
                x9.n5 n5Var2 = (x9.n5) teVar.f7842h.t(i10);
                if (n5Var2.f18290a == 6 && Build.VERSION.SDK_INT < 28) {
                    Toaster.show((CharSequence) "抱歉，此协议暂时只支持android9.0以上设备");
                    break;
                } else {
                    teVar.dismiss();
                    ua.r8 r8Var = teVar.f7843i;
                    if (r8Var != null) {
                        ua.i9 i9Var = r8Var.f15941b;
                        i9Var.getClass();
                        int i24 = n5Var2.f18290a;
                        if (i24 != 1 && i24 != 20) {
                            if (i24 != 2) {
                                if (i24 != 21) {
                                    if (i24 != 4 && i24 != 5) {
                                        if (i24 != 6) {
                                            if (i24 != 3) {
                                                if (i24 == 7) {
                                                    new se(i9Var.f4530f, i9Var.f4529e, n5Var2, new ua.x8(i9Var, n5Var2, i11)).show();
                                                    break;
                                                }
                                            } else {
                                                new s5(i9Var.f4530f, i9Var.f4529e, n5Var2, (oc) new ua.x8(i9Var, n5Var2, i12)).show();
                                                break;
                                            }
                                        } else {
                                            new w(i9Var.f4530f, i9Var.f4529e, n5Var2, new ua.x8(i9Var, n5Var2, i13)).show();
                                            break;
                                        }
                                    } else {
                                        new s5(i9Var.f4530f, i9Var.f4529e, n5Var2, (i6) new ua.x8(i9Var, n5Var2, i14)).show();
                                        break;
                                    }
                                } else {
                                    new bf(i9Var.f4530f, i9Var.f4529e, n5Var2, new ua.x8(i9Var, n5Var2, i15), 0).show();
                                    break;
                                }
                            } else {
                                new bf(i9Var.f4530f, i9Var.f4529e, n5Var2, new ua.x8(i9Var, n5Var2, i17), 1).show();
                                break;
                            }
                        } else {
                            new ye(i9Var.f4530f, i9Var.f4529e, n5Var2, new ua.x8(i9Var, n5Var2, i16)).show();
                            break;
                        }
                    }
                }
                break;
            case 24:
                b(gVar, view, i10);
                break;
        }
    }
}
