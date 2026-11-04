package rh;

/* loaded from: classes3.dex */
public final class i extends p {

    /* renamed from: a, reason: collision with root package name */
    public final String f13792a;

    /* renamed from: b, reason: collision with root package name */
    public final String f13793b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f13794c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i(String str, String str2, int i10) {
        this(str, str2, true);
        this.f13794c = i10;
    }

    @Override // rh.p
    public final int a() {
        switch (this.f13794c) {
            case 0:
                return 3;
            case 1:
                return 6;
            case 2:
                return 4;
            case 3:
                return 3;
            default:
                return 4;
        }
    }

    @Override // rh.p
    public final boolean b(ph.l lVar, ph.l lVar2) {
        switch (this.f13794c) {
            case 0:
                String str = this.f13792a;
                if (lVar2.j(str)) {
                    if (this.f13793b.equalsIgnoreCase(lVar2.b(str).trim())) {
                        return true;
                    }
                }
                return false;
            case 1:
                String str2 = this.f13792a;
                return lVar2.j(str2) && oh.a.c(lVar2.b(str2)).contains(this.f13793b);
            case 2:
                String str3 = this.f13792a;
                return lVar2.j(str3) && oh.a.c(lVar2.b(str3)).endsWith(this.f13793b);
            case 3:
                return !this.f13793b.equalsIgnoreCase(lVar2.b(this.f13792a));
            default:
                String str4 = this.f13792a;
                return lVar2.j(str4) && oh.a.c(lVar2.b(str4)).startsWith(this.f13793b);
        }
    }

    public final String toString() {
        switch (this.f13794c) {
            case 0:
                StringBuilder sb2 = new StringBuilder("[");
                sb2.append(this.f13792a);
                sb2.append("=");
                return g.b.l(this.f13793b, "]", sb2);
            case 1:
                StringBuilder sb3 = new StringBuilder("[");
                sb3.append(this.f13792a);
                sb3.append("*=");
                return g.b.l(this.f13793b, "]", sb3);
            case 2:
                StringBuilder sb4 = new StringBuilder("[");
                sb4.append(this.f13792a);
                sb4.append("$=");
                return g.b.l(this.f13793b, "]", sb4);
            case 3:
                StringBuilder sb5 = new StringBuilder("[");
                sb5.append(this.f13792a);
                sb5.append("!=");
                return g.b.l(this.f13793b, "]", sb5);
            default:
                StringBuilder sb6 = new StringBuilder("[");
                sb6.append(this.f13792a);
                sb6.append("^=");
                return g.b.l(this.f13793b, "]", sb6);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i(String str, String str2, int i10, boolean z) {
        this(str, str2, false);
        this.f13794c = i10;
    }

    public i(String str, String str2, boolean z) {
        nh.b.b0(str);
        nh.b.b0(str2);
        this.f13792a = oh.a.d(str);
        boolean z4 = (str2.startsWith("'") && str2.endsWith("'")) || (str2.startsWith("\"") && str2.endsWith("\""));
        str2 = z4 ? android.support.v4.media.session.a.l(1, 1, str2) : str2;
        String strC = (!z && z4) ? oh.a.c(str2) : oh.a.d(str2);
        this.f13793b = strC;
    }
}
