package h;

import java.io.IOException;
import java.security.cert.CertificateException;
import java.util.Collections;
import java.util.Hashtable;

/* loaded from: classes.dex */
public final class g implements e {

    /* renamed from: a, reason: collision with root package name */
    public final Hashtable f6236a = new Hashtable();

    static {
        g.c.a("x509");
    }

    @Override // h.e
    public final void a(g.f fVar) throws IOException, CertificateException {
        g.f fVar2 = new g.f();
        for (Object obj : this.f6236a.values().toArray()) {
            if (obj instanceof e) {
                ((e) obj).a(fVar2);
            } else {
                if (!(obj instanceof n)) {
                    throw new CertificateException("Illegal extension object");
                }
                ((n) obj).b(fVar2);
            }
        }
        g.f fVar3 = new g.f();
        fVar3.J((byte) 48, fVar2);
        g.f fVar4 = new g.f();
        fVar4.J(g.g.a(true, (byte) 3), fVar3);
        fVar.write(fVar4.toByteArray());
    }

    public final void b(Object obj, String str) {
        if (!(obj instanceof n)) {
            throw new IOException("Unknown extension type.");
        }
        this.f6236a.put(str, (n) obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        Object[] array = ((g) obj).f6236a.values().toArray();
        int length = array.length;
        Hashtable hashtable = this.f6236a;
        if (length != hashtable.size()) {
            return false;
        }
        String string = null;
        for (int i10 = 0; i10 < length; i10++) {
            Object obj2 = array[i10];
            if (obj2 instanceof e) {
                string = ((e) obj2).getName();
            }
            n nVar = (n) array[i10];
            if (string == null) {
                string = nVar.f6246a.toString();
            }
            n nVar2 = (n) hashtable.get(string);
            if (nVar2 == null || !nVar2.equals(nVar)) {
                return false;
            }
        }
        return Collections.emptyMap().equals(Collections.emptyMap());
    }

    @Override // h.e
    public final String getName() {
        return "extensions";
    }

    public final int hashCode() {
        return Collections.emptyMap().hashCode() + this.f6236a.hashCode();
    }

    public final String toString() {
        return this.f6236a.toString();
    }
}
