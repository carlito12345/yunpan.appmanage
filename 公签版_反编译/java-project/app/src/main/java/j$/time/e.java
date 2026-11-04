package j$.time;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.source.SourceConst;
import j$.time.chrono.AbstractC0019i;
import j$.time.chrono.InterfaceC0012b;
import j$.time.chrono.InterfaceC0015e;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class e implements j$.time.temporal.m, j$.time.temporal.p, InterfaceC0012b, Serializable {

    /* renamed from: d, reason: collision with root package name */
    public static final e f8828d = N(-999999999, 1, 1);

    /* renamed from: e, reason: collision with root package name */
    public static final e f8829e = N(999999999, 12, 31);
    private static final long serialVersionUID = 2942565459149668126L;

    /* renamed from: a, reason: collision with root package name */
    private final int f8830a;

    /* renamed from: b, reason: collision with root package name */
    private final short f8831b;

    /* renamed from: c, reason: collision with root package name */
    private final short f8832c;

    static {
        N(1970, 1, 1);
    }

    public static e O(int i10, k kVar, int i11) {
        j$.time.temporal.a.YEAR.C(i10);
        Objects.requireNonNull(kVar, "month");
        j$.time.temporal.a.DAY_OF_MONTH.C(i11);
        return D(i10, kVar.getValue(), i11);
    }

    public static e N(int i10, int i11, int i12) {
        j$.time.temporal.a.YEAR.C(i10);
        j$.time.temporal.a.MONTH_OF_YEAR.C(i11);
        j$.time.temporal.a.DAY_OF_MONTH.C(i12);
        return D(i10, i11, i12);
    }

    public static e P(long j10) {
        long j11;
        j$.time.temporal.a.EPOCH_DAY.C(j10);
        long j12 = 719468 + j10;
        if (j12 < 0) {
            long j13 = ((j10 + 719469) / 146097) - 1;
            j11 = j13 * 400;
            j12 += (-j13) * 146097;
        } else {
            j11 = 0;
        }
        long j14 = ((j12 * 400) + 591) / 146097;
        long j15 = j12 - ((j14 / 400) + (((j14 / 4) + (j14 * 365)) - (j14 / 100)));
        if (j15 < 0) {
            j14--;
            j15 = j12 - ((j14 / 400) + (((j14 / 4) + (365 * j14)) - (j14 / 100)));
        }
        int i10 = (int) j15;
        int i11 = ((i10 * 5) + 2) / CarSettingID.Recv.EMS_BRK_REGEN_MOD;
        return new e(j$.time.temporal.a.YEAR.w(j14 + j11 + (i11 / 10)), ((i11 + 2) % 12) + 1, (i10 - (((i11 * SourceConst.IOCTL_ANDROID_PHONE_VOLUME) + 5) / 10)) + 1);
    }

    public static e E(j$.time.temporal.o oVar) {
        Objects.requireNonNull(oVar, "temporal");
        e eVar = (e) oVar.v(j$.time.temporal.n.f());
        if (eVar != null) {
            return eVar;
        }
        throw new DateTimeException("Unable to obtain LocalDate from TemporalAccessor: " + oVar + " of type " + oVar.getClass().getName());
    }

    private static e D(int i10, int i11, int i12) {
        int i13 = 28;
        if (i12 > 28) {
            if (i11 != 2) {
                i13 = (i11 == 4 || i11 == 6 || i11 == 9 || i11 == 11) ? 30 : 31;
            } else {
                j$.time.chrono.u.f8817d.getClass();
                if (j$.time.chrono.u.m(i10)) {
                    i13 = 29;
                }
            }
            if (i12 > i13) {
                if (i12 == 29) {
                    throw new DateTimeException("Invalid date 'February 29' as '" + i10 + "' is not a leap year");
                }
                throw new DateTimeException("Invalid date '" + k.F(i11).name() + " " + i12 + "'");
            }
        }
        return new e(i10, i11, i12);
    }

    private static e U(int i10, int i11, int i12) {
        if (i11 == 2) {
            j$.time.chrono.u.f8817d.getClass();
            i12 = Math.min(i12, j$.time.chrono.u.m((long) i10) ? 29 : 28);
        } else if (i11 == 4 || i11 == 6 || i11 == 9 || i11 == 11) {
            i12 = Math.min(i12, 30);
        }
        return new e(i10, i11, i12);
    }

    private e(int i10, int i11, int i12) {
        this.f8830a = i10;
        this.f8831b = (short) i11;
        this.f8832c = (short) i12;
    }

    @Override // j$.time.temporal.o
    public final boolean f(j$.time.temporal.r rVar) {
        return AbstractC0019i.h(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.s(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        if (!aVar.v()) {
            throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
        }
        int i10 = d.f8826a[aVar.ordinal()];
        if (i10 == 1) {
            return j$.time.temporal.w.j(1L, M());
        }
        if (i10 == 2) {
            return j$.time.temporal.w.j(1L, L() ? 366 : 365);
        }
        if (i10 == 3) {
            return j$.time.temporal.w.j(1L, (k.F(this.f8831b) != k.FEBRUARY || L()) ? 5L : 4L);
        }
        if (i10 != 4) {
            return ((j$.time.temporal.a) rVar).j();
        }
        return j$.time.temporal.w.j(1L, this.f8830a <= 0 ? 1000000000L : 999999999L);
    }

    @Override // j$.time.temporal.o
    public final int k(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return F(rVar);
        }
        return j$.time.temporal.n.a(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (rVar == j$.time.temporal.a.EPOCH_DAY) {
                return t();
            }
            if (rVar != j$.time.temporal.a.PROLEPTIC_MONTH) {
                return F(rVar);
            }
            return ((this.f8830a * 12) + this.f8831b) - 1;
        }
        return rVar.k(this);
    }

    private int F(j$.time.temporal.r rVar) {
        int i10;
        int i11 = d.f8826a[((j$.time.temporal.a) rVar).ordinal()];
        short s8 = this.f8832c;
        int i12 = this.f8830a;
        switch (i11) {
            case 1:
                return s8;
            case 2:
                return H();
            case 3:
                i10 = (s8 - 1) / 7;
                break;
            case 4:
                return i12 >= 1 ? i12 : 1 - i12;
            case 5:
                return G().getValue();
            case 6:
                i10 = (s8 - 1) % 7;
                break;
            case 7:
                return ((H() - 1) % 7) + 1;
            case 8:
                throw new j$.time.temporal.v("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((H() - 1) / 7) + 1;
            case 10:
                return this.f8831b;
            case 11:
                throw new j$.time.temporal.v("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return i12;
            case 13:
                return i12 >= 1 ? 1 : 0;
            default:
                throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
        }
        return i10 + 1;
    }

    @Override // j$.time.chrono.InterfaceC0012b
    public final j$.time.chrono.n a() {
        return j$.time.chrono.u.f8817d;
    }

    public final int J() {
        return this.f8830a;
    }

    public final int I() {
        return this.f8831b;
    }

    public final int H() {
        return (k.F(this.f8831b).C(L()) + this.f8832c) - 1;
    }

    public final b G() {
        return b.C(((int) j$.com.android.tools.r8.a.h(t() + 3, 7)) + 1);
    }

    public final boolean L() {
        j$.time.chrono.u uVar = j$.time.chrono.u.f8817d;
        long j10 = this.f8830a;
        uVar.getClass();
        return j$.time.chrono.u.m(j10);
    }

    public final int M() {
        short s8 = this.f8831b;
        return s8 != 2 ? (s8 == 4 || s8 == 6 || s8 == 9 || s8 == 11) ? 30 : 31 : L() ? 29 : 28;
    }

    @Override // j$.time.temporal.m
    /* renamed from: W, reason: merged with bridge method [inline-methods] */
    public final e m(j$.time.temporal.p pVar) {
        if (pVar instanceof e) {
            return (e) pVar;
        }
        return (e) pVar.w(this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: V, reason: merged with bridge method [inline-methods] */
    public final e d(long j10, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (e) rVar.n(this, j10);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        aVar.C(j10);
        int i10 = d.f8826a[aVar.ordinal()];
        short s8 = this.f8832c;
        short s10 = this.f8831b;
        int i11 = this.f8830a;
        switch (i10) {
            case 1:
                int i12 = (int) j10;
                return s8 == i12 ? this : N(i11, s10, i12);
            case 2:
                return X((int) j10);
            case 3:
                return R(j$.com.android.tools.r8.a.j(j10 - s(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH), 7));
            case 4:
                if (i11 < 1) {
                    j10 = 1 - j10;
                }
                return Y((int) j10);
            case 5:
                return R(j10 - G().getValue());
            case 6:
                return R(j10 - s(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 7:
                return R(j10 - s(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 8:
                return P(j10);
            case 9:
                return R(j$.com.android.tools.r8.a.j(j10 - s(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR), 7));
            case 10:
                int i13 = (int) j10;
                if (s10 == i13) {
                    return this;
                }
                j$.time.temporal.a.MONTH_OF_YEAR.C(i13);
                return U(i11, i13, s8);
            case 11:
                return S(j10 - (((i11 * 12) + s10) - 1));
            case 12:
                return Y((int) j10);
            case 13:
                return s(j$.time.temporal.a.ERA) == j10 ? this : Y(1 - i11);
            default:
                throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
        }
    }

    public final e Y(int i10) {
        if (this.f8830a == i10) {
            return this;
        }
        j$.time.temporal.a.YEAR.C(i10);
        return U(i10, this.f8831b, this.f8832c);
    }

    public final e X(int i10) {
        if (H() == i10) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        int i11 = this.f8830a;
        long j10 = i11;
        aVar.C(j10);
        j$.time.temporal.a.DAY_OF_YEAR.C(i10);
        j$.time.chrono.u.f8817d.getClass();
        boolean zM = j$.time.chrono.u.m(j10);
        if (i10 == 366 && !zM) {
            throw new DateTimeException("Invalid date 'DayOfYear 366' as '" + i11 + "' is not a leap year");
        }
        k kVarF = k.F(((i10 - 1) / 31) + 1);
        if (i10 > (kVarF.D(zM) + kVarF.C(zM)) - 1) {
            kVarF = kVarF.G();
        }
        return new e(i11, kVarF.getValue(), (i10 - kVarF.C(zM)) + 1);
    }

    @Override // j$.time.temporal.m
    /* renamed from: Q, reason: merged with bridge method [inline-methods] */
    public final e e(long j10, j$.time.temporal.u uVar) {
        if (!(uVar instanceof j$.time.temporal.b)) {
            return (e) uVar.j(this, j10);
        }
        switch (d.f8827b[((j$.time.temporal.b) uVar).ordinal()]) {
            case 1:
                return R(j10);
            case 2:
                return R(j$.com.android.tools.r8.a.j(j10, 7));
            case 3:
                return S(j10);
            case 4:
                return T(j10);
            case 5:
                return T(j$.com.android.tools.r8.a.j(j10, 10));
            case 6:
                return T(j$.com.android.tools.r8.a.j(j10, 100));
            case 7:
                return T(j$.com.android.tools.r8.a.j(j10, 1000));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return d(j$.com.android.tools.r8.a.d(s(aVar), j10), aVar);
            default:
                throw new j$.time.temporal.v("Unsupported unit: " + uVar);
        }
    }

    public final e T(long j10) {
        return j10 == 0 ? this : U(j$.time.temporal.a.YEAR.w(this.f8830a + j10), this.f8831b, this.f8832c);
    }

    public final e S(long j10) {
        if (j10 == 0) {
            return this;
        }
        long j11 = (this.f8830a * 12) + (this.f8831b - 1) + j10;
        long j12 = 12;
        return U(j$.time.temporal.a.YEAR.w(j$.com.android.tools.r8.a.i(j11, j12)), ((int) j$.com.android.tools.r8.a.h(j11, j12)) + 1, this.f8832c);
    }

    public final e R(long j10) {
        if (j10 == 0) {
            return this;
        }
        long j11 = this.f8832c + j10;
        if (j11 > 0) {
            short s8 = this.f8831b;
            int i10 = this.f8830a;
            if (j11 <= 28) {
                return new e(i10, s8, (int) j11);
            }
            if (j11 <= 59) {
                long jM = M();
                if (j11 <= jM) {
                    return new e(i10, s8, (int) j11);
                }
                if (s8 < 12) {
                    return new e(i10, s8 + 1, (int) (j11 - jM));
                }
                int i11 = i10 + 1;
                j$.time.temporal.a.YEAR.C(i11);
                return new e(i11, 1, (int) (j11 - jM));
            }
        }
        return P(j$.com.android.tools.r8.a.d(t(), j10));
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(long j10, j$.time.temporal.b bVar) {
        return j10 == Long.MIN_VALUE ? e(Long.MAX_VALUE, bVar).e(1L, bVar) : e(-j10, bVar);
    }

    @Override // j$.time.temporal.o
    public final Object v(j$.time.temporal.t tVar) {
        return tVar == j$.time.temporal.n.f() ? this : AbstractC0019i.j(this, tVar);
    }

    @Override // j$.time.temporal.p
    public final j$.time.temporal.m w(j$.time.temporal.m mVar) {
        return AbstractC0019i.a(this, mVar);
    }

    @Override // j$.time.chrono.InterfaceC0012b
    public final InterfaceC0015e u(i iVar) {
        return g.K(this, iVar);
    }

    @Override // j$.time.chrono.InterfaceC0012b
    public final long t() {
        long j10 = this.f8830a;
        long j11 = this.f8831b;
        long j12 = 365 * j10;
        long j13 = (((367 * j11) - 362) / 12) + (j10 >= 0 ? ((j10 + 399) / 400) + (((3 + j10) / 4) - ((99 + j10) / 100)) + j12 : j12 - ((j10 / (-400)) + ((j10 / (-4)) - (j10 / (-100))))) + (this.f8832c - 1);
        if (j11 > 2) {
            j13 = !L() ? j13 - 2 : j13 - 1;
        }
        return j13 - 719528;
    }

    @Override // java.lang.Comparable
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public final int compareTo(InterfaceC0012b interfaceC0012b) {
        if (interfaceC0012b instanceof e) {
            return C((e) interfaceC0012b);
        }
        return AbstractC0019i.b(this, interfaceC0012b);
    }

    final int C(e eVar) {
        int i10 = this.f8830a - eVar.f8830a;
        if (i10 != 0) {
            return i10;
        }
        int i11 = this.f8831b - eVar.f8831b;
        return i11 == 0 ? this.f8832c - eVar.f8832c : i11;
    }

    public final boolean K(e eVar) {
        return eVar instanceof e ? C(eVar) < 0 : t() < eVar.t();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && C((e) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC0012b
    public final int hashCode() {
        int i10 = this.f8830a;
        return (((i10 << 11) + (this.f8831b << 6)) + this.f8832c) ^ (i10 & (-2048));
    }

    @Override // j$.time.chrono.InterfaceC0012b
    public final String toString() {
        int i10 = this.f8830a;
        int iAbs = Math.abs(i10);
        StringBuilder sb2 = new StringBuilder(10);
        if (iAbs >= 1000) {
            if (i10 > 9999) {
                sb2.append('+');
            }
            sb2.append(i10);
        } else if (i10 < 0) {
            sb2.append(i10 - 10000);
            sb2.deleteCharAt(1);
        } else {
            sb2.append(i10 + 10000);
            sb2.deleteCharAt(0);
        }
        short s8 = this.f8831b;
        sb2.append(s8 < 10 ? "-0" : "-");
        sb2.append((int) s8);
        short s10 = this.f8832c;
        sb2.append(s10 < 10 ? "-0" : "-");
        sb2.append((int) s10);
        return sb2.toString();
    }

    private Object writeReplace() {
        return new r((byte) 3, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void Z(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.f8830a);
        dataOutput.writeByte(this.f8831b);
        dataOutput.writeByte(this.f8832c);
    }
}
