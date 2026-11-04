package androidx.emoji2.text;

import android.util.SparseArray;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f1147a;

    /* renamed from: b, reason: collision with root package name */
    public p f1148b;

    public t(int i10) {
        this.f1147a = new SparseArray(i10);
    }

    public final void a(p pVar, int i10, int i11) {
        int iA = pVar.a(i10);
        SparseArray sparseArray = this.f1147a;
        t tVar = sparseArray == null ? null : (t) sparseArray.get(iA);
        if (tVar == null) {
            tVar = new t(1);
            sparseArray.put(pVar.a(i10), tVar);
        }
        if (i11 > i10) {
            tVar.a(pVar, i10 + 1, i11);
        } else {
            tVar.f1148b = pVar;
        }
    }
}
