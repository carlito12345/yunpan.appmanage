package z2;

import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class f extends i {

    /* renamed from: b, reason: collision with root package name */
    public final String f19410b;

    /* renamed from: c, reason: collision with root package name */
    public final String f19411c;

    /* renamed from: d, reason: collision with root package name */
    public final String f19412d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f19413e;

    public f(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f19410b = str;
        this.f19411c = str2;
        this.f19412d = str3;
        this.f19413e = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return Objects.equals(this.f19410b, fVar.f19410b) && Objects.equals(this.f19411c, fVar.f19411c) && Objects.equals(this.f19412d, fVar.f19412d) && Arrays.equals(this.f19413e, fVar.f19413e);
    }

    public final int hashCode() {
        String str = this.f19410b;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f19411c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f19412d;
        return Arrays.hashCode(this.f19413e) + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    @Override // z2.i
    public final String toString() {
        return this.f19416a + ": mimeType=" + this.f19410b + ", filename=" + this.f19411c + ", description=" + this.f19412d;
    }
}
