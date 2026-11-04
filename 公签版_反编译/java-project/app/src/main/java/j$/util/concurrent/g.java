package j$.util.concurrent;

/* loaded from: classes2.dex */
final class g extends l {

    /* renamed from: e, reason: collision with root package name */
    final l[] f9092e;

    g(l[] lVarArr) {
        super(-1, null, null);
        this.f9092e = lVarArr;
    }

    @Override // j$.util.concurrent.l
    final l a(Object obj, int i10) {
        int length;
        l lVarK;
        Object obj2;
        l[] lVarArr = this.f9092e;
        loop0: while (obj != null && lVarArr != null && (length = lVarArr.length) != 0 && (lVarK = ConcurrentHashMap.k(lVarArr, (length - 1) & i10)) != null) {
            do {
                int i11 = lVarK.f9099a;
                if (i11 == i10 && ((obj2 = lVarK.f9100b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    return lVarK;
                }
                if (i11 < 0) {
                    if (lVarK instanceof g) {
                        lVarArr = ((g) lVarK).f9092e;
                    } else {
                        return lVarK.a(obj, i10);
                    }
                } else {
                    lVarK = lVarK.f9102d;
                }
            } while (lVarK != null);
        }
        return null;
    }
}
