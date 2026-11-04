package z2;

import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class m extends i {

    /* renamed from: b, reason: collision with root package name */
    public final String f19426b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f19427c;

    public m(String str, byte[] bArr) {
        super("PRIV");
        this.f19426b = str;
        this.f19427c = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m.class != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        return Objects.equals(this.f19426b, mVar.f19426b) && Arrays.equals(this.f19427c, mVar.f19427c);
    }

    public final int hashCode() {
        String str = this.f19426b;
        return Arrays.hashCode(this.f19427c) + ((527 + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // z2.i
    public final String toString() {
        return this.f19416a + ": owner=" + this.f19426b;
    }
}
