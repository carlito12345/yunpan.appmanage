package org.bouncycastle.pqc.crypto.cmce;

/* loaded from: classes3.dex */
abstract class GF {
    public abstract short gf_frac(short s8, short s10);

    public abstract short gf_inv(short s8);

    public final short gf_iszero(short s8) {
        return (short) ((s8 - 1) >> 31);
    }

    public abstract short gf_mul(short s8, short s10);

    public abstract int gf_mul_ext(short s8, short s10);

    public abstract void gf_mul_poly(int i10, int[] iArr, short[] sArr, short[] sArr2, short[] sArr3, int[] iArr2);

    public abstract short gf_reduce(int i10);

    public abstract short gf_sq(short s8);

    public abstract int gf_sq_ext(short s8);

    public abstract void gf_sqr_poly(int i10, int[] iArr, short[] sArr, short[] sArr2, int[] iArr2);
}
