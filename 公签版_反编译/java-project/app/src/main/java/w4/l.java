package w4;

import java.util.BitSet;

/* loaded from: classes.dex */
public final class l extends b5.c implements y4.e {

    /* renamed from: c, reason: collision with root package name */
    public static final l f17468c = new l(0);

    public l(int i10) {
        super(i10);
    }

    public static l g(k kVar) {
        l lVar = new l(1);
        lVar.e(0, kVar);
        return lVar;
    }

    public static l h(k kVar, k kVar2) {
        l lVar = new l(2);
        lVar.e(0, kVar);
        lVar.e(1, kVar2);
        return lVar;
    }

    @Override // b5.c, y4.e
    public final y4.c b(int i10) {
        y4.c cVar = ((k) d(i10)).f17467b;
        cVar.getClass();
        return cVar;
    }

    public final l i(boolean z, BitSet bitSet) {
        Object[] objArr = this.f2559b;
        int length = objArr.length;
        if (length == 0) {
            return this;
        }
        l lVar = new l(objArr.length);
        int i10 = 0;
        int iC = 0;
        while (i10 < length) {
            k kVarD = (k) d(i10);
            if (bitSet == null || !bitSet.get(i10)) {
                if (kVarD.f17466a != iC) {
                    kVarD = k.d(iC, kVarD.f17467b);
                }
                if (!z) {
                    iC += kVarD.c();
                }
            }
            lVar.e(i10, kVarD);
            i10++;
            z = false;
        }
        if (!this.f2570a) {
            lVar.f2570a = false;
        }
        return lVar;
    }

    public final l j(int i10) {
        int i11;
        int i12;
        int length = this.f2559b.length;
        if (length == 0) {
            return this;
        }
        l lVar = new l(length);
        for (int i13 = 0; i13 < length; i13++) {
            k kVarD = (k) d(i13);
            if (i10 != 0 && i11 != (i12 = (i11 = kVarD.f17466a) + i10)) {
                kVarD = k.d(i12, kVarD.f17467b);
            }
            lVar.e(i13, kVarD);
        }
        if (!this.f2570a) {
            lVar.f2570a = false;
        }
        return lVar;
    }
}
