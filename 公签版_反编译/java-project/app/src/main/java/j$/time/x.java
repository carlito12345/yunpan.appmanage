package j$.time;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import org.slf4j.Marker;

/* loaded from: classes2.dex */
public final class x extends w implements j$.time.temporal.o, j$.time.temporal.p, Comparable {

    /* renamed from: c, reason: collision with root package name */
    private static final ConcurrentHashMap f8954c = new ConcurrentHashMap(16, 0.75f, 4);

    /* renamed from: d, reason: collision with root package name */
    private static final ConcurrentHashMap f8955d = new ConcurrentHashMap(16, 0.75f, 4);

    /* renamed from: e, reason: collision with root package name */
    public static final x f8956e = L(0);

    /* renamed from: f, reason: collision with root package name */
    public static final x f8957f = L(-64800);

    /* renamed from: g, reason: collision with root package name */
    public static final x f8958g = L(64800);
    private static final long serialVersionUID = 2357656521762053153L;

    /* renamed from: a, reason: collision with root package name */
    private final int f8959a;

    /* renamed from: b, reason: collision with root package name */
    private final transient String f8960b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static x J(String str) {
        int iM;
        int iM2;
        int iM3;
        char cCharAt;
        Objects.requireNonNull(str, "offsetId");
        x xVar = (x) f8955d.get(str);
        if (xVar != null) {
            return xVar;
        }
        int length = str.length();
        if (length == 2) {
            str = str.charAt(0) + "0" + str.charAt(1);
        } else {
            if (length != 3) {
                if (length == 5) {
                    iM = M(str, 1, false);
                    iM2 = M(str, 3, false);
                } else if (length == 6) {
                    iM = M(str, 1, false);
                    iM2 = M(str, 4, true);
                } else {
                    if (length == 7) {
                        iM = M(str, 1, false);
                        iM2 = M(str, 3, false);
                        iM3 = M(str, 5, false);
                    } else if (length == 9) {
                        iM = M(str, 1, false);
                        iM2 = M(str, 4, true);
                        iM3 = M(str, 7, true);
                    } else {
                        throw new DateTimeException("Invalid ID for ZoneOffset, invalid format: ".concat(str));
                    }
                    cCharAt = str.charAt(0);
                    if (cCharAt == '+' && cCharAt != '-') {
                        throw new DateTimeException("Invalid ID for ZoneOffset, plus/minus not found when expected: ".concat(str));
                    }
                    if (cCharAt == '-') {
                        return K(-iM, -iM2, -iM3);
                    }
                    return K(iM, iM2, iM3);
                }
            }
            iM3 = 0;
            cCharAt = str.charAt(0);
            if (cCharAt == '+') {
            }
            if (cCharAt == '-') {
            }
        }
        iM = M(str, 1, false);
        iM2 = 0;
        iM3 = 0;
        cCharAt = str.charAt(0);
        if (cCharAt == '+') {
        }
        if (cCharAt == '-') {
        }
    }

    private static int M(String str, int i10, boolean z) {
        if (z && str.charAt(i10 - 1) != ':') {
            throw new DateTimeException("Invalid ID for ZoneOffset, colon not found when expected: " + ((Object) str));
        }
        char cCharAt = str.charAt(i10);
        char cCharAt2 = str.charAt(i10 + 1);
        if (cCharAt >= '0' && cCharAt <= '9' && cCharAt2 >= '0' && cCharAt2 <= '9') {
            return (cCharAt2 - '0') + ((cCharAt - '0') * 10);
        }
        throw new DateTimeException("Invalid ID for ZoneOffset, non numeric characters found: " + ((Object) str));
    }

