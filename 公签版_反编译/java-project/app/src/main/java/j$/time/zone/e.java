package j$.time.zone;

import j$.time.chrono.u;
import j$.time.k;
import j$.time.temporal.p;
import j$.time.x;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes2.dex */
public final class e implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;

    /* renamed from: a, reason: collision with root package name */
    private final k f8973a;

    /* renamed from: b, reason: collision with root package name */
    private final byte f8974b;

    /* renamed from: c, reason: collision with root package name */
    private final j$.time.b f8975c;

    /* renamed from: d, reason: collision with root package name */
    private final j$.time.i f8976d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f8977e;

    /* renamed from: f, reason: collision with root package name */
    private final d f8978f;

    /* renamed from: g, reason: collision with root package name */
    private final x f8979g;

    /* renamed from: h, reason: collision with root package name */
    private final x f8980h;

    /* renamed from: i, reason: collision with root package name */
    private final x f8981i;

    e(k kVar, int i10, j$.time.b bVar, j$.time.i iVar, boolean z, d dVar, x xVar, x xVar2, x xVar3) {
        this.f8973a = kVar;
        this.f8974b = (byte) i10;
        this.f8975c = bVar;
        this.f8976d = iVar;
        this.f8977e = z;
        this.f8978f = dVar;
        this.f8979g = xVar;
        this.f8980h = xVar2;
        this.f8981i = xVar3;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a((byte) 3, this);
    }

    final void writeExternal(ObjectOutput objectOutput) {
        j$.time.i iVar = this.f8976d;
        boolean z = this.f8977e;
        int iT = z ? 86400 : iVar.T();
        int I = this.f8979g.I();
        x xVar = this.f8980h;
        int I2 = xVar.I() - I;
        x xVar2 = this.f8981i;
        int I3 = xVar2.I() - I;
        int iG = iT % 3600 == 0 ? z ? 24 : iVar.G() : 31;
        int i10 = I % 900 == 0 ? (I / 900) + 128 : 255;
        int i11 = (I2 == 0 || I2 == 1800 || I2 == 3600) ? I2 / 1800 : 3;
        int i12 = (I3 == 0 || I3 == 1800 || I3 == 3600) ? I3 / 1800 : 3;
        j$.time.b bVar = this.f8975c;
        objectOutput.writeInt((this.f8973a.getValue() << 28) + ((this.f8974b + HebrewProber.SPACE) << 22) + ((bVar == null ? 0 : bVar.getValue()) << 19) + (iG << 14) + (this.f8978f.ordinal() << 12) + (i10 << 4) + (i11 << 2) + i12);
        if (iG == 31) {
            objectOutput.writeInt(iT);
        }
        if (i10 == 255) {
            objectOutput.writeInt(I);
        }
        if (i11 == 3) {
            objectOutput.writeInt(xVar.I());
        }
        if (i12 == 3) {
            objectOutput.writeInt(xVar2.I());
        }
    }

    static e b(ObjectInput objectInput) {
        int i10 = objectInput.readInt();
        k kVarF = k.F(i10 >>> 28);
        int i11 = ((264241152 & i10) >>> 22) - 32;
        int i12 = (3670016 & i10) >>> 19;
        j$.time.b bVarC = i12 == 0 ? null : j$.time.b.C(i12);
        int i13 = (507904 & i10) >>> 14;
        d dVar = d.values()[(i10 & 12288) >>> 12];
        int i14 = (i10 & 4080) >>> 4;
        int i15 = (i10 & 12) >>> 2;
        int i16 = i10 & 3;
        j$.time.i iVarL = i13 == 31 ? j$.time.i.L(objectInput.readInt()) : j$.time.i.J(i13 % 24);
        x xVarL = x.L(i14 == 255 ? objectInput.readInt() : (i14 - 128) * 900);
        x xVarL2 = i15 == 3 ? x.L(objectInput.readInt()) : x.L((i15 * 1800) + xVarL.I());
        x xVarL3 = i16 == 3 ? x.L(objectInput.readInt()) : x.L((i16 * 1800) + xVarL.I());
        boolean z = i13 == 24;
        Objects.requireNonNull(kVarF, "month");
        Objects.requireNonNull(iVarL, "time");
        Objects.requireNonNull(dVar, "timeDefnition");
        Objects.requireNonNull(xVarL, "standardOffset");
        Objects.requireNonNull(xVarL2, "offsetBefore");
        Objects.requireNonNull(xVarL3, "offsetAfter");
        if (i11 < -28 || i11 > 31 || i11 == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        }
        if (z && !iVarL.equals(j$.time.i.f8891g)) {
            throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
        }
        if (iVarL.H() != 0) {
            throw new IllegalArgumentException("Time's nano-of-second must be zero");
        }
        return new e(kVarF, i11, bVarC, iVarL, z, dVar, xVarL, xVarL2, xVarL3);
    }

    public final b a(int i10) {
        j$.time.e eVarO;
        j$.time.b bVar = this.f8975c;
        k kVar = this.f8973a;
        byte b10 = this.f8974b;
        if (b10 < 0) {
            u.f8817d.getClass();
            eVarO = j$.time.e.O(i10, kVar, kVar.D(u.m(i10)) + 1 + b10);
            if (bVar != null) {
                final int value = bVar.getValue();
                final int i11 = 1;
                eVarO = eVarO.m(new p() { // from class: j$.time.temporal.q
                    @Override // j$.time.temporal.p
                    public final m w(m mVar) {
                        switch (i11) {
                            case 0:
                                int iK = mVar.k(a.DAY_OF_WEEK);
                                int i12 = value;
                                if (iK == i12) {
                                    return mVar;
                                }
                                return mVar.e(iK - i12 >= 0 ? 7 - r0 : -r0, b.DAYS);
                            default:
                                int iK2 = mVar.k(a.DAY_OF_WEEK);
                                int i13 = value;
                                if (iK2 == i13) {
                                    return mVar;
                                }
                                return mVar.j(i13 - iK2 >= 0 ? 7 - r1 : -r1, b.DAYS);
                        }
                    }
                });
            }
        } else {
            eVarO = j$.time.e.O(i10, kVar, b10);
            if (bVar != null) {
                final int value2 = bVar.getValue();
                final int i12 = 0;
                eVarO = eVarO.m(new p() { // from class: j$.time.temporal.q
                    @Override // j$.time.temporal.p
                    public final m w(m mVar) {
                        switch (i12) {
                            case 0:
                                int iK = mVar.k(a.DAY_OF_WEEK);
                                int i122 = value2;
                                if (iK == i122) {
                                    return mVar;
                                }
                                return mVar.e(iK - i122 >= 0 ? 7 - r0 : -r0, b.DAYS);
                            default:
                                int iK2 = mVar.k(a.DAY_OF_WEEK);
                                int i13 = value2;
                                if (iK2 == i13) {
                                    return mVar;
                                }
                                return mVar.j(i13 - iK2 >= 0 ? 7 - r1 : -r1, b.DAYS);
                        }
                    }
                });
            }
        }
        if (this.f8977e) {
            eVarO = eVarO.R(1L);
        }
        j$.time.g gVarK = j$.time.g.K(eVarO, this.f8976d);
        d dVar = this.f8978f;
        dVar.getClass();
        int i13 = c.f8971a[dVar.ordinal()];
        x xVar = this.f8980h;
        if (i13 == 1) {
            gVarK = gVarK.N(xVar.I() - x.f8956e.I());
        } else if (i13 == 2) {
            gVarK = gVarK.N(xVar.I() - this.f8979g.I());
        }
        return new b(gVarK, xVar, this.f8981i);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f8973a == eVar.f8973a && this.f8974b == eVar.f8974b && this.f8975c == eVar.f8975c && this.f8978f == eVar.f8978f && this.f8976d.equals(eVar.f8976d) && this.f8977e == eVar.f8977e && this.f8979g.equals(eVar.f8979g) && this.f8980h.equals(eVar.f8980h) && this.f8981i.equals(eVar.f8981i);
    }

    public final int hashCode() {
        int iT = ((this.f8976d.T() + (this.f8977e ? 1 : 0)) << 15) + (this.f8973a.ordinal() << 11) + ((this.f8974b + HebrewProber.SPACE) << 5);
        j$.time.b bVar = this.f8975c;
        return ((this.f8979g.hashCode() ^ (this.f8978f.ordinal() + (iT + ((bVar == null ? 7 : bVar.ordinal()) << 2)))) ^ this.f8980h.hashCode()) ^ this.f8981i.hashCode();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("TransitionRule[");
        x xVar = this.f8980h;
        x xVar2 = this.f8981i;
        sb2.append(xVar.compareTo(xVar2) > 0 ? "Gap " : "Overlap ");
        sb2.append(xVar);
        sb2.append(" to ");
        sb2.append(xVar2);
        sb2.append(", ");
        k kVar = this.f8973a;
        byte b10 = this.f8974b;
        j$.time.b bVar = this.f8975c;
        if (bVar == null) {
            sb2.append(kVar.name());
            sb2.append(' ');
            sb2.append((int) b10);
        } else if (b10 == -1) {
            sb2.append(bVar.name());
            sb2.append(" on or before last day of ");
            sb2.append(kVar.name());
        } else if (b10 < 0) {
            sb2.append(bVar.name());
            sb2.append(" on or before last day minus ");
            sb2.append((-b10) - 1);
            sb2.append(" of ");
            sb2.append(kVar.name());
        } else {
            sb2.append(bVar.name());
            sb2.append(" on or after ");
            sb2.append(kVar.name());
            sb2.append(' ');
            sb2.append((int) b10);
        }
        sb2.append(" at ");
        sb2.append(this.f8977e ? "24:00" : this.f8976d.toString());
        sb2.append(" ");
        sb2.append(this.f8978f);
        sb2.append(", standard offset ");
        sb2.append(this.f8979g);
        sb2.append(']');
        return sb2.toString();
    }
}
