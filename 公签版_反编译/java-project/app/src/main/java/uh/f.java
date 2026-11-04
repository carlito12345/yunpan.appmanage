package uh;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

/* loaded from: classes3.dex */
public final class f implements e {

    /* renamed from: a, reason: collision with root package name */
    public final wh.a f16122a;

    /* renamed from: b, reason: collision with root package name */
    public final int f16123b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f16124c;

    public f(wh.a aVar) {
        p000if.a.t0(aVar, "field");
        wh.r rVar = aVar.f17909b;
        if (rVar.f17933a != rVar.f17934b || rVar.f17935c != rVar.f17936d) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + aVar);
        }
        this.f16122a = aVar;
        this.f16123b = 9;
        this.f16124c = true;
    }

    @Override // uh.e
    public final boolean a(androidx.room.s sVar, StringBuilder sb2) {
        wh.a aVar = this.f16122a;
        Long lM = sVar.m(aVar);
        if (lM == null) {
            return false;
        }
        long jLongValue = lM.longValue();
        wh.r rVar = aVar.f17909b;
        rVar.b(jLongValue, aVar);
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(rVar.f17933a);
        BigDecimal bigDecimalAdd = BigDecimal.valueOf(rVar.f17936d).subtract(bigDecimalValueOf).add(BigDecimal.ONE);
        BigDecimal bigDecimalSubtract = BigDecimal.valueOf(jLongValue).subtract(bigDecimalValueOf);
        RoundingMode roundingMode = RoundingMode.FLOOR;
        BigDecimal bigDecimalDivide = bigDecimalSubtract.divide(bigDecimalAdd, 9, roundingMode);
        BigDecimal bigDecimal = BigDecimal.ZERO;
        if (bigDecimalDivide.compareTo(bigDecimal) != 0) {
            bigDecimal = bigDecimalDivide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimalDivide.stripTrailingZeros();
        }
        int iScale = bigDecimal.scale();
        p pVar = (p) sVar.f2428d;
        if (iScale == 0) {
            return true;
        }
        String strSubstring = bigDecimal.setScale(Math.min(Math.max(bigDecimal.scale(), 0), this.f16123b), roundingMode).toPlainString().substring(2);
        pVar.getClass();
        if (this.f16124c) {
            sb2.append('.');
        }
        sb2.append(strSubstring);
        return true;
    }

    public final String toString() {
        return "Fraction(" + this.f16122a + ",0," + this.f16123b + (this.f16124c ? ",DecimalPoint" : "") + ")";
    }
}