    public static x K(int i10, int i11, int i12) {
        if (i10 < -18 || i10 > 18) {
            throw new DateTimeException("Zone offset hours not in valid range: value " + i10 + " is not in the range -18 to 18");
        }
        if (i10 > 0) {
            if (i11 < 0 || i12 < 0) {
                throw new DateTimeException("Zone offset minutes and seconds must be positive because hours is positive");
            }
        } else if (i10 < 0) {
            if (i11 > 0 || i12 > 0) {
                throw new DateTimeException("Zone offset minutes and seconds must be negative because hours is negative");
            }
        } else if ((i11 > 0 && i12 < 0) || (i11 < 0 && i12 > 0)) {
            throw new DateTimeException("Zone offset minutes and seconds must have the same sign");
        }
        if (i11 < -59 || i11 > 59) {
            throw new DateTimeException("Zone offset minutes not in valid range: value " + i11 + " is not in the range -59 to 59");
        }
        if (i12 < -59 || i12 > 59) {
            throw new DateTimeException("Zone offset seconds not in valid range: value " + i12 + " is not in the range -59 to 59");
        }
        if (Math.abs(i10) != 18 || (i11 | i12) == 0) {
            return L((i11 * 60) + (i10 * 3600) + i12);
        }
        throw new DateTimeException("Zone offset not in valid range: -18:00 to +18:00");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static x L(int i10) {
        if (i10 < -64800 || i10 > 64800) {
            throw new DateTimeException("Zone offset not in valid range: -18:00 to +18:00");
        }
        if (i10 % 900 == 0) {
            Integer numValueOf = Integer.valueOf(i10);
            ConcurrentHashMap concurrentHashMap = f8954c;
            x xVar = (x) concurrentHashMap.get(numValueOf);
            if (xVar != null) {
                return xVar;
            }
            concurrentHashMap.putIfAbsent(numValueOf, new x(i10));
            x xVar2 = (x) concurrentHashMap.get(numValueOf);
            f8955d.putIfAbsent(xVar2.f8960b, xVar2);
            return xVar2;
        }
        return new x(i10);
    }

    private x(int i10) {
        String string;
        this.f8959a = i10;
        if (i10 == 0) {
            string = "Z";
        } else {
            int iAbs = Math.abs(i10);
            StringBuilder sb2 = new StringBuilder();
            int i11 = iAbs / 3600;
            int i12 = (iAbs / 60) % 60;
            sb2.append(i10 < 0 ? "-" : Marker.ANY_NON_NULL_MARKER);
            sb2.append(i11 < 10 ? "0" : "");
            sb2.append(i11);
            sb2.append(i12 < 10 ? ":0" : ":");
            sb2.append(i12);
            int i13 = iAbs % 60;
            if (i13 != 0) {
                sb2.append(i13 < 10 ? ":0" : ":");
                sb2.append(i13);
            }
            string = sb2.toString();
        }
        this.f8960b = string;
    }

    public final int I() {
        return this.f8959a;
    }

    @Override // j$.time.w
    public final String i() {
        return this.f8960b;
    }

    @Override // j$.time.w
    public final j$.time.zone.f C() {
        return j$.time.zone.f.h(this);
    }

    @Override // j$.time.temporal.o
    public final boolean f(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.OFFSET_SECONDS : rVar != null && rVar.m(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        return j$.time.temporal.n.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final int k(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.OFFSET_SECONDS) {
            return this.f8959a;
        }
        if (rVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
        }
        return j$.time.temporal.n.d(this, rVar).a(s(rVar), rVar);
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.OFFSET_SECONDS) {
            return this.f8959a;
        }
        if (rVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
        }
        return rVar.k(this);
    }

    @Override // j$.time.temporal.o
    public final Object v(j$.time.temporal.t tVar) {
        return (tVar == j$.time.temporal.n.h() || tVar == j$.time.temporal.n.j()) ? this : j$.time.temporal.n.c(this, tVar);
    }

    @Override // j$.time.temporal.p
    public final j$.time.temporal.m w(j$.time.temporal.m mVar) {
        return mVar.d(this.f8959a, j$.time.temporal.a.OFFSET_SECONDS);
    }

    @Override // java.lang.Comparable
    /* renamed from: H, reason: merged with bridge method [inline-methods] */
    public final int compareTo(x xVar) {
        return xVar.f8959a - this.f8959a;
    }

    @Override // j$.time.w
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof x) {
            return this.f8959a == ((x) obj).f8959a;
        }
        return false;
    }

    @Override // j$.time.w
    public final int hashCode() {
        return this.f8959a;
    }

    @Override // j$.time.w
    public final String toString() {
        return this.f8960b;
    }

    private Object writeReplace() {
        return new r((byte) 8, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.w
    final void G(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(8);
        O(objectOutput);
    }

    final void O(DataOutput dataOutput) {
        int i10 = this.f8959a;
        int i11 = i10 % 900 == 0 ? i10 / 900 : 127;
        dataOutput.writeByte(i11);
        if (i11 == 127) {
            dataOutput.writeInt(i10);
        }
    }

    static x N(ObjectInput objectInput) {
        byte b10 = objectInput.readByte();
        return b10 == Byte.MAX_VALUE ? L(objectInput.readInt()) : L(b10 * 900);
    }
}
