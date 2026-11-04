package r1;

import android.os.Build;
import android.util.SparseBooleanArray;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final SparseBooleanArray f13479a;

    public n(SparseBooleanArray sparseBooleanArray) {
        this.f13479a = sparseBooleanArray;
    }

    public final int a(int i10) {
        SparseBooleanArray sparseBooleanArray = this.f13479a;
        a9.o.m(i10, sparseBooleanArray.size());
        return sparseBooleanArray.keyAt(i10);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        int i10 = Build.VERSION.SDK_INT;
        SparseBooleanArray sparseBooleanArray = this.f13479a;
        if (i10 >= 24) {
            return sparseBooleanArray.equals(nVar.f13479a);
        }
        if (sparseBooleanArray.size() != nVar.f13479a.size()) {
            return false;
        }
        for (int i11 = 0; i11 < sparseBooleanArray.size(); i11++) {
            if (a(i11) != nVar.a(i11)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i10 = Build.VERSION.SDK_INT;
        SparseBooleanArray sparseBooleanArray = this.f13479a;
        if (i10 >= 24) {
            return sparseBooleanArray.hashCode();
        }
        int size = sparseBooleanArray.size();
        for (int i11 = 0; i11 < sparseBooleanArray.size(); i11++) {
            size = (size * 31) + a(i11);
        }
        return size;
    }
}
