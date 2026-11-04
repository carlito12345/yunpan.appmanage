package a2;

import android.os.Handler;

/* loaded from: classes.dex */
public final class j0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f194a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f195b;

    /* renamed from: c, reason: collision with root package name */
    public final y1.t f196c;

    public j0(Handler handler, y1.t tVar, int i10) {
        this.f194a = i10;
        switch (i10) {
            case 1:
                if (tVar != null) {
                    handler.getClass();
                } else {
                    handler = null;
                }
                this.f195b = handler;
                this.f196c = tVar;
                break;
            default:
                this.f195b = handler;
                this.f196c = tVar;
                break;
        }
    }

    private final void b(y1.c cVar) {
        synchronized (cVar) {
        }
        Handler handler = this.f195b;
        if (handler != null) {
            handler.post(new d0(this, cVar, 0));
        }
    }

    public final void a(y1.c cVar) {
        switch (this.f194a) {
            case 0:
                b(cVar);
                break;
            default:
                synchronized (cVar) {
                }
                Handler handler = this.f195b;
                if (handler != null) {
                    handler.post(new androidx.media3.exoplayer.video.g0(this, cVar, 1));
                    break;
                }
                break;
        }
    }

    public void c(r1.b1 b1Var) {
        Handler handler = this.f195b;
        if (handler != null) {
            handler.post(new c0(this, 7, b1Var));
        }
    }
}
