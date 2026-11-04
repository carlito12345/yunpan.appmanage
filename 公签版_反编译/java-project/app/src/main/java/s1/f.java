package s1;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.telephony.TelephonyManager;
import androidx.profileinstaller.ProfileInstallerInitializer;
import com.hsae.autosdk.source.SourceConst;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.ui.ActivityHome;
import db.v;
import f2.c0;
import fa.d0;
import io.github.rosemoe.sora.widget.CodeEditor;
import j$.util.Iterator$EL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import r1.o0;
import r1.q0;
import s3.t;
import u1.b0;
import u1.i0;
import v3.e0;
import y1.a1;
import y1.f0;
import y1.v0;
import y1.x;
import y1.y0;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13896a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f13897b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f13898c;

    public /* synthetic */ f(Object obj, int i10, Object obj2) {
        this.f13896a = i10;
        this.f13897b = obj;
        this.f13898c = obj2;
    }

    private final void a() {
        WifiManager.WifiLock wifiLock;
        kf.d dVar = (kf.d) this.f13897b;
        AtomicBoolean atomicBoolean = (AtomicBoolean) this.f13898c;
        synchronized (dVar) {
            if (atomicBoolean.get() && (wifiLock = (WifiManager.WifiLock) dVar.f10287c) != null) {
                wifiLock.release();
            }
        }
    }

    private final void b() {
        y0 y0Var = (y0) this.f13898c;
        ((f0) this.f13897b).getClass();
        try {
            synchronized (y0Var) {
            }
            try {
                y0Var.f18873a.d(y0Var.f18875c, y0Var.f18876d);
            } finally {
                y0Var.a(true);
            }
        } catch (y1.k e7) {
            u1.a.g("Unexpected error delivering message on external thread.", e7);
            throw new RuntimeException(e7);
        }
    }

    private final void c() {
        y9.b bVar = (y9.b) this.f13897b;
        y9.b bVar2 = (y9.b) this.f13898c;
        while (!bVar.f18990k && !bVar.f18984e.isInterrupted()) {
            try {
                ((LinkedBlockingQueue) bVar.f18989j.f14295d).add(y9.d.a(bVar.f18982c));
            } catch (Exception unused) {
            }
        }
        bVar.f18990k = false;
        synchronized (bVar2) {
            HashMap map = (HashMap) bVar.f18989j.f14293b;
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                try {
                    ((y9.f) it.next()).close();
                } catch (Exception unused2) {
                }
            }
            map.clear();
            bVar2.notifyAll();
            bVar2.f18985f = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:137:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02fa  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        WifiInfo connectionInfo;
        PowerManager.WakeLock wakeLock;
        long j10;
        boolean z;
        int i10;
        long j11;
        AppBean appBean = null;
        int i11 = 2;
        int i12 = 7;
        int i13 = 0;
        boolean z4 = true;
        switch (this.f13896a) {
            case 0:
                g.f13899a = (AudioManager) ((Context) this.f13897b).getSystemService("audio");
                ((u1.e) this.f13898c).e();
                return;
            case 1:
                NetworkInfo networkInfo = (NetworkInfo) this.f13898c;
                a2.k kVar = (a2.k) this.f13897b;
                kVar.getClass();
                try {
                    if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                        System.out.getClass();
                        wa.s.c().i(302);
                        WifiManager wifiManager = (WifiManager) ((AccService) kVar.f205b).getSystemService("wifi");
                        if (wifiManager != null && (connectionInfo = wifiManager.getConnectionInfo()) != null) {
                            String strReplace = connectionInfo.getSSID().replace("\"", "");
                            if (strReplace.isEmpty()) {
                                strReplace = "未知wifi";
                            }
                            wa.s.c().j(SourceConst.IOCTL_TEST_CHECKDEVICE_DISABLE, strReplace);
                        }
                    } else if (networkInfo.getState() == NetworkInfo.State.DISCONNECTED) {
                        wa.s.c().i(303);
                    } else if (networkInfo.getState() == NetworkInfo.State.CONNECTING || networkInfo.getState() == NetworkInfo.State.DISCONNECTING || networkInfo.getState() == NetworkInfo.State.SUSPENDED || networkInfo.getState() == NetworkInfo.State.UNKNOWN) {
                        System.out.getClass();
                    }
                    return;
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
            case 2:
                tb.q qVar = (tb.q) this.f13897b;
                tb.r rVar = qVar.f14998e;
                if (rVar.f15003e == qVar.f14997d) {
                    rVar.f15004f = (sb.e) this.f13898c;
                    CodeEditor codeEditor = rVar.f14999a;
                    codeEditor.invalidate();
                    codeEditor.f8717i.a(new v(codeEditor));
                    rVar.f15003e = null;
                    return;
                }
                return;
            case 3:
                b5.i iVar = (b5.i) this.f13897b;
                Object objApply = ((d0) this.f13898c).apply(iVar.f2576f);
                iVar.f2576f = objApply;
                u1.b bVar = new u1.b(iVar, objApply, i13);
                b0 b0Var = (b0) iVar.f2573c;
                if (b0Var.f15188a.getLooper().getThread().isAlive()) {
                    b0Var.d(bVar);
                    return;
                }
                return;
            case 4:
                u1.p pVar = (u1.p) this.f13898c;
                pVar.getClass();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                ((Context) this.f13897b).registerReceiver(new a2.k(i12, pVar), intentFilter);
                return;
            case 5:
                u1.p pVar2 = (u1.p) ((a2.k) this.f13898c).f205b;
                pVar2.getClass();
                Context context = (Context) this.f13897b;
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager == null) {
                    i11 = 0;
                } else {
                    try {
                        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                            i11 = 1;
                        } else {
                            int type = activeNetworkInfo.getType();
                            if (type == 0) {
                                switch (activeNetworkInfo.getSubtype()) {
                                    case 1:
                                    case 2:
                                        i11 = 3;
                                        break;
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                    case 9:
                                    case 10:
                                    case 11:
                                    case 12:
                                    case 14:
                                    case 15:
                                    case 17:
                                        i11 = 4;
                                        break;
                                    case 13:
                                        i11 = 5;
                                        break;
                                    case 16:
                                    case 19:
                                    default:
                                        i11 = 6;
                                        break;
                                    case 18:
                                        break;
                                    case 20:
                                        i11 = Build.VERSION.SDK_INT < 29 ? 0 : 9;
                                        break;
                                }
                            } else if (type != 1) {
                                if (type != 4 && type != 5) {
                                    if (type != 6) {
                                        i11 = type != 9 ? 8 : 7;
                                    }
                                }
                            }
                        }
                    } catch (SecurityException unused) {
                    }
                }
                if (Build.VERSION.SDK_INT < 31 || i11 != 5) {
                    pVar2.e(i11);
                    return;
                }
                try {
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                    telephonyManager.getClass();
                    u1.n nVar = new u1.n(pVar2);
                    telephonyManager.registerTelephonyCallback((Executor) pVar2.f15259c, nVar);
                    telephonyManager.unregisterTelephonyCallback(nVar);
                    return;
                } catch (RuntimeException unused2) {
                    pVar2.e(5);
                    return;
                }
            case 6:
                kf.d dVar = (kf.d) ((i0) this.f13897b).f15238f;
                dVar.getClass();
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f13898c;
                if (atomicBoolean.get()) {
                    new Thread(new f(dVar, i12, atomicBoolean), "ExoPlayer:WakeLockManager").start();
                    return;
                }
                return;
            case 7:
                kf.d dVar2 = (kf.d) this.f13897b;
                AtomicBoolean atomicBoolean2 = (AtomicBoolean) this.f13898c;
                synchronized (dVar2) {
                    if (atomicBoolean2.get() && (wakeLock = (PowerManager.WakeLock) dVar2.f10287c) != null) {
                        wakeLock.release();
                    }
                }
                return;
            case 8:
                kf.d dVar3 = (kf.d) ((i0) this.f13897b).f15238f;
                dVar3.getClass();
                AtomicBoolean atomicBoolean3 = (AtomicBoolean) this.f13898c;
                if (atomicBoolean3.get()) {
                    new Thread(new f(dVar3, i, atomicBoolean3), "ExoPlayer:WifiLockManager").start();
                    return;
                }
                return;
            case 9:
                a();
                return;
            case 10:
                String str = (String) this.f13898c;
                ActivityHome activityHome = (ActivityHome) ((u) this.f13897b).f3894b;
                try {
                    int i14 = ActivityHome.O;
                    appBean = new AppBean(activityHome.A.getPackageManager().getApplicationInfo(str, 8704));
                } catch (Exception unused3) {
                }
                if (appBean == null) {
                    try {
                        int i15 = ActivityHome.O;
                        appBean = new AppBean(activityHome.A.getPackageManager().getApplicationInfo(str, 8704));
                    } catch (Exception unused4) {
                    }
                }
                if (appBean != null) {
                    MyDb.get().getAppDao().insert(appBean);
                    kh.e.b().f(new ja.a(12, appBean));
                    return;
                }
                return;
            case 11:
                e0.a((e0) this.f13897b, (Bitmap) this.f13898c);
                return;
            case 12:
                ((v9.e) this.f13897b).f16696f.n((androidx.room.s) this.f13898c);
                return;
            case 13:
                wa.s sVar = (wa.s) this.f13897b;
                sVar.getClass();
                Intent intent = (Intent) this.f13898c;
                Iterator$EL.forEachRemaining(wa.s.c().f17725w.p("keys").f19478a.iterator(), new wa.l(sVar, intent.getAction(), intent, i13));
                return;
            case 14:
                z7.s sVar2 = (z7.s) this.f13898c;
                wa.s sVar3 = (wa.s) this.f13897b;
                sVar3.getClass();
                try {
                    sVar3.t(sVar2);
                    return;
                } catch (Exception unused5) {
                    sVar3.q();
                    return;
                }
            case 15:
                x xVar = (x) this.f13897b;
                t tVar = (t) this.f13898c;
                int i16 = xVar.M - tVar.f14244b;
                xVar.M = i16;
                if (tVar.f14245c) {
                    xVar.N = tVar.f14246d;
                    xVar.O = true;
                }
                if (i16 == 0) {
                    q0 q0Var = ((v0) tVar.f14247e).f18824a;
                    if (!xVar.f18853f1.f18824a.p() && q0Var.p()) {
                        xVar.g1 = -1;
                        xVar.f18857h1 = 0L;
                    }
                    if (!q0Var.p()) {
                        List listAsList = Arrays.asList(((a1) q0Var).f18578h);
                        a9.o.t(listAsList.size() == xVar.f18864q.size());
                        for (int i17 = 0; i17 < listAsList.size(); i17++) {
                            ((y1.v) xVar.f18864q.get(i17)).f18822b = (q0) listAsList.get(i17);
                        }
                    }
                    if (xVar.O) {
                        boolean z10 = ((v0) tVar.f14247e).f18824a.p() && xVar.f18853f1.f18824a.p();
                        boolean zEquals = ((v0) tVar.f14247e).f18825b.equals(xVar.f18853f1.f18825b);
                        boolean z11 = ((v0) tVar.f14247e).f18827d == xVar.f18853f1.f18840s;
                        if (z10 || (zEquals && z11)) {
                            z4 = false;
                        }
                        if (z4) {
                            int iA = xVar.A();
                            if (q0Var.p() || ((v0) tVar.f14247e).f18825b.b()) {
                                j11 = ((v0) tVar.f14247e).f18827d;
                            } else {
                                v0 v0Var = (v0) tVar.f14247e;
                                c0 c0Var = v0Var.f18825b;
                                long j12 = v0Var.f18827d;
                                Object obj = c0Var.f5236a;
                                o0 o0Var = xVar.f18863p;
                                q0Var.g(obj, o0Var);
                                j11 = j12 + o0Var.f13507e;
                            }
                            i10 = iA;
                            j10 = j11;
                            z = z4;
                            xVar.O = false;
                            xVar.f0((v0) tVar.f14247e, 1, z, xVar.N, j10, i10, false);
                            return;
                        }
                        z = z4;
                        j10 = -9223372036854775807L;
                    } else {
                        j10 = -9223372036854775807L;
                        z = false;
                    }
                    i10 = -1;
                    xVar.O = false;
                    xVar.f0((v0) tVar.f14247e, 1, z, xVar.N, j10, i10, false);
                    return;
                }
                return;
            case 16:
                b();
                return;
            case 17:
                ((ProfileInstallerInitializer) this.f13898c).getClass();
                (Build.VERSION.SDK_INT >= 28 ? y3.f.a(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new com.yunpan.appmanage.util.i((Context) this.f13897b, i11), new Random().nextInt(Math.max(1000, 1)) + 5000);
                return;
            case 18:
                c();
                return;
            case 19:
                ((z1.h) this.f13897b).f19368d.reportTrackChangeEvent((TrackChangeEvent) this.f13898c);
                return;
            case 20:
                ((z1.h) this.f13897b).f19368d.reportNetworkEvent((NetworkEvent) this.f13898c);
                return;
            case 21:
                ((z1.h) this.f13897b).f19368d.reportPlaybackErrorEvent((PlaybackErrorEvent) this.f13898c);
                return;
            case 22:
                ((z1.h) this.f13897b).f19368d.reportPlaybackMetrics((PlaybackMetrics) this.f13898c);
                return;
            default:
                ((z1.h) this.f13897b).f19368d.reportPlaybackStateEvent((PlaybackStateEvent) this.f13898c);
                return;
        }
    }

    public /* synthetic */ f(Object obj, Context context, int i10) {
        this.f13896a = i10;
        this.f13898c = obj;
        this.f13897b = context;
    }
}
