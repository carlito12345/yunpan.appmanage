package a2;

import android.os.Handler;
import android.os.SystemClock;
import android.util.Base64;
import com.android.apksig.util.RunnablesExecutor;
import com.android.apksig.util.RunnablesProvider;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentSkipListMap;
import x9.n5;

/* loaded from: classes.dex */
public final /* synthetic */ class u0 implements u1.j, b8.o, ec.d, RunnablesExecutor, z2.g, t7.d, u1.f, y9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f325a;

    public /* synthetic */ u0(int i10) {
        this.f325a = i10;
    }

    @Override // u1.j
    /* renamed from: a */
    public void mo12a(Object obj) {
        long jK;
        a1.i iVar;
        y1.b0 b0Var;
        h2.n nVar;
        switch (this.f325a) {
            case 0:
                i1 i1Var = (i1) obj;
                n1 n1Var = i1Var.f190b;
                if (i1Var.equals(n1Var.f246j) && n1Var.f249n != null) {
                    k1 k1Var = n1Var.f251p;
                    int i10 = k1Var.f207b;
                    if (i10 != -1) {
                        long j10 = ((x) k1Var.f210e).f355f / i10;
                        a1 a1Var = n1Var.f254t;
                        a1Var.getClass();
                        jK = u1.f0.K(a1Var.f83a.getSampleRate(), j10);
                    } else {
                        jK = -9223372036854775807L;
                    }
                    long jElapsedRealtime = SystemClock.elapsedRealtime() - n1Var.W;
                    a1.i iVar2 = n1Var.f249n;
                    int i11 = ((x) n1Var.f251p.f210e).f355f;
                    long jR = u1.f0.R(jK);
                    j0 j0Var = ((q1) iVar2.f76b).A1;
                    Handler handler = j0Var.f195b;
                    if (handler != null) {
                        handler.post(new i0(j0Var, i11, jR, jElapsedRealtime, 0));
                        return;
                    }
                    return;
                }
                return;
            case 1:
                i1 i1Var2 = (i1) obj;
                i1Var2.getClass();
                n1.f234c0.getAndDecrement();
                a1.i iVar3 = i1Var2.f190b.f249n;
                if (iVar3 != null) {
                    int i12 = i1Var2.f189a.f350a;
                    k0 k0Var = new k0();
                    j0 j0Var2 = ((q1) iVar3.f76b).A1;
                    Handler handler2 = j0Var2.f195b;
                    if (handler2 != null) {
                        handler2.post(new z(j0Var2, k0Var, 1));
                        return;
                    }
                    return;
                }
                return;
            case 2:
                i1 i1Var3 = (i1) obj;
                n1 n1Var2 = i1Var3.f190b;
                if (i1Var3.equals(n1Var2.f246j) && (iVar = n1Var2.f249n) != null && n1Var2.O && (b0Var = ((q1) iVar.f76b).L) != null) {
                    b0Var.a();
                    return;
                }
                return;
            case 3:
                i1 i1Var4 = (i1) obj;
                n1 n1Var3 = i1Var4.f190b;
                if (i1Var4.equals(n1Var3.f246j) && n1Var3.M) {
                    n1Var3.N = true;
                    return;
                }
                return;
            default:
                a1.i iVar4 = ((h1) obj).f182a.f249n;
                if (iVar4 != null) {
                    q1 q1Var = (q1) iVar4.f76b;
                    synchronized (q1Var.f18552a) {
                        nVar = q1Var.f18567s;
                    }
                    if (nVar != null) {
                        nVar.n();
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // u1.f
    public void accept(Object obj) {
        ((f2.a1) obj).f5201b.getClass();
    }

    @Override // t7.d
    public Object apply(Object obj) {
        switch (this.f325a) {
            case 19:
                return ((l2.o) obj).b().getClass().getSimpleName();
            case 20:
                return u7.g0.m(u7.q.t(((f2.a0) obj).n().f5300b, new u0(22)));
            case 21:
            default:
                return (f3.s) obj;
            case 22:
                return Integer.valueOf(((r1.r0) obj).f13555c);
        }
    }

    @Override // z2.g
    public boolean b(int i10, int i11, int i12, int i13, int i14) {
        return (i11 == 67 && i12 == 79 && i13 == 77 && (i14 == 77 || i10 == 2)) || (i11 == 77 && i12 == 76 && i13 == 76 && (i14 == 84 || i10 == 2));
    }

    @Override // b8.o
    public Object c() {
        switch (this.f325a) {
            case 5:
                return new b8.n(true);
            case 6:
                return new LinkedHashMap();
            case 7:
                return new TreeMap();
            case 8:
                return new ConcurrentHashMap();
            case 9:
                return new ConcurrentSkipListMap();
            case 10:
                return new ArrayList();
            case 11:
                return new LinkedHashSet();
            case 12:
                return new TreeSet();
            default:
                return new ArrayDeque();
        }
    }

    @Override // y9.a
    public String d(byte[] bArr) {
        switch (this.f325a) {
        }
        return Base64.encodeToString(bArr, 2);
    }

    @Override // com.android.apksig.util.RunnablesExecutor
    public void execute(RunnablesProvider runnablesProvider) {
        runnablesProvider.createRunnable().run();
    }

    @Override // ec.d
    public void g(mc.b bVar) throws Exception {
        String strG;
        int i10 = 0;
        int i11 = 1;
        switch (this.f325a) {
            case 14:
                ArrayList arrayListC = com.yunpan.appmanage.util.e0.f4012a.c();
                while (i10 < arrayListC.size()) {
                    n5 n5Var = (n5) arrayListC.get(i10);
                    if (n5Var.f18290a == 21) {
                        if (!s1.g.k0(n5Var)) {
                            n5Var.r = "";
                            try {
                                z7.s sVar = new z7.s();
                                sVar.m("client_id", "aMe-8VSlkrbQXpUR");
                                sVar.m("grant_type", "refresh_token");
                                sVar.m("refresh_token", n5Var.f18306s);
                                strG = s1.g.G("https://account.guangyapan.com/v1/auth/token", sVar.toString());
                                System.out.getClass();
                            } catch (Exception unused) {
                            }
                            if (!strG.contains("access_token")) {
                                throw new Exception("请求失败");
                                break;
                            } else {
                                z7.s sVarG = d.b.b0(strG).g();
                                n5Var.r = sVarG.o("access_token").i();
                                n5Var.f18306s = sVarG.o("refresh_token").i();
                                n5Var.f18307t = sVarG.o("sub").i();
                                if (!n5Var.r.isEmpty()) {
                                    com.yunpan.appmanage.util.e0.f4012a.h(i10, n5Var);
                                    bVar.f(n5Var);
                                    bVar.b();
                                    return;
                                }
                            }
                        } else {
                            bVar.f(n5Var);
                            bVar.b();
                            return;
                        }
                    }
                    i10++;
                }
                bVar.d(new Exception("没有光鸭网盘账号"));
                bVar.b();
                return;
            case 15:
                ArrayList arrayListC2 = com.yunpan.appmanage.util.e0.f4012a.c();
                while (i10 < arrayListC2.size()) {
                    n5 n5Var2 = (n5) arrayListC2.get(i10);
                    if (n5Var2.f18290a == 2) {
                        if (qf.c.j0(n5Var2)) {
                            bVar.f(n5Var2);
                            bVar.b();
                            return;
                        }
                        n5Var2.f18300k = "";
                        String strK = qf.c.K(n5Var2);
                        com.yunpan.appmanage.util.e0.f4012a.h(i10, n5Var2);
                        if (strK.isEmpty() && !n5Var2.f18300k.isEmpty()) {
                            bVar.f(n5Var2);
                            bVar.b();
                            return;
                        }
                    }
                    i10++;
                }
                bVar.d(new Exception("没有123网盘账号"));
                bVar.b();
                return;
            case 17:
                try {
                    bVar.f(q4.a.v());
                    bVar.b();
                    return;
                } catch (Exception e7) {
                    bVar.d(e7);
                    return;
                }
            case 26:
                fa.m mVar = fa.l.f5712a;
                if (mVar.isConnected()) {
                    mVar.O("reboot:");
                } else {
                    fa.j jVar = fa.h.f5683a;
                    if (jVar.i()) {
                        u9.d.f15554a.execute(new fa.f(jVar, i11));
                    } else {
                        u9.d.r("reboot").l0();
                    }
                }
                bVar.b();
                return;
            default:
                fa.e0 e0Var = fa.a.f5647b;
                if (!e0Var.c()) {
                    android.support.v4.media.session.a.B("adb已断开，请重新连接", bVar);
                    return;
                }
                e0Var.f5673c.J("reboot:");
                Thread.sleep(2000L);
                bVar.b();
                return;
        }
    }
}
