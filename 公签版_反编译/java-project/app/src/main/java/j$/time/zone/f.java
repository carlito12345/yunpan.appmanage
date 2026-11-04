package j$.time.zone;

import j$.time.Instant;
import j$.time.chrono.AbstractC0019i;
import j$.time.x;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public final class f implements Serializable {

    /* renamed from: i, reason: collision with root package name */
    private static final long[] f8982i = new long[0];

    /* renamed from: j, reason: collision with root package name */
    private static final e[] f8983j = new e[0];

    /* renamed from: k, reason: collision with root package name */
    private static final j$.time.g[] f8984k = new j$.time.g[0];
    private static final b[] l = new b[0];
    private static final long serialVersionUID = 3044319355680032515L;

    /* renamed from: a, reason: collision with root package name */
    private final long[] f8985a;

    /* renamed from: b, reason: collision with root package name */
    private final x[] f8986b;

    /* renamed from: c, reason: collision with root package name */
    private final long[] f8987c;

    /* renamed from: d, reason: collision with root package name */
    private final j$.time.g[] f8988d;

    /* renamed from: e, reason: collision with root package name */
    private final x[] f8989e;

    /* renamed from: f, reason: collision with root package name */
    private final e[] f8990f;

    /* renamed from: g, reason: collision with root package name */
    private final TimeZone f8991g;

    /* renamed from: h, reason: collision with root package name */
    private final transient ConcurrentHashMap f8992h = new ConcurrentHashMap();

    public static f h(x xVar) {
        Objects.requireNonNull(xVar, "offset");
        return new f(xVar);
    }

    private f(long[] jArr, x[] xVarArr, long[] jArr2, x[] xVarArr2, e[] eVarArr) {
        this.f8985a = jArr;
        this.f8986b = xVarArr;
        this.f8987c = jArr2;
        this.f8989e = xVarArr2;
        this.f8990f = eVarArr;
        if (jArr2.length == 0) {
            this.f8988d = f8984k;
        } else {
            ArrayList arrayList = new ArrayList();
            int i10 = 0;
            while (i10 < jArr2.length) {
                int i11 = i10 + 1;
                b bVar = new b(jArr2[i10], xVarArr2[i10], xVarArr2[i11]);
                if (bVar.w()) {
                    arrayList.add(bVar.k());
                    arrayList.add(bVar.j());
                } else {
                    arrayList.add(bVar.j());
                    arrayList.add(bVar.k());
                }
                i10 = i11;
            }
            this.f8988d = (j$.time.g[]) arrayList.toArray(new j$.time.g[arrayList.size()]);
        }
        this.f8991g = null;
    }

    private f(x xVar) {
        x[] xVarArr = {xVar};
        this.f8986b = xVarArr;
        long[] jArr = f8982i;
        this.f8985a = jArr;
        this.f8987c = jArr;
        this.f8988d = f8984k;
        this.f8989e = xVarArr;
        this.f8990f = f8983j;
        this.f8991g = null;
    }

    f(TimeZone timeZone) {
        x[] xVarArr = {i(timeZone.getRawOffset())};
        this.f8986b = xVarArr;
        long[] jArr = f8982i;
        this.f8985a = jArr;
        this.f8987c = jArr;
        this.f8988d = f8984k;
        this.f8989e = xVarArr;
        this.f8990f = f8983j;
        this.f8991g = timeZone;
    }

    private static x i(int i10) {
        return x.L(i10 / 1000);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a(this.f8991g != null ? (byte) 100 : (byte) 1, this);
    }

    final void writeExternal(ObjectOutput objectOutput) throws IOException {
        long[] jArr = this.f8985a;
        objectOutput.writeInt(jArr.length);
        for (long j10 : jArr) {
            a.c(j10, objectOutput);
        }
        for (x xVar : this.f8986b) {
            a.d(xVar, objectOutput);
        }
        long[] jArr2 = this.f8987c;
        objectOutput.writeInt(jArr2.length);
        for (long j11 : jArr2) {
            a.c(j11, objectOutput);
        }
        for (x xVar2 : this.f8989e) {
            a.d(xVar2, objectOutput);
        }
        e[] eVarArr = this.f8990f;
        objectOutput.writeByte(eVarArr.length);
        for (e eVar : eVarArr) {
            eVar.writeExternal(objectOutput);
        }
    }

    final void k(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeUTF(this.f8991g.getID());
    }

    static f j(ObjectInput objectInput) throws IOException {
        int i10 = objectInput.readInt();
        long[] jArr = f8982i;
        long[] jArr2 = i10 == 0 ? jArr : new long[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            jArr2[i11] = a.a(objectInput);
        }
        int i12 = i10 + 1;
        x[] xVarArr = new x[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            xVarArr[i13] = a.b(objectInput);
        }
        int i14 = objectInput.readInt();
        if (i14 != 0) {
            jArr = new long[i14];
        }
        long[] jArr3 = jArr;
        for (int i15 = 0; i15 < i14; i15++) {
            jArr3[i15] = a.a(objectInput);
        }
        int i16 = i14 + 1;
        x[] xVarArr2 = new x[i16];
        for (int i17 = 0; i17 < i16; i17++) {
            xVarArr2[i17] = a.b(objectInput);
        }
        int i18 = objectInput.readByte();
        e[] eVarArr = i18 == 0 ? f8983j : new e[i18];
        for (int i19 = 0; i19 < i18; i19++) {
            eVarArr[i19] = e.b(objectInput);
        }
        return new f(jArr2, xVarArr, jArr3, xVarArr2, eVarArr);
    }

    public final x d(Instant instant) {
        TimeZone timeZone = this.f8991g;
        if (timeZone != null) {
            return i(timeZone.getOffset(instant.toEpochMilli()));
        }
        long[] jArr = this.f8987c;
        if (jArr.length == 0) {
            return this.f8986b[0];
        }
        long epochSecond = instant.getEpochSecond();
        int length = this.f8990f.length;
        x[] xVarArr = this.f8989e;
        if (length > 0 && epochSecond > jArr[jArr.length - 1]) {
            b[] bVarArrB = b(c(epochSecond, xVarArr[xVarArr.length - 1]));
            b bVar = null;
            for (int i10 = 0; i10 < bVarArrB.length; i10++) {
                bVar = bVarArrB[i10];
                if (epochSecond < bVar.B()) {
                    return bVar.s();
                }
            }
            return bVar.n();
        }
        int iBinarySearch = Arrays.binarySearch(jArr, epochSecond);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        }
        return xVarArr[iBinarySearch + 1];
    }

    public final List g(j$.time.g gVar) {
        Object objE = e(gVar);
        if (objE instanceof b) {
            return ((b) objE).v();
        }
        return Collections.singletonList((x) objE);
    }

    public final b f(j$.time.g gVar) {
        Object objE = e(gVar);
        if (objE instanceof b) {
            return (b) objE;
        }
        return null;
    }

    private Object e(j$.time.g gVar) {
        Object obj = null;
        x[] xVarArr = this.f8986b;
        int i10 = 0;
        TimeZone timeZone = this.f8991g;
        if (timeZone != null) {
            b[] bVarArrB = b(gVar.G());
            if (bVarArrB.length == 0) {
                return i(timeZone.getOffset(AbstractC0019i.n(gVar, xVarArr[0]) * 1000));
            }
            int length = bVarArrB.length;
            while (i10 < length) {
                b bVar = bVarArrB[i10];
                Object objA = a(gVar, bVar);
                if ((objA instanceof b) || objA.equals(bVar.s())) {
                    return objA;
                }
                i10++;
                obj = objA;
            }
            return obj;
        }
        if (this.f8987c.length == 0) {
            return xVarArr[0];
        }
        int length2 = this.f8990f.length;
        j$.time.g[] gVarArr = this.f8988d;
        if (length2 > 0 && gVar.H(gVarArr[gVarArr.length - 1])) {
            b[] bVarArrB2 = b(gVar.G());
            int length3 = bVarArrB2.length;
            while (i10 < length3) {
                b bVar2 = bVarArrB2[i10];
                Object objA2 = a(gVar, bVar2);
                if ((objA2 instanceof b) || objA2.equals(bVar2.s())) {
                    return objA2;
                }
                i10++;
                obj = objA2;
            }
            return obj;
        }
        int iBinarySearch = Arrays.binarySearch(gVarArr, gVar);
        x[] xVarArr2 = this.f8989e;
        if (iBinarySearch == -1) {
            return xVarArr2[0];
        }
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        } else if (iBinarySearch < gVarArr.length - 1) {
            int i11 = iBinarySearch + 1;
            if (gVarArr[iBinarySearch].equals(gVarArr[i11])) {
                iBinarySearch = i11;
            }
        }
        if ((iBinarySearch & 1) != 0) {
            return xVarArr2[(iBinarySearch / 2) + 1];
        }
        j$.time.g gVar2 = gVarArr[iBinarySearch];
        j$.time.g gVar3 = gVarArr[iBinarySearch + 1];
        int i12 = iBinarySearch / 2;
        x xVar = xVarArr2[i12];
        x xVar2 = xVarArr2[i12 + 1];
        return xVar2.I() > xVar.I() ? new b(gVar2, xVar, xVar2) : new b(gVar3, xVar, xVar2);
    }

    private static Object a(j$.time.g gVar, b bVar) {
        j$.time.g gVarK = bVar.k();
        if (bVar.w()) {
            if (gVar.I(gVarK)) {
                return bVar.s();
            }
            return gVar.I(bVar.j()) ? bVar : bVar.n();
        }
        if (gVar.I(gVarK)) {
            return gVar.I(bVar.j()) ? bVar.s() : bVar;
        }
        return bVar.n();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private b[] b(int i10) {
        long j10;
        Integer numValueOf = Integer.valueOf(i10);
        ConcurrentHashMap concurrentHashMap = this.f8992h;
        b[] bVarArr = (b[]) concurrentHashMap.get(numValueOf);
        if (bVarArr != null) {
            return bVarArr;
        }
        TimeZone timeZone = this.f8991g;
        if (timeZone == null) {
            e[] eVarArr = this.f8990f;
            b[] bVarArr2 = new b[eVarArr.length];
            for (int i11 = 0; i11 < eVarArr.length; i11++) {
                bVarArr2[i11] = eVarArr[i11].a(i10);
            }
            if (i10 < 2100) {
                concurrentHashMap.putIfAbsent(numValueOf, bVarArr2);
            }
            return bVarArr2;
        }
        b[] bVarArr3 = l;
        if (i10 < 1800) {
            return bVarArr3;
        }
        long jN = AbstractC0019i.n(j$.time.g.J(i10 - 1), this.f8986b[0]);
        int offset = timeZone.getOffset(jN * 1000);
        long j11 = 31968000 + jN;
        while (jN < j11) {
            long j12 = 7776000 + jN;
            long j13 = jN;
            if (offset != timeZone.getOffset(j12 * 1000)) {
                jN = j13;
                while (j12 - jN > 1) {
                    int i12 = offset;
                    long j14 = j11;
                    long jI = j$.com.android.tools.r8.a.i(j12 + jN, 2L);
                    if (timeZone.getOffset(jI * 1000) == i12) {
                        jN = jI;
                    } else {
                        j12 = jI;
                    }
                    offset = i12;
                    j11 = j14;
                }
                j10 = j11;
                int i13 = offset;
                if (timeZone.getOffset(jN * 1000) == i13) {
                    jN = j12;
                }
                x xVarI = i(i13);
                offset = timeZone.getOffset(jN * 1000);
                x xVarI2 = i(offset);
                if (c(jN, xVarI2) == i10) {
                    bVarArr3 = (b[]) Arrays.copyOf(bVarArr3, bVarArr3.length + 1);
                    bVarArr3[bVarArr3.length - 1] = new b(jN, xVarI, xVarI2);
                }
            } else {
                j10 = j11;
                jN = j12;
            }
            j11 = j10;
        }
        if (1916 <= i10 && i10 < 2100) {
            concurrentHashMap.putIfAbsent(numValueOf, bVarArr3);
        }
        return bVarArr3;
    }

    private static int c(long j10, x xVar) {
        return j$.time.e.P(j$.com.android.tools.r8.a.i(j10 + xVar.I(), 86400)).J();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return Objects.equals(this.f8991g, fVar.f8991g) && Arrays.equals(this.f8985a, fVar.f8985a) && Arrays.equals(this.f8986b, fVar.f8986b) && Arrays.equals(this.f8987c, fVar.f8987c) && Arrays.equals(this.f8989e, fVar.f8989e) && Arrays.equals(this.f8990f, fVar.f8990f);
    }

    public final int hashCode() {
        return ((((Objects.hashCode(this.f8991g) ^ Arrays.hashCode(this.f8985a)) ^ Arrays.hashCode(this.f8986b)) ^ Arrays.hashCode(this.f8987c)) ^ Arrays.hashCode(this.f8989e)) ^ Arrays.hashCode(this.f8990f);
    }

    public final String toString() {
        TimeZone timeZone = this.f8991g;
        if (timeZone != null) {
            return "ZoneRules[timeZone=" + timeZone.getID() + "]";
        }
        return "ZoneRules[currentStandardOffset=" + this.f8986b[r1.length - 1] + "]";
    }
}
