package j$.util.concurrent;

import j$.util.stream.C0113o0;
import j$.util.stream.D;
import j$.util.stream.IntStream;
import j$.util.stream.StreamSupport;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.security.AccessController;
import java.security.SecureRandom;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;

/* loaded from: classes2.dex */
public class ThreadLocalRandom extends Random {
    private static final long serialVersionUID = -5851777807851030925L;

    /* renamed from: a, reason: collision with root package name */
    long f9084a;

    /* renamed from: b, reason: collision with root package name */
    int f9085b;

    /* renamed from: c, reason: collision with root package name */
    boolean f9086c;
    private static final ObjectStreamField[] serialPersistentFields = {new ObjectStreamField("rnd", Long.TYPE), new ObjectStreamField("initialized", Boolean.TYPE)};

    /* renamed from: d, reason: collision with root package name */
    private static final ThreadLocal f9080d = new ThreadLocal();

    /* renamed from: e, reason: collision with root package name */
    private static final AtomicInteger f9081e = new AtomicInteger();

    /* renamed from: f, reason: collision with root package name */
    private static final ThreadLocal f9082f = new w();

    /* renamed from: g, reason: collision with root package name */
    private static final AtomicLong f9083g = new AtomicLong(h(System.currentTimeMillis()) ^ h(System.nanoTime()));

    /* synthetic */ ThreadLocalRandom(int i10) {
        this();
    }

    private static int g(long j10) {
        long j11 = (j10 ^ (j10 >>> 33)) * (-49064778989728563L);
        return (int) (((j11 ^ (j11 >>> 33)) * (-4265267296055464877L)) >>> 32);
    }

    private static long h(long j10) {
        long j11 = (j10 ^ (j10 >>> 33)) * (-49064778989728563L);
        long j12 = (j11 ^ (j11 >>> 33)) * (-4265267296055464877L);
        return j12 ^ (j12 >>> 33);
    }

    private ThreadLocalRandom() {
        this.f9086c = true;
    }

    static final void f() {
        int iAddAndGet = f9081e.addAndGet(-1640531527);
        if (iAddAndGet == 0) {
            iAddAndGet = 1;
        }
        long jH = h(f9083g.getAndAdd(-4942790177534073029L));
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f9082f.get();
        threadLocalRandom.f9084a = jH;
        threadLocalRandom.f9085b = iAddAndGet;
    }

    public static ThreadLocalRandom current() {
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f9082f.get();
        if (threadLocalRandom.f9085b == 0) {
            f();
        }
        return threadLocalRandom;
    }

    @Override // java.util.Random
    public final void setSeed(long j10) {
        if (this.f9086c) {
            throw new UnsupportedOperationException();
        }
    }

    final long i() {
        long j10 = this.f9084a - 7046029254386353131L;
        this.f9084a = j10;
        return j10;
    }

    @Override // java.util.Random
    protected final int next(int i10) {
        return nextInt() >>> (32 - i10);
    }

    final long e(long j10, long j11) {
        long jH = h(i());
        if (j10 >= j11) {
            return jH;
        }
        long j12 = j11 - j10;
        long j13 = j12 - 1;
        if ((j12 & j13) == 0) {
            return (jH & j13) + j10;
        }
        if (j12 > 0) {
            while (true) {
                long j14 = jH >>> 1;
                long j15 = j14 + j13;
                long j16 = j14 % j12;
                if (j15 - j16 >= 0) {
                    return j16 + j10;
                }
                jH = h(i());
            }
        } else {
            while (true) {
                if (jH >= j10 && jH < j11) {
                    return jH;
                }
                jH = h(i());
            }
        }
    }

    final int d(int i10, int i11) {
        int i12;
        int iG = g(i());
        if (i10 >= i11) {
            return iG;
        }
        int i13 = i11 - i10;
        int i14 = i13 - 1;
        if ((i13 & i14) == 0) {
            i12 = iG & i14;
        } else if (i13 > 0) {
            int iG2 = iG >>> 1;
            while (true) {
                int i15 = iG2 + i14;
                i12 = iG2 % i13;
                if (i15 - i12 >= 0) {
                    break;
                }
                iG2 = g(i()) >>> 1;
            }
        } else {
            while (true) {
                if (iG >= i10 && iG < i11) {
                    return iG;
                }
                iG = g(i());
            }
        }
        return i12 + i10;
    }

    final double c(double d10, double d11) {
        double dNextLong = nextLong() >>> 11;
        Double.isNaN(dNextLong);
        double d12 = dNextLong * 1.1102230246251565E-16d;
        if (d10 >= d11) {
            return d12;
        }
        double d13 = ((d11 - d10) * d12) + d10;
        return d13 >= d11 ? Double.longBitsToDouble(Double.doubleToLongBits(d11) - 1) : d13;
    }

    @Override // java.util.Random
    public final int nextInt() {
        return g(i());
    }

    @Override // java.util.Random
    public final int nextInt(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        int iG = g(i());
        int i11 = i10 - 1;
        if ((i10 & i11) == 0) {
            return iG & i11;
        }
        while (true) {
            int i12 = iG >>> 1;
            int i13 = i12 + i11;
            int i14 = i12 % i10;
            if (i13 - i14 >= 0) {
                return i14;
            }
            iG = g(i());
        }
    }

    public int nextInt(int i10, int i11) {
        if (i10 >= i11) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return d(i10, i11);
    }

    @Override // java.util.Random
    public final long nextLong() {
        return h(i());
    }

