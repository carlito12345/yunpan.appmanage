package h;

import java.io.IOException;
import java.util.Date;

/* loaded from: classes.dex */
public final class k implements e {

    /* renamed from: a, reason: collision with root package name */
    public Date f6242a;

    /* renamed from: b, reason: collision with root package name */
    public Date f6243b;

    public k(Date date, Date date2) {
        this.f6242a = date;
        this.f6243b = date2;
    }

    @Override // h.e
    public final void a(g.f fVar) throws IOException {
        g.f fVar2 = new g.f();
        if (this.f6242a.getTime() < 2524636800000L) {
            fVar2.A(this.f6242a, (byte) 23);
        } else {
            fVar2.A(this.f6242a, (byte) 24);
        }
        if (this.f6243b.getTime() < 2524636800000L) {
            fVar2.A(this.f6243b, (byte) 23);
        } else {
            fVar2.A(this.f6243b, (byte) 24);
        }
        g.f fVar3 = new g.f();
        fVar3.J((byte) 48, fVar2);
        fVar.write(fVar3.toByteArray());
    }

    @Override // h.e
    public final String getName() {
        return "validity";
    }

    public final String toString() {
        if (this.f6242a == null || this.f6243b == null) {
            return "";
        }
        return "Validity: [From: " + this.f6242a.toString() + ",\n               To: " + this.f6243b.toString() + "]";
    }
}
