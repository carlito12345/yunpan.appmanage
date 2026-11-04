package xh;

import java.io.Serializable;
import sh.p;

/* loaded from: classes3.dex */
public final class e implements Comparable, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final sh.f f18500a;

    /* renamed from: b, reason: collision with root package name */
    public final p f18501b;

    /* renamed from: c, reason: collision with root package name */
    public final p f18502c;

    public e(sh.f fVar, p pVar, p pVar2) {
        this.f18500a = fVar;
        this.f18501b = pVar;
        this.f18502c = pVar2;
    }

    private Object writeReplace() {
        return new a((byte) 2, this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        e eVar = (e) obj;
        p pVar = this.f18501b;
        sh.d dVarN = sh.d.n(this.f18500a.m(pVar), r1.f14587b.f14594d);
        sh.d dVarN2 = sh.d.n(eVar.f18500a.m(eVar.f18501b), r1.f14587b.f14594d);
        dVarN.getClass();
        int iM = p000if.a.m(dVarN.f14577a, dVarN2.f14577a);
        return iM != 0 ? iM : dVarN.f14578b - dVarN2.f14578b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f18500a.equals(eVar.f18500a) && this.f18501b.equals(eVar.f18501b) && this.f18502c.equals(eVar.f18502c);
    }

    public final int hashCode() {
        return (this.f18500a.hashCode() ^ this.f18501b.f14619a) ^ Integer.rotateLeft(this.f18502c.f14619a, 16);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Transition[");
        p pVar = this.f18502c;
        int i10 = pVar.f14619a;
        p pVar2 = this.f18501b;
        sb2.append(i10 > pVar2.f14619a ? "Gap" : "Overlap");
        sb2.append(" at ");
        sb2.append(this.f18500a);
        sb2.append(pVar2);
        sb2.append(" to ");
        sb2.append(pVar);
        sb2.append(']');
        return sb2.toString();
    }

    public e(long j10, p pVar, p pVar2) {
        this.f18500a = sh.f.r(j10, 0, pVar);
        this.f18501b = pVar;
        this.f18502c = pVar2;
    }
}
