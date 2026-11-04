package pg;

import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final byte f12670a;

    /* renamed from: b, reason: collision with root package name */
    public final byte f12671b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f12672c;

    public a(byte[] bArr, byte b10, byte b11) {
        this.f12670a = b10;
        this.f12671b = b11;
        this.f12672c = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return Arrays.equals(this.f12672c, aVar.f12672c) && this.f12670a == aVar.f12670a && this.f12671b == aVar.f12671b;
    }

    public final int hashCode() {
        return Objects.hash(Byte.valueOf(this.f12670a), Byte.valueOf(this.f12671b)) + ((Arrays.hashCode(this.f12672c) + 31) * 31);
    }
}
