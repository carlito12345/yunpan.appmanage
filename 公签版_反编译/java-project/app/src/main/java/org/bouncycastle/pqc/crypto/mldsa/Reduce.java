package org.bouncycastle.pqc.crypto.mldsa;

/* loaded from: classes3.dex */
class Reduce {
    public static int conditionalAddQ(int i10) {
        return i10 + ((i10 >> 31) & 8380417);
    }

    public static int montgomeryReduce(long j10) {
        return (int) ((j10 - (((int) (58728449 * j10)) * 8380417)) >>> 32);
    }

    public static int reduce32(int i10) {
        return i10 - (((4194304 + i10) >> 23) * 8380417);
    }
}
