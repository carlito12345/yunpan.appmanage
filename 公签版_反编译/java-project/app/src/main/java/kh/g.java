package kh;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.fragment.app.b0;

/* loaded from: classes3.dex */
public final class g extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final kf.d f10348a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10349b;

    /* renamed from: c, reason: collision with root package name */
    public final e f10350c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f10351d;

    public g(e eVar, Looper looper) {
        super(looper);
        this.f10350c = eVar;
        this.f10349b = 10;
        this.f10348a = new kf.d(1, false);
    }

    public final void a(Object obj, n nVar) {
        i iVarA = i.a(obj, nVar);
        synchronized (this) {
            try {
                this.f10348a.v(iVarA);
                if (!this.f10351d) {
                    this.f10351d = true;
                    if (!sendMessage(obtainMessage())) {
                        throw new b0("Could not send handler message", 7);
                    }
                }
            } finally {
            }
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            do {
                i iVarL = this.f10348a.L();
                if (iVarL == null) {
                    synchronized (this) {
                        iVarL = this.f10348a.L();
                        if (iVarL == null) {
                            this.f10351d = false;
                            return;
                        }
                    }
                }
                this.f10350c.d(iVarL);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.f10349b);
            if (!sendMessage(obtainMessage())) {
                throw new b0("Could not send handler message", 7);
            }
            this.f10351d = true;
        } catch (Throwable th2) {
            this.f10351d = false;
            throw th2;
        }
    }
}
