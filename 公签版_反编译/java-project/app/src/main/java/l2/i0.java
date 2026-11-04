package l2;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class i0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f10471a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f10472b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10473c;

    /* renamed from: d, reason: collision with root package name */
    public final int f10474d;

    public i0(int i10, byte[] bArr, int i11, int i12) {
        this.f10471a = i10;
        this.f10472b = bArr;
        this.f10473c = i11;
        this.f10474d = i12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i0.class != obj.getClass()) {
            return false;
        }
        i0 i0Var = (i0) obj;
        return this.f10471a == i0Var.f10471a && this.f10473c == i0Var.f10473c && this.f10474d == i0Var.f10474d && Arrays.equals(this.f10472b, i0Var.f10472b);
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.f10472b) + (this.f10471a * 31)) * 31) + this.f10473c) * 31) + this.f10474d;
    }
}
