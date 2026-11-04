package a2;

import android.content.Context;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.graphics.SurfaceTexture;
import android.graphics.Typeface;
import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.view.Surface;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.hierynomus.smbj.SMBClient;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.bean.FileCopyBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.shizuku.CmdResult;
import com.yunpan.appmanage.shizuku.UserService;
import ha.qc;
import ha.qd;
import j$.nio.charset.StandardCharsets;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import ua.i8;
import w.r3;
import x9.w3;

/* loaded from: classes.dex */
public final /* synthetic */ class c0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f105a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f106b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f107c;

    public /* synthetic */ c0(Object obj, int i10, Object obj2) {
        this.f105a = i10;
        this.f106b = obj;
        this.f107c = obj2;
    }

    private final void a() {
        gh.c cVar;
        qd qdVar = (qd) this.f106b;
        String str = (String) this.f107c;
        qdVar.getClass();
        try {
            gh.a aVar = qdVar.f7637g;
            if (aVar != null && aVar.f() && (cVar = qdVar.f7644p) != null) {
                synchronized (cVar) {
                    qdVar.f7644p.write(str.concat(SignParameters.NEW_LINE).getBytes(StandardCharsets.UTF_8));
                    qdVar.f7644p.flush();
                }
                return;
            }
            System.out.getClass();
            com.yunpan.appmanage.util.a0.t("连接已断开");
        } catch (Exception unused) {
            com.yunpan.appmanage.util.a0.t("发送失败");
        }
    }

    @Override // java.lang.Runnable
    public final void run() throws Exception {
        l lVar;
        AtomicInteger atomicInteger;
        AtomicInteger atomicInteger2;
        fa.b bVar;
        y9.f fVar;
        int i10 = 3;
        switch (this.f105a) {
            case 0:
                j0 j0Var = (j0) this.f106b;
                j0Var.getClass();
                String str = u1.f0.f15206a;
                z1.e eVar = j0Var.f196c.f18808a.f18866t;
                z1.a aVarM = eVar.M();
                eVar.N(aVarM, 1012, new z1.c(aVarM, (String) this.f107c, 29));
                return;
            case 1:
                j0 j0Var2 = (j0) this.f106b;
                j0Var2.getClass();
                String str2 = u1.f0.f15206a;
                i8.l(j0Var2.f196c.f18808a.H, (y1.b) this.f107c);
                return;
            case 2:
                AudioRouting audioRouting = (AudioRouting) this.f107c;
                w0 w0Var = (w0) this.f106b;
                w0Var.getClass();
                AudioDeviceInfo routedDevice = audioRouting.getRoutedDevice();
                if (routedDevice != null) {
                    ((Handler) w0Var.f348d).post(new c0(w0Var, i10, routedDevice));
                    return;
                }
                return;
            case 3:
                AudioDeviceInfo audioDeviceInfo = (AudioDeviceInfo) this.f107c;
                w0 w0Var2 = (w0) this.f106b;
                if (((v0) w0Var2.f349e) == null || (lVar = ((d1) ((a1.i) w0Var2.f347c).f76b).f124i) == null || audioDeviceInfo.equals(lVar.f220i)) {
                    return;
                }
                lVar.f220i = audioDeviceInfo;
                r1.d dVar = lVar.f221j;
                List listA = lVar.a();
                u7.y0 y0Var = g.f163e;
                IntentFilter intentFilter = new IntentFilter("android.media.action.HDMI_AUDIO_PLUG");
                Context context = lVar.f212a;
                lVar.b(g.b(context, context.registerReceiver(null, intentFilter), dVar, audioDeviceInfo, listA));
                return;
            case 4:
                ((androidx.media3.exoplayer.video.d) ((g1) this.f106b).f176c).f1866h.b((r1.b1) this.f107c);
                return;
            case 5:
                j0 j0Var3 = (j0) this.f106b;
                j0Var3.getClass();
                String str3 = u1.f0.f15206a;
                z1.e eVar2 = j0Var3.f196c.f18808a.f18866t;
                z1.a aVarM2 = eVar2.M();
                eVar2.N(aVarM2, 1019, new z1.d(aVarM2, (String) this.f107c, i10));
                return;
            case 6:
                j0 j0Var4 = (j0) this.f106b;
                j0Var4.getClass();
                String str4 = u1.f0.f15206a;
                i8.l(j0Var4.f196c.f18808a.I, (y1.b) this.f107c);
                return;
            case 7:
                j0 j0Var5 = (j0) this.f106b;
                j0Var5.getClass();
                String str5 = u1.f0.f15206a;
                y1.x xVar = j0Var5.f196c.f18808a;
                r1.b1 b1Var = (r1.b1) this.f107c;
                xVar.f18843a1 = b1Var;
                xVar.f18861m.e(25, new y1.s(b1Var));
                return;
            case 8:
                j0 j0Var6 = (j0) this.f106b;
                j0Var6.getClass();
                String str6 = u1.f0.f15206a;
                z1.e eVar3 = j0Var6.f196c.f18808a.f18866t;
                z1.a aVarM3 = eVar3.M();
                eVar3.N(aVarM3, 1030, new z1.d(aVarM3, (Exception) this.f107c, 0));
                return;
            case 9:
                Runnable runnable = (Runnable) this.f106b;
                ue.d.e(runnable, "$command");
                androidx.room.w wVar = (androidx.room.w) this.f107c;
                ue.d.e(wVar, "this$0");
                try {
                    runnable.run();
                    return;
                } finally {
                    wVar.a();
                }
            case 10:
                ((MyDb) this.f106b).lambda$addFile_thread$1((String) this.f107c);
                return;
            case 11:
                UserService.lambda$exec$0((Process) this.f106b, (CmdResult) this.f107c);
                return;
            case 12:
                String str7 = (String) this.f107c;
                h5.m mVar = ((com.yunpan.appmanage.util.f) this.f106b).f4016d;
                if (mVar != null) {
                    qc qcVar = (qc) mVar.f6611b;
                    try {
                        if (qcVar.isShowing()) {
                            qcVar.f7635i.q(new com.yunpan.appmanage.util.d(0L, str7, str7, SMBClient.DEFAULT_PORT));
                            return;
                        }
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
                return;
            case 13:
                ((ea.b) this.f107c).f(((com.yunpan.appmanage.util.m) this.f106b).f4085e.get());
                return;
            case 14:
                r3 r3Var = (r3) this.f106b;
                r3.b((File) this.f107c);
                ((com.yunpan.appmanage.carsdk.u) r3Var.f17248g).sendEmptyMessage(100);
                return;
            case 15:
                r3 r3Var2 = (r3) this.f106b;
                r3Var2.getClass();
                ja.b bVar2 = new ja.b();
                r3Var2.f17247f = bVar2;
                bVar2.f9817c = "分析中";
                FileCopyBean fileCopyBean = (FileCopyBean) this.f107c;
                bVar2.f9820f = fileCopyBean.files.size();
                ja.b bVar3 = (ja.b) r3Var2.f17247f;
                bVar3.f9815a = fileCopyBean.fromDir;
                bVar3.f9816b = fileCopyBean.toDir;
                Iterator<w3> it = fileCopyBean.files.iterator();
                while (it.hasNext()) {
                    ((ja.b) r3Var2.f17247f).f9822h.getAndAdd(it.next().f18367d);
                }
                com.yunpan.appmanage.carsdk.u uVar = (com.yunpan.appmanage.carsdk.u) r3Var2.f17248g;
                uVar.sendEmptyMessage(301);
                Iterator<w3> it2 = fileCopyBean.dirs.iterator();
                while (it2.hasNext()) {
                    try {
                        String strReplace = (fileCopyBean.toDir + it2.next().f18365b.substring(fileCopyBean.fromDir.length()) + "/").replace("//", "/");
                        if (!com.yunpan.appmanage.util.a0.g(strReplace)) {
                            try {
                                new File(strReplace).mkdirs();
                            } catch (Exception unused2) {
                                fa.b0.f5652a.getClass();
                                w0.h("mkdir -p \"" + strReplace + "\"");
                            }
                        }
                    } catch (Exception unused3) {
                    }
                }
                ((ja.b) r3Var2.f17247f).f9817c = "拷贝中";
                com.yunpan.appmanage.util.q qVar = new com.yunpan.appmanage.util.q();
                Iterator<w3> it3 = fileCopyBean.files.iterator();
                while (true) {
                    boolean zHasNext = it3.hasNext();
                    atomicInteger = (AtomicInteger) r3Var2.f17246e;
                    if (zHasNext) {
                        w3 next = it3.next();
                        if (!((ja.b) r3Var2.f17247f).l) {
                            File file = new File((fileCopyBean.toDir + next.f18365b.substring(fileCopyBean.fromDir.length())).replace("//", "/"));
                            if (next.f18365b.equals(file.getPath())) {
                                r3Var2.a(next.f18367d);
                            } else if (fileCopyBean.isDelete && new File(next.f18365b).renameTo(file)) {
                                r3Var2.a(next.f18367d);
                            } else {
                                atomicInteger.incrementAndGet();
                                ((ExecutorService) r3Var2.f17245d).execute(new com.yunpan.appmanage.util.p(r3Var2, new File(next.f18365b), file, qVar, 0));
                            }
                        }
                    }
                }
                ja.b bVar4 = (ja.b) r3Var2.f17247f;
                if (bVar4.l) {
                    bVar4.f9817c = "正在停止中";
                    uVar.sendEmptyMessage(301);
                }
                while (atomicInteger.get() != 0) {
                    try {
                        Thread.sleep(200L);
                    } catch (Exception unused4) {
                    }
                }
                if (((ja.b) r3Var2.f17247f).l) {
                    Message messageObtainMessage = uVar.obtainMessage();
                    messageObtainMessage.what = NoConst.RECORDING_TIME_INTERVAL;
                    messageObtainMessage.obj = qVar;
                    uVar.sendMessage(messageObtainMessage);
                    return;
                }
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                String str8 = fileCopyBean.toDir;
                kVar.getClass();
                if (com.yunpan.appmanage.util.k.i(str8)) {
                    for (w3 w3Var : fileCopyBean.fromPaths) {
                        if (w3Var.f18366c) {
                            com.yunpan.appmanage.util.j.f4033a.f4046f0.submit(new com.yunpan.appmanage.util.z(new File(fileCopyBean.toDir + w3Var.f18364a)));
                        } else {
                            if (com.yunpan.appmanage.util.a0.g(fileCopyBean.toDir + w3Var.f18364a)) {
                                MyDb.get().lambda$addFile_thread$1(fileCopyBean.toDir + w3Var.f18364a);
                            }
                        }
                    }
                }
                if (qVar.f4094a.isEmpty() && fileCopyBean.isDelete) {
                    for (w3 w3Var2 : fileCopyBean.fromPaths) {
                        List<w3> list = fileCopyBean.fromPaths;
                        String str9 = fileCopyBean.toDir;
                        if (!list.equals(str9.substring(0, str9.length() - 1))) {
                            w0 w0Var3 = fa.b0.f5652a;
                            String str10 = w3Var2.f18365b;
                            w0Var3.getClass();
                            w0.B(str10);
                        }
                    }
                    com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                    String str11 = fileCopyBean.fromDir;
                    kVar2.getClass();
                    if (com.yunpan.appmanage.util.k.i(str11)) {
                        for (w3 w3Var3 : fileCopyBean.fromPaths) {
                            if (w3Var3.f18366c) {
                                com.yunpan.appmanage.util.j.f4033a.f4046f0.submit(new com.yunpan.appmanage.util.z(new File(w3Var3.f18365b)));
                            } else if (!com.yunpan.appmanage.util.a0.g(w3Var3.f18365b)) {
                                MyDb.get().getFileInfoDao().delete(w3Var3.f18365b);
                            }
                        }
                    }
                }
                Message messageObtainMessage2 = uVar.obtainMessage();
                messageObtainMessage2.what = NoConst.RECORDING_TIME_INTERVAL;
                messageObtainMessage2.obj = qVar;
                uVar.sendMessage(messageObtainMessage2);
                return;
            case 16:
                ba.i iVar = (ba.i) this.f106b;
                ja.b bVar5 = new ja.b();
                iVar.f2702e = bVar5;
                bVar5.f9817c = "分析中";
                FileCopyBean fileCopyBean2 = (FileCopyBean) this.f107c;
                bVar5.f9820f = fileCopyBean2.files.size();
                ja.b bVar6 = (ja.b) iVar.f2702e;
                bVar6.f9815a = fileCopyBean2.fromDir;
                bVar6.f9816b = fileCopyBean2.toDir;
                Iterator<w3> it4 = fileCopyBean2.files.iterator();
                while (it4.hasNext()) {
                    ((ja.b) iVar.f2702e).f9822h.getAndAdd(it4.next().f18367d);
                }
                com.yunpan.appmanage.carsdk.u uVar2 = (com.yunpan.appmanage.carsdk.u) iVar.f2703f;
                uVar2.sendEmptyMessage(301);
                Iterator<w3> it5 = fileCopyBean2.dirs.iterator();
                while (true) {
                    boolean zHasNext2 = it5.hasNext();
                    fa.b bVar7 = fa.a.f5646a;
                    String str12 = "//";
                    String str13 = "/";
                    if (!zHasNext2) {
                        ((ja.b) iVar.f2702e).f9817c = "拷贝中";
                        com.yunpan.appmanage.util.r rVar = new com.yunpan.appmanage.util.r();
                        Iterator<w3> it6 = fileCopyBean2.files.iterator();
                        while (true) {
                            boolean zHasNext3 = it6.hasNext();
                            atomicInteger2 = (AtomicInteger) iVar.f2701d;
                            if (zHasNext3) {
                                w3 next2 = it6.next();
                                if (!((ja.b) iVar.f2702e).l) {
                                    File file2 = new File((fileCopyBean2.toDir + next2.f18365b.substring(fileCopyBean2.fromDir.length())).replace(str12, str13));
                                    if (next2.f18365b.equals(file2.getPath())) {
                                        iVar.c(next2.f18367d);
                                    } else if (fileCopyBean2.isDelete) {
                                        try {
                                            bVar7.f5651b.file_rename(next2.f18365b, file2.getPath());
                                            atomicInteger2.incrementAndGet();
                                            ((ExecutorService) iVar.f2700c).execute(new com.yunpan.appmanage.util.p(iVar, new File(next2.f18365b), file2, rVar, 1));
                                            str13 = str13;
                                            str12 = str12;
                                            bVar7 = bVar7;
                                        } catch (Exception unused5) {
                                            iVar.c(next2.f18367d);
                                        }
                                    } else {
                                        atomicInteger2.incrementAndGet();
                                        ((ExecutorService) iVar.f2700c).execute(new com.yunpan.appmanage.util.p(iVar, new File(next2.f18365b), file2, rVar, 1));
                                        str13 = str13;
                                        str12 = str12;
                                        bVar7 = bVar7;
                                    }
                                }
                            }
                        }
                        fa.b bVar8 = bVar7;
                        ja.b bVar9 = (ja.b) iVar.f2702e;
                        if (bVar9.l) {
                            bVar9.f9817c = "正在停止中";
                            uVar2.sendEmptyMessage(301);
                        }
                        while (atomicInteger2.get() != 0) {
                            try {
                                Thread.sleep(200L);
                            } catch (Exception unused6) {
                            }
                        }
                        if (((ja.b) iVar.f2702e).l) {
                            Message messageObtainMessage3 = uVar2.obtainMessage();
                            messageObtainMessage3.what = NoConst.RECORDING_TIME_INTERVAL;
                            messageObtainMessage3.obj = rVar;
                            uVar2.sendMessage(messageObtainMessage3);
                            return;
                        }
                        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar3 = com.yunpan.appmanage.util.j.f4033a;
                        String str14 = fileCopyBean2.toDir;
                        kVar3.getClass();
                        if (com.yunpan.appmanage.util.k.i(str14)) {
                            for (w3 w3Var4 : fileCopyBean2.fromPaths) {
                                if (w3Var4.f18366c) {
                                    com.yunpan.appmanage.util.j.f4033a.f4046f0.submit(new com.yunpan.appmanage.util.z(new File(fileCopyBean2.toDir + w3Var4.f18364a)));
                                    bVar = bVar8;
                                } else {
                                    bVar = bVar8;
                                    try {
                                        if (bVar.f5651b.file_exists(fileCopyBean2.toDir + w3Var4.f18364a)) {
                                            MyDb.get().lambda$addFile_thread$1(fileCopyBean2.toDir + w3Var4.f18364a);
                                        }
                                    } catch (Exception unused7) {
                                    }
                                }
                                bVar8 = bVar;
                            }
                        }
                        fa.b bVar10 = bVar8;
                        if (rVar.f4095a.isEmpty() && fileCopyBean2.isDelete) {
                            for (w3 w3Var5 : fileCopyBean2.fromPaths) {
                                List<w3> list2 = fileCopyBean2.fromPaths;
                                String str15 = fileCopyBean2.toDir;
                                if (!list2.equals(str15.substring(0, str15.length() - 1))) {
                                    try {
                                        if (!bVar10.f5651b.file_delete(w3Var5.f18365b)) {
                                            throw new Exception();
                                            break;
                                        }
                                    } catch (Exception unused8) {
                                        w0 w0Var4 = fa.b0.f5652a;
                                        String str16 = w3Var5.f18365b;
                                        w0Var4.getClass();
                                        w0.B(str16);
                                    }
                                }
                            }
                            com.yunpan.appmanage.util.k kVar4 = com.yunpan.appmanage.util.j.f4033a;
                            String str17 = fileCopyBean2.fromDir;
                            kVar4.getClass();
                            if (com.yunpan.appmanage.util.k.i(str17)) {
                                for (w3 w3Var6 : fileCopyBean2.fromPaths) {
                                    if (w3Var6.f18366c) {
                                        com.yunpan.appmanage.util.j.f4033a.f4046f0.submit(new com.yunpan.appmanage.util.z(new File(w3Var6.f18365b)));
                                    } else {
                                        try {
                                            if (!bVar10.f5651b.file_exists(w3Var6.f18365b)) {
                                                MyDb.get().getFileInfoDao().delete(w3Var6.f18365b);
                                            }
                                        } catch (Exception unused9) {
                                        }
                                    }
                                }
                            }
                        }
                        Message messageObtainMessage4 = uVar2.obtainMessage();
                        messageObtainMessage4.what = NoConst.RECORDING_TIME_INTERVAL;
                        messageObtainMessage4.obj = rVar;
                        uVar2.sendMessage(messageObtainMessage4);
                        return;
                    }
                    try {
                        String strReplace2 = (fileCopyBean2.toDir + it5.next().f18365b.substring(fileCopyBean2.fromDir.length()) + "/").replace("//", "/");
                        if (!bVar7.f5651b.file_exists(strReplace2)) {
                            bVar7.f5651b.file_mkdirs(strReplace2);
                        }
                    } catch (Exception unused10) {
                    }
                }
                break;
            case 17:
                d2.f fVar2 = (d2.f) this.f106b;
                ((d2.o) fVar2.f4259f).h();
                d2.i iVar2 = (d2.i) fVar2.f4258e;
                c0 c0Var = (c0) this.f107c;
                synchronized (iVar2.f4274a) {
                    iVar2.b();
                    c0Var.run();
                }
                return;
            case 18:
                d2.u uVar3 = (d2.u) this.f106b;
                uVar3.F.set(uVar3.w((i8) this.f107c, uVar3.z, 0));
                return;
            case 19:
                ((u1.f) this.f106b).accept(this.f107c);
                return;
            case 20:
                ((f2.u0) this.f106b).C((l2.c0) this.f107c);
                return;
            case 21:
                fa.j jVar = (fa.j) this.f106b;
                jVar.getClass();
                fa.i iVar3 = new fa.i();
                Socket socket = jVar.f5697c;
                com.yunpan.appmanage.carsdk.u uVar4 = jVar.l;
                if (socket == null || (fVar = jVar.f5698d) == null || fVar.f19008f) {
                    iVar3.f5691a = -1;
                    iVar3.f5692b = "未连接adb";
                    iVar3.f5693c.add("未连接adb");
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 100;
                    messageObtain.obj = iVar3;
                    uVar4.sendMessage(messageObtain);
                    return;
                }
                String strSubstring = (String) this.f107c;
                if (strSubstring.startsWith("adb shell ")) {
                    strSubstring = strSubstring.substring(10);
                }
                if (strSubstring.startsWith("adb ")) {
                    String strTrim = strSubstring.substring(4).trim();
                    if (strTrim.isEmpty()) {
                        iVar3.f5691a = 0;
                        iVar3.f5692b = "错误的命令";
                        iVar3.f5693c.add("错误的命令");
                    } else {
                        try {
                            iVar3.f5692b = jVar.k(strTrim.contains(" ") ? strTrim.substring(0, strTrim.indexOf(" ")) + ":" + strTrim.substring(strTrim.indexOf(" ") + 1) : strTrim.concat(":"));
                        } catch (Exception unused11) {
                        }
                        iVar3.f5691a = 0;
                        iVar3.f5693c.add(iVar3.f5692b);
                    }
                } else {
                    try {
                        iVar3 = jVar.n(strSubstring);
                    } catch (Exception unused12) {
                        iVar3.f5691a = 404;
                        iVar3.f5692b = "执行失败";
                        iVar3.f5693c.add(iVar3.f5692b);
                    }
                }
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 100;
                messageObtain2.obj = iVar3;
                uVar4.sendMessage(messageObtain2);
                return;
            case 22:
                Process process = (Process) this.f106b;
                fa.a0 a0Var = (fa.a0) this.f107c;
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                bufferedReader.close();
                                return;
                            }
                            a0Var.f5649b.add(line);
                        } finally {
                        }
                    }
                } catch (IOException e7) {
                    e7.printStackTrace();
                    return;
                }
            case 23:
                a();
                return;
            case 24:
                hi.e eVar4 = (hi.e) this.f106b;
                Iterator it7 = eVar4.f8224e.iterator();
                while (it7.hasNext()) {
                    ((ServiceConnection) it7.next()).onServiceConnected(eVar4.f8225f, (IBinder) this.f107c);
                }
                return;
            case 25:
                k2.k kVar5 = (k2.k) this.f106b;
                SurfaceTexture surfaceTexture = kVar5.f10074g;
                Surface surface = kVar5.f10075h;
                SurfaceTexture surfaceTexture2 = (SurfaceTexture) this.f107c;
                Surface surface2 = new Surface(surfaceTexture2);
                kVar5.f10074g = surfaceTexture2;
                kVar5.f10075h = surface2;
                Iterator it8 = kVar5.f10068a.iterator();
                while (it8.hasNext()) {
                    ((y1.t) it8.next()).f18808a.b0(surface2);
                }
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                }
                if (surface != null) {
                    surface.release();
                    return;
                }
                return;
            case 26:
                String str18 = (String) this.f107c;
                ma.i iVar4 = (ma.i) this.f106b;
                String strD = iVar4.d(str18);
                ma.f fVar3 = iVar4.f11043j;
                fVar3.sendMessage(fVar3.obtainMessage(100, strD));
                return;
            case 27:
                ((o0.b) this.f106b).i((Typeface) this.f107c);
                return;
            case 28:
                Runnable runnable2 = (Runnable) this.f107c;
                q.g0 g0Var = (q.g0) this.f106b;
                g0Var.getClass();
                try {
                    runnable2.run();
                    return;
                } finally {
                    g0Var.a();
                }
            default:
                ea.b bVar11 = (ea.b) this.f107c;
                ra.c cVar = (ra.c) this.f106b;
                cVar.getClass();
                try {
                    try {
                        cVar.f13742k.startRecording();
                        cVar.f13741j.play();
                        if (bVar11 != null) {
                            bVar11.f(true);
                        }
                        cVar.a();
                    } catch (Exception e10) {
                        if (cVar.f13744n.get()) {
                            com.yunpan.appmanage.util.a0.u("喊话报错：" + e10.getMessage());
                        }
                        if (bVar11 != null) {
                            bVar11.f(false);
                        }
                    }
                    cVar.c();
                    return;
                } finally {
                    cVar.c();
                }
        }
    }

    public /* synthetic */ c0(ma.i iVar, String str, ma.g gVar) {
        this.f105a = 26;
        this.f106b = iVar;
        this.f107c = str;
    }
}
