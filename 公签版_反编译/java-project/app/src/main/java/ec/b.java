package ec;

import mc.p;

/* loaded from: classes.dex */
public abstract class b {
    public final mc.g a(fc.e eVar) {
        int i10 = a.f4906a;
        jc.a.b(i10, "bufferSize");
        return new mc.g(this, eVar, i10, 1);
    }

    public final void b(e eVar) {
        try {
            c(eVar);
        } catch (NullPointerException e7) {
            throw e7;
        } catch (Throwable th2) {
            p000if.a.K0(th2);
            qf.c.P(th2);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th2);
            throw nullPointerException;
        }
    }

    public abstract void c(e eVar);

    public final p d(j jVar) {
        jc.a.a(jVar, "scheduler is null");
        return new p(this, jVar);
    }
}
