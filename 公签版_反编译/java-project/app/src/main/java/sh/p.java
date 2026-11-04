package sh;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.slf4j.Marker;

/* loaded from: classes3.dex */
public final class p extends o implements wh.k, wh.l, Comparable {

    /* renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap f14614c = new ConcurrentHashMap(16, 0.75f, 4);

    /* renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap f14615d = new ConcurrentHashMap(16, 0.75f, 4);

    /* renamed from: e, reason: collision with root package name */
    public static final p f14616e = r(0);

    /* renamed from: f, reason: collision with root package name */
    public static final p f14617f = r(-64800);

    /* renamed from: g, reason: collision with root package name */
    public static final p f14618g = r(64800);

    /* renamed from: a, reason: collision with root package name */
    public final int f14619a;

    /* renamed from: b, reason: collision with root package name */
    public final transient String f14620b;

    public p(int i10) {
        String string;
        this.f14619a = i10;
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
        this.f14620b = string;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x008f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static p p(String str) {
        int iS;
        int iS2;
        int iS3;
        char cCharAt;
        p000if.a.t0(str, "offsetId");
        p pVar = (p) f14615d.get(str);
        if (pVar != null) {
            return pVar;
        }
        int length = str.length();
        if (length != 2) {
            if (length != 3) {
                if (length == 5) {
                    iS = s(str, 1, false);
                    iS2 = s(str, 3, false);
                } else {
                    if (length != 6) {
                        if (length == 7) {
                            iS = s(str, 1, false);
                            iS2 = s(str, 3, false);
                            iS3 = s(str, 5, false);
                        } else {
                            if (length != 9) {
                                throw new a("Invalid ID for ZoneOffset, invalid format: ".concat(str));
                            }
                            iS = s(str, 1, false);
                            iS2 = s(str, 4, true);
                            iS3 = s(str, 7, true);
                        }
                        cCharAt = str.charAt(0);
                        if (cCharAt != '+' || cCharAt == '-') {
                            return cCharAt == '-' ? q(-iS, -iS2, -iS3) : q(iS, iS2, iS3);
                        }
                        throw new a("Invalid ID for ZoneOffset, plus/minus not found when expected: ".concat(str));
                    }
                    iS = s(str, 1, false);
                    iS2 = s(str, 4, true);
                }
            }
            iS3 = 0;
            cCharAt = str.charAt(0);
            if (cCharAt != '+') {
            }
            if (cCharAt == '-') {
            }
        } else {
            str = str.charAt(0) + "0" + str.charAt(1);
        }
        iS = s(str, 1, false);
        iS2 = 0;
        iS3 = 0;
        cCharAt = str.charAt(0);
        if (cCharAt != '+') {
        }
        if (cCharAt == '-') {
        }
    }

    public static p q(int i10, int i11, int i12) {
        if (i10 < -18 || i10 > 18) {
            throw new a(g.b.i("Zone offset hours not in valid range: value ", i10, " is not in the range -18 to 18"));
        }
        if (i10 > 0) {
            if (i11 < 0 || i12 < 0) {
                throw new a("Zone offset minutes and seconds must be positive because hours is positive");
            }
        } else if (i10 < 0) {
            if (i11 > 0 || i12 > 0) {
                throw new a("Zone offset minutes and seconds must be negative because hours is negative");
            }
        } else if ((i11 > 0 && i12 < 0) || (i11 < 0 && i12 > 0)) {
            throw new a("Zone offset minutes and seconds must have the same sign");
        }
        if (Math.abs(i11) > 59) {
            throw new a("Zone offset minutes not in valid range: abs(value) " + Math.abs(i11) + " is not in the range 0 to 59");
        }
        if (Math.abs(i12) > 59) {
            throw new a("Zone offset seconds not in valid range: abs(value) " + Math.abs(i12) + " is not in the range 0 to 59");
        }
        if (Math.abs(i10) == 18 && (Math.abs(i11) > 0 || Math.abs(i12) > 0)) {
            throw new a("Zone offset not in valid range: -18:00 to +18:00");
        }
        return r((i11 * 60) + (i10 * 3600) + i12);
    }

    public static p r(int i10) {
        if (Math.abs(i10) > 64800) {
            throw new a("Zone offset not in valid range: -18:00 to +18:00");
        }
        if (i10 % 900 != 0) {
            return new p(i10);
        }
        Integer numValueOf = Integer.valueOf(i10);
        ConcurrentHashMap concurrentHashMap = f14614c;
        p pVar = (p) concurrentHashMap.get(numValueOf);
        if (pVar != null) {
            return pVar;
        }
        concurrentHashMap.putIfAbsent(numValueOf, new p(i10));
        p pVar2 = (p) concurrentHashMap.get(numValueOf);
        f14615d.putIfAbsent(pVar2.f14620b, pVar2);
        return pVar2;
    }

    private Object readResolve() throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static int s(String str, int i10, boolean z) {
        if (z && str.charAt(i10 - 1) != ':') {
            throw new a("Invalid ID for ZoneOffset, colon not found when expected: " + ((Object) str));
        }
        char cCharAt = str.charAt(i10);
        char cCharAt2 = str.charAt(i10 + 1);
        if (cCharAt >= '0' && cCharAt <= '9' && cCharAt2 >= '0' && cCharAt2 <= '9') {
            return (cCharAt2 - '0') + ((cCharAt - '0') * 10);
        }
        throw new a("Invalid ID for ZoneOffset, non numeric characters found: " + ((Object) str));
    }

    public static p t(ObjectInput objectInput) {
        byte b10 = objectInput.readByte();
        return b10 == Byte.MAX_VALUE ? r(objectInput.readInt()) : r(b10 * 900);
    }

    private Object writeReplace() {
        return new l((byte) 8, this);
    }

    @Override // wh.k
    public final long b(wh.m mVar) {
        if (mVar == wh.a.OFFSET_SECONDS) {
            return this.f14619a;
        }
        if (mVar instanceof wh.a) {
            throw new a(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
        }
        return mVar.a(this);
    }

    @Override // wh.k
    public final Object c(wh.o oVar) {
        if (oVar == wh.n.f17930e || oVar == wh.n.f17929d) {
            return this;
        }
        if (oVar == wh.n.f17931f || oVar == wh.n.f17932g || oVar == wh.n.f17928c || oVar == wh.n.f17927b || oVar == wh.n.f17926a) {
            return null;
        }
        return oVar.b(this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return ((p) obj).f14619a - this.f14619a;
    }

    @Override // wh.k
    public final boolean d(wh.m mVar) {
        return mVar instanceof wh.a ? mVar == wh.a.OFFSET_SECONDS : mVar != null && mVar.f(this);
    }

    @Override // sh.o
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof p) {
            return this.f14619a == ((p) obj).f14619a;
        }
        return false;
    }

    @Override // wh.k
    public final wh.r f(wh.m mVar) {
        if (mVar == wh.a.OFFSET_SECONDS) {
            return mVar.d();
        }
        if (mVar instanceof wh.a) {
            throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
        }
        return mVar.c(this);
    }

    @Override // wh.l
    public final wh.j g(wh.j jVar) {
        return jVar.a(this.f14619a, wh.a.OFFSET_SECONDS);
    }

    @Override // sh.o
    public final int hashCode() {
        return this.f14619a;
    }

    @Override // wh.k
    public final int i(wh.m mVar) {
        if (mVar == wh.a.OFFSET_SECONDS) {
            return this.f14619a;
        }
        if (mVar instanceof wh.a) {
            throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
        }
        return f(mVar).a(b(mVar), mVar);
    }

    @Override // sh.o
    public final String m() {
        return this.f14620b;
    }

    @Override // sh.o
    public final xh.h n() {
        return new xh.g(this);
    }

    @Override // sh.o
    public final void o(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(8);
        u(objectOutput);
    }

    @Override // sh.o
    public final String toString() {
        return this.f14620b;
    }

    public final void u(DataOutput dataOutput) {
        int i10 = this.f14619a;
        int i11 = i10 % 900 == 0 ? i10 / 900 : 127;
        dataOutput.writeByte(i11);
        if (i11 == 127) {
            dataOutput.writeInt(i10);
        }
    }
}
