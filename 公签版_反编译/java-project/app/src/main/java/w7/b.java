package w7;

import a9.o;
import java.math.RoundingMode;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f17624a = 0;

    static {
        Math.log(2.0d);
    }

    public static boolean a(double d10) {
        return com.bumptech.glide.c.J(d10) && (d10 == 0.0d || 52 - Long.numberOfTrailingZeros(com.bumptech.glide.c.G(d10)) <= Math.getExponent(d10));
    }

    public static boolean b(double d10) {
        if (d10 <= 0.0d || !com.bumptech.glide.c.J(d10)) {
            return false;
        }
        long jG = com.bumptech.glide.c.G(d10);
        return (jG & (jG - 1)) == 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int c(double d10, RoundingMode roundingMode) {
        boolean zB;
        o.i("x must be positive and finite", d10 > 0.0d && com.bumptech.glide.c.J(d10));
        int exponent = Math.getExponent(d10);
        if (Math.getExponent(d10) < -1022) {
            return c(d10 * 4.503599627370496E15d, roundingMode) - 52;
        }
        switch (a.f17623a[roundingMode.ordinal()]) {
            case 1:
                p000if.a.l(b(d10));
                return !z ? exponent + 1 : exponent;
            case 2:
                if (!z) {
                }
                break;
            case 3:
                z = !b(d10);
                if (!z) {
                }
                break;
            case 4:
                z = exponent < 0;
                zB = b(d10);
                z &= !zB;
                if (!z) {
                }
                break;
            case 5:
                z = exponent >= 0;
                zB = b(d10);
                z &= !zB;
                if (!z) {
                }
                break;
            case 6:
            case 7:
            case 8:
                double dLongBitsToDouble = Double.longBitsToDouble((Double.doubleToRawLongBits(d10) & 4503599627370495L) | 4607182418800017408L);
                if (dLongBitsToDouble * dLongBitsToDouble > 2.0d) {
                    z = true;
                }
                if (!z) {
                }
                break;
            default:
                throw new AssertionError();
        }
    }
}
