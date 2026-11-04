package j$.util.concurrent;

/* loaded from: classes2.dex */
class p {

    /* renamed from: a, reason: collision with root package name */
    l[] f9107a;

    /* renamed from: b, reason: collision with root package name */
    l f9108b = null;

    /* renamed from: c, reason: collision with root package name */
    o f9109c;

    /* renamed from: d, reason: collision with root package name */
    o f9110d;

    /* renamed from: e, reason: collision with root package name */
    int f9111e;

    /* renamed from: f, reason: collision with root package name */
    int f9112f;

    /* renamed from: g, reason: collision with root package name */
    int f9113g;

    /* renamed from: h, reason: collision with root package name */
    final int f9114h;

    p(l[] lVarArr, int i10, int i11, int i12) {
        this.f9107a = lVarArr;
        this.f9114h = i10;
        this.f9111e = i11;
        this.f9112f = i11;
        this.f9113g = i12;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0097 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x005f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final l a() {
        l[] lVarArr;
        int length;
        int i10;
        o oVar;
        l lVar = this.f9108b;
        if (lVar != null) {
            lVar = lVar.f9102d;
        }
        while (lVar == null) {
            if (this.f9112f >= this.f9113g || (lVarArr = this.f9107a) == null || (length = lVarArr.length) <= (i10 = this.f9111e) || i10 < 0) {
                this.f9108b = null;
                return null;
            }
            l lVarK = ConcurrentHashMap.k(lVarArr, i10);
            if (lVarK != null && lVarK.f9099a < 0) {
                if (lVarK instanceof g) {
                    this.f9107a = ((g) lVarK).f9092e;
                    o oVar2 = this.f9110d;
                    if (oVar2 != null) {
                        this.f9110d = oVar2.f9106d;
                    } else {
                        oVar2 = new o();
                    }
                    oVar2.f9105c = lVarArr;
                    oVar2.f9103a = length;
                    oVar2.f9104b = i10;
                    oVar2.f9106d = this.f9109c;
                    this.f9109c = oVar2;
                    lVar = null;
                } else {
                    lVar = lVarK instanceof q ? ((q) lVarK).f9118f : null;
                    if (this.f9109c == null) {
                    }
                }
            } else {
                lVar = lVarK;
                if (this.f9109c == null) {
                    while (true) {
                        oVar = this.f9109c;
                        if (oVar == null) {
                            break;
                        }
                        int i11 = this.f9111e;
                        int i12 = oVar.f9103a;
                        int i13 = i11 + i12;
                        this.f9111e = i13;
                        if (i13 < length) {
                            break;
                        }
                        this.f9111e = oVar.f9104b;
                        this.f9107a = oVar.f9105c;
                        oVar.f9105c = null;
                        o oVar3 = oVar.f9106d;
                        oVar.f9106d = this.f9110d;
                        this.f9109c = oVar3;
                        this.f9110d = oVar;
                        length = i12;
                    }
                    if (oVar == null) {
                        int i14 = this.f9111e + this.f9114h;
                        this.f9111e = i14;
                        if (i14 >= length) {
                            int i15 = this.f9112f + 1;
                            this.f9112f = i15;
                            this.f9111e = i15;
                        }
                    }
                } else {
                    int i16 = i10 + this.f9114h;
                    this.f9111e = i16;
                    if (i16 >= length) {
                        int i17 = this.f9112f + 1;
                        this.f9112f = i17;
                        this.f9111e = i17;
                    }
                }
            }
        }
        this.f9108b = lVar;
        return lVar;
    }
}
