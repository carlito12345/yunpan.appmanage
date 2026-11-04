package ph;

import java.util.List;

/* loaded from: classes3.dex */
public abstract class p extends q {

    /* renamed from: d, reason: collision with root package name */
    public Object f12739d;

    public p(String str) {
        nh.b.d0(str);
        this.f12739d = str;
    }

    public final String A() {
        return b(o());
    }

    public final void B() {
        Object obj = this.f12739d;
        if (obj instanceof c) {
            return;
        }
        c cVar = new c();
        this.f12739d = cVar;
        cVar.j(o(), (String) obj);
    }

    @Override // ph.q
    public final String a(String str) {
        B();
        return super.a(str);
    }

    @Override // ph.q
    public final String b(String str) {
        return !(this.f12739d instanceof c) ? o().equals(str) ? (String) this.f12739d : "" : super.b(str);
    }

    @Override // ph.q
    public final c c() {
        B();
        return (c) this.f12739d;
    }

    @Override // ph.q
    public final String d() {
        l lVar = this.f12741a;
        return lVar != null ? lVar.d() : "";
    }

    @Override // ph.q
    public final int e() {
        return 0;
    }

    @Override // ph.q
    public final q g(q qVar) {
        p pVar = (p) super.g(qVar);
        Object obj = this.f12739d;
        if (obj instanceof c) {
            pVar.f12739d = ((c) obj).clone();
        }
        return pVar;
    }

    @Override // ph.q
    public final List h() {
        return q.f12740c;
    }

    @Override // ph.q
    public final boolean k() {
        return this.f12739d instanceof c;
    }

    @Override // ph.q
    public final String p() {
        return A();
    }

    @Override // ph.q
    public final l u() {
        return this.f12741a;
    }
}
