package org.bouncycastle.pqc.crypto.snova;

/* loaded from: classes3.dex */
public class SnovaParameters {
    private final int alpha;
    private final int l;
    private final int lsq;
    private final String name;

    /* renamed from: o, reason: collision with root package name */
    private final int f12407o;
    private final boolean pkExpandShake;
    private final boolean skIsSeed;

    /* renamed from: v, reason: collision with root package name */
    private final int f12408v;
    public static final SnovaParameters SNOVA_24_5_4_SSK = new SnovaParameters("SNOVA_24_5_4_SSK", 24, 5, 4, true, false);
    public static final SnovaParameters SNOVA_24_5_4_ESK = new SnovaParameters("SNOVA_24_5_4_ESK", 24, 5, 4, false, false);
    public static final SnovaParameters SNOVA_24_5_4_SHAKE_SSK = new SnovaParameters("SNOVA_24_5_4_SHAKE_SSK", 24, 5, 4, true, true);
    public static final SnovaParameters SNOVA_24_5_4_SHAKE_ESK = new SnovaParameters("SNOVA_24_5_4_SHAKE_ESK", 24, 5, 4, false, true);
    public static final SnovaParameters SNOVA_24_5_5_SSK = new SnovaParameters("SNOVA_24_5_5_SSK", 24, 5, 5, true, false);
    public static final SnovaParameters SNOVA_24_5_5_ESK = new SnovaParameters("SNOVA_24_5_5_ESK", 24, 5, 5, false, false);
    public static final SnovaParameters SNOVA_24_5_5_SHAKE_SSK = new SnovaParameters("SNOVA_24_5_5_SHAKE_SSK", 24, 5, 5, true, true);
    public static final SnovaParameters SNOVA_24_5_5_SHAKE_ESK = new SnovaParameters("SNOVA_24_5_5_SHAKE_ESK", 24, 5, 5, false, true);
    public static final SnovaParameters SNOVA_25_8_3_SSK = new SnovaParameters("SNOVA_25_8_3_SSK", 25, 8, 3, true, false);
    public static final SnovaParameters SNOVA_25_8_3_ESK = new SnovaParameters("SNOVA_25_8_3_ESK", 25, 8, 3, false, false);
    public static final SnovaParameters SNOVA_25_8_3_SHAKE_SSK = new SnovaParameters("SNOVA_25_8_3_SHAKE_SSK", 25, 8, 3, true, true);
    public static final SnovaParameters SNOVA_25_8_3_SHAKE_ESK = new SnovaParameters("SNOVA_25_8_3_SHAKE_ESK", 25, 8, 3, false, true);
    public static final SnovaParameters SNOVA_29_6_5_SSK = new SnovaParameters("SNOVA_29_6_5_SSK", 29, 6, 5, true, false);
    public static final SnovaParameters SNOVA_29_6_5_ESK = new SnovaParameters("SNOVA_29_6_5_ESK", 29, 6, 5, false, false);
    public static final SnovaParameters SNOVA_29_6_5_SHAKE_SSK = new SnovaParameters("SNOVA_29_6_5_SHAKE_SSK", 29, 6, 5, true, true);
    public static final SnovaParameters SNOVA_29_6_5_SHAKE_ESK = new SnovaParameters("SNOVA_29_6_5_SHAKE_ESK", 29, 6, 5, false, true);
    public static final SnovaParameters SNOVA_37_8_4_SSK = new SnovaParameters("SNOVA_37_8_4_SSK", 37, 8, 4, true, false);
    public static final SnovaParameters SNOVA_37_8_4_ESK = new SnovaParameters("SNOVA_37_8_4_ESK", 37, 8, 4, false, false);
    public static final SnovaParameters SNOVA_37_8_4_SHAKE_SSK = new SnovaParameters("SNOVA_37_8_4_SHAKE_SSK", 37, 8, 4, true, true);
    public static final SnovaParameters SNOVA_37_8_4_SHAKE_ESK = new SnovaParameters("SNOVA_37_8_4_SHAKE_ESK", 37, 8, 4, false, true);
    public static final SnovaParameters SNOVA_37_17_2_SSK = new SnovaParameters("SNOVA_37_17_2_SSK", 37, 17, 2, true, false);
    public static final SnovaParameters SNOVA_37_17_2_ESK = new SnovaParameters("SNOVA_37_17_2_ESK", 37, 17, 2, false, false);
    public static final SnovaParameters SNOVA_37_17_2_SHAKE_SSK = new SnovaParameters("SNOVA_37_17_2_SHAKE_SSK", 37, 17, 2, true, true);
    public static final SnovaParameters SNOVA_37_17_2_SHAKE_ESK = new SnovaParameters("SNOVA_37_17_2_SHAKE_ESK", 37, 17, 2, false, true);
    public static final SnovaParameters SNOVA_49_11_3_SSK = new SnovaParameters("SNOVA_49_11_3_SSK", 49, 11, 3, true, false);
    public static final SnovaParameters SNOVA_49_11_3_ESK = new SnovaParameters("SNOVA_49_11_3_ESK", 49, 11, 3, false, false);
    public static final SnovaParameters SNOVA_49_11_3_SHAKE_SSK = new SnovaParameters("SNOVA_49_11_3_SHAKE_SSK", 49, 11, 3, true, true);
    public static final SnovaParameters SNOVA_49_11_3_SHAKE_ESK = new SnovaParameters("SNOVA_49_11_3_SHAKE_ESK", 49, 11, 3, false, true);
    public static final SnovaParameters SNOVA_56_25_2_SSK = new SnovaParameters("SNOVA_56_25_2_SSK", 56, 25, 2, true, false);
    public static final SnovaParameters SNOVA_56_25_2_ESK = new SnovaParameters("SNOVA_56_25_2_ESK", 56, 25, 2, false, false);
    public static final SnovaParameters SNOVA_56_25_2_SHAKE_SSK = new SnovaParameters("SNOVA_56_25_2_SHAKE_SSK", 56, 25, 2, true, true);
    public static final SnovaParameters SNOVA_56_25_2_SHAKE_ESK = new SnovaParameters("SNOVA_56_25_2_SHAKE_ESK", 56, 25, 2, false, true);
    public static final SnovaParameters SNOVA_60_10_4_SSK = new SnovaParameters("SNOVA_60_10_4_SSK", 60, 10, 4, true, false);
    public static final SnovaParameters SNOVA_60_10_4_ESK = new SnovaParameters("SNOVA_60_10_4_ESK", 60, 10, 4, false, false);
    public static final SnovaParameters SNOVA_60_10_4_SHAKE_SSK = new SnovaParameters("SNOVA_60_10_4_SHAKE_SSK", 60, 10, 4, true, true);
    public static final SnovaParameters SNOVA_60_10_4_SHAKE_ESK = new SnovaParameters("SNOVA_60_10_4_SHAKE_ESK", 60, 10, 4, false, true);
    public static final SnovaParameters SNOVA_66_15_3_SSK = new SnovaParameters("SNOVA_66_15_3_SSK", 66, 15, 3, true, false);
    public static final SnovaParameters SNOVA_66_15_3_ESK = new SnovaParameters("SNOVA_66_15_3_ESK", 66, 15, 3, false, false);
    public static final SnovaParameters SNOVA_66_15_3_SHAKE_SSK = new SnovaParameters("SNOVA_66_15_3_SHAKE_SSK", 66, 15, 3, true, true);
    public static final SnovaParameters SNOVA_66_15_3_SHAKE_ESK = new SnovaParameters("SNOVA_66_15_3_SHAKE_ESK", 66, 15, 3, false, true);
    public static final SnovaParameters SNOVA_75_33_2_SSK = new SnovaParameters("SNOVA_75_33_2_SSK", 75, 33, 2, true, false);
    public static final SnovaParameters SNOVA_75_33_2_ESK = new SnovaParameters("SNOVA_75_33_2_ESK", 75, 33, 2, false, false);
    public static final SnovaParameters SNOVA_75_33_2_SHAKE_SSK = new SnovaParameters("SNOVA_75_33_2_SHAKE_SSK", 75, 33, 2, true, true);
    public static final SnovaParameters SNOVA_75_33_2_SHAKE_ESK = new SnovaParameters("SNOVA_75_33_2_SHAKE_ESK", 75, 33, 2, false, true);

