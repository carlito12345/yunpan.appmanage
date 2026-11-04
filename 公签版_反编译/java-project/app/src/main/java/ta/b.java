package ta;

import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.util.a0;
import wa.t;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14856a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AccService f14857b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ z7.o f14858c;

    public /* synthetic */ b(AccService accService, z7.o oVar, int i10) {
        this.f14856a = i10;
        this.f14857b = accService;
        this.f14858c = oVar;
    }

    private final void a() {
        AccService accService = this.f14857b;
        z7.o oVar = this.f14858c;
        if (accService.R0) {
            return;
        }
        if (t.f17728a.z > 0) {
            synchronized (accService.Q0) {
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    accService.Q0.addLast(Long.valueOf(jCurrentTimeMillis));
                    while (!accService.Q0.isEmpty() && jCurrentTimeMillis - ((Long) accService.Q0.getFirst()).longValue() > 120000) {
                        accService.Q0.removeFirst();
                    }
                    if (accService.Q0.size() >= t.f17728a.z) {
                        accService.R0 = true;
                        a0.s("触发熔断保护，3秒后停止自动化", false);
                        try {
                            Thread.sleep(PopupConst.DURATION_POPUP_SHORT);
                        } catch (Exception unused) {
                        }
                        accService.G.sendEmptyMessage(-1);
                        return;
                    }
                } finally {
                }
            }
        }
        l.k(accService, oVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f14856a) {
            case 0:
                a();
                return;
            default:
                AccService accService = this.f14857b;
                z7.o oVar = this.f14858c;
                if (accService.T0) {
                    return;
                }
                if (t.f17728a.A > 0) {
                    synchronized (accService.S0) {
                        try {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            accService.S0.addLast(Long.valueOf(jCurrentTimeMillis));
                            while (!accService.S0.isEmpty() && jCurrentTimeMillis - ((Long) accService.S0.getFirst()).longValue() > 120000) {
                                accService.S0.removeFirst();
                            }
                            if (accService.S0.size() >= t.f17728a.A) {
                                accService.T0 = true;
                                a0.s("触发日志熔断保护，3秒后停止自动化", false);
                                try {
                                    Thread.sleep(PopupConst.DURATION_POPUP_SHORT);
                                } catch (Exception unused) {
                                }
                                accService.G.sendEmptyMessage(-1);
                                return;
                            }
                        } finally {
                        }
                    }
                }
                l.k(accService, oVar);
                return;
        }
    }
}
