package wd;

import ae.g;
import androidx.leanback.widget.i;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* loaded from: classes.dex */
public final class b extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final i f17873a;

    /* renamed from: b, reason: collision with root package name */
    public final String f17874b;

    /* renamed from: c, reason: collision with root package name */
    public final int f17875c;

    /* renamed from: d, reason: collision with root package name */
    public g f17876d;

    /* renamed from: e, reason: collision with root package name */
    public final InetAddress f17877e;

    /* renamed from: f, reason: collision with root package name */
    public UnknownHostException f17878f;

    public b(i iVar, String str, int i10, InetAddress inetAddress) {
        super(da.b.c("JCIFS-QueryThread: ", str));
        this.f17876d = null;
        this.f17873a = iVar;
        this.f17874b = str;
        this.f17875c = i10;
        this.f17877e = inetAddress;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            try {
                this.f17876d = g.d(this.f17877e, this.f17875c, this.f17874b);
                synchronized (this.f17873a) {
                    r1.f1647b--;
                    this.f17873a.notify();
                }
            } catch (UnknownHostException e7) {
                this.f17878f = e7;
                synchronized (this.f17873a) {
                    r1.f1647b--;
                    this.f17873a.notify();
                }
            } catch (Exception e10) {
                this.f17878f = new UnknownHostException(e10.getMessage());
                synchronized (this.f17873a) {
                    r1.f1647b--;
                    this.f17873a.notify();
                }
            }
        } catch (Throwable th2) {
            synchronized (this.f17873a) {
                r2.f1647b--;
                this.f17873a.notify();
                throw th2;
            }
        }
    }
}
