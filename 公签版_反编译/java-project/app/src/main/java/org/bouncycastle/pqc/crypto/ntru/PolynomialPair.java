package org.bouncycastle.pqc.crypto.ntru;

import org.bouncycastle.pqc.math.ntru.Polynomial;

/* loaded from: classes3.dex */
class PolynomialPair {

    /* renamed from: a, reason: collision with root package name */
    private final Polynomial f12360a;

    /* renamed from: b, reason: collision with root package name */
    private final Polynomial f12361b;

    public PolynomialPair(Polynomial polynomial, Polynomial polynomial2) {
        this.f12360a = polynomial;
        this.f12361b = polynomial2;
    }

    public Polynomial f() {
        return this.f12360a;
    }

    public Polynomial g() {
        return this.f12361b;
    }

    public Polynomial m() {
        return this.f12361b;
    }

    public Polynomial r() {
        return this.f12360a;
    }
}
