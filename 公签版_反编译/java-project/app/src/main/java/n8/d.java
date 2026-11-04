package n8;

import kf.f;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final m8.a f11320a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11321b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11322c;

    /* renamed from: d, reason: collision with root package name */
    public final int f11323d;

    /* renamed from: e, reason: collision with root package name */
    public final d f11324e;

    /* renamed from: f, reason: collision with root package name */
    public final int f11325f;

    public d(f fVar, m8.a aVar, int i10, int i11, int i12, d dVar, m8.b bVar) {
        this.f11320a = aVar;
        this.f11321b = i10;
        m8.a aVar2 = m8.a.BYTE;
        int i13 = (aVar == aVar2 || dVar == null) ? i11 : dVar.f11322c;
        this.f11322c = i13;
        this.f11323d = i12;
        this.f11324e = dVar;
        boolean z = false;
        int iA = dVar != null ? dVar.f11325f : 0;
        if ((aVar == aVar2 && dVar == null && i13 != 0) || (dVar != null && i13 != dVar.f11322c)) {
            z = true;
        }
        iA = (dVar == null || aVar != dVar.f11320a || z) ? iA + aVar.a(bVar) + 4 : iA;
        int iOrdinal = aVar.ordinal();
        if (iOrdinal != 1) {
            if (iOrdinal == 2) {
                iA += i12 != 1 ? 11 : 6;
            } else if (iOrdinal == 4) {
                iA += ((String) fVar.f10291d).substring(i10, i12 + i10).getBytes(((j8.d) fVar.f10292e).f9805a[i11].charset()).length * 8;
                if (z) {
                    iA += 12;
                }
            } else if (iOrdinal == 6) {
                iA += 13;
            }
        } else {
            iA += i12 != 1 ? i12 == 2 ? 7 : 10 : 4;
        }
        this.f11325f = iA;
    }
}
