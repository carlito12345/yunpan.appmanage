package x7;

import a9.o;
import java.io.Serializable;

/* loaded from: classes.dex */
public final class a implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final a f18184c = new a(new int[0]);

    /* renamed from: a, reason: collision with root package name */
    public final int[] f18185a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18186b;

    public a(int[] iArr) {
        int length = iArr.length;
        this.f18185a = iArr;
        this.f18186b = length;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        int i10 = aVar.f18186b;
        int i11 = this.f18186b;
        if (i11 != i10) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            o.m(i12, i11);
            int i13 = this.f18185a[i12];
            o.m(i12, aVar.f18186b);
            if (i13 != aVar.f18185a[i12]) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f18186b; i11++) {
            i10 = (i10 * 31) + this.f18185a[i11];
        }
        return i10;
    }

    public final String toString() {
        int i10 = this.f18186b;
        if (i10 == 0) {
            return "[]";
        }
        StringBuilder sb2 = new StringBuilder(i10 * 5);
        sb2.append('[');
        int[] iArr = this.f18185a;
        sb2.append(iArr[0]);
        for (int i11 = 1; i11 < i10; i11++) {
            sb2.append(", ");
            sb2.append(iArr[i11]);
        }
        sb2.append(']');
        return sb2.toString();
    }
}
