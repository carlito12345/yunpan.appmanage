package wb;

import java.util.concurrent.locks.ReentrantLock;
import s3.d0;
import u1.p;

/* loaded from: classes.dex */
public final class f extends a {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ bd.e f17784c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ p f17785d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ eb.c f17786e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ bd.e f17787f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f17788g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ g f17789h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(g gVar, d0 d0Var, bd.e eVar, p pVar, eb.c cVar, bd.e eVar2, int i10) {
        super(gVar, d0Var);
        this.f17789h = gVar;
        this.f17784c = eVar;
        this.f17785d = pVar;
        this.f17786e = cVar;
        this.f17787f = eVar2;
        this.f17788g = i10;
    }

    @Override // wb.a
    public final Object a() {
        ReentrantLock reentrantLock = (ReentrantLock) this.f17784c.f2791h;
        reentrantLock.lock();
        try {
            mb.g gVar = this.f17789h.f17778b;
            int size = gVar.f11064a.size() - 1;
            final p pVar = this.f17785d;
            final eb.c cVar = this.f17786e;
            final bd.e eVar = this.f17784c;
            final bd.e eVar2 = this.f17787f;
            gVar.x(0, size, new mb.e() { // from class: wb.e
                @Override // mb.e
                public final void c(int i10, mb.h hVar, ag.h hVar2) {
                    f fVar = this.f17779a;
                    fVar.getClass();
                    int iD = (int) pVar.d(hVar, 0, hVar.f11076c, cVar);
                    int iV = g.v(fVar.f17789h.t());
                    if (!fVar.b()) {
                        hVar2.f680a = true;
                        return;
                    }
                    bd.e eVar3 = eVar;
                    eVar3.b(eVar3.f2786c, iD + iV);
                    bd.e eVar4 = eVar2;
                    eVar4.b(eVar4.f2786c, iV);
                }
            });
            reentrantLock.unlock();
            return null;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    @Override // wb.a
    public final boolean b() {
        return super.b() && this.f17789h.f17790d.get() == this.f17788g;
    }
}
