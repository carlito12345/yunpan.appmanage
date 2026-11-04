package q4;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final j[] f13022a;

    /* renamed from: b, reason: collision with root package name */
    public final y4.b f13023b;

    public k(j[] jVarArr) {
        this.f13022a = (j[]) jVarArr.clone();
        this.f13023b = new y4.b(jVarArr.length);
        for (int i10 = 0; i10 < jVarArr.length; i10++) {
            this.f13023b.e(i10, jVarArr[i10].f13020b);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof k) && Arrays.equals(((k) obj).f13022a, this.f13022a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f13022a);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        while (true) {
            j[] jVarArr = this.f13022a;
            if (i10 >= jVarArr.length) {
                return sb2.toString();
            }
            if (i10 > 0) {
                sb2.append(", ");
            }
            sb2.append(jVarArr[i10]);
            i10++;
        }
    }
}
