package j$.time.zone;

import j$.time.Duration;
import j$.time.chrono.AbstractC0019i;
import j$.time.x;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class b implements Comparable, Serializable {
    private static final long serialVersionUID = -6946044323557704546L;

    /* renamed from: a, reason: collision with root package name */
    private final long f8967a;

    /* renamed from: b, reason: collision with root package name */
    private final j$.time.g f8968b;

    /* renamed from: c, reason: collision with root package name */
    private final x f8969c;

    /* renamed from: d, reason: collision with root package name */
    private final x f8970d;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return (this.f8967a > ((b) obj).f8967a ? 1 : (this.f8967a == ((b) obj).f8967a ? 0 : -1));
    }

    b(j$.time.g gVar, x xVar, x xVar2) {
        gVar.getClass();
        this.f8967a = AbstractC0019i.n(gVar, xVar);
        this.f8968b = gVar;
        this.f8969c = xVar;
        this.f8970d = xVar2;
    }

    b(long j10, x xVar, x xVar2) {
        this.f8967a = j10;
        this.f8968b = j$.time.g.L(j10, 0, xVar);
        this.f8969c = xVar;
        this.f8970d = xVar2;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a((byte) 2, this);
    }

    final void writeExternal(ObjectOutput objectOutput) {
        a.c(this.f8967a, objectOutput);
        a.d(this.f8969c, objectOutput);
        a.d(this.f8970d, objectOutput);
    }

    public final long B() {
        return this.f8967a;
    }

    public final j$.time.g k() {
        return this.f8968b;
    }

    public final x s() {
        return this.f8969c;
    }

    public final x n() {
        return this.f8970d;
    }

    public final j$.time.g j() {
        return this.f8968b.N(this.f8970d.I() - this.f8969c.I());
    }

    public final Duration m() {
        return Duration.n(this.f8970d.I() - this.f8969c.I());
    }

    public final boolean w() {
        return this.f8970d.I() > this.f8969c.I();
    }

    final List v() {
        return w() ? Collections.emptyList() : j$.com.android.tools.r8.a.f(new Object[]{this.f8969c, this.f8970d});
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f8967a == bVar.f8967a && this.f8969c.equals(bVar.f8969c) && this.f8970d.equals(bVar.f8970d);
    }

    public final int hashCode() {
        return (this.f8968b.hashCode() ^ this.f8969c.hashCode()) ^ Integer.rotateLeft(this.f8970d.hashCode(), 16);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Transition[");
        sb2.append(w() ? "Gap" : "Overlap");
        sb2.append(" at ");
        sb2.append(this.f8968b);
        sb2.append(this.f8969c);
        sb2.append(" to ");
        sb2.append(this.f8970d);
        sb2.append(']');
        return sb2.toString();
    }
}
