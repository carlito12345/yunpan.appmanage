package j$.time.chrono;

import j$.time.DateTimeException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class u extends AbstractC0011a implements Serializable {

    /* renamed from: d, reason: collision with root package name */
    public static final u f8817d = new u();
    private static final long serialVersionUID = -1440403870442975015L;

    @Override // j$.time.chrono.n
    public final o A(int i10) {
        if (i10 == 0) {
            return v.BCE;
        }
        if (i10 == 1) {
            return v.CE;
        }
        throw new DateTimeException("Invalid era: " + i10);
    }

    private u() {
    }

    @Override // j$.time.chrono.n
    public final String i() {
        return "ISO";
    }

    @Override // j$.time.chrono.n
    public final String r() {
        return "iso8601";
    }

    @Override // j$.time.chrono.n
    public final InterfaceC0012b l(j$.time.temporal.o oVar) {
        return j$.time.e.E(oVar);
    }

    @Override // j$.time.chrono.AbstractC0011a, j$.time.chrono.n
    public final InterfaceC0015e o(j$.time.g gVar) {
        return j$.time.g.D(gVar);
    }

    public static boolean m(long j10) {
        return (3 & j10) == 0 && (j10 % 100 != 0 || j10 % 400 == 0);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    Object writeReplace() {
        return new G((byte) 1, this);
    }
}
