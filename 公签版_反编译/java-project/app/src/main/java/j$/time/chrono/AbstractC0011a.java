package j$.time.chrono;

import j$.time.DateTimeException;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.ServiceLoader;
import org.simpleframework.xml.strategy.Name;

/* renamed from: j$.time.chrono.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0011a implements n {

    /* renamed from: a, reason: collision with root package name */
    private static final ConcurrentHashMap f8782a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    private static final ConcurrentHashMap f8783b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f8784c = 0;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return i().compareTo(((n) obj).i());
    }

    static {
        new Locale("ja", "JP", "JP");
    }

    static n k(AbstractC0011a abstractC0011a, String str) {
        String strR;
        n nVar = (n) f8782a.putIfAbsent(str, abstractC0011a);
        if (nVar == null && (strR = abstractC0011a.r()) != null) {
            f8783b.putIfAbsent(strR, abstractC0011a);
        }
        return nVar;
    }

    static n j(String str) {
        Objects.requireNonNull(str, Name.MARK);
        while (true) {
            ConcurrentHashMap concurrentHashMap = f8782a;
            n nVar = (n) concurrentHashMap.get(str);
            if (nVar == null) {
                nVar = (n) f8783b.get(str);
            }
            if (nVar != null) {
                return nVar;
            }
            if (concurrentHashMap.get("ISO") != null) {
                Iterator it = ServiceLoader.load(n.class).iterator();
                while (it.hasNext()) {
                    n nVar2 = (n) it.next();
                    if (str.equals(nVar2.i()) || str.equals(nVar2.r())) {
                        return nVar2;
                    }
                }
                throw new DateTimeException("Unknown chronology: " + str);
            }
            q qVar = q.f8800o;
            k(qVar, qVar.i());
            x xVar = x.f8820d;
            k(xVar, xVar.i());
            C c7 = C.f8771d;
            k(c7, c7.i());
            I i10 = I.f8778d;
            k(i10, i10.i());
            Iterator it2 = ServiceLoader.load(AbstractC0011a.class, null).iterator();
            while (it2.hasNext()) {
                AbstractC0011a abstractC0011a = (AbstractC0011a) it2.next();
                if (!abstractC0011a.i().equals("ISO")) {
                    k(abstractC0011a, abstractC0011a.i());
                }
            }
            u uVar = u.f8817d;
            k(uVar, uVar.i());
        }
    }

    protected AbstractC0011a() {
    }

    @Override // j$.time.chrono.n
    public InterfaceC0015e o(j$.time.g gVar) {
        try {
            return l(gVar).u(j$.time.i.E(gVar));
        } catch (DateTimeException e7) {
            throw new DateTimeException("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + j$.time.g.class, e7);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbstractC0011a) && i().compareTo(((AbstractC0011a) obj).i()) == 0;
    }

    public final int hashCode() {
        return getClass().hashCode() ^ i().hashCode();
    }

    public final String toString() {
        return i();
    }
}