    public final long nextLong(long j10) {
        if (j10 <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        long jH = h(i());
        long j11 = j10 - 1;
        if ((j10 & j11) == 0) {
            return jH & j11;
        }
        while (true) {
            long j12 = jH >>> 1;
            long j13 = j12 + j11;
            long j14 = j12 % j10;
            if (j13 - j14 >= 0) {
                return j14;
            }
            jH = h(i());
        }
    }

    public final long nextLong(long j10, long j11) {
        if (j10 >= j11) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return e(j10, j11);
    }

    @Override // java.util.Random
    public final double nextDouble() {
        double dH = h(i()) >>> 11;
        Double.isNaN(dH);
        return dH * 1.1102230246251565E-16d;
    }

    public final double nextDouble(double d10) {
        if (d10 <= 0.0d) {
            throw new IllegalArgumentException("bound must be positive");
        }
        double dH = h(i()) >>> 11;
        Double.isNaN(dH);
        double d11 = dH * 1.1102230246251565E-16d * d10;
        return d11 < d10 ? d11 : Double.longBitsToDouble(Double.doubleToLongBits(d10) - 1);
    }

    public final double nextDouble(double d10, double d11) {
        if (d10 >= d11) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return c(d10, d11);
    }

    @Override // java.util.Random
    public final boolean nextBoolean() {
        return g(i()) < 0;
    }

    @Override // java.util.Random
    public final float nextFloat() {
        return (g(i()) >>> 8) * 5.9604645E-8f;
    }

    @Override // java.util.Random
    public final double nextGaussian() {
        ThreadLocal threadLocal = f9080d;
        Double d10 = (Double) threadLocal.get();
        if (d10 != null) {
            threadLocal.set(null);
            return d10.doubleValue();
        }
        while (true) {
            double dNextDouble = (nextDouble() * 2.0d) - 1.0d;
            double dNextDouble2 = (nextDouble() * 2.0d) - 1.0d;
            double d11 = (dNextDouble2 * dNextDouble2) + (dNextDouble * dNextDouble);
            if (d11 < 1.0d && d11 != 0.0d) {
                double dSqrt = StrictMath.sqrt((StrictMath.log(d11) * (-2.0d)) / d11);
                threadLocal.set(Double.valueOf(dNextDouble2 * dSqrt));
                return dNextDouble * dSqrt;
            }
        }
    }

    @Override // java.util.Random
    public final IntStream ints(long j10) {
        if (j10 >= 0) {
            return IntStream.Wrapper.convert(StreamSupport.b(new z(0L, j10, Integer.MAX_VALUE, 0)));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public final java.util.stream.IntStream ints() {
        return IntStream.Wrapper.convert(StreamSupport.b(new z(0L, Long.MAX_VALUE, Integer.MAX_VALUE, 0)));
    }

    @Override // java.util.Random
    public final java.util.stream.IntStream ints(long j10, int i10, int i11) {
        if (j10 < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        if (i10 < i11) {
            return IntStream.Wrapper.convert(StreamSupport.b(new z(0L, j10, i10, i11)));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public final java.util.stream.IntStream ints(int i10, int i11) {
        if (i10 < i11) {
            return IntStream.Wrapper.convert(StreamSupport.b(new z(0L, Long.MAX_VALUE, i10, i11)));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public final LongStream longs(long j10) {
        if (j10 >= 0) {
            return C0113o0.f(StreamSupport.c(new A(0L, j10, Long.MAX_VALUE, 0L)));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public final LongStream longs() {
        return C0113o0.f(StreamSupport.c(new A(0L, Long.MAX_VALUE, Long.MAX_VALUE, 0L)));
    }

    @Override // java.util.Random
    public final LongStream longs(long j10, long j11, long j12) {
        if (j10 < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        if (j11 < j12) {
            return C0113o0.f(StreamSupport.c(new A(0L, j10, j11, j12)));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public final LongStream longs(long j10, long j11) {
        if (j10 < j11) {
            return C0113o0.f(StreamSupport.c(new A(0L, Long.MAX_VALUE, j10, j11)));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public final DoubleStream doubles(long j10) {
        if (j10 >= 0) {
            return D.f(StreamSupport.a(new y(0L, j10, Double.MAX_VALUE, 0.0d)));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public final DoubleStream doubles() {
        return D.f(StreamSupport.a(new y(0L, Long.MAX_VALUE, Double.MAX_VALUE, 0.0d)));
    }

    @Override // java.util.Random
    public final DoubleStream doubles(long j10, double d10, double d11) {
        if (j10 < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        if (d10 < d11) {
            return D.f(StreamSupport.a(new y(0L, j10, d10, d11)));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public final DoubleStream doubles(double d10, double d11) {
        if (d10 < d11) {
            return D.f(StreamSupport.a(new y(0L, Long.MAX_VALUE, d10, d11)));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    static final int b() {
        return ((ThreadLocalRandom) f9082f.get()).f9085b;
    }

    static final int a(int i10) {
        int i11 = i10 ^ (i10 << 13);
        int i12 = i11 ^ (i11 >>> 17);
        int i13 = i12 ^ (i12 << 5);
        ((ThreadLocalRandom) f9082f.get()).f9085b = i13;
        return i13;
    }

    static {
        if (((Boolean) AccessController.doPrivileged(new x())).booleanValue()) {
            byte[] seed = SecureRandom.getSeed(8);
            long j10 = seed[0] & 255;
            for (int i10 = 1; i10 < 8; i10++) {
                j10 = (j10 << 8) | (seed[i10] & 255);
            }
            f9083g.set(j10);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        ObjectOutputStream.PutField putFieldPutFields = objectOutputStream.putFields();
        putFieldPutFields.put("rnd", this.f9084a);
        putFieldPutFields.put("initialized", true);
        objectOutputStream.writeFields();
    }

    private Object readResolve() {
        return current();
    }
}
