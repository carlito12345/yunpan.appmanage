package androidx.media3.exoplayer.video;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.Surface;
import r1.b1;

/* loaded from: classes.dex */
public final class l implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f1918a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f1919b;

    public l(m mVar, d2.n nVar) {
        this.f1919b = mVar;
        Handler handlerK = u1.f0.k(this);
        this.f1918a = handlerK;
        nVar.j(this, handlerK);
    }

    public final void a(long j10) {
        Surface surface;
        m mVar = this.f1919b;
        if (this != mVar.f1935m2 || mVar.R == null) {
            return;
        }
        if (j10 == Long.MAX_VALUE) {
            mVar.f4329m1 = true;
            return;
        }
        try {
            mVar.B0(j10);
            b1 b1Var = mVar.f1930h2;
            boolean zEquals = b1Var.equals(b1.f13418d);
            a2.j0 j0Var = mVar.B1;
            if (!zEquals && !b1Var.equals(mVar.f1931i2)) {
                mVar.f1931i2 = b1Var;
                j0Var.c(b1Var);
            }
            mVar.f4331o1.f18591e++;
            z zVar = mVar.E1;
            boolean z = zVar.f1989e != 3;
            zVar.f1989e = 3;
            zVar.l.getClass();
            zVar.f1991g = u1.f0.G(SystemClock.elapsedRealtime());
            if (z && (surface = mVar.R1) != null) {
                Handler handler = j0Var.f195b;
                if (handler != null) {
                    handler.post(new f0(j0Var, surface, SystemClock.elapsedRealtime()));
                }
                mVar.U1 = true;
            }
            mVar.g0(j10);
        } catch (y1.k e7) {
            mVar.f4330n1 = e7;
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            return false;
        }
        int i10 = message.arg1;
        int i11 = message.arg2;
        String str = u1.f0.f15206a;
        a(((i10 & 4294967295L) << 32) | (4294967295L & i11));
        return true;
    }
}
