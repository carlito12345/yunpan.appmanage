package y7;

import a2.g1;
import a2.w0;
import a9.f0;
import a9.o;
import android.app.Application;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Message;
import android.os.StrictMode;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.fragment.app.u1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.p;
import androidx.recyclerview.widget.q;
import androidx.recyclerview.widget.s;
import androidx.recyclerview.widget.v;
import ba.m;
import ce.t0;
import ce.v0;
import com.bumptech.glide.d;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.hierynomus.msdtyp.AccessMask;
import com.hierynomus.mssmb2.SMB2CreateDisposition;
import com.hierynomus.mssmb2.SMB2CreateOptions;
import com.hierynomus.mssmb2.SMB2ShareAccess;
import com.hierynomus.smbj.SMBClient;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.auth.AuthenticationContext;
import com.hierynomus.smbj.connection.Connection;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.DiskShare;
import com.hierynomus.smbj.transport.tcp.async.AsyncDirectTcpTransportFactory;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.WpTaskBean;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.db.FileInfo;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityDownload;
import com.yunpan.appmanage.ui.ActivityGjDiy;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.w;
import com.yunpan.appmanage.util.z;
import fa.b0;
import fa.g0;
import fa.x;
import io.github.muntashirakon.adb.AdbProtocol;
import io.github.muntashirakon.adb.android.AdbMdns;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import javax.crypto.Cipher;
import kh.e;
import kh.i;
import l5.y;
import ma.h;
import ma.l;
import org.simpleframework.xml.strategy.Name;
import qa.f;
import s1.g;
import ua.i1;
import ua.i8;
import v3.t;
import x0.b1;
import x0.j0;
import x9.n5;
import x9.u5;

