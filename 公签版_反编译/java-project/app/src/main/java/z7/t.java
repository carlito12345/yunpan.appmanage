package z7;

import j$.util.Objects;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
public final class t extends p {

    /* renamed from: a, reason: collision with root package name */
    public final Serializable f19481a;

    public t(Boolean bool) {
        Objects.requireNonNull(bool);
        this.f19481a = bool;
    }

    public static boolean l(t tVar) {
        Serializable serializable = tVar.f19481a;
        if (!(serializable instanceof Number)) {
            return false;
        }
        Number number = (Number) serializable;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    @Override // z7.p
    public final boolean b() {
        Serializable serializable = this.f19481a;
        return serializable instanceof Boolean ? ((Boolean) serializable).booleanValue() : Boolean.parseBoolean(i());
    }

    @Override // z7.p
    public final double c() {
        return this.f19481a instanceof Number ? k().doubleValue() : Double.parseDouble(i());
    }

    @Override // z7.p
    public final float d() {
        return this.f19481a instanceof Number ? k().floatValue() : Float.parseFloat(i());
    }

    @Override // z7.p
    public final int e() {
        return this.f19481a instanceof Number ? k().intValue() : Integer.parseInt(i());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t.class != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        Serializable serializable = this.f19481a;
        Serializable serializable2 = tVar.f19481a;
        if (serializable == null) {
            return serializable2 == null;
        }
        if (l(this) && l(tVar)) {
            return ((serializable instanceof BigInteger) || (serializable2 instanceof BigInteger)) ? j().equals(tVar.j()) : k().longValue() == tVar.k().longValue();
        }
        if (!(serializable instanceof Number) || !(serializable2 instanceof Number)) {
            return serializable.equals(serializable2);
        }
        if ((serializable instanceof BigDecimal) && (serializable2 instanceof BigDecimal)) {
            return (serializable instanceof BigDecimal ? (BigDecimal) serializable : b8.h.j(i())).compareTo(serializable2 instanceof BigDecimal ? (BigDecimal) serializable2 : b8.h.j(tVar.i())) == 0;
        }
        double dC = c();
        double dC2 = tVar.c();
        if (dC != dC2) {
            return Double.isNaN(dC) && Double.isNaN(dC2);
        }
        return true;
    }

    @Override // z7.p
    public final long h() {
        return this.f19481a instanceof Number ? k().longValue() : Long.parseLong(i());
    }

    public final int hashCode() {
        long jDoubleToLongBits;
        Serializable serializable = this.f19481a;
        if (serializable == null) {
            return 31;
        }
        if (l(this)) {
            jDoubleToLongBits = k().longValue();
        } else {
            if (!(serializable instanceof Number)) {
                return serializable.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(k().doubleValue());
        }
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    @Override // z7.p
    public final String i() {
        Serializable serializable = this.f19481a;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        if (serializable instanceof Number) {
            return k().toString();
        }
        if (serializable instanceof Boolean) {
            return ((Boolean) serializable).toString();
        }
        throw new AssertionError("Unexpected value type: " + serializable.getClass());
    }

    public final BigInteger j() {
        Serializable serializable = this.f19481a;
        if (serializable instanceof BigInteger) {
            return (BigInteger) serializable;
        }
        if (l(this)) {
            return BigInteger.valueOf(k().longValue());
        }
        String strI = i();
        b8.h.d(strI);
        return new BigInteger(strI);
    }

    public final Number k() {
        Serializable serializable = this.f19481a;
        if (serializable instanceof Number) {
            return (Number) serializable;
        }
        if (serializable instanceof String) {
            return new b8.j((String) serializable);
        }
        throw new UnsupportedOperationException("Primitive is neither a number nor a string");
    }

    public t(Number number) {
        Objects.requireNonNull(number);
        this.f19481a = number;
    }

    public t(String str) {
        Objects.requireNonNull(str);
        this.f19481a = str;
    }

    @Override // z7.p
    public final p a() {
        return this;
    }
}
