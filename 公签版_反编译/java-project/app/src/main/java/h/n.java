package h;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class n {

    /* renamed from: a, reason: collision with root package name */
    public g.h f6246a = null;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f6247b = null;

    public final void b(g.f fVar) throws IOException {
        if (this.f6246a == null) {
            throw new IOException("Null OID to encode for the extension!");
        }
        if (this.f6247b == null) {
            throw new IOException("No value to encode for the extension!");
        }
        g.f fVar2 = new g.f();
        fVar2.K((byte) 6, this.f6246a.f5926a);
        fVar2.K((byte) 4, this.f6247b);
        fVar.J((byte) 48, fVar2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        nVar.getClass();
        if (this.f6246a.equals(nVar.f6246a)) {
            return Arrays.equals(this.f6247b, nVar.f6247b);
        }
        return false;
    }

    public final int hashCode() {
        byte[] bArr = this.f6247b;
        int i10 = 0;
        if (bArr != null) {
            int length = bArr.length;
            while (length > 0) {
                int i11 = length - 1;
                i10 += length * bArr[i11];
                length = i11;
            }
        }
        return ((Arrays.hashCode(this.f6246a.f5926a) + (i10 * 31)) * 31) + 1237;
    }

    public String toString() {
        return g.b.j("ObjectId: " + this.f6246a.toString(), " Criticality=false\n");
    }
}
