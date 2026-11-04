package org.bouncycastle.pqc.crypto.ntruprime;

import com.hsae.autosdk.source.SourceConst;
import org.bouncycastle.pqc.crypto.KEMParameters;

/* loaded from: classes3.dex */
public class NTRULPRimeParameters implements KEMParameters {
    private final int delta;
    private final String name;

    /* renamed from: p, reason: collision with root package name */
    private final int f12362p;
    private final int privateKeyBytes;
    private final int publicKeyBytes;

    /* renamed from: q, reason: collision with root package name */
    private final int f12363q;
    private final int roundedPolynomialBytes;
    private final int sharedKeyBytes;
    private final int tau0;
    private final int tau1;
    private final int tau2;
    private final int tau3;

    /* renamed from: w, reason: collision with root package name */
    private final int f12364w;
    public static final NTRULPRimeParameters ntrulpr653 = new NTRULPRimeParameters("ntrulpr653", 653, 4621, 252, 289, 2175, 113, 2031, 290, 865, 897, 1125, 32);
    public static final NTRULPRimeParameters ntrulpr761 = new NTRULPRimeParameters("ntrulpr761", 761, 4591, 250, SourceConst.IOCTL_FUNCTION_NBAND_8k, 2156, 114, 2007, 287, 1007, 1039, 1294, 32);
    public static final NTRULPRimeParameters ntrulpr857 = new NTRULPRimeParameters("ntrulpr857", 857, 5167, 281, 329, 2433, 101, 2265, 324, 1152, 1184, 1463, 32);
    public static final NTRULPRimeParameters ntrulpr953 = new NTRULPRimeParameters("ntrulpr953", 953, 6343, 345, 404, 2997, 82, 2798, 400, 1317, 1349, 1652, 32);
    public static final NTRULPRimeParameters ntrulpr1013 = new NTRULPRimeParameters("ntrulpr1013", 1013, 7177, 392, 450, 3367, 73, 3143, 449, 1423, 1455, 1773, 32);
    public static final NTRULPRimeParameters ntrulpr1277 = new NTRULPRimeParameters("ntrulpr1277", 1277, 7879, 429, 502, 3724, 66, 3469, 496, 1815, 1847, 2231, 32);

    private NTRULPRimeParameters(String str, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21) {
        this.name = str;
        this.f12362p = i10;
        this.f12363q = i11;
        this.f12364w = i12;
        this.delta = i13;
        this.tau0 = i14;
        this.tau1 = i15;
        this.tau2 = i16;
        this.tau3 = i17;
        this.roundedPolynomialBytes = i18;
        this.publicKeyBytes = i19;
        this.privateKeyBytes = i20;
        this.sharedKeyBytes = i21;
    }

    public int getDelta() {
        return this.delta;
    }

    public String getName() {
        return this.name;
    }

    public int getP() {
        return this.f12362p;
    }

    public int getPrivateKeyBytes() {
        return this.privateKeyBytes;
    }

    public int getPublicKeyBytes() {
        return this.publicKeyBytes;
    }

    public int getQ() {
        return this.f12363q;
    }

    public int getRoundedPolynomialBytes() {
        return this.roundedPolynomialBytes;
    }

    public int getSessionKeySize() {
        return this.sharedKeyBytes * 8;
    }

    public int getTau0() {
        return this.tau0;
    }

    public int getTau1() {
        return this.tau1;
    }

    public int getTau2() {
        return this.tau2;
    }

    public int getTau3() {
        return this.tau3;
    }

    public int getW() {
        return this.f12364w;
    }
}
