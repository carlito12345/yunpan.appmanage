package j$.time.format;

import j$.time.Instant;
import j$.time.chrono.InterfaceC0012b;

/* loaded from: classes2.dex */
final class p implements j$.time.temporal.o {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ InterfaceC0012b f8871a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Instant f8872b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ j$.time.chrono.n f8873c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ j$.time.w f8874d;

    @Override // j$.time.temporal.o
    public final /* synthetic */ int k(j$.time.temporal.r rVar) {
        return j$.time.temporal.n.a(this, rVar);
    }

    p(InterfaceC0012b interfaceC0012b, Instant instant, j$.time.chrono.n nVar, j$.time.w wVar) {
        this.f8871a = interfaceC0012b;
        this.f8872b = instant;
        this.f8873c = nVar;
        this.f8874d = wVar;
    }

    @Override // j$.time.temporal.o
    public final boolean f(j$.time.temporal.r rVar) {
        InterfaceC0012b interfaceC0012b = this.f8871a;
        if (interfaceC0012b != null && rVar.v()) {
            return interfaceC0012b.f(rVar);
        }
        return this.f8872b.f(rVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        InterfaceC0012b interfaceC0012b = this.f8871a;
        if (interfaceC0012b != null && rVar.v()) {
            return interfaceC0012b.n(rVar);
        }
        return j$.time.temporal.n.d(this.f8872b, rVar);
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        InterfaceC0012b interfaceC0012b = this.f8871a;
        if (interfaceC0012b != null && rVar.v()) {
            return interfaceC0012b.s(rVar);
        }
        return this.f8872b.s(rVar);
    }

    @Override // j$.time.temporal.o
    public final Object v(j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.n.e()) {
            return this.f8873c;
        }
        if (tVar == j$.time.temporal.n.k()) {
            return this.f8874d;
        }
        if (tVar == j$.time.temporal.n.i()) {
            return this.f8872b.v(tVar);
        }
        return tVar.a(this);
    }

    public final String toString() {
        String str;
        String str2 = "";
        j$.time.chrono.n nVar = this.f8873c;
        if (nVar != null) {
            str = " with chronology " + nVar;
        } else {
            str = "";
        }
        j$.time.w wVar = this.f8874d;
        if (wVar != null) {
            str2 = " with zone " + wVar;
        }
        return this.f8872b + str + str2;
    }
}