    private SnovaParameters(String str, int i10, int i11, int i12, boolean z, boolean z4) {
        this.name = str;
        this.f12408v = i10;
        this.f12407o = i11;
        this.l = i12;
        int i13 = i12 * i12;
        this.lsq = i13;
        this.alpha = i13 + i12;
        this.skIsSeed = z;
        this.pkExpandShake = z4;
    }

    public int getAlpha() {
        return this.alpha;
    }

    public int getL() {
        return this.l;
    }

    public int getLsq() {
        return this.lsq;
    }

    public int getM() {
        return this.f12407o;
    }

    public int getN() {
        return this.f12408v + this.f12407o;
    }

    public String getName() {
        return this.name;
    }

    public int getO() {
        return this.f12407o;
    }

    public int getPrivateKeyLength() {
        int i10 = this.lsq;
        int i11 = this.f12407o;
        int i12 = i11 * 4 * this.alpha;
        int i13 = this.f12408v;
        return (((((i13 * i11) + ((((i11 * i13) + ((i13 * i11) + (i13 * i13))) * i11) + i12)) * i10) + 1) >> 1) + 48;
    }

    public int getPublicKeyLength() {
        int i10 = this.f12407o;
        return (((((i10 * i10) * i10) * this.lsq) + 1) >>> 1) + 16;
    }

    public int getSaltLength() {
        return 16;
    }

    public int getV() {
        return this.f12408v;
    }

    public boolean isPkExpandShake() {
        return this.pkExpandShake;
    }

    public boolean isSkIsSeed() {
        return this.skIsSeed;
    }
}
