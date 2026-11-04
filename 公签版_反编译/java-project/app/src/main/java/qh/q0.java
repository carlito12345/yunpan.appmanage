package qh;

/* loaded from: classes3.dex */
public final class q0 extends p0 {

    /* renamed from: k, reason: collision with root package name */
    public boolean f13337k;

    public q0(c cVar) {
        super(6, cVar);
        this.f13337k = true;
    }

    @Override // qh.p0
    /* renamed from: n */
    public final /* bridge */ /* synthetic */ p0 g() {
        g();
        return this;
    }

    @Override // qh.p0, qh.r0
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public final void g() {
        super.g();
        this.f13337k = true;
    }

    public final String toString() {
        boolean z = this.f13337k;
        String str = z ? "<!" : "<?";
        String str2 = z ? ">" : "?>";
        ph.c cVar = this.f13333g;
        if (cVar == null || cVar.f12706a <= 0) {
            StringBuilder sbM = g.b.m(str);
            sbM.append(o());
            sbM.append(str2);
            return sbM.toString();
        }
        StringBuilder sbM2 = g.b.m(str);
        sbM2.append(o());
        sbM2.append(" ");
        sbM2.append(this.f13333g.toString());
        sbM2.append(str2);
        return sbM2.toString();
    }
}
