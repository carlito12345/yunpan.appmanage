package org.bouncycastle.math.ec.custom.sec;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import java.math.BigInteger;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat192;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public class SecT163FieldElement extends ECFieldElement.AbstractF2m {

    /* renamed from: x, reason: collision with root package name */
    protected long[] f12203x;

    public SecT163FieldElement() {
        this.f12203x = Nat192.create64();
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        long[] jArrCreate64 = Nat192.create64();
        SecT163Field.add(this.f12203x, ((SecT163FieldElement) eCFieldElement).f12203x, jArrCreate64);
        return new SecT163FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement addOne() {
        long[] jArrCreate64 = Nat192.create64();
        SecT163Field.addOne(this.f12203x, jArrCreate64);
        return new SecT163FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        return multiply(eCFieldElement.invert());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecT163FieldElement) {
            return Nat192.eq64(this.f12203x, ((SecT163FieldElement) obj).f12203x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public String getFieldName() {
        return "SecT163Field";
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public int getFieldSize() {
        return CarSettingID.Recv.DRIVER_MODE_LAMP_COLOR;
    }

    public int getK1() {
        return 3;
    }

    public int getK2() {
        return 6;
    }

    public int getK3() {
        return 7;
    }

    public int getM() {
        return CarSettingID.Recv.DRIVER_MODE_LAMP_COLOR;
    }

    public int getRepresentation() {
        return 3;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement.AbstractF2m
    public ECFieldElement halfTrace() {
        long[] jArrCreate64 = Nat192.create64();
        SecT163Field.halfTrace(this.f12203x, jArrCreate64);
        return new SecT163FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement.AbstractF2m
    public boolean hasFastTrace() {
        return true;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f12203x, 0, 3) ^ 163763;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement invert() {
        long[] jArrCreate64 = Nat192.create64();
        SecT163Field.invert(this.f12203x, jArrCreate64);
        return new SecT163FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isOne() {
        return Nat192.isOne64(this.f12203x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isZero() {
        return Nat192.isZero64(this.f12203x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        long[] jArrCreate64 = Nat192.create64();
        SecT163Field.multiply(this.f12203x, ((SecT163FieldElement) eCFieldElement).f12203x, jArrCreate64);
        return new SecT163FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiplyMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return multiplyPlusProduct(eCFieldElement, eCFieldElement2, eCFieldElement3);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = this.f12203x;
        long[] jArr2 = ((SecT163FieldElement) eCFieldElement).f12203x;
        long[] jArr3 = ((SecT163FieldElement) eCFieldElement2).f12203x;
        long[] jArr4 = ((SecT163FieldElement) eCFieldElement3).f12203x;
        long[] jArrCreateExt64 = Nat192.createExt64();
        SecT163Field.multiplyAddToExt(jArr, jArr2, jArrCreateExt64);
        SecT163Field.multiplyAddToExt(jArr3, jArr4, jArrCreateExt64);
        long[] jArrCreate64 = Nat192.create64();
        SecT163Field.reduce(jArrCreateExt64, jArrCreate64);
        return new SecT163FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement negate() {
        return this;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement sqrt() {
        long[] jArrCreate64 = Nat192.create64();
        SecT163Field.sqrt(this.f12203x, jArrCreate64);
        return new SecT163FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement square() {
        long[] jArrCreate64 = Nat192.create64();
        SecT163Field.square(this.f12203x, jArrCreate64);
        return new SecT163FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement squareMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return squarePlusProduct(eCFieldElement, eCFieldElement2);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = this.f12203x;
        long[] jArr2 = ((SecT163FieldElement) eCFieldElement).f12203x;
        long[] jArr3 = ((SecT163FieldElement) eCFieldElement2).f12203x;
        long[] jArrCreateExt64 = Nat192.createExt64();
        SecT163Field.squareAddToExt(jArr, jArrCreateExt64);
        SecT163Field.multiplyAddToExt(jArr2, jArr3, jArrCreateExt64);
        long[] jArrCreate64 = Nat192.create64();
        SecT163Field.reduce(jArrCreateExt64, jArrCreate64);
        return new SecT163FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement squarePow(int i10) {
        if (i10 < 1) {
            return this;
        }
        long[] jArrCreate64 = Nat192.create64();
        SecT163Field.squareN(this.f12203x, i10, jArrCreate64);
        return new SecT163FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        return add(eCFieldElement);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean testBitZero() {
        return (this.f12203x[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat192.toBigInteger64(this.f12203x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement.AbstractF2m
    public int trace() {
        return SecT163Field.trace(this.f12203x);
    }

    public SecT163FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 163) {
            throw new IllegalArgumentException("x value invalid for SecT163FieldElement");
        }
        this.f12203x = SecT163Field.fromBigInteger(bigInteger);
    }

    public SecT163FieldElement(long[] jArr) {
        this.f12203x = jArr;
    }
}
