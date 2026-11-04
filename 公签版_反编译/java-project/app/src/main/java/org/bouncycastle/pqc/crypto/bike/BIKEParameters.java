package org.bouncycastle.pqc.crypto.bike;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import org.bouncycastle.pqc.crypto.KEMParameters;

/* loaded from: classes3.dex */
public class BIKEParameters implements KEMParameters {
    public static final BIKEParameters bike128 = new BIKEParameters("bike128", 12323, 142, 134, 256, 5, 3, 128);
    public static final BIKEParameters bike192 = new BIKEParameters("bike192", 24659, CarSettingID.Recv.IGM_OUTPUT_SCB, CarSettingID.Recv.IGM_OUTPUT_OVER_VOLT, 256, 5, 3, 192);
    public static final BIKEParameters bike256 = new BIKEParameters("bike256", 40973, 274, 264, 256, 5, 3, 256);
    private BIKEEngine bikeEngine;
    private final int defaultKeySize;
    private int l;
    private String name;
    private int nbIter;
    private int r;

    /* renamed from: t, reason: collision with root package name */
    private int f12282t;
    private int tau;

    /* renamed from: w, reason: collision with root package name */
    private int f12283w;

    private BIKEParameters(String str, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.name = str;
        this.r = i10;
        this.f12283w = i11;
        this.f12282t = i12;
        this.l = i13;
        this.nbIter = i14;
        this.tau = i15;
        this.defaultKeySize = i16;
        this.bikeEngine = new BIKEEngine(i10, i11, i12, i13, i14, i15);
    }

    public BIKEEngine getEngine() {
        return this.bikeEngine;
    }

    public int getL() {
        return this.l;
    }

    public int getLByte() {
        return this.l / 8;
    }

    public String getName() {
        return this.name;
    }

    public int getNbIter() {
        return this.nbIter;
    }

    public int getR() {
        return this.r;
    }

    public int getRByte() {
        return (this.r + 7) / 8;
    }

    public int getSessionKeySize() {
        return this.defaultKeySize;
    }

    public int getT() {
        return this.f12282t;
    }

    public int getTau() {
        return this.tau;
    }

    public int getW() {
        return this.f12283w;
    }
}
