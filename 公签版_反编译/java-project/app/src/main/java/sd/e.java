package sd;

import java.net.InetAddress;
import java.net.UnknownHostException;
import vc.l;

/* loaded from: classes.dex */
public final class e extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final androidx.leanback.widget.i f14493a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14494b;

    /* renamed from: c, reason: collision with root package name */
    public final int f14495c;

    /* renamed from: d, reason: collision with root package name */
    public l[] f14496d;

    /* renamed from: e, reason: collision with root package name */
    public final InetAddress f14497e;

    /* renamed from: f, reason: collision with root package name */
    public UnknownHostException f14498f;

    /* renamed from: g, reason: collision with root package name */
    public final xc.a f14499g;

    public e(androidx.leanback.widget.i iVar, String str, int i10, InetAddress inetAddress, xc.a aVar) {
        super(da.b.c("JCIFS-QueryThread: ", str));
        this.f14496d = null;
        this.f14493a = iVar;
        this.f14494b = str;
        this.f14495c = i10;
        this.f14497e = inetAddress;
        this.f14499g = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            try {
                try {
                    this.f14496d = this.f14499g.f18434e.h(this.f14497e, this.f14495c, this.f14494b);
                    synchronized (this.f14493a) {
                        r1.f1647b--;
                        this.f14493a.notify();
                    }
                } catch (Exception e7) {
                    this.f14498f = new UnknownHostException(e7.getMessage());
                    synchronized (this.f14493a) {
                        r1.f1647b--;
                        this.f14493a.notify();
                    }
                }
            } catch (UnknownHostException e10) {
                this.f14498f = e10;
                synchronized (this.f14493a) {
                    r1.f1647b--;
                    this.f14493a.notify();
                }
            }
        } catch (Throwable th2) {
            synchronized (this.f14493a) {
                r2.f1647b--;
                this.f14493a.notify();
                throw th2;
            }
        }
    }
}
