package org.bouncycastle.pqc.legacy.crypto.mceliece;

import org.bouncycastle.pqc.legacy.math.linearalgebra.GF2Matrix;

/* loaded from: classes3.dex */
public class McEliecePublicKeyParameters extends McElieceKeyParameters {

    /* renamed from: g, reason: collision with root package name */
    private GF2Matrix f12487g;

    /* renamed from: n, reason: collision with root package name */
    private int f12488n;

    /* renamed from: t, reason: collision with root package name */
    private int f12489t;

    public McEliecePublicKeyParameters(int i10, int i11, GF2Matrix gF2Matrix) {
        super(false, null);
        this.f12488n = i10;
        this.f12489t = i11;
        this.f12487g = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.f12487g;
    }

    public int getK() {
        return this.f12487g.getNumRows();
    }

    public int getN() {
        return this.f12488n;
    }

    public int getT() {
        return this.f12489t;
    }
}
