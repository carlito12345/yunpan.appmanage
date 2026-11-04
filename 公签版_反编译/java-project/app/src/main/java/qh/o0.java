package qh;

/* loaded from: classes3.dex */
public final class o0 extends p0 {
    public o0(c cVar) {
        super(2, cVar);
    }

    @Override // qh.p0, qh.r0
    /* renamed from: n */
    public final p0 g() {
        super.g();
        this.f13333g = null;
        return this;
    }

    public final String toString() {
        String str = this.f13332f ? "/>" : ">";
        ph.c cVar = this.f13333g;
        if (!(cVar != null) || cVar.f12706a <= 0) {
            return "<" + o() + str;
        }
        return "<" + o() + " " + this.f13333g.toString() + str;
    }
}
