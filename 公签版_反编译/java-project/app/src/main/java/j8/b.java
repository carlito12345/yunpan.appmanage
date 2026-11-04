package j8;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class b implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public final int f9795a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9796b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9797c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f9798d;

    public b(int i10, int i11) {
        if (i10 < 1 || i11 < 1) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f9795a = i10;
        this.f9796b = i11;
        int i12 = (i10 + 31) / 32;
        this.f9797c = i12;
        this.f9798d = new int[i12 * i11];
    }

    public final boolean a(int i10, int i11) {
        return ((this.f9798d[(i10 / 32) + (i11 * this.f9797c)] >>> (i10 & 31)) & 1) != 0;
    }

    public final Object clone() {
        int[] iArr = (int[]) this.f9798d.clone();
        return new b(this.f9795a, this.f9796b, this.f9797c, iArr);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f9795a == bVar.f9795a && this.f9796b == bVar.f9796b && this.f9797c == bVar.f9797c && Arrays.equals(this.f9798d, bVar.f9798d);
    }

    public final int hashCode() {
        int i10 = this.f9795a;
        return Arrays.hashCode(this.f9798d) + (((((((i10 * 31) + i10) * 31) + this.f9796b) * 31) + this.f9797c) * 31);
    }

    public final String toString() {
        int i10 = this.f9795a;
        int i11 = this.f9796b;
        StringBuilder sb2 = new StringBuilder((i10 + 1) * i11);
        for (int i12 = 0; i12 < i11; i12++) {
            for (int i13 = 0; i13 < i10; i13++) {
                sb2.append(a(i13, i12) ? "X " : "  ");
            }
            sb2.append(SignParameters.NEW_LINE);
        }
        return sb2.toString();
    }

    public b(int i10, int i11, int i12, int[] iArr) {
        this.f9795a = i10;
        this.f9796b = i11;
        this.f9797c = i12;
        this.f9798d = iArr;
    }
}
