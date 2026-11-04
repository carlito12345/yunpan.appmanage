package j$.time.format;

import j$.time.DateTimeException;
import j$.time.Instant;
import j$.time.chrono.InterfaceC0012b;
import j$.util.Objects;
import java.util.Locale;

/* loaded from: classes2.dex */
final class q {

    /* renamed from: a, reason: collision with root package name */
    private j$.time.temporal.o f8875a;

    /* renamed from: b, reason: collision with root package name */
    private a f8876b;

    /* renamed from: c, reason: collision with root package name */
    private int f8877c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [j$.time.format.p] */
    q(Instant instant, a aVar) {
        j$.time.chrono.n nVarB = aVar.b();
        if (nVarB != null) {
            j$.time.chrono.n nVar = (j$.time.chrono.n) instant.v(j$.time.temporal.n.e());
            j$.time.w wVar = (j$.time.w) instant.v(j$.time.temporal.n.k());
            InterfaceC0012b interfaceC0012bL = null;
            nVarB = Objects.equals(nVarB, nVar) ? null : nVarB;
            Objects.equals(null, wVar);
            if (nVarB != null) {
                j$.time.chrono.n nVar2 = nVarB != null ? nVarB : nVar;
                if (nVarB != null) {
                    if (instant.f(j$.time.temporal.a.EPOCH_DAY)) {
                        interfaceC0012bL = nVar2.l(instant);
                    } else if (nVarB != j$.time.chrono.u.f8817d || nVar != null) {
                        for (j$.time.temporal.a aVar2 : j$.time.temporal.a.values()) {
                            if (aVar2.v() && instant.f(aVar2)) {
                                throw new DateTimeException("Unable to apply override chronology '" + nVarB + "' because the temporal object being formatted contains date fields but does not represent a whole date: " + instant);
                            }
                        }
                    }
                }
                instant = new p(interfaceC0012bL, instant, nVar2, wVar);
            }
        }
        this.f8875a = instant;
        this.f8876b = aVar;
    }

    final j$.time.temporal.o d() {
        return this.f8875a;
    }

    final Locale c() {
        return this.f8876b.d();
    }

    final t b() {
        return this.f8876b.c();
    }

    final void g() {
        this.f8877c++;
    }

    final void a() {
        this.f8877c--;
    }

    final Object f(b bVar) {
        j$.time.temporal.o oVar = this.f8875a;
        Object objV = oVar.v(bVar);
        if (objV != null || this.f8877c != 0) {
            return objV;
        }
        throw new DateTimeException("Unable to extract " + bVar + " from temporal " + oVar);
    }

    final Long e(j$.time.temporal.r rVar) {
        int i10 = this.f8877c;
        j$.time.temporal.o oVar = this.f8875a;
        if (i10 <= 0 || oVar.f(rVar)) {
            return Long.valueOf(oVar.s(rVar));
        }
        return null;
    }

    public final String toString() {
        return this.f8875a.toString();
    }
}
