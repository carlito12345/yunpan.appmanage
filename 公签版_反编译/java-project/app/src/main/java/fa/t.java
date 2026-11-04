package fa;

import a2.w0;
import android.content.Context;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final /* synthetic */ class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5750a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5751b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5752c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f5753d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f5754e;

    public /* synthetic */ t(int i10, Object obj, Object obj2, Object obj3, boolean z) {
        this.f5750a = i10;
        this.f5751b = obj;
        this.f5753d = z;
        this.f5752c = obj2;
        this.f5754e = obj3;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x016e A[PHI: r4
  0x016e: PHI (r4v16 fa.a0) = (r4v15 fa.a0), (r4v19 fa.a0), (r4v19 fa.a0) binds: [B:49:0x0140, B:51:0x0159, B:53:0x0163] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        String str;
        String str2;
        a0 a0VarQ;
        String strA;
        String str3;
        switch (this.f5750a) {
            case 0:
                w0 w0Var = (w0) this.f5751b;
                w0Var.getClass();
                StringBuilder sb2 = new StringBuilder("pm ");
                sb2.append(this.f5753d ? "grant" : "revoke");
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                if (kVar.f4060n == 0) {
                    str = "";
                } else {
                    str = " --user " + kVar.f4060n;
                }
                sb2.append(str);
                sb2.append(" '");
                sb2.append((String) this.f5752c);
                sb2.append("' ");
                sb2.append((String) this.f5754e);
                a0 a0VarQ2 = w0.q(3333L, sb2.toString());
                String strA2 = a0VarQ2.a();
                if (strA2.contains("Failure") || strA2.contains("Error:") || a0VarQ2.f5648a != 0) {
                    w0Var.e0(101, "此权限无需设置，由系统自动授权！或者在OPS中授权");
                    return;
                } else {
                    w0Var.e0(100, "设置成功");
                    return;
                }
            case 1:
                w0 w0Var2 = (w0) this.f5751b;
                w0Var2.getClass();
                String strReplace = ((String) this.f5752c).replace("android.permission.", "");
                if (strReplace.contains(".")) {
                    w0Var2.e0(101, "APPOPS不支持此权限");
                    return;
                }
                int i10 = 0;
                do {
                    boolean z = this.f5753d;
                    String str4 = (String) this.f5754e;
                    if (z) {
                        StringBuilder sb3 = new StringBuilder();
                        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                        sb3.append(kVar2.f4047g ? "cmd " : "");
                        sb3.append("appops set");
                        if (kVar2.f4060n == 0) {
                            str3 = "";
                        } else {
                            str3 = " --user " + kVar2.f4060n;
                        }
                        android.support.v4.media.session.a.C(sb3, str3, " '", str4, "' ");
                        sb3.append(strReplace);
                        sb3.append(" allow");
                        a0VarQ = w0.q(3333L, sb3.toString());
                    } else {
                        StringBuilder sb4 = new StringBuilder();
                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar3 = com.yunpan.appmanage.util.j.f4033a;
                        sb4.append(kVar3.f4047g ? "cmd " : "");
                        sb4.append("appops set");
                        if (kVar3.f4060n == 0) {
                            str2 = "";
                        } else {
                            str2 = " --user " + kVar3.f4060n;
                        }
                        android.support.v4.media.session.a.C(sb4, str2, " '", str4, "' ");
                        String strL = g.b.l(strReplace, " ", sb4);
                        a0 a0VarQ3 = w0.q(3333L, strL + "deny");
                        if (a0VarQ3.f5648a != 0 && a0VarQ3.a().contains("found")) {
                            a0VarQ3 = w0.q(3333L, strL.substring(4));
                        }
                        if (a0VarQ3.f5648a != 0) {
                            a0VarQ3 = w0.q(3333L, strL + "ignore");
                            a0VarQ = (a0VarQ3.f5648a == 0 || !a0VarQ3.a().contains("found")) ? a0VarQ3 : w0.q(3333L, strL.substring(4));
                        }
                    }
                    if (i10 <= 0) {
                        if (a0VarQ.f5648a != 0) {
                            if (strReplace.equals("READ_PHONE_STATE")) {
                                a0VarQ.f5648a = -888;
                                strReplace = "OP_READ_PHONE_STATE";
                            } else if (strReplace.equals("OP_READ_PHONE_STATE")) {
                                a0VarQ.f5648a = -888;
                                strReplace = "READ_PHONE_STATE";
                            }
                        }
                        i10++;
                    }
                    strA = a0VarQ.a();
                    if (strA.contains("Failure") && !strA.contains("Error:") && a0VarQ.f5648a == 0) {
                        w0Var2.e0(100, "设置成功");
                        return;
                    } else {
                        w0Var2.e0(101, "APPOPS不支持管理此权限");
                        return;
                    }
                } while (a0VarQ.f5648a == -888);
                strA = a0VarQ.a();
                if (strA.contains("Failure")) {
                }
                w0Var2.e0(101, "APPOPS不支持管理此权限");
                return;
            default:
                Context context = (Context) this.f5751b;
                boolean z4 = this.f5753d;
                y1.x xVar = (y1.x) this.f5752c;
                z1.i iVar = (z1.i) this.f5754e;
                MediaMetricsManager mediaMetricsManagerE = x0.d.e(context.getSystemService("media_metrics"));
                z1.h hVar = mediaMetricsManagerE == null ? null : new z1.h(context, mediaMetricsManagerE.createPlaybackSession());
                if (hVar == null) {
                    u1.a.p("MediaMetricsService unavailable.");
                    return;
                }
                if (z4) {
                    xVar.getClass();
                    z1.e eVar = xVar.f18866t;
                    eVar.getClass();
                    eVar.f19345f.a(hVar);
                }
                LogSessionId sessionId = hVar.f19368d.getSessionId();
                synchronized (iVar) {
                    w.i iVar2 = iVar.f19390b;
                    iVar2.getClass();
                    a9.o.t(((LogSessionId) iVar2.f17092b).equals(LogSessionId.LOG_SESSION_ID_NONE));
                    iVar2.f17092b = sessionId;
                }
                return;
        }
    }

    public /* synthetic */ t(w0 w0Var, String str, boolean z, String str2) {
        this.f5750a = 1;
        this.f5751b = w0Var;
        this.f5752c = str;
        this.f5753d = z;
        this.f5754e = str2;
    }
}
