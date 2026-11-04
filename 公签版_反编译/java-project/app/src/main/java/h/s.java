package h;

import java.io.IOException;
import java.util.Date;

/* loaded from: classes.dex */
public final class s extends n implements e {

    /* renamed from: c, reason: collision with root package name */
    public final Date f6275c;

    /* renamed from: d, reason: collision with root package name */
    public final Date f6276d;

    public s(Date date, Date date2) throws IOException {
        this.f6275c = date;
        this.f6276d = date2;
        this.f6246a = r.f6257d;
        c();
    }

    @Override // h.e
    public final void a(g.f fVar) throws IOException {
        g.f fVar2 = new g.f();
        if (this.f6247b == null) {
            this.f6246a = r.f6257d;
            c();
        }
        b(fVar2);
        fVar.write(fVar2.toByteArray());
    }

    public final void c() throws IOException {
        Date date = this.f6276d;
        Date date2 = this.f6275c;
        g.f fVar = new g.f();
        g.f fVar2 = new g.f();
        g.f fVar3 = new g.f();
        fVar3.A(date2, (byte) 24);
        fVar2.L(g.g.a(false, (byte) 0), fVar3);
        g.f fVar4 = new g.f();
        fVar4.A(date, (byte) 24);
        fVar2.L(g.g.a(false, (byte) 1), fVar4);
        fVar.J((byte) 48, fVar2);
        this.f6247b = fVar.toByteArray();
    }

    @Override // h.e
    public final String getName() {
        return "PrivateKeyUsage";
    }

    @Override // h.n
    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append("PrivateKeyUsage: [\n");
        String str2 = "";
        Date date = this.f6275c;
        if (date == null) {
            str = "";
        } else {
            str = "From: " + date.toString() + ", ";
        }
        sb2.append(str);
        Date date2 = this.f6276d;
        if (date2 != null) {
            str2 = "To: " + date2.toString();
        }
        return g.b.l(str2, "]\n", sb2);
    }
}
