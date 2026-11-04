package a2;

import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.AudioTrack;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.SurfaceView;
import android.widget.ImageView;
import android.widget.Toast;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.FileCopyBean;
import com.yunpan.appmanage.db.ApkFileBean;
import com.yunpan.appmanage.db.FileInfoDao;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityTextIflytek;
import ha.h3;
import ha.hb;
import ha.v5;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.io.File;
import java.io.PrintStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import ua.f8;
import ua.g8;
import ua.n7;
import ua.t6;
import x9.f2;
import x9.w3;

/* loaded from: classes.dex */
public final /* synthetic */ class e0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f127a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f128b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f129c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f130d;

    public /* synthetic */ e0(Object obj, Object obj2, Object obj3, int i10) {
        this.f127a = i10;
        this.f128b = obj;
        this.f129c = obj2;
        this.f130d = obj3;
    }

    private final void a() {
        androidx.emoji2.text.n nVar = (androidx.emoji2.text.n) this.f128b;
        a9.o oVar = (a9.o) this.f129c;
        ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.f130d;
        nVar.getClass();
        try {
            androidx.emoji2.text.s sVarN = s1.g.n(nVar.f1123b);
            if (sVarN == null) {
                throw new RuntimeException("EmojiCompat font provider not available on this device.");
            }
            androidx.emoji2.text.r rVar = (androidx.emoji2.text.r) sVarN.f1144a;
            synchronized (rVar.f1138d) {
                rVar.f1140f = threadPoolExecutor;
            }
            sVarN.f1144a.a(new androidx.emoji2.text.m(oVar, threadPoolExecutor));
        } catch (Throwable th2) {
            oVar.S(th2);
            threadPoolExecutor.shutdown();
        }
    }

    private final void b() {
        int i10 = 0;
        int i11 = 1;
        com.yunpan.appmanage.util.h hVar = (com.yunpan.appmanage.util.h) this.f128b;
        String str = (String) this.f129c;
        CountDownLatch countDownLatch = (CountDownLatch) this.f130d;
        hVar.getClass();
        try {
            try {
                if (!hVar.f4027c.get()) {
                    Socket socket = new Socket();
                    try {
                        socket.connect(new InetSocketAddress(str, hVar.f4025a), 500);
                        socket.close();
                        if (!hVar.f4027c.get()) {
                            com.yunpan.appmanage.util.d dVar = new com.yunpan.appmanage.util.d(0L, "未知设备", str, hVar.f4025a);
                            com.yunpan.appmanage.util.h.b(dVar);
                            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                            synchronized (com.yunpan.appmanage.util.j.f4033a.f4043e) {
                                while (true) {
                                    try {
                                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                                        if (i10 >= wVar.f4119g.size()) {
                                            wVar.f4119g.add(dVar);
                                            break;
                                        }
                                        if (!((com.yunpan.appmanage.util.d) wVar.f4119g.get(i10)).f4004b.equals(str)) {
                                            if (dVar.f4006d > 5 && ((com.yunpan.appmanage.util.d) wVar.f4119g.get(i10)).f4006d == dVar.f4006d) {
                                                ((com.yunpan.appmanage.util.d) wVar.f4119g.get(i10)).f4003a = dVar.f4003a;
                                                ((com.yunpan.appmanage.util.d) wVar.f4119g.get(i10)).f4004b = dVar.f4004b;
                                                ((com.yunpan.appmanage.util.d) wVar.f4119g.get(i10)).f4005c = dVar.f4005c;
                                                break;
                                            }
                                            i10++;
                                        } else {
                                            break;
                                        }
                                    } finally {
                                    }
                                }
                            }
                            hVar.f4029e.post(new com.yunpan.appmanage.util.g(hVar, i11));
                        }
                    } catch (Throwable th2) {
                        try {
                            socket.close();
                        } catch (Throwable th3) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                            } catch (Exception unused) {
                            }
                        }
                        throw th2;
                    }
                }
            } finally {
                countDownLatch.countDown();
            }
        } catch (Exception unused2) {
        }
    }

    private final void c() throws InterruptedException {
        com.yunpan.appmanage.util.m mVar = (com.yunpan.appmanage.util.m) this.f128b;
        FileCopyBean fileCopyBean = (FileCopyBean) this.f129c;
        ea.b bVar = (ea.b) this.f130d;
        mVar.getClass();
        for (w3 w3Var : fileCopyBean.fromPaths) {
            if (mVar.f4085e.get()) {
                break;
            }
            if (w3Var.f18366c) {
                mVar.f4083c.incrementAndGet();
                mVar.f4082b.execute(new com.yunpan.appmanage.util.l(mVar, w3Var, fileCopyBean, 0));
            } else {
                if (com.yunpan.appmanage.util.a0.b(w3Var.f18365b)) {
                    if (com.yunpan.appmanage.util.a0.g(fileCopyBean.toDir + w3Var.f18365b.substring(fileCopyBean.fromDir.length()))) {
                        if (!com.yunpan.appmanage.util.a0.d(fileCopyBean.toDir + w3Var.f18365b.substring(fileCopyBean.fromDir.length()))) {
                            mVar.f4085e.set(true);
                        }
                        w3Var.f18373j = "重复";
                        fileCopyBean.isHasRepeatFile.set(true);
                    }
                } else {
                    mVar.f4085e.set(true);
                }
                synchronized (fileCopyBean) {
                    fileCopyBean.files.add(w3Var);
                }
            }
        }
        boolean z = false;
        while (mVar.f4083c.get() != 0) {
            if (!z && mVar.f4085e.get()) {
                mVar.f4082b.shutdown();
                z = true;
            }
            try {
                Thread.sleep(200L);
            } catch (Exception unused) {
            }
        }
        mVar.f4084d.post(new c0(mVar, 13, bVar));
    }

    private final void d() throws Exception {
        final com.yunpan.appmanage.util.m mVar = (com.yunpan.appmanage.util.m) this.f128b;
        FileCopyBean fileCopyBean = (FileCopyBean) this.f129c;
        final f8 f8Var = (f8) this.f130d;
        try {
            PrintStream printStream = System.out;
            fa.b bVar = fa.a.f5646a;
            bVar.f5651b.file_canReadAndWrite(fileCopyBean.toDir);
            printStream.getClass();
            if (bVar.f() && bVar.f5651b.file_canReadAndWrite(fileCopyBean.toDir)) {
                boolean z = false;
                if (bVar.f5651b.file_canRead(fileCopyBean.fromPaths.get(0).f18365b)) {
                    for (w3 w3Var : fileCopyBean.fromPaths) {
                        if (mVar.f4085e.get()) {
                            break;
                        }
                        if (w3Var.f18366c) {
                            mVar.f4083c.incrementAndGet();
                            mVar.f4082b.execute(new com.yunpan.appmanage.util.l(mVar, w3Var, fileCopyBean, 1));
                        } else {
                            try {
                                fa.b bVar2 = fa.a.f5646a;
                                if (bVar2.f5651b.file_canRead(w3Var.f18365b)) {
                                    if (bVar2.f5651b.file_exists(fileCopyBean.toDir + w3Var.f18365b.substring(fileCopyBean.fromDir.length()))) {
                                        if (!bVar2.f5651b.file_canReadAndWrite(fileCopyBean.toDir + w3Var.f18365b.substring(fileCopyBean.fromDir.length()))) {
                                            mVar.f4085e.set(true);
                                        }
                                        w3Var.f18373j = "重复";
                                        fileCopyBean.isHasRepeatFile.set(true);
                                    }
                                } else {
                                    mVar.f4085e.set(true);
                                }
                            } catch (Exception unused) {
                                mVar.f4085e.set(true);
                            }
                            synchronized (fileCopyBean) {
                                fileCopyBean.files.add(w3Var);
                            }
                        }
                    }
                    while (mVar.f4083c.get() != 0) {
                        if (!z && mVar.f4085e.get()) {
                            mVar.f4082b.shutdown();
                            z = true;
                        }
                        try {
                            Thread.sleep(200L);
                        } catch (Exception unused2) {
                        }
                    }
                    final int i10 = 1;
                    mVar.f4084d.post(new Runnable() { // from class: com.yunpan.appmanage.util.n
                        @Override // java.lang.Runnable
                        public final void run() {
                            switch (i10) {
                                case 0:
                                    f8Var.f(mVar.f4085e.get());
                                    break;
                                default:
                                    f8Var.f(mVar.f4085e.get());
                                    break;
                            }
                        }
                    });
                    return;
                }
            }
            throw new Exception();
        } catch (Exception unused3) {
            mVar.f4085e.set(true);
            final int i11 = 0;
            mVar.f4084d.post(new Runnable() { // from class: com.yunpan.appmanage.util.n
                @Override // java.lang.Runnable
                public final void run() {
                    switch (i11) {
                        case 0:
                            f8Var.f(mVar.f4085e.get());
                            break;
                        default:
                            f8Var.f(mVar.f4085e.get());
                            break;
                    }
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:159:0x05d7 A[Catch: Exception -> 0x0778, TryCatch #4 {Exception -> 0x0778, blocks: (B:151:0x054d, B:154:0x055b, B:157:0x0562, B:158:0x059f, B:159:0x05d7, B:161:0x05e2, B:162:0x05e5, B:165:0x05ed, B:168:0x05f4, B:177:0x0641, B:169:0x0603, B:171:0x0627, B:172:0x062a, B:176:0x0636, B:199:0x06ce, B:122:0x04af, B:120:0x04a4, B:197:0x06c3, B:92:0x03f2, B:94:0x03fd, B:96:0x0403, B:98:0x0409, B:101:0x0410, B:107:0x0440, B:102:0x0429, B:106:0x0435), top: B:330:0x03f0, inners: #0, #2, #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x06de  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0715  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x076d A[PHI: r4
  0x076d: PHI (r4v22 boolean) = (r4v21 boolean), (r4v21 boolean), (r4v21 boolean), (r4v24 boolean) binds: [B:214:0x0713, B:216:0x0717, B:218:0x071f, B:357:0x076d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0770  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0711 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03c5  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() throws Exception {
        String str;
        int i10;
        int length;
        boolean z;
        String strTrim;
        z7.o oVar;
        int i11 = 1;
        switch (this.f127a) {
            case 0:
                j0 j0Var = (j0) this.f128b;
                j0Var.getClass();
                String str2 = u1.f0.f15206a;
                y1.x xVar = j0Var.f196c.f18808a;
                xVar.getClass();
                z1.e eVar = xVar.f18866t;
                z1.a aVarM = eVar.M();
                eVar.N(aVarM, 1009, new t6(aVarM, (r1.p) this.f129c, (y1.d) this.f130d, 27));
                return;
            case 1:
                AudioTrack audioTrack = (AudioTrack) this.f128b;
                Handler handler = (Handler) this.f129c;
                u1.m mVar = (u1.m) this.f130d;
                try {
                    audioTrack.flush();
                    audioTrack.release();
                    if (handler.getLooper().getThread().isAlive()) {
                        handler.post(new h(i11, mVar));
                    }
                    synchronized (a1.f80t) {
                        try {
                            int i12 = a1.f82v - 1;
                            a1.f82v = i12;
                            if (i12 == 0) {
                                ScheduledExecutorService scheduledExecutorService = a1.f81u;
                                scheduledExecutorService.getClass();
                                scheduledExecutorService.shutdown();
                                a1.f81u = null;
                            }
                        } finally {
                        }
                    }
                    return;
                } catch (Throwable th2) {
                    if (handler.getLooper().getThread().isAlive()) {
                        handler.post(new h(i11, mVar));
                    }
                    synchronized (a1.f80t) {
                        try {
                            int i13 = a1.f82v - 1;
                            a1.f82v = i13;
                            if (i13 == 0) {
                                ScheduledExecutorService scheduledExecutorService2 = a1.f81u;
                                scheduledExecutorService2.getClass();
                                scheduledExecutorService2.shutdown();
                                a1.f81u = null;
                            }
                            throw th2;
                        } finally {
                        }
                    }
                }
            case 2:
                a();
                return;
            case 3:
                j0 j0Var2 = (j0) this.f128b;
                j0Var2.getClass();
                String str3 = u1.f0.f15206a;
                y1.x xVar2 = j0Var2.f196c.f18808a;
                xVar2.getClass();
                z1.e eVar2 = xVar2.f18866t;
                z1.a aVarM2 = eVar2.M();
                eVar2.N(aVarM2, 1017, new t6(aVarM2, (r1.p) this.f129c, (y1.d) this.f130d, 25));
                return;
            case 4:
                String str4 = (String) this.f129c;
                CountDownLatch countDownLatch = (CountDownLatch) this.f130d;
                com.yunpan.appmanage.util.f fVar = (com.yunpan.appmanage.util.f) this.f128b;
                AtomicBoolean atomicBoolean = fVar.f4015c;
                try {
                    try {
                        if (!atomicBoolean.get()) {
                            Socket socket = new Socket();
                            try {
                                socket.connect(new InetSocketAddress(str4, fVar.f4013a), 500);
                                socket.close();
                                if (!atomicBoolean.get()) {
                                    fVar.f4017e.post(new c0(fVar, 12, str4));
                                }
                            } finally {
                            }
                        }
                    } finally {
                        countDownLatch.countDown();
                    }
                } catch (Exception unused) {
                }
                return;
            case 5:
                b();
                return;
            case 6:
                c();
                return;
            case 7:
                d();
                return;
            case 8:
                String str5 = (String) this.f129c;
                String str6 = (String) this.f130d;
                w0 w0Var = (w0) this.f128b;
                w0Var.getClass();
                try {
                    w0.C(str5, str6);
                    w0Var.e0(100, "更改成功");
                    return;
                } catch (Exception e7) {
                    w0Var.e0(101, e7.getMessage());
                    return;
                }
            case 9:
                h3 h3Var = (h3) this.f128b;
                h3Var.getClass();
                ApkFileBean apkFileBean = (ApkFileBean) this.f129c;
                String str7 = (String) this.f130d;
                apkFileBean.abi = str7;
                MyDb.get().getApkFileDao().updateBeanAbi(((v5) h3Var.f7143d).f7915p.f18365b, str7);
                return;
            case 10:
                hb hbVar = (hb) this.f128b;
                hbVar.getClass();
                FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                File file = (File) this.f129c;
                String path = file.getPath();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(file.getParent());
                sb2.append("/");
                String str8 = (String) this.f130d;
                sb2.append(str8);
                fileInfoDao.updateNameAndPath(path, str8, sb2.toString());
                if (hbVar.f7166g.f18366c) {
                    MyDb.get().getFileInfoDao().updatePathsRecursively(file.getPath() + "/", file.getParent() + "/" + str8 + "/");
                    return;
                }
                return;
            case 11:
                int i14 = 0;
                boolean z4 = false;
                do {
                    ta.o oVar2 = (ta.o) this.f128b;
                    if (oVar2.f14879b) {
                        return;
                    }
                    boolean z10 = oVar2.J;
                    mc.b bVar = (mc.b) this.f130d;
                    str = (String) this.f129c;
                    if (!z10) {
                        i10 = 0;
                        while (true) {
                            if (i10 >= oVar2.N.size()) {
                                length = i14;
                                z = false;
                            } else if (str.startsWith((String) oVar2.N.get(i10), i14)) {
                                if (!z4) {
                                    z7.o oVar3 = oVar2.Q;
                                    if (oVar3 != null) {
                                        bVar.f(oVar3);
                                    }
                                    z4 = true;
                                }
                                bVar.f(oVar2.O.get(i10));
                                length = i14 + ((String) oVar2.N.get(i10)).length();
                                z = true;
                            } else {
                                i10++;
                            }
                        }
                        if (!z && oVar2.K && str.startsWith("打开", length)) {
                            for (String str9 : oVar2.P.keySet()) {
                                if (!z4) {
                                    z7.o oVar4 = oVar2.Q;
                                    if (oVar4 != null) {
                                        bVar.f(oVar4);
                                    }
                                    z4 = true;
                                }
                                if (str.startsWith(str9, length + 2)) {
                                    wa.s.c().f17709e.f3946t0.submit(new sa.a((String) oVar2.P.get(str9), 0));
                                    length = str9.length() + length + 2;
                                    z = true;
                                    if (!z) {
                                    }
                                    i14 = length;
                                }
                            }
                            if (!z) {
                            }
                            i14 = length;
                        } else {
                            if (!z) {
                                length++;
                            }
                            i14 = length;
                        }
                    } else if (oVar2.M.isEmpty()) {
                        if (str.startsWith("导航到", i14) || str.startsWith("导航去", i14)) {
                            strTrim = str.substring(i14 + (!oVar2.M.isEmpty() ? 3 : oVar2.M.length())).trim();
                            if (!strTrim.isEmpty()) {
                                if (!z4 && (oVar = oVar2.Q) != null) {
                                    bVar.f(oVar);
                                }
                                System.out.getClass();
                                int i15 = oVar2.F;
                                String str10 = oVar2.I;
                                try {
                                    if (i15 == 0) {
                                        try {
                                            Intent intent = new Intent("android.intent.action.VIEW");
                                            if (!str10.isEmpty()) {
                                                intent.setPackage(str10);
                                            }
                                            if (strTrim.equals("家") || strTrim.equals("公司")) {
                                                intent.setData(Uri.parse("androidauto://navi2SpecialDest?dest=".concat(strTrim.equals("家") ? "home" : "crop")));
                                            } else {
                                                intent.setData(Uri.parse("androidauto://keywordNavi?keywords=" + strTrim + "&sourceApplication=appname&style=0&dev=0"));
                                            }
                                            intent.setFlags(268435488);
                                            p000if.a.x0(1, AppStart.f3772h, intent);
                                        } catch (Exception unused2) {
                                            Intent intent2 = new Intent();
                                            if (!str10.isEmpty()) {
                                                intent2.setPackage(str10);
                                            }
                                            if (strTrim.equals("家") || strTrim.equals("公司")) {
                                                intent2.setAction("AUTONAVI_STANDARD_BROADCAST_RECV");
                                                intent2.putExtra("KEY_TYPE", 10040);
                                                intent2.putExtra("DEST", !strTrim.equals("家") ? 1 : 0);
                                                intent2.putExtra("IS_START_NAVI", 0);
                                                intent2.putExtra("SOURCE_APP", AppStart.f3772h.getPackageName());
                                            } else {
                                                intent2.setAction("AUTONAVI_STANDARD_BROADCAST_RECV");
                                                intent2.putExtra("KEY_TYPE", 10036);
                                                intent2.putExtra("KEYWORDS", strTrim);
                                                intent2.putExtra("SOURCE_APP", AppStart.f3772h.getPackageName());
                                            }
                                            try {
                                                intent2.setFlags(32);
                                                p000if.a.x0(2, AppStart.f3772h, intent2);
                                            } catch (Exception unused3) {
                                                AppStart.f3772h.sendBroadcast(intent2);
                                            }
                                        }
                                    } else if (i15 == 1) {
                                        try {
                                            Intent intent3 = new Intent("android.intent.action.VIEW");
                                            if (!str10.isEmpty()) {
                                                intent3.setPackage(str10);
                                            }
                                            if (strTrim.equals("家") || strTrim.equals("公司")) {
                                                intent3.setData(Uri.parse("androidamap://openFeature?featureName=Favorite&sourceApplication=app"));
                                            } else {
                                                intent3.setData(Uri.parse("androidamap://route/plan/?sourceApplication=myapp&dname=" + strTrim + "&dev=1&t=0"));
                                            }
                                            intent3.setFlags(268435488);
                                            p000if.a.x0(1, AppStart.f3772h, intent3);
                                        } catch (Exception e10) {
                                            com.yunpan.appmanage.util.a0.u("失败：" + e10.getMessage());
                                            e10.printStackTrace();
                                        }
                                    } else if (i15 == 2) {
                                        if (wa.s.c().f17709e.f3933f != null) {
                                            com.yunpan.appmanage.carsdk.i iVar = wa.s.c().f17709e.f3933f;
                                            if (str10.equals("com.baidu.naviauto")) {
                                                com.yunpan.appmanage.carsdk.i iVar2 = wa.s.c().f17709e.f3933f;
                                                if (!iVar2.f3836b || iVar2.f3835a == null) {
                                                    Intent intent4 = new Intent("android.intent.action.VIEW");
                                                    if (!str10.isEmpty()) {
                                                        intent4.setPackage(str10);
                                                    }
                                                    if (strTrim.equals("家") || strTrim.equals("公司")) {
                                                        intent4.addCategory("android.intent.category.DEFAULT");
                                                        intent4.setData(Uri.parse("baidumap://map/gopage?page=homepage&mode=NORMAL_MODE&poproot=no".concat(strTrim)));
                                                        intent4.setFlags(268435488);
                                                        p000if.a.x0(1, AppStart.f3772h, intent4);
                                                        Thread.sleep(2222L);
                                                        intent4 = new Intent("android.intent.action.VIEW");
                                                        if (!str10.isEmpty()) {
                                                            intent4.setPackage(str10);
                                                        }
                                                        intent4.setData(Uri.parse("baidumap://map/navi/common?addr=".concat(strTrim.equals("家") ? "home" : "company")));
                                                    } else {
                                                        intent4.addCategory("android.intent.category.DEFAULT");
                                                        intent4.setData(Uri.parse("baidumap://map/place/search?query=".concat(strTrim)));
                                                    }
                                                    intent4.setFlags(268435488);
                                                    p000if.a.x0(1, AppStart.f3772h, intent4);
                                                } else if (strTrim.equals("家") || strTrim.equals("公司")) {
                                                    wa.s.c().f17709e.f3933f.h("open_map", null);
                                                    Thread.sleep(1111L);
                                                    wa.s.c().f17709e.f3933f.h("stop_navi", null);
                                                    Thread.sleep(333L);
                                                    com.yunpan.appmanage.carsdk.i iVar3 = wa.s.c().f17709e.f3933f;
                                                    int i16 = !strTrim.equals("家") ? 1 : 0;
                                                    iVar3.getClass();
                                                    iVar3.h("start_navi_to_homeorcompany", String.valueOf(i16));
                                                } else {
                                                    wa.s.c().f17709e.f3933f.h("open_map", null);
                                                    Thread.sleep(1111L);
                                                    wa.s.c().f17709e.f3933f.h("stop_navi", null);
                                                    Thread.sleep(333L);
                                                    wa.s.c().f17709e.f3933f.h("open_search_page", null);
                                                    Thread.sleep(1111L);
                                                    wa.s.c().f17709e.f3933f.h("open_search_result_page", strTrim);
                                                }
                                            }
                                        }
                                    } else if (i15 == 3) {
                                        try {
                                            Intent intent5 = new Intent("android.intent.action.VIEW");
                                            if (!str10.isEmpty()) {
                                                intent5.setPackage(str10);
                                            }
                                            intent5.setData(Uri.parse("qqmap://wecarmap?"));
                                            intent5.setFlags(268435488);
                                            p000if.a.x0(1, AppStart.f3772h, intent5);
                                            Thread.sleep(2222L);
                                        } catch (Exception unused4) {
                                        }
                                        Intent intent6 = new Intent("WECARNAVIAUTO_STANDARD_BROADCAST_RECV");
                                        if (!str10.isEmpty()) {
                                            intent6.setPackage(str10);
                                        }
                                        intent6.setComponent(new ComponentName(str10, "com.tencent.wecarnavi.sdk.broadcast.NaviBroadcastReceiver"));
                                        if (strTrim.equals("家") || strTrim.equals("公司")) {
                                            intent6.putExtra("KEY_TYPE", 1004);
                                            intent6.putExtra("EXTRA_OPERA", !strTrim.equals("家") ? 1 : 0);
                                            intent6.putExtra("EXTRA_START_TYPE", 0);
                                        } else {
                                            intent6.putExtra("KEY_TYPE", 3000);
                                            intent6.putExtra("KEYWORD", strTrim);
                                            intent6.putExtra("TYPE", 0);
                                        }
                                        try {
                                            intent6.setFlags(32);
                                            p000if.a.x0(2, AppStart.f3772h, intent6);
                                        } catch (Exception unused5) {
                                            AppStart.f3772h.sendBroadcast(intent6);
                                        }
                                    }
                                } catch (Exception unused6) {
                                }
                            }
                        }
                        i10 = 0;
                        while (true) {
                            if (i10 >= oVar2.N.size()) {
                            }
                            i10++;
                        }
                        if (!z) {
                            if (!z) {
                            }
                            i14 = length;
                        }
                    } else {
                        if (str.toLowerCase().startsWith(oVar2.M, i14)) {
                            strTrim = str.substring(i14 + (!oVar2.M.isEmpty() ? 3 : oVar2.M.length())).trim();
                            if (!strTrim.isEmpty()) {
                            }
                        }
                        i10 = 0;
                        while (true) {
                            if (i10 >= oVar2.N.size()) {
                            }
                            i10++;
                        }
                        if (!z) {
                        }
                    }
                    System.out.getClass();
                    return;
                } while (i14 < str.length());
                System.out.getClass();
                return;
            case 12:
                CodeEditor codeEditor = ((tb.r) this.f128b).f14999a;
                mb.b bVarA = codeEditor.getCursor().f11081c.a();
                codeEditor.getText().w(0, 0, (StringBuilder) this.f129c, codeEditor.getLineCount() - 1, codeEditor.getText().o(codeEditor.getLineCount() - 1).f11076c);
                int i17 = bVarA.f11057b;
                int i18 = bVarA.f11058c;
                if (i17 < codeEditor.getLineCount()) {
                    int i19 = codeEditor.f8716h1.o(i17).f11076c;
                    if (i18 > i19) {
                        i18 = i19;
                    }
                    codeEditor.g0(i17, i18);
                } else {
                    codeEditor.g0(codeEditor.getLineCount() - 1, codeEditor.f8716h1.o(codeEditor.getLineCount() - 1).f11076c);
                }
                ((ProgressDialog) this.f130d).dismiss();
                return;
            case 13:
                Toast.makeText(((tb.r) this.f128b).f14999a.getContext(), "Replace failed:" + ((Exception) this.f129c), 0).show();
                ((ProgressDialog) this.f130d).dismiss();
                return;
            case 14:
                ((ActivityTextIflytek) ((n7) this.f128b).f15851f.f3803b).D.setText("focus=" + ((String) this.f129c) + ", nlp=" + ((String) this.f130d));
                return;
            case 15:
                ((ActivityTextIflytek) ((n7) this.f128b).f15851f.f3803b).E.setText("main=" + ((String) this.f129c) + ", minor=" + ((String) this.f130d));
                return;
            case 16:
                v3.d0.a((v3.d0) this.f128b, (SurfaceView) this.f129c, (g8) this.f130d);
                return;
            case 17:
                wb.n nVar = (wb.n) this.f128b;
                CodeEditor codeEditor2 = nVar.f17777a;
                CodeEditor codeEditor3 = (CodeEditor) this.f129c;
                if (codeEditor2 != codeEditor3) {
                    return;
                }
                List list = nVar.f17821g;
                if (list != null) {
                    list.clear();
                } else {
                    nVar.f17821g = new ArrayList();
                }
                Iterator it = ((ArrayList) this.f130d).iterator();
                while (it.hasNext()) {
                    nVar.f17821g.addAll(((wb.m) it.next()).f17816b);
                }
                codeEditor3.setLayoutBusy(false);
                codeEditor3.getEventHandler().j(0.0f, 0.0f, false);
                return;
            case 18:
                x9.f0 f0Var = (x9.f0) this.f128b;
                f0Var.getClass();
                new Handler(Looper.getMainLooper()).post(new e0(f0Var, com.bumptech.glide.d.r(new File(((w3) this.f129c).f18365b)), (ImageView) this.f130d, 19));
                return;
            case 19:
                x9.f0 f0Var2 = (x9.f0) this.f128b;
                f0Var2.getClass();
                String str11 = (String) this.f129c;
                boolean zIsEmpty = str11.isEmpty();
                ImageView imageView = (ImageView) this.f130d;
                if (zIsEmpty) {
                    imageView.setImageResource(R.drawable.tp_apk1);
                    return;
                }
                Context context = f0Var2.f18226h;
                com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(context);
                pVarF.getClass();
                pVarF.o(new com.bumptech.glide.n(imageView));
                com.bumptech.glide.m mVarA = com.bumptech.glide.b.f(context).u("file://".concat(str11)).a(w5.e.z(new o5.x(8)));
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                int i20 = com.yunpan.appmanage.util.j.f4033a.R;
                ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarA.o(i20, i20)).g(R.drawable.tp_apk1)).D(imageView);
                return;
            case 20:
                x9.n nVar2 = (x9.n) this.f128b;
                nVar2.getClass();
                new Handler(Looper.getMainLooper()).post(new e0(nVar2, com.bumptech.glide.d.r(new File(((w3) this.f129c).f18365b)), (ImageView) this.f130d, 21));
                return;
            case 21:
                x9.n nVar3 = (x9.n) this.f128b;
                nVar3.getClass();
                String str12 = (String) this.f129c;
                boolean zIsEmpty2 = str12.isEmpty();
                ImageView imageView2 = (ImageView) this.f130d;
                if (zIsEmpty2) {
                    imageView2.setImageResource(R.drawable.tp_apk1);
                    return;
                }
                Context context2 = nVar3.f18284j;
                com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(context2);
                pVarF2.getClass();
                pVarF2.o(new com.bumptech.glide.n(imageView2));
                com.bumptech.glide.m mVarA2 = com.bumptech.glide.b.f(context2).u("file://".concat(str12)).a(w5.e.z(new o5.x(8)));
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                int i21 = com.yunpan.appmanage.util.j.f4033a.R;
                ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarA2.o(i21, i21)).g(R.drawable.tp_apk1)).D(imageView2);
                return;
            case 22:
                f2 f2Var = (f2) this.f128b;
                f2Var.getClass();
                new Handler(Looper.getMainLooper()).post(new e0(f2Var, com.bumptech.glide.d.r(new File(((w3) this.f129c).f18365b)), (ImageView) this.f130d, 23));
                return;
            case 23:
                f2 f2Var2 = (f2) this.f128b;
                f2Var2.getClass();
                String str13 = (String) this.f129c;
                boolean zIsEmpty3 = str13.isEmpty();
                ImageView imageView3 = (ImageView) this.f130d;
                if (zIsEmpty3) {
                    imageView3.setImageResource(R.drawable.tp_apk1);
                    return;
                }
                Context context3 = f2Var2.f18227h;
                com.bumptech.glide.p pVarF3 = com.bumptech.glide.b.f(context3);
                pVarF3.getClass();
                pVarF3.o(new com.bumptech.glide.n(imageView3));
                com.bumptech.glide.m mVarA3 = com.bumptech.glide.b.f(context3).u("file://".concat(str13)).a(w5.e.z(new o5.x(8)));
                DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                int i22 = com.yunpan.appmanage.util.j.f4033a.R;
                ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarA3.o(i22, i22)).g(R.drawable.tp_apk1)).D(imageView3);
                return;
            case 24:
                y1.n0 n0Var = (y1.n0) this.f128b;
                n0Var.getClass();
                u7.y0 y0VarG = ((u7.d0) this.f129c).g();
                z1.e eVar3 = n0Var.f18772c;
                r1.m0 m0Var = eVar3.f19346g;
                m0Var.getClass();
                ba.i iVar4 = eVar3.f19343d;
                iVar4.getClass();
                iVar4.f2699b = u7.g0.m(y0VarG);
                if (!y0VarG.isEmpty()) {
                    iVar4.f2702e = (f2.c0) y0VarG.get(0);
                    f2.c0 c0Var = (f2.c0) this.f130d;
                    c0Var.getClass();
                    iVar4.f2703f = c0Var;
                }
                if (((f2.c0) iVar4.f2701d) == null) {
                    iVar4.f2701d = ba.i.e(m0Var, (u7.g0) iVar4.f2699b, (f2.c0) iVar4.f2702e, (r1.o0) iVar4.f2698a);
                }
                iVar4.j(((y1.x) m0Var).E());
                return;
            default:
                z1.e eVar4 = (z1.e) ((y1.s0) this.f128b).f18807b.f10961i;
                Pair pair = (Pair) this.f129c;
                eVar4.l(((Integer) pair.first).intValue(), (f2.c0) pair.second, (f2.y) this.f130d);
                return;
        }
    }
}
