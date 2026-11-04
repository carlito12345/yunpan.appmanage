package ff;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class f implements g, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final String f5828a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5829b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f5830c;

    public f(String str, int i10, byte[] bArr) {
        this.f5828a = str;
        this.f5829b = i10;
        this.f5830c = bArr;
    }

    @Override // ff.g
    public final byte[] e() {
        return this.f5830c;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Icon{path='");
        sb2.append(this.f5828a);
        sb2.append("', density=");
        sb2.append(this.f5829b);
        sb2.append(", size=");
        byte[] bArr = this.f5830c;
        sb2.append(bArr == null ? 0 : bArr.length);
        sb2.append('}');
        return sb2.toString();
    }

    @Override // ff.g
    public final void k() {
    }
}
