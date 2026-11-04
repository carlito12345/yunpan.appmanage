package z2;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class l extends i {

    /* renamed from: b, reason: collision with root package name */
    public final int f19421b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19422c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19423d;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f19424e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f19425f;

    public l(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        super("MLLT");
        this.f19421b = i10;
        this.f19422c = i11;
        this.f19423d = i12;
        this.f19424e = iArr;
        this.f19425f = iArr2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return this.f19421b == lVar.f19421b && this.f19422c == lVar.f19422c && this.f19423d == lVar.f19423d && Arrays.equals(this.f19424e, lVar.f19424e) && Arrays.equals(this.f19425f, lVar.f19425f);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f19425f) + ((Arrays.hashCode(this.f19424e) + ((((((527 + this.f19421b) * 31) + this.f19422c) * 31) + this.f19423d) * 31)) * 31);
    }
}
