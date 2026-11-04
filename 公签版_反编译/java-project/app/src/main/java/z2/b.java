package z2;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class b extends i {

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f19395b;

    public b(String str, byte[] bArr) {
        super(str);
        this.f19395b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f19416a.equals(bVar.f19416a) && Arrays.equals(this.f19395b, bVar.f19395b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f19395b) + org.bouncycastle.jcajce.provider.digest.a.c(527, 31, this.f19416a);
    }
}
