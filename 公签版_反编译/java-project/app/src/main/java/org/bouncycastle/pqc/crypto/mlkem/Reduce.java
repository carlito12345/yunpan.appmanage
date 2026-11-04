package org.bouncycastle.pqc.crypto.mlkem;

/* loaded from: classes3.dex */
class Reduce {
    public static short barretReduce(short s8) {
        return (short) (s8 - ((short) (((short) ((((short) 20159) * s8) >> 26)) * 3329)));
    }

    public static short conditionalSubQ(short s8) {
        short s10 = (short) (s8 - 3329);
        return (short) (s10 + ((s10 >> 15) & MLKEMEngine.KyberQ));
    }

    public static short montgomeryReduce(int i10) {
        return (short) ((i10 - (((short) (MLKEMEngine.KyberQinv * i10)) * 3329)) >> 16);
    }
}
