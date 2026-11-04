package qa;

import a9.f0;
import com.hierynomus.smbj.SMBClient;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.auth.AuthenticationContext;
import com.hierynomus.smbj.connection.Connection;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.DiskShare;
import com.yunpan.appmanage.bean.FtpCopyProgressBean;
import com.yunpan.appmanage.bean.WpPathBean;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import ta.q;
import x9.n5;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13180a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FtpCopyProgressBean f13181b;

    public /* synthetic */ d(FtpCopyProgressBean ftpCopyProgressBean, int i10) {
        this.f13180a = i10;
        this.f13181b = ftpCopyProgressBean;
    }

    /* JADX WARN: Removed duplicated region for block: B:97:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0203  */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(mc.b bVar) throws Throwable {
        String strM;
        String strQ;
        String strM2;
        String strN;
        String strM3;
        String strN2;
        String strM4;
        String strK;
        Exception e7;
        f0 f0VarS;
        Exception e10;
        f0 f0VarS2;
        Connection connectionConnect;
        Session sessionAuthenticate;
        AuthenticationContext authenticationContext;
        DiskShare diskShare;
        String strC;
        String strC2;
        switch (this.f13180a) {
            case 0:
                FtpCopyProgressBean ftpCopyProgressBean = this.f13181b;
                ftpCopyProgressBean.isStop = false;
                Iterator<WpPathBean> it = ftpCopyProgressBean.paths.iterator();
                while (true) {
                    if (it.hasNext()) {
                        WpPathBean next = it.next();
                        if (!next.is_dir) {
                            ftpCopyProgressBean.filePaths.add(next);
                        } else if (!com.bumptech.glide.c.t(ftpCopyProgressBean, next)) {
                            strQ = "创建目录失败";
                        }
                    } else {
                        ftpCopyProgressBean.file_count = ftpCopyProgressBean.filePaths.size();
                        Iterator<WpPathBean> it2 = ftpCopyProgressBean.filePaths.iterator();
                        while (it2.hasNext()) {
                            ftpCopyProgressBean.size_count.addAndGet(it2.next().size_long);
                        }
                        int i10 = ftpCopyProgressBean.file_count;
                        if (i10 == 0) {
                            bVar.b();
                            return;
                        }
                        if (i10 != 1) {
                            ftpCopyProgressBean.taskCount.set(0);
                            ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(3);
                            for (WpPathBean wpPathBean : ftpCopyProgressBean.filePaths) {
                                ftpCopyProgressBean.taskCount.incrementAndGet();
                                executorServiceNewFixedThreadPool.execute(new c(ftpCopyProgressBean, wpPathBean, 0));
                            }
                            while (ftpCopyProgressBean.taskCount.get() > 0) {
                                Thread.sleep(100L);
                            }
                            bVar.b();
                            return;
                        }
                        ftpCopyProgressBean.taskCount.incrementAndGet();
                        if (ftpCopyProgressBean.rootDirPath_form.length() == 1) {
                            strM = ftpCopyProgressBean.rootDirPath_to + ftpCopyProgressBean.filePaths.get(0).path;
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(ftpCopyProgressBean.rootDirPath_to);
                            strM = q.m(ftpCopyProgressBean.rootDirPath_form, ftpCopyProgressBean.filePaths.get(0).path, sb2);
                        }
                        strQ = com.bumptech.glide.c.q(ftpCopyProgressBean, ftpCopyProgressBean.filePaths.get(0).path, strM);
                        if (strQ.isEmpty()) {
                            bVar.b();
                            return;
                        }
                    }
                }
                android.support.v4.media.session.a.B(strQ, bVar);
                return;
            case 1:
                FtpCopyProgressBean ftpCopyProgressBean2 = this.f13181b;
                ftpCopyProgressBean2.isStop = false;
                Iterator<WpPathBean> it3 = ftpCopyProgressBean2.paths.iterator();
                while (true) {
                    if (it3.hasNext()) {
                        WpPathBean next2 = it3.next();
                        if (!next2.is_dir) {
                            ftpCopyProgressBean2.filePaths.add(next2);
                        } else if (!com.bumptech.glide.c.u(ftpCopyProgressBean2, next2)) {
                            strN = "创建目录失败";
                        }
                    } else {
                        ftpCopyProgressBean2.file_count = ftpCopyProgressBean2.filePaths.size();
                        Iterator<WpPathBean> it4 = ftpCopyProgressBean2.filePaths.iterator();
                        while (it4.hasNext()) {
                            ftpCopyProgressBean2.size_count.addAndGet(it4.next().size_long);
                        }
                        int i11 = ftpCopyProgressBean2.file_count;
                        if (i11 == 0) {
                            bVar.b();
                            return;
                        }
                        if (i11 != 1) {
                            ftpCopyProgressBean2.taskCount.set(0);
                            ExecutorService executorServiceNewFixedThreadPool2 = Executors.newFixedThreadPool(3);
                            for (WpPathBean wpPathBean2 : ftpCopyProgressBean2.filePaths) {
                                ftpCopyProgressBean2.taskCount.incrementAndGet();
                                executorServiceNewFixedThreadPool2.execute(new c(ftpCopyProgressBean2, wpPathBean2, 1));
                            }
                            while (ftpCopyProgressBean2.taskCount.get() > 0) {
                                Thread.sleep(100L);
                            }
                            bVar.b();
                            return;
                        }
                        ftpCopyProgressBean2.taskCount.incrementAndGet();
                        if (ftpCopyProgressBean2.rootDirPath_form.length() == 1) {
                            strM2 = ftpCopyProgressBean2.rootDirPath_to + ftpCopyProgressBean2.filePaths.get(0).path;
                        } else {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(ftpCopyProgressBean2.rootDirPath_to);
                            strM2 = q.m(ftpCopyProgressBean2.rootDirPath_form, ftpCopyProgressBean2.filePaths.get(0).path, sb3);
                        }
                        strN = com.bumptech.glide.c.n(ftpCopyProgressBean2, ftpCopyProgressBean2.filePaths.get(0).path, strM2);
                        if (strN.isEmpty()) {
                            bVar.b();
                            return;
                        }
                    }
                }
                android.support.v4.media.session.a.B(strN, bVar);
                return;
            case 2:
                FtpCopyProgressBean ftpCopyProgressBean3 = this.f13181b;
                ftpCopyProgressBean3.isStop = false;
                Iterator<WpPathBean> it5 = ftpCopyProgressBean3.paths.iterator();
                while (true) {
                    if (it5.hasNext()) {
                        WpPathBean next3 = it5.next();
                        if (!next3.is_dir) {
                            ftpCopyProgressBean3.filePaths.add(next3);
                        } else if (!com.bumptech.glide.d.p(ftpCopyProgressBean3, next3)) {
                            strN2 = "创建目录失败";
                        }
                    } else {
                        ftpCopyProgressBean3.file_count = ftpCopyProgressBean3.filePaths.size();
                        Iterator<WpPathBean> it6 = ftpCopyProgressBean3.filePaths.iterator();
                        while (it6.hasNext()) {
                            ftpCopyProgressBean3.size_count.addAndGet(it6.next().size_long);
                        }
                        int i12 = ftpCopyProgressBean3.file_count;
                        if (i12 == 0) {
                            bVar.b();
                            return;
                        }
                        if (i12 != 1) {
                            ftpCopyProgressBean3.taskCount.set(0);
                            ExecutorService executorServiceNewFixedThreadPool3 = Executors.newFixedThreadPool(3);
                            for (WpPathBean wpPathBean3 : ftpCopyProgressBean3.filePaths) {
                                ftpCopyProgressBean3.taskCount.incrementAndGet();
                                executorServiceNewFixedThreadPool3.execute(new c(ftpCopyProgressBean3, wpPathBean3, bVar, 2));
                            }
                            while (ftpCopyProgressBean3.taskCount.get() > 0) {
                                Thread.sleep(100L);
                            }
                            bVar.b();
                            return;
                        }
                        ftpCopyProgressBean3.taskCount.incrementAndGet();
                        if (ftpCopyProgressBean3.rootDirPath_form.length() == 1) {
                            strM3 = ftpCopyProgressBean3.rootDirPath_to + ftpCopyProgressBean3.filePaths.get(0).path;
                        } else {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append(ftpCopyProgressBean3.rootDirPath_to);
                            strM3 = q.m(ftpCopyProgressBean3.rootDirPath_form, ftpCopyProgressBean3.filePaths.get(0).path, sb4);
                        }
                        strN2 = com.bumptech.glide.d.n(ftpCopyProgressBean3, ftpCopyProgressBean3.filePaths.get(0).path, strM3);
                        if (strN2.isEmpty()) {
                            bVar.b();
                            return;
                        }
                    }
                }
                android.support.v4.media.session.a.B(strN2, bVar);
                return;
            case 3:
                FtpCopyProgressBean ftpCopyProgressBean4 = this.f13181b;
                ftpCopyProgressBean4.isStop = false;
                Iterator<WpPathBean> it7 = ftpCopyProgressBean4.paths.iterator();
                while (true) {
                    if (it7.hasNext()) {
                        WpPathBean next4 = it7.next();
                        if (!next4.is_dir) {
                            ftpCopyProgressBean4.filePaths.add(next4);
                        } else if (!com.bumptech.glide.d.q(ftpCopyProgressBean4, next4)) {
                            strK = "创建目录失败";
                        }
                    } else {
                        ftpCopyProgressBean4.file_count = ftpCopyProgressBean4.filePaths.size();
                        Iterator<WpPathBean> it8 = ftpCopyProgressBean4.filePaths.iterator();
                        while (it8.hasNext()) {
                            ftpCopyProgressBean4.size_count.addAndGet(it8.next().size_long);
                        }
                        int i13 = ftpCopyProgressBean4.file_count;
                        if (i13 == 0) {
                            bVar.b();
                            return;
                        }
                        if (i13 != 1) {
                            ftpCopyProgressBean4.taskCount.set(0);
                            ExecutorService executorServiceNewFixedThreadPool4 = Executors.newFixedThreadPool(3);
                            for (WpPathBean wpPathBean4 : ftpCopyProgressBean4.filePaths) {
                                ftpCopyProgressBean4.taskCount.incrementAndGet();
                                executorServiceNewFixedThreadPool4.execute(new c(ftpCopyProgressBean4, wpPathBean4, bVar, 3));
                            }
                            while (ftpCopyProgressBean4.taskCount.get() > 0) {
                                Thread.sleep(100L);
                            }
                            bVar.b();
                            return;
                        }
                        ftpCopyProgressBean4.taskCount.incrementAndGet();
                        if (ftpCopyProgressBean4.rootDirPath_form.length() == 1) {
                            strM4 = ftpCopyProgressBean4.rootDirPath_to + ftpCopyProgressBean4.filePaths.get(0).path;
                        } else {
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append(ftpCopyProgressBean4.rootDirPath_to);
                            strM4 = q.m(ftpCopyProgressBean4.rootDirPath_form, ftpCopyProgressBean4.filePaths.get(0).path, sb5);
                        }
                        strK = com.bumptech.glide.d.k(ftpCopyProgressBean4, ftpCopyProgressBean4.filePaths.get(0).path, strM4);
                        if (strK.isEmpty()) {
                            bVar.b();
                            return;
                        }
                    }
                }
                android.support.v4.media.session.a.B(strK, bVar);
                return;
            case 4:
                FtpCopyProgressBean ftpCopyProgressBean5 = this.f13181b;
                ftpCopyProgressBean5.isStop = false;
                f0 f0Var = null;
                try {
                    f0VarS = p000if.a.S(ftpCopyProgressBean5.userInfo);
                    try {
                        try {
                            f0VarS.b();
                            throw null;
                        } catch (Exception e11) {
                            e7 = e11;
                            e7.printStackTrace();
                            bVar.d(new Exception("创建目录失败"));
                            if (f0VarS == null || !f0VarS.f487h) {
                                return;
                            }
                            f0VarS.c();
                            return;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        f0Var = f0VarS;
                        if (f0Var != null && f0Var.f487h) {
                            f0Var.c();
                        }
                        throw th;
                    }
                } catch (Exception e12) {
                    e7 = e12;
                    f0VarS = null;
                } catch (Throwable th3) {
                    th = th3;
                    if (f0Var != null) {
                        f0Var.c();
                    }
                    throw th;
                }
                break;
            case 5:
                FtpCopyProgressBean ftpCopyProgressBean6 = this.f13181b;
                ftpCopyProgressBean6.isStop = false;
                f0 f0Var2 = null;
                try {
                    f0VarS2 = p000if.a.S(ftpCopyProgressBean6.userInfo);
                    try {
                        try {
                            f0VarS2.b();
                            throw null;
                        } catch (Exception e13) {
                            e10 = e13;
                            e10.printStackTrace();
                            bVar.d(new Exception("创建目录失败"));
                            if (f0VarS2 == null || !f0VarS2.f487h) {
                                return;
                            }
                            f0VarS2.c();
                            return;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        f0Var2 = f0VarS2;
                        if (f0Var2 != null && f0Var2.f487h) {
                            f0Var2.c();
                        }
                        throw th;
                    }
                } catch (Exception e14) {
                    e10 = e14;
                    f0VarS2 = null;
                } catch (Throwable th5) {
                    th = th5;
                    if (f0Var2 != null) {
                        f0Var2.c();
                    }
                    throw th;
                }
                break;
            case 6:
                FtpCopyProgressBean ftpCopyProgressBean7 = this.f13181b;
                ftpCopyProgressBean7.isStop = false;
                if (ftpCopyProgressBean7.userInfo.f18308u) {
                    for (WpPathBean wpPathBean5 : ftpCopyProgressBean7.paths) {
                        if (wpPathBean5.is_dir) {
                            f.h(ftpCopyProgressBean7, wpPathBean5);
                        } else {
                            ftpCopyProgressBean7.filePaths.add(wpPathBean5);
                        }
                    }
                } else {
                    String strSubstring = ftpCopyProgressBean7.paths.get(0).path.substring(1, ftpCopyProgressBean7.paths.get(0).path.indexOf("/", 1));
                    SmbConfig.Builder builderWithMultiProtocolNegotiate = SmbConfig.builder().withMultiProtocolNegotiate(true);
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    SMBClient sMBClient = new SMBClient(builderWithMultiProtocolNegotiate.withTimeout(16L, timeUnit).withSoTimeout(16L, timeUnit).build());
                    DiskShare diskShare2 = null;
                    try {
                        try {
                            n5 n5Var = ftpCopyProgressBean7.userInfo;
                            connectionConnect = sMBClient.connect(n5Var.f18292c, n5Var.f18293d);
                            try {
                                if (ftpCopyProgressBean7.userInfo.f18294e.isEmpty()) {
                                    authenticationContext = AuthenticationContext.guest();
                                } else {
                                    n5 n5Var2 = ftpCopyProgressBean7.userInfo;
                                    authenticationContext = new AuthenticationContext(n5Var2.f18294e, n5Var2.f18295f.toCharArray(), ftpCopyProgressBean7.userInfo.f18309v);
                                }
                                sessionAuthenticate = connectionConnect.authenticate(authenticationContext);
                                try {
                                    try {
                                        diskShare = (DiskShare) sessionAuthenticate.connectShare(strSubstring);
                                    } catch (Exception e15) {
                                        e = e15;
                                    }
                                } catch (Throwable th6) {
                                    th = th6;
                                }
                                try {
                                    for (WpPathBean wpPathBean6 : ftpCopyProgressBean7.paths) {
                                        if (wpPathBean6.is_dir) {
                                            f.j(ftpCopyProgressBean7, diskShare, wpPathBean6);
                                        } else {
                                            ftpCopyProgressBean7.filePaths.add(wpPathBean6);
                                        }
                                    }
                                    if (diskShare != null) {
                                        try {
                                            diskShare.close();
                                        } catch (Exception unused) {
                                        }
                                    }
                                    try {
                                        sessionAuthenticate.close();
                                    } catch (Exception unused2) {
                                    }
                                    connectionConnect.close();
                                } catch (Exception e16) {
                                    diskShare2 = diskShare;
                                    e = e16;
                                    f.i(e);
                                    if (diskShare2 != null) {
                                        try {
                                            diskShare2.close();
                                        } catch (Exception unused3) {
                                        }
                                    }
                                    if (sessionAuthenticate != null) {
                                        try {
                                            sessionAuthenticate.close();
                                        } catch (Exception unused4) {
                                        }
                                    }
                                    if (connectionConnect != null) {
                                        connectionConnect.close();
                                    }
                                    sMBClient.close();
                                    if (ftpCopyProgressBean7.isStop) {
                                    }
                                    android.support.v4.media.session.a.B(strC, bVar);
                                    return;
                                } catch (Throwable th7) {
                                    th = th7;
                                    diskShare2 = diskShare;
                                    if (diskShare2 != null) {
                                        try {
                                            diskShare2.close();
                                        } catch (Exception unused5) {
                                        }
                                    }
                                    if (sessionAuthenticate != null) {
                                        try {
                                            sessionAuthenticate.close();
                                        } catch (Exception unused6) {
                                        }
                                    }
                                    if (connectionConnect != null) {
                                        try {
                                            connectionConnect.close();
                                        } catch (Exception unused7) {
                                        }
                                    }
                                    try {
                                        sMBClient.close();
                                        throw th;
                                    } catch (Exception unused8) {
                                        throw th;
                                    }
                                }
                            } catch (Exception e17) {
                                e = e17;
                                sessionAuthenticate = null;
                            } catch (Throwable th8) {
                                th = th8;
                                sessionAuthenticate = null;
                            }
                        } catch (Exception unused9) {
                        }
                    } catch (Exception e18) {
                        e = e18;
                        connectionConnect = null;
                        sessionAuthenticate = null;
                    } catch (Throwable th9) {
                        th = th9;
                        connectionConnect = null;
                        sessionAuthenticate = null;
                    }
                    try {
                        sMBClient.close();
                    } catch (Exception unused10) {
                    }
                }
                if (ftpCopyProgressBean7.isStop) {
                    ftpCopyProgressBean7.file_count = ftpCopyProgressBean7.filePaths.size();
                    Iterator<WpPathBean> it9 = ftpCopyProgressBean7.filePaths.iterator();
                    while (it9.hasNext()) {
                        ftpCopyProgressBean7.size_count.addAndGet(it9.next().size_long);
                    }
                    int i14 = ftpCopyProgressBean7.file_count;
                    if (i14 == 0) {
                        bVar.b();
                        return;
                    }
                    if (i14 != 1) {
                        ftpCopyProgressBean7.taskCount.set(0);
                        ExecutorService executorServiceNewFixedThreadPool5 = Executors.newFixedThreadPool(4);
                        for (WpPathBean wpPathBean7 : ftpCopyProgressBean7.filePaths) {
                            ftpCopyProgressBean7.taskCount.incrementAndGet();
                            executorServiceNewFixedThreadPool5.execute(new c(ftpCopyProgressBean7, wpPathBean7, 4));
                        }
                        while (ftpCopyProgressBean7.taskCount.get() > 0) {
                            Thread.sleep(100L);
                        }
                        bVar.b();
                        return;
                    }
                    ftpCopyProgressBean7.taskCount.incrementAndGet();
                    strC = f.c(ftpCopyProgressBean7, ftpCopyProgressBean7.filePaths.get(0).path, (ftpCopyProgressBean7.rootDirPath_to + "/" + ftpCopyProgressBean7.filePaths.get(0).path.substring(ftpCopyProgressBean7.rootDirPath_form.length())).replace("//", "/"));
                    if (strC.isEmpty()) {
                        bVar.b();
                        return;
                    }
                } else {
                    strC = "已主动停止下载";
                }
                android.support.v4.media.session.a.B(strC, bVar);
                return;
            default:
                FtpCopyProgressBean ftpCopyProgressBean8 = this.f13181b;
                ftpCopyProgressBean8.isStop = false;
                Iterator<WpPathBean> it10 = ftpCopyProgressBean8.paths.iterator();
                while (true) {
                    if (it10.hasNext()) {
                        WpPathBean next5 = it10.next();
                        if (!next5.is_dir) {
                            ftpCopyProgressBean8.filePaths.add(next5);
                        } else if (!g.d(ftpCopyProgressBean8, next5)) {
                            strC2 = "创建目录失败";
                        }
                    } else {
                        ftpCopyProgressBean8.file_count = ftpCopyProgressBean8.filePaths.size();
                        Iterator<WpPathBean> it11 = ftpCopyProgressBean8.filePaths.iterator();
                        while (it11.hasNext()) {
                            ftpCopyProgressBean8.size_count.addAndGet(it11.next().size_long);
                        }
                        int i15 = ftpCopyProgressBean8.file_count;
                        if (i15 == 0) {
                            bVar.b();
                            return;
                        }
                        if (i15 != 1) {
                            ftpCopyProgressBean8.taskCount.set(0);
                            ExecutorService executorServiceNewFixedThreadPool6 = Executors.newFixedThreadPool(3);
                            for (WpPathBean wpPathBean8 : ftpCopyProgressBean8.filePaths) {
                                ftpCopyProgressBean8.taskCount.incrementAndGet();
                                executorServiceNewFixedThreadPool6.execute(new c(ftpCopyProgressBean8, wpPathBean8));
                            }
                            while (ftpCopyProgressBean8.taskCount.get() > 0) {
                                Thread.sleep(100L);
                            }
                            bVar.b();
                            return;
                        }
                        ftpCopyProgressBean8.taskCount.incrementAndGet();
                        String str = ftpCopyProgressBean8.filePaths.get(0).path;
                        strC2 = g.c(ftpCopyProgressBean8, ftpCopyProgressBean8.filePaths.get(0).path, (ftpCopyProgressBean8.rootDirPath_to + "/" + ftpCopyProgressBean8.filePaths.get(0).path.substring(ftpCopyProgressBean8.rootDirPath_form.length())).replace("//", "/"));
                        if (strC2.isEmpty()) {
                            bVar.b();
                            return;
                        }
                    }
                }
                android.support.v4.media.session.a.B(strC2, bVar);
                return;
        }
    }
}
