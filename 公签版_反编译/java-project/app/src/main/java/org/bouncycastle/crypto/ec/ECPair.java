package org.bouncycastle.crypto.ec;

import org.bouncycastle.math.ec.ECPoint;

/* loaded from: classes3.dex */
public class ECPair {

    /* renamed from: x, reason: collision with root package name */
    private final ECPoint f11927x;

    /* renamed from: y, reason: collision with root package name */
    private final ECPoint f11928y;

    public ECPair(ECPoint eCPoint, ECPoint eCPoint2) {
        this.f11927x = eCPoint;
        this.f11928y = eCPoint2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ECPair) {
            return equals((ECPair) obj);
        }
        return false;
    }

    public ECPoint getX() {
        return this.f11927x;
    }

    public ECPoint getY() {
        return this.f11928y;
    }

    public int hashCode() {
        return (this.f11928y.hashCode() * 37) + this.f11927x.hashCode();
    }

    public boolean equals(ECPair eCPair) {
        return eCPair.getX().equals(getX()) && eCPair.getY().equals(getY());
    }
}
