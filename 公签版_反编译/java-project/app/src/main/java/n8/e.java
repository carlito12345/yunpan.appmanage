package n8;

import v3.f;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final m8.a f11326a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11327b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11328c;

    /* renamed from: d, reason: collision with root package name */
    public final int f11329d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f f11330e;

    public e(f fVar, m8.a aVar, int i10, int i11, int i12) {
        this.f11330e = fVar;
        this.f11326a = aVar;
        this.f11327b = i10;
        this.f11328c = i11;
        this.f11329d = i12;
    }

    public final int a() {
        m8.a aVar = m8.a.BYTE;
        m8.a aVar2 = this.f11326a;
        int i10 = this.f11329d;
        if (aVar2 != aVar) {
            return i10;
        }
        kf.f fVar = (kf.f) this.f11330e.f16476d;
        j8.d dVar = (j8.d) fVar.f10292e;
        int i11 = this.f11327b;
        return ((String) fVar.f10291d).substring(i11, i10 + i11).getBytes(dVar.f9805a[this.f11328c].charset()).length;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        m8.a aVar = this.f11326a;
        sb2.append(aVar);
        sb2.append('(');
        m8.a aVar2 = m8.a.ECI;
        f fVar = this.f11330e;
        if (aVar == aVar2) {
            sb2.append(((j8.d) ((kf.f) fVar.f16476d).f10292e).f9805a[this.f11328c].charset().displayName());
        } else {
            String str = (String) ((kf.f) fVar.f16476d).f10291d;
            int i10 = this.f11327b;
            String strSubstring = str.substring(i10, this.f11329d + i10);
            StringBuilder sb3 = new StringBuilder();
            for (int i11 = 0; i11 < strSubstring.length(); i11++) {
                if (strSubstring.charAt(i11) < ' ' || strSubstring.charAt(i11) > '~') {
                    sb3.append('.');
                } else {
                    sb3.append(strSubstring.charAt(i11));
                }
            }
            sb2.append(sb3.toString());
        }
        sb2.append(')');
        return sb2.toString();
    }
}
