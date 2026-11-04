package org.bouncycastle.pqc.crypto.snova;

import java.lang.reflect.Array;

/* loaded from: classes3.dex */
class MapGroup2 {
    public final byte[][][][] f11;
    public final byte[][][][] f12;
    public final byte[][][][] f21;

    public MapGroup2(SnovaParameters snovaParameters) {
        int m10 = snovaParameters.getM();
        int v10 = snovaParameters.getV();
        int o10 = snovaParameters.getO();
        int lsq = snovaParameters.getLsq();
        Class cls = Byte.TYPE;
        this.f11 = (byte[][][][]) Array.newInstance((Class<?>) cls, m10, v10, v10, lsq);
        this.f12 = (byte[][][][]) Array.newInstance((Class<?>) cls, m10, v10, o10, lsq);
        this.f21 = (byte[][][][]) Array.newInstance((Class<?>) cls, m10, o10, v10, lsq);
    }
}
