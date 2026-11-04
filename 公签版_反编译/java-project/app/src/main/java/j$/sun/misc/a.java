package j$.sun.misc;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    private static final a f8751b;

    /* renamed from: a, reason: collision with root package name */
    private final Unsafe f8752a;

    static {
        Field fieldI = i();
        fieldI.setAccessible(true);
        try {
            f8751b = new a((Unsafe) fieldI.get(null));
        } catch (IllegalAccessException e7) {
            throw new AssertionError("Couldn't get the Unsafe", e7);
        }
    }

    a(Unsafe unsafe) {
        this.f8752a = unsafe;
    }

    private static Field i() {
        try {
            return Unsafe.class.getDeclaredField("theUnsafe");
        } catch (NoSuchFieldException e7) {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                if (Modifier.isStatic(field.getModifiers()) && Unsafe.class.isAssignableFrom(field.getType())) {
                    return field;
                }
            }
            throw new AssertionError("Couldn't find the Unsafe", e7);
        }
    }

    public static a h() {
        return f8751b;
    }

    public final int f(Object obj, long j10) {
        int intVolatile;
        do {
            intVolatile = this.f8752a.getIntVolatile(obj, j10);
        } while (!this.f8752a.compareAndSwapInt(obj, j10, intVolatile, intVolatile - 4));
        return intVolatile;
    }

    public final long k(Field field) {
        return this.f8752a.objectFieldOffset(field);
    }

    public final long j(Class cls, String str) {
        try {
            return k(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e7) {
            throw new AssertionError("Cannot find field:", e7);
        }
    }

    public final int a(Class cls) {
        return this.f8752a.arrayBaseOffset(cls);
    }

    public final int b(Class cls) {
        return this.f8752a.arrayIndexScale(cls);
    }

    public final Object g(Object obj, long j10) {
        return this.f8752a.getObjectVolatile(obj, j10);
    }

    public final void l(Object obj, long j10, Object obj2) {
        this.f8752a.putObjectVolatile(obj, j10, obj2);
    }

    public final boolean c(Object obj, long j10, int i10, int i11) {
        return this.f8752a.compareAndSwapInt(obj, j10, i10, i11);
    }

    public final boolean d(Object obj, long j10, long j11, long j12) {
        return this.f8752a.compareAndSwapLong(obj, j10, j11, j12);
    }

    public final boolean e(Object obj, long j10, Object obj2) {
        return j$.com.android.tools.r8.a.g(this.f8752a, obj, j10, obj2);
    }
}
