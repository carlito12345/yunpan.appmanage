package qh;

/* loaded from: classes3.dex */
public abstract class p0 extends r0 {

    /* renamed from: d, reason: collision with root package name */
    public final kf.d f13330d;

    /* renamed from: e, reason: collision with root package name */
    public String f13331e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13332f;

    /* renamed from: g, reason: collision with root package name */
    public ph.c f13333g;

    /* renamed from: h, reason: collision with root package name */
    public final kf.d f13334h;

    /* renamed from: i, reason: collision with root package name */
    public final kf.d f13335i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f13336j;

    public p0(int i10, c cVar) {
        super(i10);
        this.f13330d = new kf.d(12, false);
        this.f13332f = false;
        int i11 = 12;
        boolean z = false;
        this.f13334h = new kf.d(i11, z);
        this.f13335i = new kf.d(i11, z);
        this.f13336j = false;
        cVar.getClass();
    }

    public final void h(char c7, int i10, int i11) {
        this.f13335i.m(c7);
    }

    public final void i(int i10, int i11, int[] iArr) {
        for (int i12 : iArr) {
            kf.d dVar = this.f13335i;
            StringBuilder sb2 = (StringBuilder) dVar.f10287c;
            if (sb2 != null) {
                sb2.appendCodePoint(i12);
            } else if (((String) dVar.f10286b) != null) {
                StringBuilder sbB = oh.f.b();
                dVar.f10287c = sbB;
                sbB.append((String) dVar.f10286b);
                dVar.f10286b = null;
                ((StringBuilder) dVar.f10287c).appendCodePoint(i12);
            } else {
                dVar.f10286b = String.valueOf(Character.toChars(i12));
            }
        }
    }

    public final void j(String str) {
        String strReplace = str.replace((char) 0, (char) 65533);
        kf.d dVar = this.f13330d;
        dVar.n(strReplace);
        this.f13331e = oh.a.d(dVar.R());
    }

    public final void k(String str) {
        kf.d dVar = this.f13330d;
        dVar.reset();
        dVar.f10286b = str;
        this.f13331e = oh.a.d(dVar.R());
    }

    public final void l() {
        if (this.f13333g == null) {
            this.f13333g = new ph.c();
        }
        kf.d dVar = this.f13334h;
        boolean zC = dVar.C();
        kf.d dVar2 = this.f13335i;
        if (zC && this.f13333g.f12706a < 512) {
            String strTrim = dVar.R().trim();
            if (!strTrim.isEmpty()) {
                this.f13333g.a(strTrim, dVar2.C() ? dVar2.R() : this.f13336j ? "" : null);
            }
        }
        dVar.reset();
        dVar2.reset();
        this.f13336j = false;
    }

    public final String m() {
        String str = this.f13331e;
        if (str == null || str.isEmpty()) {
            throw new nh.c("Must be false");
        }
        return this.f13331e;
    }

    @Override // qh.r0
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public p0 g() {
        this.f13339b = -1;
        this.f13340c = -1;
        this.f13330d.reset();
        this.f13331e = null;
        this.f13332f = false;
        this.f13333g = null;
        this.f13334h.reset();
        this.f13335i.reset();
        this.f13336j = false;
        return this;
    }

    public final String o() {
        String strR = this.f13330d.R();
        return strR.isEmpty() ? "[unset]" : strR;
    }
}
