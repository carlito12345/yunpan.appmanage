package org.bouncycastle.pqc.crypto.mayo;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;

/* loaded from: classes3.dex */
public class MayoParameters {
    public static final MayoParameters mayo1 = new MayoParameters("MAYO_1", 86, 78, 5, 8, 78, 81, 10, 39, 312, 39, 40, 120159, 24336, 24, 1420, 454, new int[]{8, 1, 1, 0}, 24, 32, 24);
    public static final MayoParameters mayo2 = new MayoParameters("MAYO_2", 81, 64, 4, 17, 64, 69, 4, 32, 544, 32, 34, 66560, 34816, 24, 4912, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_TIMES, new int[]{8, 0, 2, 8}, 24, 32, 24);
    public static final MayoParameters mayo3 = new MayoParameters("MAYO_3", 118, 108, 7, 10, 108, 111, 11, 54, 540, 54, 55, 317844, 58320, 32, 2986, 681, new int[]{8, 0, 1, 7}, 32, 48, 32);
    public static final MayoParameters mayo5 = new MayoParameters("MAYO_5", CarSettingID.Recv.GSM_DRIVE_MODE, 142, 9, 12, 142, 145, 12, 71, 852, 71, 72, 720863, 120984, 40, 5554, 964, new int[]{4, 0, 8, 1}, 40, 64, 40);
    private static final int pkSeedBytes = 16;
    private final int ACols;
    private final int OBytes;
    private final int P1Bytes;
    private final int P2Bytes;
    private final int cpkBytes;
    private final int cskBytes;
    private final int digestBytes;
    private final int[] fTail;

    /* renamed from: k, reason: collision with root package name */
    private final int f12343k;

    /* renamed from: m, reason: collision with root package name */
    private final int f12344m;
    private final int mBytes;
    private final int mVecLimbs;

    /* renamed from: n, reason: collision with root package name */
    private final int f12345n;
    private final String name;

    /* renamed from: o, reason: collision with root package name */
    private final int f12346o;
    private final int rBytes;
    private final int saltBytes;
    private final int sigBytes;
    private final int skSeedBytes;

    /* renamed from: v, reason: collision with root package name */
    private final int f12347v;
    private final int vBytes;

    private MayoParameters(String str, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int[] iArr, int i26, int i27, int i28) {
        this.name = str;
        this.f12345n = i10;
        this.f12344m = i11;
        this.mVecLimbs = i12;
        this.f12346o = i13;
        this.f12347v = i14;
        this.ACols = i15;
        this.f12343k = i16;
        this.mBytes = i17;
        this.OBytes = i18;
        this.vBytes = i19;
        this.rBytes = i20;
        this.P1Bytes = i21;
        this.P2Bytes = i22;
        this.cskBytes = i23;
        this.cpkBytes = i24;
        this.sigBytes = i25;
        this.fTail = iArr;
        this.saltBytes = i26;
        this.digestBytes = i27;
        this.skSeedBytes = i28;
    }

    public int getACols() {
        return this.ACols;
    }

    public int getCpkBytes() {
        return this.cpkBytes;
    }

    public int getCskBytes() {
        return this.cskBytes;
    }

    public int getDigestBytes() {
        return this.digestBytes;
    }

    public int[] getFTail() {
        return this.fTail;
    }

    public int getK() {
        return this.f12343k;
    }

    public int getM() {
        return this.f12344m;
    }

    public int getMBytes() {
        return this.mBytes;
    }

    public int getMVecLimbs() {
        return this.mVecLimbs;
    }

    public int getN() {
        return this.f12345n;
    }

    public String getName() {
        return this.name;
    }

    public int getO() {
        return this.f12346o;
    }

    public int getOBytes() {
        return this.OBytes;
    }

    public int getP1Bytes() {
        return this.P1Bytes;
    }

    public int getP1Limbs() {
        int i10 = this.f12347v;
        return (((i10 + 1) * i10) >> 1) * this.mVecLimbs;
    }

    public int getP2Bytes() {
        return this.P2Bytes;
    }

    public int getP2Limbs() {
        return this.f12347v * this.f12346o * this.mVecLimbs;
    }

    public int getP3Limbs() {
        int i10 = this.f12346o;
        return (((i10 + 1) * i10) >> 1) * this.mVecLimbs;
    }

    public int getPkSeedBytes() {
        return 16;
    }

    public int getRBytes() {
        return this.rBytes;
    }

    public int getSaltBytes() {
        return this.saltBytes;
    }

    public int getSigBytes() {
        return this.sigBytes;
    }

    public int getSkSeedBytes() {
        return this.skSeedBytes;
    }

    public int getV() {
        return this.f12347v;
    }

    public int getVBytes() {
        return this.vBytes;
    }
}