/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18971a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f18972b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f18973c;

    public /* synthetic */ b(int i10, Object obj, Object obj2, boolean z) {
        this.f18971a = i10;
        this.f18973c = obj;
        this.f18972b = obj2;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0142 A[PHI: r5
  0x0142: PHI (r5v2 java.io.File[]) = 
  (r5v1 java.io.File[])
  (r5v1 java.io.File[])
  (r5v1 java.io.File[])
  (r5v4 java.io.File[])
  (r5v5 java.io.File[])
  (r5v5 java.io.File[])
 binds: [B:25:0x008b, B:27:0x0091, B:29:0x009d, B:50:0x0141, B:32:0x00cb, B:34:0x00ce] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void b() throws IOException {
        File[] fileArrListFiles;
        boolean z;
        if (((File) this.f18972b).isFile()) {
            a((File) this.f18972b, false, "");
            return;
        }
        String path = "";
        try {
            if (Build.VERSION.SDK_INT < 26) {
                File canonicalFile = ((File) this.f18972b).getCanonicalFile();
                if (!canonicalFile.equals(((File) this.f18972b).getAbsoluteFile())) {
                    path = canonicalFile.getPath();
                    if (canonicalFile.isFile()) {
                        a((File) this.f18972b, false, path);
                        return;
                    }
                }
            } else if (Files.isSymbolicLink(((File) this.f18972b).toPath())) {
                Path symbolicLink = Files.readSymbolicLink(((File) this.f18972b).toPath());
                path = symbolicLink.toFile().getPath();
                if (symbolicLink.toFile().isFile()) {
                    a((File) this.f18972b, false, path);
                    return;
                }
            }
        } catch (Exception unused) {
        }
        String str = path;
        File file = (File) this.f18972b;
        ArrayList arrayList = null;
        try {
            fileArrListFiles = file.listFiles();
        } catch (Exception unused2) {
            fileArrListFiles = null;
        }
        if (fileArrListFiles == null && Build.VERSION.SDK_INT >= 30 && file.getPath().endsWith("/Android/data")) {
            File file2 = new File(file.getPath().substring(0, file.getPath().length() - 4) + "\u200bdata");
            try {
                fileArrListFiles = file2.listFiles();
                if (fileArrListFiles != null) {
                    if (fileArrListFiles.length > 0) {
                        try {
                            FileInfo fileInfo = new FileInfo(file2.getPath(), "data", file2.getParent(), 0L, "", file2.lastModified(), true);
                            synchronized (((z) this.f18973c).f4156a) {
                                try {
                                    ((z) this.f18973c).f4157b.add(fileInfo);
                                    if (((z) this.f18973c).f4157b.size() >= 400) {
                                        arrayList = new ArrayList(((z) this.f18973c).f4157b);
                                        ((z) this.f18973c).f4157b.clear();
                                    }
                                } finally {
                                }
                            }
                            if (arrayList != null) {
                                ((z) this.f18973c).f4161f.incrementAndGet();
                                z zVar = (z) this.f18973c;
                                zVar.f4160e.execute(new b(4, zVar, arrayList, false));
                            }
                        } catch (Exception unused3) {
                        }
                        z = true;
                    }
                }
            } catch (Exception unused4) {
            }
        } else {
            z = false;
        }
        if (fileArrListFiles != null) {
            for (File file3 : fileArrListFiles) {
                ((z) this.f18973c).f4159d.incrementAndGet();
                z zVar2 = (z) this.f18973c;
                zVar2.f4158c.execute(new b(5, zVar2, file3, false));
            }
        }
        if (z) {
            ((z) this.f18973c).f4159d.decrementAndGet();
        } else {
            a((File) this.f18972b, true, str);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:200|(8:527|201|519|202|(1:204)(1:215)|216|511|217)|(9:541|218|513|219|523|220|515|221|(20:557|222|223|533|224|225|(4:555|226|227|(6:229|535|230|(8:232|545|233|234|235|236|547|237)(1:251)|252|(2:566|254)(1:255))(2:565|256))|257|(1:259)(1:260)|261|551|262|509|263|529|264|489|265|499|266))|497|267|268) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03bb A[Catch: all -> 0x02f0, TryCatch #59 {all -> 0x02f0, blocks: (B:86:0x02ca, B:88:0x02da, B:90:0x02e1, B:95:0x02f9, B:110:0x0326, B:113:0x032c, B:117:0x033c, B:157:0x039d, B:166:0x03d0, B:169:0x03d8, B:160:0x03bb, B:163:0x03c6, B:116:0x0336), top: B:451:0x02ca }] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03f3 A[Catch: Exception -> 0x0712, TRY_ENTER, TRY_LEAVE, TryCatch #35 {Exception -> 0x0712, blocks: (B:183:0x03f3, B:268:0x05d5), top: B:458:0x0249 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x07cf  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x03ec A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:429:0x06e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:431:0x03e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:435:0x06f4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:439:0x06ed A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:443:0x03de A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:447:0x0709 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0408 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:460:0x040f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:464:0x06fb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:468:0x03fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0702 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:472:0x0401 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:474:0x072b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:476:0x0732 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:485:0x0724 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:487:0x071d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:493:0x0747 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:497:0x05d2 A[EXC_TOP_SPLITTER, PHI: r23 r25
  0x05d2: PHI (r23v10 com.hierynomus.smbj.SMBClient) = (r23v8 com.hierynomus.smbj.SMBClient), (r23v41 com.hierynomus.smbj.SMBClient), (r23v41 com.hierynomus.smbj.SMBClient) binds: [B:345:0x070e, B:422:0x05d2, B:266:0x05cf] A[DONT_GENERATE, DONT_INLINE]
  0x05d2: PHI (r25v5 com.hierynomus.smbj.connection.Connection) = 
  (r25v4 com.hierynomus.smbj.connection.Connection)
  (r25v38 com.hierynomus.smbj.connection.Connection)
  (r25v38 com.hierynomus.smbj.connection.Connection)
 binds: [B:345:0x070e, B:422:0x05d2, B:266:0x05cf] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:501:0x0739 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:507:0x0740 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:569:? A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v19, types: [long] */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void c() throws Throwable {
        f0 f0Var;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        f0 f0VarS;
        BufferedInputStream bufferedInputStream;
        v0 v0Var;
        BufferedOutputStream bufferedOutputStream;
        FileInputStream fileInputStream3;
        WpTaskBean wpTaskBean;
        String str;
        BufferedInputStream bufferedInputStream2;
        String str2;
        ?? r22;
        String str3;
        String str4;
        SMBClient sMBClient;
        BufferedInputStream bufferedInputStream3;
        BufferedOutputStream bufferedOutputStream2;
        Session session;
        DiskShare diskShare;
        OutputStream outputStream;
        FileInputStream fileInputStream4;
        Connection connection;
        BufferedOutputStream bufferedOutputStream3;
        BufferedInputStream bufferedInputStream4;
        Connection connectionConnect;
        AuthenticationContext authenticationContext;
        Session sessionAuthenticate;
        String str5;
        DiskShare diskShare2;
        long j10;
        DecimalFormat decimalFormat;
        double d10;
        double d11;
        String str6;
        String str7;
        b bVar = this;
        WpTaskBean wpTaskBean2 = (WpTaskBean) bVar.f18972b;
        if (wpTaskBean2.type == 2) {
            wpTaskBean2.str1 = "上传中";
            wpTaskBean2.str_state = "停止";
            wpTaskBean2.isTask_stop = false;
            Message messageObtain = Message.obtain();
            messageObtain.what = 10;
            messageObtain.obj = (WpTaskBean) bVar.f18972b;
            ((u) bVar.f18973c).sendMessage(messageObtain);
            WpTaskBean wpTaskBean3 = (WpTaskBean) bVar.f18972b;
            n5 n5Var = wpTaskBean3.userInfo;
            int i10 = n5Var.f18290a;
            int i11 = -1;
            String str8 = "";
            if (i10 == 1) {
                u uVar = (u) bVar.f18973c;
                if (wpTaskBean3.bdPathInfo.f18364a.endsWith(".txt")) {
                    str6 = "text/plain";
                } else if (wpTaskBean3.bdPathInfo.f18364a.endsWith(".apk")) {
                    str6 = "application/vnd.android.package-archive";
                } else if (wpTaskBean3.bdPathInfo.f18364a.endsWith(".zip")) {
                    str6 = "application/x-zip-compressed";
                } else if (wpTaskBean3.bdPathInfo.f18364a.endsWith(".rar") || wpTaskBean3.bdPathInfo.f18364a.endsWith(".7z")) {
                    str6 = "application/x-compressed";
                } else if (!wpTaskBean3.bdPathInfo.f18364a.endsWith(".exe")) {
                    str6 = wpTaskBean3.bdPathInfo.f18364a.endsWith(".flac") ? "audio/flac" : wpTaskBean3.bdPathInfo.f18364a.endsWith(".e") ? "image/e" : "application/x-msdownload";
                }
                try {
                    str7 = new SimpleDateFormat("E MMM dd yyyy HH:mm:ss ", Locale.US).format(new Date()) + "GMT+0800 (中国标准时间)";
                } catch (Exception unused) {
                    str7 = "";
                }
                if (str7.isEmpty()) {
                    str7 = "Tue Oct 31 2023 17:03:45 GMT+0800 (中国标准时间)";
                }
                wpTaskBean3.upload_state = -1;
                l9.b bVar2 = new l9.b(g.b.l(wpTaskBean3.userInfo.f18292c, "/html5up.php", new StringBuilder()));
                bVar2.f11012d = wpTaskBean3;
                DecimalFormat decimalFormat2 = k.f4034u0;
                k kVar = j.f4033a;
                bVar2.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0");
                bVar2.f11017i.b("Cookie", wpTaskBean3.userInfo.f18298i);
                bVar2.f11017i.b("Referer", g.b.l(wpTaskBean3.userInfo.f18292c, "/mydisk.php", new StringBuilder()));
                bVar2.h("task", "1", true);
                bVar2.h("vie", "3", true);
                bVar2.h("ve", "2", true);
                bVar2.h(Name.MARK, "WU_FILE_1", true);
                bVar2.h("name", wpTaskBean3.bdPathInfo.f18364a, true);
                bVar2.h("type", str6, true);
                bVar2.h("lastModifiedDate", str7, true);
                bVar2.h("size", "" + wpTaskBean3.bdPathInfo.f18367d, true);
                bVar2.h("folder_id_bb_n", wpTaskBean3.wpPathInfo.path, true);
                bVar2.j(new File(wpTaskBean3.bdPathInfo.f18365b), "upload_file");
                bVar2.b(new m(wpTaskBean3, uVar));
                while (wpTaskBean3.upload_state == -1) {
                    if (wpTaskBean3.isTask_stop) {
                        b9.b.b(com.yunpan.appmanage.util.f0.f4020b, wpTaskBean3);
                        wpTaskBean3.str1 = "已主动停止";
                        wpTaskBean3.upload_state = 1;
                    }
                    try {
                        Thread.sleep(100L);
                    } catch (Exception unused2) {
                    }
                }
                ((WpTaskBean) bVar.f18972b).str_state = "";
            } else if (i10 == 2) {
                try {
                    qf.c.h0(wpTaskBean3, (u) bVar.f18973c);
                } catch (Exception e7) {
                    WpTaskBean wpTaskBean4 = (WpTaskBean) bVar.f18972b;
                    wpTaskBean4.str_state = "重新上传";
                    wpTaskBean4.str1 = da.b.b(e7, new StringBuilder(), "");
                }
            } else if (i10 == 20) {
                try {
                    g.i0(wpTaskBean3, (u) bVar.f18973c);
                } catch (Exception e10) {
                    WpTaskBean wpTaskBean5 = (WpTaskBean) bVar.f18972b;
                    wpTaskBean5.str_state = "重新上传";
                    wpTaskBean5.str1 = da.b.b(e10, new StringBuilder(), "");
                }
            } else if (i10 == 21) {
                try {
                    g.h0(wpTaskBean3, (u) bVar.f18973c);
                } catch (Exception e11) {
                    WpTaskBean wpTaskBean6 = (WpTaskBean) bVar.f18972b;
                    wpTaskBean6.str_state = "重新上传";
                    wpTaskBean6.str1 = da.b.b(e11, new StringBuilder(), "");
                }
            } else if (i10 == 3) {
                u uVar2 = (u) bVar.f18973c;
                String str9 = "上传中：";
                if (n5Var.f18308u) {
                    try {
                        FileInputStream fileInputStream5 = new FileInputStream(wpTaskBean3.bdPathInfo.f18365b);
                        try {
                            v0Var = new v0(new t0(wpTaskBean3.userInfo.b() + wpTaskBean3.wpPathInfo.path + wpTaskBean3.bdPathInfo.f18364a), 82);
                            try {
                                bufferedInputStream2 = new BufferedInputStream(fileInputStream5);
                                try {
                                    bufferedOutputStream = new BufferedOutputStream(v0Var);
                                    try {
                                        try {
                                            byte[] bArr = new byte[262144];
                                            WpTaskBean wpTaskBean7 = wpTaskBean3;
                                            try {
                                                r22 = wpTaskBean3.bdPathInfo.f18367d;
                                                int i12 = 0;
                                                long j11 = 0;
                                                while (true) {
                                                    int i13 = bufferedInputStream2.read(bArr);
                                                    if (i13 == i11) {
                                                        fileInputStream3 = fileInputStream5;
                                                        str4 = str8;
                                                        wpTaskBean = wpTaskBean7;
                                                        break;
                                                    }
                                                    try {
                                                        bufferedOutputStream.write(bArr, 0, i13);
                                                        v0Var.flush();
                                                        str4 = str8;
                                                        long j12 = j11 + i13;
                                                        try {
                                                            StringBuilder sb2 = new StringBuilder();
                                                            sb2.append(str9);
                                                            try {
                                                                DecimalFormat decimalFormat3 = k.f4034u0;
                                                                k kVar2 = j.f4033a;
                                                                byte[] bArr2 = bArr;
                                                                DecimalFormat decimalFormat4 = k.f4034u0;
                                                                String str10 = str9;
                                                                fileInputStream3 = fileInputStream5;
                                                                double d12 = j12;
                                                                Double.isNaN(d12);
                                                                j11 = j12;
                                                                double d13 = (double) r22;
                                                                Double.isNaN(d13);
                                                                try {
                                                                    try {
                                                                        sb2.append(decimalFormat4.format((d12 * 100.0d) / d13));
                                                                        sb2.append("%");
                                                                        wpTaskBean = wpTaskBean7;
                                                                        try {
                                                                            wpTaskBean.str1 = sb2.toString();
                                                                            i12++;
                                                                            if (i12 > 4) {
                                                                                Message messageObtain2 = Message.obtain();
                                                                                messageObtain2.what = 10;
                                                                                messageObtain2.obj = wpTaskBean;
                                                                                uVar2.sendMessage(messageObtain2);
                                                                                i12 = 0;
                                                                            }
                                                                            if (wpTaskBean.isTask_stop) {
                                                                                break;
                                                                            }
                                                                            wpTaskBean7 = wpTaskBean;
                                                                            str8 = str4;
                                                                            bArr = bArr2;
                                                                            str9 = str10;
                                                                            fileInputStream5 = fileInputStream3;
                                                                            i11 = -1;
                                                                        } catch (Exception e12) {
                                                                            e = e12;
                                                                            str = str4;
                                                                            str2 = e.getMessage() + str;
                                                                            if (!str2.contains("system cannot find the file")) {
                                                                                str2 = "无权限查看此目录";
                                                                            } else if (str2.contains("The parameter is incorrect")) {
                                                                                str2 = "已存在相同名称";
                                                                            } else if (str2.contains("STATUS_ACCESS_DENIED")) {
                                                                                str2 = "无权限";
                                                                            }
                                                                            if (str2.isEmpty()) {
                                                                                str2 = "连接失败";
                                                                            }
                                                                            wpTaskBean.str_state = str;
                                                                            wpTaskBean.str1 = str2;
                                                                            if (bufferedInputStream2 != null) {
                                                                                try {
                                                                                    bufferedInputStream2.close();
                                                                                } catch (Exception unused3) {
                                                                                }
                                                                            }
                                                                            if (bufferedOutputStream != null) {
                                                                                try {
                                                                                    bufferedOutputStream.close();
                                                                                } catch (Exception unused4) {
                                                                                }
                                                                            }
                                                                            if (v0Var != null) {
                                                                                try {
                                                                                    v0Var.close();
                                                                                } catch (Exception unused5) {
                                                                                }
                                                                            }
                                                                            if (fileInputStream3 != null) {
                                                                                fileInputStream3.close();
                                                                            }
                                                                            bVar = this;
                                                                            Message messageObtain3 = Message.obtain();
                                                                            messageObtain3.what = 11;
                                                                            messageObtain3.obj = (WpTaskBean) bVar.f18972b;
                                                                            ((u) bVar.f18973c).sendMessage(messageObtain3);
                                                                        }
                                                                    } catch (Exception e13) {
                                                                        e = e13;
                                                                        wpTaskBean = wpTaskBean7;
                                                                        str = str4;
                                                                        str2 = e.getMessage() + str;
                                                                        if (!str2.contains("system cannot find the file")) {
                                                                        }
                                                                        if (str2.isEmpty()) {
                                                                        }
                                                                        wpTaskBean.str_state = str;
                                                                        wpTaskBean.str1 = str2;
                                                                        if (bufferedInputStream2 != null) {
                                                                        }
                                                                        if (bufferedOutputStream != null) {
                                                                        }
                                                                        if (v0Var != null) {
                                                                        }
                                                                        if (fileInputStream3 != null) {
                                                                        }
                                                                        bVar = this;
                                                                        Message messageObtain32 = Message.obtain();
                                                                        messageObtain32.what = 11;
                                                                        messageObtain32.obj = (WpTaskBean) bVar.f18972b;
                                                                        ((u) bVar.f18973c).sendMessage(messageObtain32);
                                                                    }
                                                                } catch (Throwable th2) {
                                                                    th = th2;
                                                                    bufferedInputStream = bufferedInputStream2;
                                                                    if (bufferedInputStream != null) {
                                                                        try {
                                                                            bufferedInputStream.close();
                                                                        } catch (Exception unused6) {
                                                                        }
                                                                    }
                                                                    if (bufferedOutputStream != null) {
                                                                        try {
                                                                            bufferedOutputStream.close();
                                                                        } catch (Exception unused7) {
                                                                        }
                                                                    }
                                                                    if (v0Var != null) {
                                                                        try {
                                                                            v0Var.close();
                                                                        } catch (Exception unused8) {
                                                                        }
                                                                    }
                                                                    if (fileInputStream3 != null) {
                                                                        throw th;
                                                                    }
                                                                    try {
                                                                        fileInputStream3.close();
                                                                        throw th;
                                                                    } catch (Exception unused9) {
                                                                        throw th;
                                                                    }
                                                                }
                                                            } catch (Exception e14) {
                                                                e = e14;
                                                                fileInputStream3 = fileInputStream5;
                                                            }
                                                        } catch (Exception e15) {
                                                            e = e15;
                                                            fileInputStream3 = fileInputStream5;
                                                        }
                                                    } catch (Exception e16) {
                                                        e = e16;
                                                        fileInputStream3 = fileInputStream5;
                                                        str4 = str8;
                                                    }
                                                }
                                                try {
                                                    if (wpTaskBean.isTask_stop) {
                                                        String str11 = str4;
                                                        wpTaskBean.str_state = str11;
                                                        wpTaskBean.str1 = "主动停止任务";
                                                        r22 = str11;
                                                    } else {
                                                        String str12 = str4;
                                                        wpTaskBean.str_state = str12;
                                                        wpTaskBean.str1 = "上传完成";
                                                        r22 = str12;
                                                    }
                                                    bufferedInputStream2.close();
                                                } catch (Exception e17) {
                                                    e = e17;
                                                    str = r22;
                                                }
                                            } catch (Exception e18) {
                                                e = e18;
                                                fileInputStream3 = fileInputStream5;
                                                str = str8;
                                                wpTaskBean = wpTaskBean7;
                                            }
                                        } catch (Exception e19) {
                                            e = e19;
                                            wpTaskBean = wpTaskBean3;
                                            fileInputStream3 = fileInputStream5;
                                            str = "";
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        fileInputStream3 = fileInputStream5;
                                        bufferedInputStream = bufferedInputStream2;
                                        if (bufferedInputStream != null) {
                                        }
                                        if (bufferedOutputStream != null) {
                                        }
                                        if (v0Var != null) {
                                        }
                                        if (fileInputStream3 != null) {
                                        }
                                    }
                                } catch (Exception e20) {
                                    e = e20;
                                    wpTaskBean = wpTaskBean3;
                                    fileInputStream3 = fileInputStream5;
                                    str3 = "";
                                    bufferedOutputStream = null;
                                    str = str3;
                                    str2 = e.getMessage() + str;
                                    if (!str2.contains("system cannot find the file")) {
                                    }
                                    if (str2.isEmpty()) {
                                    }
                                    wpTaskBean.str_state = str;
                                    wpTaskBean.str1 = str2;
                                    if (bufferedInputStream2 != null) {
                                    }
                                    if (bufferedOutputStream != null) {
                                    }
                                    if (v0Var != null) {
                                    }
                                    if (fileInputStream3 != null) {
                                    }
                                    bVar = this;
                                    Message messageObtain322 = Message.obtain();
                                    messageObtain322.what = 11;
                                    messageObtain322.obj = (WpTaskBean) bVar.f18972b;
                                    ((u) bVar.f18973c).sendMessage(messageObtain322);
                                } catch (Throwable th4) {
                                    th = th4;
                                    fileInputStream3 = fileInputStream5;
                                    bufferedInputStream = bufferedInputStream2;
                                    bufferedOutputStream = null;
                                    if (bufferedInputStream != null) {
                                    }
                                    if (bufferedOutputStream != null) {
                                    }
                                    if (v0Var != null) {
                                    }
                                    if (fileInputStream3 != null) {
                                    }
                                }
                                try {
                                    bufferedOutputStream.close();
                                } catch (Exception e21) {
                                    e = e21;
                                    bufferedInputStream2 = null;
                                    str = r22;
                                    str2 = e.getMessage() + str;
                                    if (!str2.contains("system cannot find the file")) {
                                    }
                                    if (str2.isEmpty()) {
                                    }
                                    wpTaskBean.str_state = str;
                                    wpTaskBean.str1 = str2;
                                    if (bufferedInputStream2 != null) {
                                    }
                                    if (bufferedOutputStream != null) {
                                    }
                                    if (v0Var != null) {
                                    }
                                    if (fileInputStream3 != null) {
                                    }
                                    bVar = this;
                                    Message messageObtain3222 = Message.obtain();
                                    messageObtain3222.what = 11;
                                    messageObtain3222.obj = (WpTaskBean) bVar.f18972b;
                                    ((u) bVar.f18973c).sendMessage(messageObtain3222);
                                } catch (Throwable th5) {
                                    th = th5;
                                    bufferedInputStream = null;
                                    if (bufferedInputStream != null) {
                                    }
                                    if (bufferedOutputStream != null) {
                                    }
                                    if (v0Var != null) {
                                    }
                                    if (fileInputStream3 != null) {
                                    }
                                }
                                try {
                                    v0Var.close();
                                } catch (Exception e22) {
                                    e = e22;
                                    bufferedInputStream2 = null;
                                    str3 = r22;
                                    bufferedOutputStream = null;
                                    str = str3;
                                    str2 = e.getMessage() + str;
                                    if (!str2.contains("system cannot find the file")) {
                                    }
                                    if (str2.isEmpty()) {
                                    }
                                    wpTaskBean.str_state = str;
                                    wpTaskBean.str1 = str2;
                                    if (bufferedInputStream2 != null) {
                                    }
                                    if (bufferedOutputStream != null) {
                                    }
                                    if (v0Var != null) {
                                    }
                                    if (fileInputStream3 != null) {
                                    }
                                    bVar = this;
                                    Message messageObtain32222 = Message.obtain();
                                    messageObtain32222.what = 11;
                                    messageObtain32222.obj = (WpTaskBean) bVar.f18972b;
                                    ((u) bVar.f18973c).sendMessage(messageObtain32222);
                                } catch (Throwable th6) {
                                    th = th6;
                                    bufferedInputStream = null;
                                    bufferedOutputStream = null;
                                    if (bufferedInputStream != null) {
                                    }
                                    if (bufferedOutputStream != null) {
                                    }
                                    if (v0Var != null) {
                                    }
                                    if (fileInputStream3 != null) {
                                    }
                                }
                                try {
                                    fileInputStream3.close();
                                } catch (Exception e23) {
                                    e = e23;
                                    v0Var = null;
                                    bufferedInputStream2 = null;
                                    str3 = r22;
                                    bufferedOutputStream = null;
                                    str = str3;
                                    str2 = e.getMessage() + str;
                                    if (!str2.contains("system cannot find the file")) {
                                    }
                                    if (str2.isEmpty()) {
                                    }
                                    wpTaskBean.str_state = str;
                                    wpTaskBean.str1 = str2;
                                    if (bufferedInputStream2 != null) {
                                    }
                                    if (bufferedOutputStream != null) {
                                    }
                                    if (v0Var != null) {
                                    }
                                    if (fileInputStream3 != null) {
                                    }
                                    bVar = this;
                                    Message messageObtain322222 = Message.obtain();
                                    messageObtain322222.what = 11;
                                    messageObtain322222.obj = (WpTaskBean) bVar.f18972b;
                                    ((u) bVar.f18973c).sendMessage(messageObtain322222);
                                } catch (Throwable th7) {
                                    th = th7;
                                    bufferedInputStream = null;
                                    v0Var = null;
                                    bufferedOutputStream = null;
                                    if (bufferedInputStream != null) {
                                    }
                                    if (bufferedOutputStream != null) {
                                    }
                                    if (v0Var != null) {
                                    }
                                    if (fileInputStream3 != null) {
                                    }
                                }
                            } catch (Exception e24) {
                                e = e24;
                                wpTaskBean = wpTaskBean3;
                                fileInputStream3 = fileInputStream5;
                                r22 = "";
                            } catch (Throwable th8) {
                                th = th8;
                                fileInputStream3 = fileInputStream5;
                            }
                        } catch (Exception e25) {
                            e = e25;
                            wpTaskBean = wpTaskBean3;
                            fileInputStream3 = fileInputStream5;
                            r22 = "";
                        } catch (Throwable th9) {
                            th = th9;
                            fileInputStream3 = fileInputStream5;
                        }
                    } catch (Exception e26) {
                        e = e26;
                        wpTaskBean = wpTaskBean3;
                        str = "";
                        v0Var = null;
                        bufferedInputStream2 = null;
                        bufferedOutputStream = null;
                        fileInputStream3 = null;
                    } catch (Throwable th10) {
                        th = th10;
                        bufferedInputStream = null;
                        v0Var = null;
                        bufferedOutputStream = null;
                        fileInputStream3 = null;
                    }
                    bVar = this;
                } else {
                    String str13 = "上传中：";
                    SmbConfig.Builder builderWithMultiProtocolNegotiate = SmbConfig.builder().withMultiProtocolNegotiate(true);
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    SMBClient sMBClient2 = new SMBClient(builderWithMultiProtocolNegotiate.withTimeout(300L, timeUnit).withSoTimeout(0L, timeUnit).withEncryptData(false).withTransportLayerFactory(new AsyncDirectTcpTransportFactory()).build());
                    try {
                        n5 n5Var2 = wpTaskBean3.userInfo;
                        connectionConnect = sMBClient2.connect(n5Var2.f18292c, n5Var2.f18293d);
                        try {
                            if (wpTaskBean3.userInfo.f18294e.isEmpty()) {
                                authenticationContext = AuthenticationContext.guest();
                            } else {
                                n5 n5Var3 = wpTaskBean3.userInfo;
                                authenticationContext = new AuthenticationContext(n5Var3.f18294e, n5Var3.f18295f.toCharArray(), wpTaskBean3.userInfo.f18309v);
                            }
                            sessionAuthenticate = connectionConnect.authenticate(authenticationContext);
                            try {
                                int iIndexOf = wpTaskBean3.wpPathInfo.path.indexOf("/", 1);
                                String strSubstring = wpTaskBean3.wpPathInfo.path.substring(1, iIndexOf);
                                str5 = wpTaskBean3.wpPathInfo.path.substring(iIndexOf + 1) + wpTaskBean3.bdPathInfo.f18364a;
                                diskShare2 = (DiskShare) sessionAuthenticate.connectShare(strSubstring);
                            } catch (Exception e27) {
                                e = e27;
                                connection = connectionConnect;
                                sMBClient = sMBClient2;
                                session = sessionAuthenticate;
                                bufferedOutputStream3 = null;
                                bufferedInputStream4 = null;
                                diskShare = null;
                                outputStream = null;
                                fileInputStream4 = null;
                                try {
                                    String strI = f.i(e);
                                    wpTaskBean3.str_state = "";
                                    wpTaskBean3.str1 = strI;
                                    if (bufferedInputStream4 != null) {
                                    }
                                    if (bufferedOutputStream3 != null) {
                                    }
                                    if (outputStream != null) {
                                    }
                                    if (fileInputStream4 != null) {
                                    }
                                    if (diskShare != null) {
                                    }
                                    if (session != null) {
                                    }
                                    if (connection != null) {
                                    }
                                    sMBClient.close();
                                    bVar = this;
                                    Message messageObtain3222222 = Message.obtain();
                                    messageObtain3222222.what = 11;
                                    messageObtain3222222.obj = (WpTaskBean) bVar.f18972b;
                                    ((u) bVar.f18973c).sendMessage(messageObtain3222222);
                                } catch (Throwable th11) {
                                    th = th11;
                                    bufferedInputStream3 = bufferedInputStream4;
                                    bufferedOutputStream2 = bufferedOutputStream3;
                                    if (bufferedInputStream3 != null) {
                                        try {
                                            bufferedInputStream3.close();
                                        } catch (Exception unused10) {
                                        }
                                    }
                                    if (bufferedOutputStream2 != null) {
                                        try {
                                            bufferedOutputStream2.close();
                                        } catch (Exception unused11) {
                                        }
                                    }
                                    if (outputStream != null) {
                                        try {
                                            outputStream.close();
                                        } catch (Exception unused12) {
                                        }
                                    }
                                    if (fileInputStream4 != null) {
                                        try {
                                            fileInputStream4.close();
                                        } catch (Exception unused13) {
                                        }
                                    }
                                    if (diskShare != null) {
                                        try {
                                            diskShare.close();
                                        } catch (Exception unused14) {
                                        }
                                    }
                                    if (session != null) {
                                        try {
                                            session.close();
                                        } catch (Exception unused15) {
                                        }
                                    }
                                    if (connection != null) {
                                        try {
                                            connection.close();
                                        } catch (Exception unused16) {
                                        }
                                    }
                                    try {
                                        sMBClient.close();
                                        throw th;
                                    } catch (Exception unused17) {
                                        throw th;
                                    }
                                }
                            } catch (Throwable th12) {
                                th = th12;
                                connection = connectionConnect;
                                sMBClient = sMBClient2;
                                session = sessionAuthenticate;
                                bufferedInputStream3 = null;
                                bufferedOutputStream2 = null;
                                diskShare = null;
                                outputStream = null;
                                fileInputStream4 = null;
                                if (bufferedInputStream3 != null) {
                                }
                                if (bufferedOutputStream2 != null) {
                                }
                                if (outputStream != null) {
                                }
                                if (fileInputStream4 != null) {
                                }
                                if (diskShare != null) {
                                }
                                if (session != null) {
                                }
                                if (connection != null) {
                                }
                                sMBClient.close();
                                throw th;
                            }
                        } catch (Exception e28) {
                            e = e28;
                            connection = connectionConnect;
                            sMBClient = sMBClient2;
                            bufferedOutputStream3 = null;
                            bufferedInputStream4 = null;
                            session = null;
                        } catch (Throwable th13) {
                            th = th13;
                            connection = connectionConnect;
                            sMBClient = sMBClient2;
                            bufferedInputStream3 = null;
                            bufferedOutputStream2 = null;
                            session = null;
                        }
                    } catch (Exception e29) {
                        e = e29;
                        sMBClient = sMBClient2;
                        bufferedOutputStream3 = null;
                        bufferedInputStream4 = null;
                        session = null;
                        diskShare = null;
                        outputStream = null;
                        fileInputStream4 = null;
                        connection = null;
                    } catch (Throwable th14) {
                        th = th14;
                        sMBClient = sMBClient2;
                        bufferedInputStream3 = null;
                        bufferedOutputStream2 = null;
                        session = null;
                        diskShare = null;
                        outputStream = null;
                        fileInputStream4 = null;
                        connection = null;
                    }
                    try {
                        HashSet hashSet = new HashSet();
                        hashSet.add(AccessMask.GENERIC_ALL);
                        HashSet hashSet2 = new HashSet();
                        hashSet2.add(SMB2CreateOptions.FILE_RANDOM_ACCESS);
                        OutputStream outputStream2 = diskShare2.openFile(str5, hashSet, null, SMB2ShareAccess.ALL, SMB2CreateDisposition.FILE_OVERWRITE_IF, hashSet2).getOutputStream();
                        try {
                            FileInputStream fileInputStream6 = new FileInputStream(wpTaskBean3.bdPathInfo.f18365b);
                            try {
                                BufferedInputStream bufferedInputStream5 = new BufferedInputStream(fileInputStream6);
                                try {
                                    bufferedOutputStream3 = new BufferedOutputStream(outputStream2);
                                    try {
                                        byte[] bArr3 = new byte[262144];
                                        session = sessionAuthenticate;
                                        diskShare = diskShare2;
                                        try {
                                            long j13 = wpTaskBean3.bdPathInfo.f18367d;
                                            sMBClient = sMBClient2;
                                            int i14 = 0;
                                            long j14 = 0;
                                            while (true) {
                                                try {
                                                    int i15 = bufferedInputStream5.read(bArr3);
                                                    connection = connectionConnect;
                                                    if (i15 == -1) {
                                                        outputStream = outputStream2;
                                                        fileInputStream4 = fileInputStream6;
                                                        break;
                                                    }
                                                    try {
                                                        bufferedOutputStream3.write(bArr3, 0, i15);
                                                        bufferedOutputStream3.flush();
                                                        byte[] bArr4 = bArr3;
                                                        long j15 = j14 + i15;
                                                        i14++;
                                                        if (i14 > 30) {
                                                            StringBuilder sb3 = new StringBuilder();
                                                            String str14 = str13;
                                                            sb3.append(str14);
                                                            try {
                                                                DecimalFormat decimalFormat5 = k.f4034u0;
                                                                k kVar3 = j.f4033a;
                                                                str13 = str14;
                                                                decimalFormat = k.f4034u0;
                                                                outputStream = outputStream2;
                                                                fileInputStream4 = fileInputStream6;
                                                                d10 = j15;
                                                                Double.isNaN(d10);
                                                                j10 = j15;
                                                                d11 = j13;
                                                                Double.isNaN(d11);
                                                            } catch (Exception e30) {
                                                                e = e30;
                                                                outputStream = outputStream2;
                                                                fileInputStream4 = fileInputStream6;
                                                                bufferedInputStream4 = bufferedInputStream5;
                                                                String strI2 = f.i(e);
                                                                wpTaskBean3.str_state = "";
                                                                wpTaskBean3.str1 = strI2;
                                                                if (bufferedInputStream4 != null) {
                                                                }
                                                                if (bufferedOutputStream3 != null) {
                                                                }
                                                                if (outputStream != null) {
                                                                }
                                                                if (fileInputStream4 != null) {
                                                                }
                                                                if (diskShare != null) {
                                                                }
                                                                if (session != null) {
                                                                }
                                                                if (connection != null) {
                                                                }
                                                                sMBClient.close();
                                                                bVar = this;
                                                                Message messageObtain32222222 = Message.obtain();
                                                                messageObtain32222222.what = 11;
                                                                messageObtain32222222.obj = (WpTaskBean) bVar.f18972b;
                                                                ((u) bVar.f18973c).sendMessage(messageObtain32222222);
                                                            } catch (Throwable th15) {
                                                                th = th15;
                                                                outputStream = outputStream2;
                                                                fileInputStream4 = fileInputStream6;
                                                                bufferedInputStream3 = bufferedInputStream5;
                                                                bufferedOutputStream2 = bufferedOutputStream3;
                                                                if (bufferedInputStream3 != null) {
                                                                }
                                                                if (bufferedOutputStream2 != null) {
                                                                }
                                                                if (outputStream != null) {
                                                                }
                                                                if (fileInputStream4 != null) {
                                                                }
                                                                if (diskShare != null) {
                                                                }
                                                                if (session != null) {
                                                                }
                                                                if (connection != null) {
                                                                }
                                                                sMBClient.close();
                                                                throw th;
                                                            }
                                                            try {
                                                                sb3.append(decimalFormat.format((d10 * 100.0d) / d11));
                                                                sb3.append("%");
                                                                wpTaskBean3.str1 = sb3.toString();
                                                                Message messageObtain4 = Message.obtain();
                                                                messageObtain4.what = 10;
                                                                messageObtain4.obj = wpTaskBean3;
                                                                uVar2.sendMessage(messageObtain4);
                                                                i14 = 0;
                                                            } catch (Exception e31) {
                                                                e = e31;
                                                                bufferedInputStream4 = bufferedInputStream5;
                                                                String strI22 = f.i(e);
                                                                wpTaskBean3.str_state = "";
                                                                wpTaskBean3.str1 = strI22;
                                                                if (bufferedInputStream4 != null) {
                                                                }
                                                                if (bufferedOutputStream3 != null) {
                                                                }
                                                                if (outputStream != null) {
                                                                }
                                                                if (fileInputStream4 != null) {
                                                                }
                                                                if (diskShare != null) {
                                                                }
                                                                if (session != null) {
                                                                }
                                                                if (connection != null) {
                                                                }
                                                                sMBClient.close();
                                                                bVar = this;
                                                                Message messageObtain322222222 = Message.obtain();
                                                                messageObtain322222222.what = 11;
                                                                messageObtain322222222.obj = (WpTaskBean) bVar.f18972b;
                                                                ((u) bVar.f18973c).sendMessage(messageObtain322222222);
                                                            } catch (Throwable th16) {
                                                                th = th16;
                                                                bufferedInputStream3 = bufferedInputStream5;
                                                                bufferedOutputStream2 = bufferedOutputStream3;
                                                                if (bufferedInputStream3 != null) {
                                                                }
                                                                if (bufferedOutputStream2 != null) {
                                                                }
                                                                if (outputStream != null) {
                                                                }
                                                                if (fileInputStream4 != null) {
                                                                }
                                                                if (diskShare != null) {
                                                                }
                                                                if (session != null) {
                                                                }
                                                                if (connection != null) {
                                                                }
                                                                sMBClient.close();
                                                                throw th;
                                                            }
                                                        } else {
                                                            j10 = j15;
                                                            outputStream = outputStream2;
                                                            fileInputStream4 = fileInputStream6;
                                                        }
                                                        if (wpTaskBean3.isTask_stop) {
                                                            break;
                                                        }
                                                        outputStream2 = outputStream;
                                                        fileInputStream6 = fileInputStream4;
                                                        bArr3 = bArr4;
                                                        connectionConnect = connection;
                                                        j14 = j10;
                                                    } catch (Exception e32) {
                                                        e = e32;
                                                    } catch (Throwable th17) {
                                                        th = th17;
                                                    }
                                                } catch (Exception e33) {
                                                    e = e33;
                                                    connection = connectionConnect;
                                                } catch (Throwable th18) {
                                                    th = th18;
                                                    connection = connectionConnect;
                                                }
                                            }
                                            if (wpTaskBean3.isTask_stop) {
                                                wpTaskBean3.str_state = "";
                                                wpTaskBean3.str1 = "主动停止任务";
                                            } else {
                                                wpTaskBean3.str_state = "";
                                                wpTaskBean3.str1 = "上传完成";
                                            }
                                            bufferedInputStream5.close();
                                        } catch (Exception e34) {
                                            e = e34;
                                            connection = connectionConnect;
                                            sMBClient = sMBClient2;
                                        } catch (Throwable th19) {
                                            th = th19;
                                            connection = connectionConnect;
                                            sMBClient = sMBClient2;
                                        }
                                        try {
                                            bufferedOutputStream3.close();
                                            try {
                                                outputStream.close();
                                            } catch (Exception e35) {
                                                e = e35;
                                                bufferedOutputStream3 = null;
                                                bufferedInputStream4 = null;
                                                String strI222 = f.i(e);
                                                wpTaskBean3.str_state = "";
                                                wpTaskBean3.str1 = strI222;
                                                if (bufferedInputStream4 != null) {
                                                    try {
                                                        bufferedInputStream4.close();
                                                    } catch (Exception unused18) {
                                                    }
                                                }
                                                if (bufferedOutputStream3 != null) {
                                                    try {
                                                        bufferedOutputStream3.close();
                                                    } catch (Exception unused19) {
                                                    }
                                                }
                                                if (outputStream != null) {
                                                    try {
                                                        outputStream.close();
                                                    } catch (Exception unused20) {
                                                    }
                                                }
                                                if (fileInputStream4 != null) {
                                                    try {
                                                        fileInputStream4.close();
                                                    } catch (Exception unused21) {
                                                    }
                                                }
                                                if (diskShare != null) {
                                                    try {
                                                        diskShare.close();
                                                    } catch (Exception unused22) {
                                                    }
                                                }
                                                if (session != null) {
                                                    try {
                                                        session.close();
                                                    } catch (Exception unused23) {
                                                    }
                                                }
                                                if (connection != null) {
                                                    connection.close();
                                                }
                                                sMBClient.close();
                                                bVar = this;
                                                Message messageObtain3222222222 = Message.obtain();
                                                messageObtain3222222222.what = 11;
                                                messageObtain3222222222.obj = (WpTaskBean) bVar.f18972b;
                                                ((u) bVar.f18973c).sendMessage(messageObtain3222222222);
                                            } catch (Throwable th20) {
                                                th = th20;
                                                bufferedInputStream3 = null;
                                                bufferedOutputStream2 = null;
                                                if (bufferedInputStream3 != null) {
                                                }
                                                if (bufferedOutputStream2 != null) {
                                                }
                                                if (outputStream != null) {
                                                }
                                                if (fileInputStream4 != null) {
                                                }
                                                if (diskShare != null) {
                                                }
                                                if (session != null) {
                                                }
                                                if (connection != null) {
                                                }
                                                sMBClient.close();
                                                throw th;
                                            }
                                            try {
                                                fileInputStream4.close();
                                                try {
                                                    diskShare.close();
                                                } catch (Exception unused24) {
                                                }
                                                try {
                                                    session.close();
                                                } catch (Exception unused25) {
                                                }
                                            } catch (Exception e36) {
                                                e = e36;
                                                bufferedOutputStream3 = null;
                                                bufferedInputStream4 = null;
                                                outputStream = null;
                                                String strI2222 = f.i(e);
                                                wpTaskBean3.str_state = "";
                                                wpTaskBean3.str1 = strI2222;
                                                if (bufferedInputStream4 != null) {
                                                }
                                                if (bufferedOutputStream3 != null) {
                                                }
                                                if (outputStream != null) {
                                                }
                                                if (fileInputStream4 != null) {
                                                }
                                                if (diskShare != null) {
                                                }
                                                if (session != null) {
                                                }
                                                if (connection != null) {
                                                }
                                                sMBClient.close();
                                                bVar = this;
                                                Message messageObtain32222222222 = Message.obtain();
                                                messageObtain32222222222.what = 11;
                                                messageObtain32222222222.obj = (WpTaskBean) bVar.f18972b;
                                                ((u) bVar.f18973c).sendMessage(messageObtain32222222222);
                                            } catch (Throwable th21) {
                                                th = th21;
                                                bufferedInputStream3 = null;
                                                bufferedOutputStream2 = null;
                                                outputStream = null;
                                                if (bufferedInputStream3 != null) {
                                                }
                                                if (bufferedOutputStream2 != null) {
                                                }
                                                if (outputStream != null) {
                                                }
                                                if (fileInputStream4 != null) {
                                                }
                                                if (diskShare != null) {
                                                }
                                                if (session != null) {
                                                }
                                                if (connection != null) {
                                                }
                                                sMBClient.close();
                                                throw th;
                                            }
                                        } catch (Exception e37) {
                                            e = e37;
                                            bufferedInputStream4 = null;
                                            String strI22222 = f.i(e);
                                            wpTaskBean3.str_state = "";
                                            wpTaskBean3.str1 = strI22222;
                                            if (bufferedInputStream4 != null) {
                                            }
                                            if (bufferedOutputStream3 != null) {
                                            }
                                            if (outputStream != null) {
                                            }
                                            if (fileInputStream4 != null) {
                                            }
                                            if (diskShare != null) {
                                            }
                                            if (session != null) {
                                            }
                                            if (connection != null) {
                                            }
                                            sMBClient.close();
                                            bVar = this;
                                            Message messageObtain322222222222 = Message.obtain();
                                            messageObtain322222222222.what = 11;
                                            messageObtain322222222222.obj = (WpTaskBean) bVar.f18972b;
                                            ((u) bVar.f18973c).sendMessage(messageObtain322222222222);
                                        } catch (Throwable th22) {
                                            th = th22;
                                            bufferedOutputStream2 = bufferedOutputStream3;
                                            bufferedInputStream3 = null;
                                        }
                                    } catch (Exception e38) {
                                        e = e38;
                                        connection = connectionConnect;
                                        sMBClient = sMBClient2;
                                        session = sessionAuthenticate;
                                        diskShare = diskShare2;
                                    } catch (Throwable th23) {
                                        th = th23;
                                        connection = connectionConnect;
                                        sMBClient = sMBClient2;
                                        session = sessionAuthenticate;
                                        diskShare = diskShare2;
                                    }
                                } catch (Exception e39) {
                                    e = e39;
                                    connection = connectionConnect;
                                    sMBClient = sMBClient2;
                                    session = sessionAuthenticate;
                                    diskShare = diskShare2;
                                    outputStream = outputStream2;
                                    fileInputStream4 = fileInputStream6;
                                    bufferedInputStream4 = bufferedInputStream5;
                                    bufferedOutputStream3 = null;
                                } catch (Throwable th24) {
                                    th = th24;
                                    connection = connectionConnect;
                                    sMBClient = sMBClient2;
                                    session = sessionAuthenticate;
                                    diskShare = diskShare2;
                                    outputStream = outputStream2;
                                    fileInputStream4 = fileInputStream6;
                                    bufferedInputStream3 = bufferedInputStream5;
                                    bufferedOutputStream2 = null;
                                    if (bufferedInputStream3 != null) {
                                    }
                                    if (bufferedOutputStream2 != null) {
                                    }
                                    if (outputStream != null) {
                                    }
                                    if (fileInputStream4 != null) {
                                    }
                                    if (diskShare != null) {
                                    }
                                    if (session != null) {
                                    }
                                    if (connection != null) {
                                    }
                                    sMBClient.close();
                                    throw th;
                                }
                            } catch (Exception e40) {
                                e = e40;
                                connection = connectionConnect;
                                sMBClient = sMBClient2;
                                session = sessionAuthenticate;
                                diskShare = diskShare2;
                                outputStream = outputStream2;
                                fileInputStream4 = fileInputStream6;
                            } catch (Throwable th25) {
                                th = th25;
                                connection = connectionConnect;
                                sMBClient = sMBClient2;
                                session = sessionAuthenticate;
                                diskShare = diskShare2;
                                outputStream = outputStream2;
                                fileInputStream4 = fileInputStream6;
                            }
                        } catch (Exception e41) {
                            e = e41;
                            connection = connectionConnect;
                            sMBClient = sMBClient2;
                            session = sessionAuthenticate;
                            diskShare = diskShare2;
                            outputStream = outputStream2;
                            bufferedOutputStream3 = null;
                            bufferedInputStream4 = null;
                            fileInputStream4 = null;
                            String strI222222 = f.i(e);
                            wpTaskBean3.str_state = "";
                            wpTaskBean3.str1 = strI222222;
                            if (bufferedInputStream4 != null) {
                            }
                            if (bufferedOutputStream3 != null) {
                            }
                            if (outputStream != null) {
                            }
                            if (fileInputStream4 != null) {
                            }
                            if (diskShare != null) {
                            }
                            if (session != null) {
                            }
                            if (connection != null) {
                            }
                            sMBClient.close();
                            bVar = this;
                            Message messageObtain3222222222222 = Message.obtain();
                            messageObtain3222222222222.what = 11;
                            messageObtain3222222222222.obj = (WpTaskBean) bVar.f18972b;
                            ((u) bVar.f18973c).sendMessage(messageObtain3222222222222);
                        } catch (Throwable th26) {
                            th = th26;
                            connection = connectionConnect;
                            sMBClient = sMBClient2;
                            session = sessionAuthenticate;
                            diskShare = diskShare2;
                            outputStream = outputStream2;
                            bufferedInputStream3 = null;
                            bufferedOutputStream2 = null;
                            fileInputStream4 = null;
                            if (bufferedInputStream3 != null) {
                            }
                            if (bufferedOutputStream2 != null) {
                            }
                            if (outputStream != null) {
                            }
                            if (fileInputStream4 != null) {
                            }
                            if (diskShare != null) {
                            }
                            if (session != null) {
                            }
                            if (connection != null) {
                            }
                            sMBClient.close();
                            throw th;
                        }
                    } catch (Exception e42) {
                        e = e42;
                        connection = connectionConnect;
                        sMBClient = sMBClient2;
                        session = sessionAuthenticate;
                        diskShare = diskShare2;
                        bufferedOutputStream3 = null;
                        bufferedInputStream4 = null;
                        outputStream = null;
                        fileInputStream4 = null;
                        String strI2222222 = f.i(e);
                        wpTaskBean3.str_state = "";
                        wpTaskBean3.str1 = strI2222222;
                        if (bufferedInputStream4 != null) {
                        }
                        if (bufferedOutputStream3 != null) {
                        }
                        if (outputStream != null) {
                        }
                        if (fileInputStream4 != null) {
                        }
                        if (diskShare != null) {
                        }
                        if (session != null) {
                        }
                        if (connection != null) {
                        }
                        sMBClient.close();
                        bVar = this;
                        Message messageObtain32222222222222 = Message.obtain();
                        messageObtain32222222222222.what = 11;
                        messageObtain32222222222222.obj = (WpTaskBean) bVar.f18972b;
                        ((u) bVar.f18973c).sendMessage(messageObtain32222222222222);
                    } catch (Throwable th27) {
                        th = th27;
                        connection = connectionConnect;
                        sMBClient = sMBClient2;
                        session = sessionAuthenticate;
                        diskShare = diskShare2;
                        bufferedInputStream3 = null;
                        bufferedOutputStream2 = null;
                        outputStream = null;
                        fileInputStream4 = null;
                        if (bufferedInputStream3 != null) {
                        }
                        if (bufferedOutputStream2 != null) {
                        }
                        if (outputStream != null) {
                        }
                        if (fileInputStream4 != null) {
                        }
                        if (diskShare != null) {
                        }
                        if (session != null) {
                        }
                        if (connection != null) {
                        }
                        sMBClient.close();
                        throw th;
                    }
                    connection.close();
                    sMBClient.close();
                }
                bVar = this;
            } else if (i10 == 4) {
                bVar = this;
                com.bumptech.glide.c.m0(wpTaskBean3, (u) bVar.f18973c);
            } else {
                bVar = this;
                if (i10 == 5) {
                    d.i0(wpTaskBean3, (u) bVar.f18973c);
                } else if (i10 == 6) {
                    try {
                        FileInputStream fileInputStream7 = new FileInputStream(wpTaskBean3.bdPathInfo.f18365b);
                        try {
                            f0VarS = p000if.a.S(wpTaskBean3.userInfo);
                            try {
                                f0VarS.b();
                                throw null;
                            } catch (Exception unused26) {
                                fileInputStream2 = fileInputStream7;
                                try {
                                    wpTaskBean3.str_state = "";
                                    wpTaskBean3.str1 = "上传失败";
                                    q4.a.e(fileInputStream2);
                                    if (f0VarS != null && f0VarS.f487h) {
                                        f0VarS.c();
                                    }
                                    Message messageObtain322222222222222 = Message.obtain();
                                    messageObtain322222222222222.what = 11;
                                    messageObtain322222222222222.obj = (WpTaskBean) bVar.f18972b;
                                    ((u) bVar.f18973c).sendMessage(messageObtain322222222222222);
                                } catch (Throwable th28) {
                                    th = th28;
                                    fileInputStream = fileInputStream2;
                                    f0Var = f0VarS;
                                    q4.a.e(fileInputStream);
                                    if (f0Var != null && f0Var.f487h) {
                                        f0Var.c();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th29) {
                                th = th29;
                                fileInputStream = fileInputStream7;
                                f0Var = f0VarS;
                                q4.a.e(fileInputStream);
                                if (f0Var != null) {
                                    f0Var.c();
                                }
                                throw th;
                            }
                        } catch (Exception unused27) {
                            f0VarS = null;
                        } catch (Throwable th30) {
                            th = th30;
                            f0Var = null;
                            fileInputStream = fileInputStream7;
                            q4.a.e(fileInputStream);
                            if (f0Var != null) {
                            }
                            throw th;
                        }
                    } catch (Exception unused28) {
                        fileInputStream2 = null;
                        f0VarS = null;
                    } catch (Throwable th31) {
                        th = th31;
                        f0Var = null;
                        fileInputStream = null;
                    }
                } else if (i10 == 7) {
                    qa.g.g(wpTaskBean3, (u) bVar.f18973c);
                }
            }
            Message messageObtain3222222222222222 = Message.obtain();
            messageObtain3222222222222222.what = 11;
            messageObtain3222222222222222.obj = (WpTaskBean) bVar.f18972b;
            ((u) bVar.f18973c).sendMessage(messageObtain3222222222222222);
        }
    }

    public void a(File file, boolean z, String str) {
        ArrayList arrayList;
        if (file.getPath().contains("\\")) {
            ((z) this.f18973c).f4159d.decrementAndGet();
            return;
        }
        FileInfo fileInfo = new FileInfo(file.getPath(), file.getName(), file.getParent(), z ? 0L : a0.p(file), str, file.lastModified(), z);
        synchronized (((z) this.f18973c).f4156a) {
            try {
                ((z) this.f18973c).f4157b.add(fileInfo);
                if (((z) this.f18973c).f4157b.size() >= 400) {
                    arrayList = new ArrayList(((z) this.f18973c).f4157b);
                    ((z) this.f18973c).f4157b.clear();
                } else {
                    arrayList = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (arrayList != null) {
            ((z) this.f18973c).f4161f.incrementAndGet();
            z zVar = (z) this.f18973c;
            zVar.f4160e.execute(new b(4, zVar, arrayList, false));
        }
        ((z) this.f18973c).f4159d.decrementAndGet();
    }

    /* JADX WARN: Removed duplicated region for block: B:282:0x06c0  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x0174 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() throws Throwable {
        int i10;
        androidx.recyclerview.widget.u uVar;
        int i11;
        androidx.recyclerview.widget.f fVar;
        int i12;
        int i13;
        ByteBuffer byteBufferOrder;
        byte[] bArr;
        z9.d dVar;
        i8 i8Var;
        int i14 = 2;
        switch (this.f18971a) {
            case 0:
                v3.f fVar2 = (v3.f) this.f18973c;
                try {
                    View view = (View) o.M((c) this.f18972b);
                    View view2 = (View) fVar2.f16474b;
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if (layoutParams == null) {
                        throw new IllegalStateException("The media route button placeholder missing layout params.");
                    }
                    view.setId(R.id.exo_media_route_button_placeholder);
                    view.setLayoutParams(layoutParams);
                    ViewGroup viewGroup = (ViewGroup) fVar2.f16475c;
                    int iIndexOfChild = viewGroup.indexOfChild(view2);
                    viewGroup.removeView(view2);
                    viewGroup.addView(view, iIndexOfChild);
                    view.setVisibility(0);
                    ((t) fVar2.f16476d).f16544a.h(view, true);
                    return;
                } catch (ExecutionException e7) {
                    fVar2.F(e7.getCause());
                    return;
                } catch (Throwable th2) {
                    fVar2.F(th2);
                    return;
                }
            case 1:
                u1 u1Var = (u1) this.f18973c;
                androidx.recyclerview.widget.f fVar3 = (androidx.recyclerview.widget.f) u1Var.f1410f;
                if (fVar3.f2105g == u1Var.f1406b) {
                    List list = fVar3.f2104f;
                    List list2 = u1Var.f1408d;
                    fVar3.f2103e = list2;
                    fVar3.f2104f = Collections.unmodifiableList(list2);
                    androidx.recyclerview.widget.u uVar2 = (androidx.recyclerview.widget.u) this.f18972b;
                    androidx.recyclerview.widget.g gVar = new androidx.recyclerview.widget.g(fVar3.f2099a);
                    ArrayDeque arrayDeque = new ArrayDeque();
                    ArrayList arrayList = (ArrayList) uVar2.f2288e;
                    int size = arrayList.size() - 1;
                    int i15 = uVar2.f2285b;
                    int i16 = uVar2.f2287d;
                    int i17 = i15;
                    while (size >= 0) {
                        androidx.recyclerview.widget.t tVar = (androidx.recyclerview.widget.t) arrayList.get(size);
                        int i18 = tVar.f2275a;
                        int i19 = tVar.f2277c;
                        int i20 = i18 + i19;
                        int i21 = tVar.f2276b;
                        int i22 = i21 + i19;
                        while (true) {
                            int[] iArr = (int[]) uVar2.f2289f;
                            ArrayList arrayList2 = arrayList;
                            androidx.recyclerview.widget.c cVar = (androidx.recyclerview.widget.c) uVar2.f2291h;
                            if (i17 > i20) {
                                i17--;
                                int i23 = iArr[i17];
                                if ((i23 & 12) != 0) {
                                    i12 = i20;
                                    int i24 = i23 >> 4;
                                    fVar = fVar3;
                                    v vVarA = androidx.recyclerview.widget.u.a(arrayDeque, i24, false);
                                    if (vVarA != null) {
                                        int i25 = (i15 - vVarA.f2318b) - 1;
                                        gVar.c(i17, i25);
                                        if ((i23 & 4) != 0) {
                                            cVar.c(i17, i24);
                                            gVar.b(i25, 1);
                                        }
                                    } else {
                                        arrayDeque.add(new v(i17, (i15 - i17) - 1, true));
                                    }
                                } else {
                                    fVar = fVar3;
                                    i12 = i20;
                                    if (gVar.f2120b != 2 || (i13 = gVar.f2121c) < i17 || i13 > i17 + 1) {
                                        gVar.a();
                                        gVar.f2121c = i17;
                                        gVar.f2122d = 1;
                                        gVar.f2120b = 2;
                                    } else {
                                        gVar.f2122d++;
                                        gVar.f2121c = i17;
                                    }
                                    i15--;
                                }
                                arrayList = arrayList2;
                                i20 = i12;
                                fVar3 = fVar;
                            } else {
                                androidx.recyclerview.widget.f fVar4 = fVar3;
                                int i26 = i16;
                                while (i26 > i22) {
                                    i26--;
                                    int i27 = ((int[]) uVar2.f2290g)[i26];
                                    if ((i27 & 12) != 0) {
                                        int i28 = i27 >> 4;
                                        i10 = i22;
                                        uVar = uVar2;
                                        v vVarA2 = androidx.recyclerview.widget.u.a(arrayDeque, i28, true);
                                        if (vVarA2 == null) {
                                            arrayDeque.add(new v(i26, i15 - i17, false));
                                        } else {
                                            gVar.c((i15 - vVarA2.f2318b) - 1, i17);
                                            if ((i27 & 4) != 0) {
                                                cVar.c(i28, i26);
                                                gVar.b(i17, 1);
                                            }
                                        }
                                    } else {
                                        i10 = i22;
                                        uVar = uVar2;
                                        if (gVar.f2120b != 1 || i17 < (i11 = gVar.f2121c)) {
                                            gVar.a();
                                            gVar.f2121c = i17;
                                            gVar.f2122d = 1;
                                            gVar.f2120b = 1;
                                            i15++;
                                        } else {
                                            int i29 = gVar.f2122d;
                                            if (i17 <= i11 + i29) {
                                                gVar.f2122d = i29 + 1;
                                                gVar.f2121c = Math.min(i17, i11);
                                            }
                                            i15++;
                                        }
                                    }
                                    uVar2 = uVar;
                                    i22 = i10;
                                }
                                androidx.recyclerview.widget.u uVar3 = uVar2;
                                i17 = tVar.f2275a;
                                int i30 = i17;
                                int i31 = i21;
                                for (int i32 = 0; i32 < i19; i32++) {
                                    if ((iArr[i30] & 15) == 2) {
                                        cVar.c(i30, i31);
                                        gVar.b(i30, 1);
                                    }
                                    i30++;
                                    i31++;
                                }
                                size--;
                                uVar2 = uVar3;
                                i16 = i21;
                                arrayList = arrayList2;
                                fVar3 = fVar4;
                            }
                        }
                    }
                    gVar.a();
                    fVar3.a(list, (Runnable) u1Var.f1409e);
                    return;
                }
                return;
            case 2:
                ArrayList arrayList3 = (ArrayList) this.f18972b;
                Iterator it = arrayList3.iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    s sVar = (s) this.f18973c;
                    if (!zHasNext) {
                        arrayList3.clear();
                        sVar.f2255n.remove(arrayList3);
                        return;
                    }
                    q qVar = (q) it.next();
                    sVar.getClass();
                    RecyclerView.ViewHolder viewHolder = qVar.f2226a;
                    View view3 = viewHolder == null ? null : viewHolder.itemView;
                    RecyclerView.ViewHolder viewHolder2 = qVar.f2227b;
                    View view4 = viewHolder2 != null ? viewHolder2.itemView : null;
                    ArrayList arrayList4 = sVar.r;
                    long j10 = sVar.f2283f;
                    if (view3 != null) {
                        ViewPropertyAnimator duration = view3.animate().setDuration(j10);
                        arrayList4.add(qVar.f2226a);
                        duration.translationX(qVar.f2230e - qVar.f2228c);
                        duration.translationY(qVar.f2231f - qVar.f2229d);
                        duration.alpha(0.0f).setListener(new androidx.recyclerview.widget.o(sVar, qVar, duration, view3)).start();
                    }
                    if (view4 != null) {
                        ViewPropertyAnimator viewPropertyAnimatorAnimate = view4.animate();
                        arrayList4.add(qVar.f2227b);
                        viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(j10).alpha(1.0f).setListener(new p(sVar, qVar, viewPropertyAnimatorAnimate, view4)).start();
                    }
                }
            case 3:
                o5.v vVarA3 = o5.v.a();
                vVarA3.getClass();
                a6.q.a();
                vVarA3.f11635d.set(true);
                ((com.bumptech.glide.manager.d) this.f18973c).f3385b.f3387b = true;
                ((com.bumptech.glide.manager.d) this.f18973c).f3384a.getViewTreeObserver().removeOnDrawListener((com.bumptech.glide.manager.d) this.f18972b);
                ((com.bumptech.glide.manager.d) this.f18973c).f3385b.f3386a.clear();
                return;
            case 4:
                MyDb.get().addList((ArrayList) this.f18972b);
                ((z) this.f18973c).f4161f.decrementAndGet();
                return;
            case 5:
                b();
                return;
            case 6:
                d9.b bVar = (d9.b) this.f18973c;
                bVar.f4511e.g0((v3.f) this.f18972b);
                bVar.f4511e.getClass();
                return;
            case 7:
                d9.b bVar2 = (d9.b) this.f18973c;
                bVar2.f4511e.g0((v3.f) this.f18972b);
                bVar2.f4511e.getClass();
                return;
            case 8:
                d9.b bVar3 = (d9.b) this.f18973c;
                bVar3.f4511e.g0((v3.f) this.f18972b);
                bVar3.f4511e.getClass();
                return;
            case 9:
                d9.b bVar4 = (d9.b) this.f18973c;
                bVar4.f4511e.g0((v3.f) this.f18972b);
                bVar4.f4511e.getClass();
                return;
            case 10:
                d9.b bVar5 = (d9.b) this.f18973c;
                bVar5.f4511e.g0((v3.f) this.f18972b);
                bVar5.f4511e.getClass();
                return;
            case 11:
                dg.a aVar = (dg.a) this.f18973c;
                ExecutorService executorService = (ExecutorService) aVar.f4639c;
                try {
                    aVar.d((g1) this.f18972b, (cg.a) aVar.f4638b);
                } catch (wf.a unused) {
                } catch (Throwable th3) {
                    executorService.shutdown();
                    throw th3;
                }
                executorService.shutdown();
                return;
            case 12:
                k5.b bVar6 = (k5.b) this.f18973c;
                if (bVar6.f10170d) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    ((Runnable) this.f18972b).run();
                    return;
                } catch (Throwable unused2) {
                    bVar6.f10169c.getClass();
                    return;
                }
            case 13:
                i iVarL = ((kf.d) this.f18972b).L();
                if (iVarL == null) {
                    throw new IllegalStateException("No pending post available");
                }
                ((e) this.f18973c).d(iVarL);
                return;
            case 14:
                ((m0.f) this.f18972b).f10734a = this.f18973c;
                return;
            case 15:
                ((Application) this.f18972b).unregisterActivityLifecycleCallbacks((m0.f) this.f18973c);
                return;
            case 16:
                try {
                    Method method = m0.g.f10745d;
                    Object obj = this.f18973c;
                    Object obj2 = this.f18972b;
                    if (method != null) {
                        method.invoke(obj2, obj, Boolean.FALSE, "AppCompat recreation");
                    } else {
                        m0.g.f10746e.invoke(obj2, obj, Boolean.FALSE);
                    }
                    return;
                } catch (RuntimeException e10) {
                    if (e10.getClass() == RuntimeException.class && e10.getMessage() != null && e10.getMessage().startsWith("Unable to stop")) {
                        throw e10;
                    }
                    return;
                } catch (Throwable unused3) {
                    return;
                }
            case 17:
                nh.b bVar7 = ((m9.d) this.f18973c).f11008b;
                if (bVar7 != null) {
                    bVar7.r0((k9.d) this.f18972b);
                    return;
                }
                return;
            case 18:
                ((mc.p) this.f18973c).f11134a.b((mc.o) this.f18972b);
                return;
            case 19:
                ((oc.u) this.f18972b).f11761d = true;
                ((oc.v) this.f18973c).f11762a.remove((oc.u) this.f18972b);
                return;
            case 20:
                c();
                return;
            case 21:
                o0.b bVar8 = (o0.b) ((y) this.f18972b).f10629b;
                if (bVar8 != null) {
                    bVar8.i((Typeface) this.f18973c);
                    return;
                }
                return;
            case 22:
                ((u0.d) this.f18972b).accept(this.f18973c);
                return;
            case 23:
                f1.d dVar2 = ((SwipeDismissBehavior) this.f18973c).f3454a;
                if (dVar2 == null || !dVar2.f()) {
                    return;
                }
                WeakHashMap weakHashMap = b1.f17953a;
                j0.m((View) this.f18972b, this);
                return;
            case 24:
                ActivityDownload activityDownload = (ActivityDownload) this.f18973c;
                boolean z = activityDownload.f3972h0;
                u5 u5Var = (u5) this.f18972b;
                if (z || u5Var.f18352i) {
                    u5Var.f18346c = "已取消";
                    ActivityDownload.y(activityDownload, u5Var);
                    return;
                }
                if (u5Var.f18349f.toLowerCase().endsWith(".apk")) {
                    try {
                        u5Var.f18349f = ActivityGjDiy.x(u5Var.f18349f);
                    } catch (Exception unused4) {
                    }
                }
                if (u5Var.f18349f.endsWith(".gj")) {
                    DecimalFormat decimalFormat = k.f4034u0;
                    if (!j.f4033a.f4058m) {
                        u5Var.f18346c = "安装失败";
                        u5Var.f18351h = "安装此类文件需要系统写入权，否则无权安装";
                        ActivityDownload.y(activityDownload, u5Var);
                        return;
                    }
                    try {
                        o.R(new File(u5Var.f18349f));
                        u5Var.f18346c = "安装成功";
                        u5Var.f18351h = "";
                    } catch (Exception e11) {
                        u5Var.f18346c = "安装失败";
                        u5Var.f18351h = String.valueOf(e11.getMessage());
                    }
                    ActivityDownload.y(activityDownload, u5Var);
                    return;
                }
                w wVar = com.yunpan.appmanage.util.v.f4106a;
                int i33 = wVar.T;
                if (i33 == 2 || i33 == 3) {
                    u5Var.f18346c = "安装中";
                    u5Var.f18351h = "采用[多屏互动]进行安装";
                    ActivityDownload.y(activityDownload, u5Var);
                    l lVarG = d.G(u5Var.f18349f, new i1(i14, this));
                    if (lVarG.a()) {
                        u5Var.f18346c = "安装成功";
                        u5Var.f18351h = "";
                    } else {
                        u5Var.f18346c = "安装失败";
                        u5Var.f18351h = lVarG.f11049c;
                    }
                    ActivityDownload.y(activityDownload, u5Var);
                    return;
                }
                if (!wVar.f4152y) {
                    b0.f5652a.getClass();
                    if (w0.Q()) {
                        u5Var.f18346c = "安装中";
                        String str = g0.f5682a.f() ? "root" : AdbMdns.SERVICE_TYPE_ADB;
                        if (!w0.P()) {
                            str = "pm";
                        }
                        u5Var.f18351h = g.b.A("采用【", str, "】命令进行安装");
                        ActivityDownload.y(activityDownload, u5Var);
                        String str2 = u5Var.f18349f;
                        DecimalFormat decimalFormat2 = k.f4034u0;
                        x xVarY = w0.Y(j.f4033a.f4060n, str2);
                        if (xVarY.f5762a) {
                            u5Var.f18346c = "安装成功";
                            if (wVar.J) {
                                u5Var.f18346c = "安装成功,请重启车机";
                            }
                            u5Var.f18351h = "";
                            ActivityDownload.y(activityDownload, u5Var);
                            return;
                        }
                        if (xVarY.f5763b == -111) {
                            u5Var.f18346c = "安装失败";
                            u5Var.f18351h = xVarY.f5764c;
                            ActivityDownload.y(activityDownload, u5Var);
                            return;
                        }
                        u5Var.f18346c = "调用安装器";
                        StringBuilder sbB = d0.f.b(str, "安装失败,开始调用安装器！失败原因：");
                        sbB.append(xVarY.f5764c);
                        u5Var.f18351h = sbB.toString();
                        ActivityDownload.y(activityDownload, u5Var);
                        if (wVar.f4112c0 != 0) {
                            com.bumptech.glide.c.I(activityDownload.A, u5Var.f18349f);
                            return;
                        }
                        String strD = h.f11033a.d(u5Var.f18349f);
                        if (strD.isEmpty()) {
                            u5Var.f18346c = "安装成功";
                            u5Var.f18351h = "";
                            ActivityDownload.y(activityDownload, u5Var);
                            return;
                        } else {
                            u5Var.f18346c = "安装失败";
                            u5Var.f18351h = strD;
                            ActivityDownload.y(activityDownload, u5Var);
                            return;
                        }
                    }
                }
                if (wVar.f4112c0 != 0) {
                    u5Var.f18346c = "调用安装器";
                    u5Var.f18351h = "调用系统安装器：请手动确认安装应用";
                    ActivityDownload.y(activityDownload, u5Var);
                    com.bumptech.glide.c.I(activityDownload.A, u5Var.f18349f);
                    return;
                }
                u5Var.f18346c = "安装中";
                u5Var.f18351h = "采用[管家安装器]进行安装";
                ActivityDownload.y(activityDownload, u5Var);
                String strD2 = h.f11033a.d(u5Var.f18349f);
                if (strD2.isEmpty()) {
                    u5Var.f18346c = "安装成功";
                    u5Var.f18351h = "";
                } else {
                    u5Var.f18346c = "安装失败";
                    u5Var.f18351h = strD2;
                }
                ActivityDownload.y(activityDownload, u5Var);
                return;
        }
        while (!((z9.a) this.f18973c).f19490c.isInterrupted()) {
            try {
                z9.e eVar = ((z9.a) this.f18973c).f19488a;
                byteBufferOrder = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
                eVar.r(24, byteBufferOrder.array());
                if (byteBufferOrder.getInt(12) != 0) {
                    bArr = new byte[byteBufferOrder.getInt(12)];
                    eVar.r(byteBufferOrder.getInt(12), bArr);
                } else {
                    bArr = null;
                }
                byte[] bArr2 = z9.c.f19501a;
            } catch (Exception e12) {
                e12.printStackTrace();
            }
            if (byteBufferOrder.getInt(0) == (byteBufferOrder.getInt(20) ^ (-1)) && (byteBufferOrder.getInt(12) == 0 || i8.m(bArr) == byteBufferOrder.getInt(16))) {
                switch (byteBufferOrder.getInt(0)) {
                    case AdbProtocol.A_CLSE /* 1163086915 */:
                    case AdbProtocol.A_WRTE /* 1163154007 */:
                    case AdbProtocol.A_OKAY /* 1497451343 */:
                        if (((z9.a) this.f18972b).f19492e && (dVar = (z9.d) ((z9.a) this.f18973c).f19496i.get(Integer.valueOf(byteBufferOrder.getInt(8)))) != null) {
                            synchronized (dVar) {
                                try {
                                    if (byteBufferOrder.getInt(0) == 1497451343) {
                                        dVar.f19504c = byteBufferOrder.getInt(4);
                                        dVar.f19505d.set(true);
                                        dVar.notify();
                                    } else if (byteBufferOrder.getInt(0) == 1163154007) {
                                        dVar.r(bArr);
                                        dVar.L();
                                    } else if (byteBufferOrder.getInt(0) == 1163086915) {
                                        ((z9.a) this.f18972b).f19496i.remove(Integer.valueOf(byteBufferOrder.getInt(8)));
                                        dVar.A();
                                    }
                                } finally {
                                }
                            }
                            break;
                        }
                        break;
                    case AdbProtocol.A_AUTH /* 1213486401 */:
                        if (byteBufferOrder.getInt(4) == 1) {
                            z9.a aVar2 = (z9.a) this.f18972b;
                            if (aVar2.f19495h) {
                                i8Var = new i8(AdbProtocol.A_AUTH, 3, 0, aVar2.f19494g.a());
                            } else {
                                z9.b bVar9 = aVar2.f19494g;
                                bVar9.getClass();
                                Cipher cipher = Cipher.getInstance("RSA/ECB/NoPadding");
                                cipher.init(1, bVar9.f19499a.getPrivate());
                                cipher.update(z9.b.f19498d);
                                i8Var = new i8(AdbProtocol.A_AUTH, 2, 0, cipher.doFinal(bArr));
                                ((z9.a) this.f18972b).f19495h = true;
                            }
                            z9.e eVar2 = ((z9.a) this.f18972b).f19488a;
                            eVar2.getClass();
                            eVar2.J(((ByteBuffer) i8Var.f15741b).array());
                            byte[] bArr3 = (byte[]) i8Var.f15742c;
                            if (bArr3 != null) {
                                eVar2.J(bArr3);
                                break;
                            } else {
                                break;
                            }
                        } else {
                            continue;
                        }
                    case AdbProtocol.A_CNXN /* 1314410051 */:
                        synchronized (((z9.a) this.f18972b)) {
                            ((z9.a) this.f18972b).f19493f = byteBufferOrder.getInt(8);
                            z9.a aVar3 = (z9.a) this.f18972b;
                            aVar3.f19492e = true;
                            aVar3.notifyAll();
                        }
                        break;
                    default:
                        continue;
                }
                e12.printStackTrace();
                synchronized (((z9.a) this.f18972b)) {
                    HashMap map = ((z9.a) this.f18973c).f19496i;
                    Iterator it2 = map.values().iterator();
                    while (it2.hasNext()) {
                        try {
                            ((z9.d) it2.next()).close();
                        } catch (IOException unused5) {
                        }
                    }
                    map.clear();
                    ((z9.a) this.f18972b).notifyAll();
                    ((z9.a) this.f18972b).f19491d = false;
                }
                return;
            }
        }
        synchronized (((z9.a) this.f18972b)) {
        }
    }

    public String toString() {
        switch (this.f18971a) {
            case 0:
                s4.a aVar = new s4.a(b.class.getSimpleName());
                kf.d dVar = new kf.d(18, false);
                ((kf.d) aVar.f14295d).f10287c = dVar;
                aVar.f14295d = dVar;
                dVar.f10286b = (v3.f) this.f18973c;
                return aVar.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ b(Object obj, int i10, Object obj2) {
        this.f18971a = i10;
        this.f18972b = obj;
        this.f18973c = obj2;
    }

    public b(e eVar) {
        this.f18971a = 13;
        this.f18973c = eVar;
        this.f18972b = new kf.d(1, false);
    }

    public b(SwipeDismissBehavior swipeDismissBehavior, View view, boolean z) {
        this.f18971a = 23;
        this.f18973c = swipeDismissBehavior;
        this.f18972b = view;
    }
}
