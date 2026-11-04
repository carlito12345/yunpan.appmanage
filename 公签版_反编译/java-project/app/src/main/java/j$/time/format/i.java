package j$.time.format;

import j$.time.x;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* loaded from: classes2.dex */
final class i implements g {
    i() {
    }

    @Override // j$.time.format.g
    public final boolean j(q qVar, StringBuilder sb2) {
        Long lE = qVar.e(j$.time.temporal.a.INSTANT_SECONDS);
        j$.time.temporal.o oVarD = qVar.d();
        j$.time.temporal.a aVar = j$.time.temporal.a.NANO_OF_SECOND;
        Long lValueOf = oVarD.f(aVar) ? Long.valueOf(qVar.d().s(aVar)) : null;
        int i10 = 0;
        if (lE == null) {
            return false;
        }
        long jLongValue = lE.longValue();
        int iW = aVar.w(lValueOf != null ? lValueOf.longValue() : 0L);
        if (jLongValue >= -62167219200L) {
            long j10 = jLongValue - 253402300800L;
            long jI = j$.com.android.tools.r8.a.i(j10, 315569520000L) + 1;
            j$.time.g gVarL = j$.time.g.L(j$.com.android.tools.r8.a.h(j10, 315569520000L) - 62167219200L, 0, x.f8956e);
            if (jI > 0) {
                sb2.append('+');
                sb2.append(jI);
            }
            sb2.append(gVarL);
            if (gVarL.F() == 0) {
                sb2.append(":00");
            }
        } else {
            long j11 = jLongValue + 62167219200L;
            long j12 = j11 / 315569520000L;
            long j13 = j11 % 315569520000L;
            j$.time.g gVarL2 = j$.time.g.L(j13 - 62167219200L, 0, x.f8956e);
            int length = sb2.length();
            sb2.append(gVarL2);
            if (gVarL2.F() == 0) {
                sb2.append(":00");
            }
            if (j12 < 0) {
                if (gVarL2.G() == -10000) {
                    sb2.replace(length, length + 2, Long.toString(j12 - 1));
                } else if (j13 == 0) {
                    sb2.insert(length, j12);
                } else {
                    sb2.insert(length + 1, Math.abs(j12));
                }
            }
        }
        if (iW > 0) {
            sb2.append('.');
            int i11 = 100000000;
            while (true) {
                if (iW <= 0 && i10 % 3 == 0 && i10 >= -2) {
                    break;
                }
                int i12 = iW / i11;
                sb2.append((char) (i12 + 48));
                iW -= i12 * i11;
                i11 /= 10;
                i10++;
            }
        }
        sb2.append(Matrix.MATRIX_TYPE_ZERO);
        return true;
    }

    public final String toString() {
        return "Instant()";
    }
}
