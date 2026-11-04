package sh;

import java.io.InvalidObjectException;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class c implements Comparable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final c f14573c = new c(0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final long f14574a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14575b;

    static {
        BigInteger.valueOf(1000000000L);
        Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?", 2);
    }

    public c(long j10, int i10) {
        this.f14574a = j10;
        this.f14575b = i10;
    }

    public static c a(int i10, long j10) {
        return (((long) i10) | j10) == 0 ? f14573c : new c(j10, i10);
    }

    private Object readResolve() throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new l((byte) 1, this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        c cVar = (c) obj;
        int iM = p000if.a.m(this.f14574a, cVar.f14574a);
        return iM != 0 ? iM : this.f14575b - cVar.f14575b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f14574a == cVar.f14574a && this.f14575b == cVar.f14575b;
    }

    public final int hashCode() {
        long j10 = this.f14574a;
        return (this.f14575b * 51) + ((int) (j10 ^ (j10 >>> 32)));
    }

    public final String toString() {
        if (this == f14573c) {
            return "PT0S";
        }
        long j10 = this.f14574a;
        long j11 = j10 / 3600;
        int i10 = (int) ((j10 % 3600) / 60);
        int i11 = (int) (j10 % 60);
        StringBuilder sb2 = new StringBuilder(24);
        sb2.append("PT");
        if (j11 != 0) {
            sb2.append(j11);
            sb2.append('H');
        }
        if (i10 != 0) {
            sb2.append(i10);
            sb2.append('M');
        }
        int i12 = this.f14575b;
        if (i11 == 0 && i12 == 0 && sb2.length() > 2) {
            return sb2.toString();
        }
        if (i11 >= 0 || i12 <= 0) {
            sb2.append(i11);
        } else if (i11 == -1) {
            sb2.append("-0");
        } else {
            sb2.append(i11 + 1);
        }
        if (i12 > 0) {
            int length = sb2.length();
            if (i11 < 0) {
                sb2.append(2000000000 - i12);
            } else {
                sb2.append(i12 + 1000000000);
            }
            while (sb2.charAt(sb2.length() - 1) == '0') {
                sb2.setLength(sb2.length() - 1);
            }
            sb2.setCharAt(length, '.');
        }
        sb2.append('S');
        return sb2.toString();
    }
}
