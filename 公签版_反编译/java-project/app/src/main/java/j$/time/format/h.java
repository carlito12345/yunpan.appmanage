package j$.time.format;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

/* loaded from: classes2.dex */
final class h extends j {

    /* renamed from: g, reason: collision with root package name */
    private final boolean f8846g;

    h(j$.time.temporal.r rVar, int i10, int i11, boolean z, int i12) {
        super(rVar, i10, i11, v.NOT_NEGATIVE, i12);
        this.f8846g = z;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [j$.time.temporal.r, java.lang.Enum] */
    @Override // j$.time.format.j
    final j b() {
        if (this.f8852e == -1) {
            return this;
        }
        return new h(this.f8848a, this.f8849b, this.f8850c, this.f8846g, -1);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [j$.time.temporal.r, java.lang.Enum] */
    @Override // j$.time.format.j
    final j c(int i10) {
        return new h(this.f8848a, this.f8849b, this.f8850c, this.f8846g, this.f8852e + i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [j$.time.temporal.r, java.lang.Enum] */
    @Override // j$.time.format.j, j$.time.format.g
    public final boolean j(q qVar, StringBuilder sb2) {
        ?? r02 = this.f8848a;
        Long lE = qVar.e(r02);
        if (lE == null) {
            return false;
        }
        t tVarB = qVar.b();
        long jLongValue = lE.longValue();
        j$.time.temporal.w wVarJ = r02.j();
        wVarJ.b(jLongValue, r02);
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(wVarJ.e());
        BigDecimal bigDecimalAdd = BigDecimal.valueOf(wVarJ.d()).subtract(bigDecimalValueOf).add(BigDecimal.ONE);
        BigDecimal bigDecimalSubtract = BigDecimal.valueOf(jLongValue).subtract(bigDecimalValueOf);
        RoundingMode roundingMode = RoundingMode.FLOOR;
        BigDecimal bigDecimalDivide = bigDecimalSubtract.divide(bigDecimalAdd, 9, roundingMode);
        BigDecimal bigDecimal = BigDecimal.ZERO;
        if (bigDecimalDivide.compareTo(bigDecimal) != 0) {
            bigDecimal = bigDecimalDivide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimalDivide.stripTrailingZeros();
        }
        int iScale = bigDecimal.scale();
        boolean z = this.f8846g;
        int i10 = this.f8849b;
        if (iScale != 0) {
            String strSubstring = bigDecimal.setScale(Math.min(Math.max(bigDecimal.scale(), i10), this.f8850c), roundingMode).toPlainString().substring(2);
            tVarB.getClass();
            if (z) {
                sb2.append('.');
            }
            sb2.append(strSubstring);
            return true;
        }
        if (i10 <= 0) {
            return true;
        }
        if (z) {
            tVarB.getClass();
            sb2.append('.');
        }
        for (int i11 = 0; i11 < i10; i11++) {
            tVarB.getClass();
            sb2.append('0');
        }
        return true;
    }

    @Override // j$.time.format.j
    public final String toString() {
        return "Fraction(" + this.f8848a + "," + this.f8849b + "," + this.f8850c + (this.f8846g ? ",DecimalPoint" : "") + ")";
    }
}
