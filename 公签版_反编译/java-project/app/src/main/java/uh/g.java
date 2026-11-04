package uh;

import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* loaded from: classes3.dex */
public final class g implements e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16125a;

    public g(int i10) {
        this.f16125a = i10;
        switch (i10) {
            case 1:
                s5.c cVar = m.f16144f;
                break;
        }
    }

    @Override // uh.e
    public final boolean a(androidx.room.s sVar, StringBuilder sb2) {
        switch (this.f16125a) {
            case 0:
                Long lM = sVar.m(wh.a.INSTANT_SECONDS);
                wh.a aVar = wh.a.NANO_OF_SECOND;
                wh.k kVar = (wh.k) sVar.f2427c;
                Long lValueOf = kVar.d(aVar) ? Long.valueOf(kVar.b(aVar)) : 0L;
                if (lM == null) {
                    return false;
                }
                long jLongValue = lM.longValue();
                int iA = aVar.f17909b.a(lValueOf.longValue(), aVar);
                if (jLongValue >= -62167219200L) {
                    long j10 = jLongValue - 253402300800L;
                    long jC = p000if.a.C(j10, 315569520000L) + 1;
                    sh.f fVarR = sh.f.r((((j10 % 315569520000L) + 315569520000L) % 315569520000L) - 62167219200L, 0, sh.p.f14616e);
                    if (jC > 0) {
                        sb2.append('+');
                        sb2.append(jC);
                    }
                    sb2.append(fVarR);
                    if (fVarR.f14587b.f14593c == 0) {
                        sb2.append(":00");
                    }
                } else {
                    long j11 = jLongValue + 62167219200L;
                    long j12 = j11 / 315569520000L;
                    long j13 = j11 % 315569520000L;
                    sh.f fVarR2 = sh.f.r(j13 - 62167219200L, 0, sh.p.f14616e);
                    int length = sb2.length();
                    sb2.append(fVarR2);
                    if (fVarR2.f14587b.f14593c == 0) {
                        sb2.append(":00");
                    }
                    if (j12 < 0) {
                        if (fVarR2.f14586a.f14581a == -10000) {
                            sb2.replace(length, length + 2, Long.toString(j12 - 1));
                        } else if (j13 == 0) {
                            sb2.insert(length, j12);
                        } else {
                            sb2.insert(length + 1, Math.abs(j12));
                        }
                    }
                }
                if (iA != 0) {
                    sb2.append('.');
                    if (iA % 1000000 == 0) {
                        sb2.append(Integer.toString((iA / 1000000) + 1000).substring(1));
                    } else if (iA % 1000 == 0) {
                        sb2.append(Integer.toString((iA / 1000) + 1000000).substring(1));
                    } else {
                        sb2.append(Integer.toString(iA + 1000000000).substring(1));
                    }
                }
                sb2.append(Matrix.MATRIX_TYPE_ZERO);
                return true;
            default:
                s5.c cVar = m.f16144f;
                wh.k kVar2 = (wh.k) sVar.f2427c;
                Object objC = kVar2.c(cVar);
                if (objC == null && sVar.f2426b == 0) {
                    throw new sh.a("Unable to extract value: " + kVar2.getClass());
                }
                sh.o oVar = (sh.o) objC;
                if (oVar == null) {
                    return false;
                }
                sb2.append(oVar.m());
                return true;
        }
    }

    public final String toString() {
        switch (this.f16125a) {
            case 0:
                return "Instant()";
            default:
                return "ZoneRegionId()";
        }
    }
}
