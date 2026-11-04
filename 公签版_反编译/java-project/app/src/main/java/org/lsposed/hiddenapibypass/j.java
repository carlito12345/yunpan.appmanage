package org.lsposed.hiddenapibypass;

import dalvik.system.VMRuntime;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    public static final Unsafe f12508a;

    /* renamed from: b, reason: collision with root package name */
    public static final long f12509b;

    /* renamed from: c, reason: collision with root package name */
    public static final long f12510c;

    /* renamed from: d, reason: collision with root package name */
    public static final long f12511d;

    /* renamed from: e, reason: collision with root package name */
    public static final long f12512e;

    /* renamed from: f, reason: collision with root package name */
    public static final long f12513f;

    static {
        long jObjectFieldOffset;
        try {
            Unsafe unsafe = (Unsafe) Unsafe.class.getDeclaredMethod("getUnsafe", null).invoke(null, null);
            f12508a = unsafe;
            b bVar = new b();
            Class clsLoadClass = bVar.loadClass(a.a().getName());
            Class clsLoadClass2 = bVar.loadClass(a.e().getName());
            Class clsLoadClass3 = bVar.loadClass(Class.class.getName());
            f12509b = unsafe.objectFieldOffset(clsLoadClass.getDeclaredField("artMethod"));
            unsafe.objectFieldOffset(clsLoadClass.getDeclaredField("declaringClass"));
            f12510c = unsafe.objectFieldOffset(clsLoadClass2.getDeclaredField("artFieldOrMethod"));
            try {
                jObjectFieldOffset = unsafe.objectFieldOffset(clsLoadClass3.getDeclaredField("fields"));
            } catch (NoSuchFieldException unused) {
                Unsafe unsafe2 = f12508a;
                jObjectFieldOffset = unsafe2.objectFieldOffset(clsLoadClass3.getDeclaredField("iFields"));
                unsafe2.objectFieldOffset(clsLoadClass3.getDeclaredField("sFields"));
            }
            Unsafe unsafe3 = f12508a;
            long jObjectFieldOffset2 = unsafe3.objectFieldOffset(clsLoadClass3.getDeclaredField("methods"));
            f12511d = jObjectFieldOffset2;
            Method declaredMethod = h.class.getDeclaredMethod("a", null);
            Method declaredMethod2 = h.class.getDeclaredMethod("b", null);
            declaredMethod.setAccessible(true);
            declaredMethod2.setAccessible(true);
            MethodHandle methodHandleUnreflect = MethodHandles.lookup().unreflect(declaredMethod);
            MethodHandle methodHandleUnreflect2 = MethodHandles.lookup().unreflect(declaredMethod2);
            long j10 = f12510c;
            long j11 = unsafe3.getLong(methodHandleUnreflect, j10);
            long j12 = unsafe3.getLong(methodHandleUnreflect2, j10);
            long j13 = unsafe3.getLong(h.class, jObjectFieldOffset2);
            long j14 = j12 - j11;
            f12512e = j14;
            f12513f = (j11 - j13) - j14;
            Field declaredField = h.class.getDeclaredField("i");
            Field declaredField2 = h.class.getDeclaredField("j");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            MethodHandle methodHandleUnreflectGetter = MethodHandles.lookup().unreflectGetter(declaredField);
            MethodHandle methodHandleUnreflectGetter2 = MethodHandles.lookup().unreflectGetter(declaredField2);
            unsafe3.getLong(methodHandleUnreflectGetter, j10);
            unsafe3.getLong(methodHandleUnreflectGetter2, j10);
            unsafe3.getLong(h.class, jObjectFieldOffset);
        } catch (ReflectiveOperationException e7) {
            throw new ExceptionInInitializerError(e7);
        }
    }

    public static Object a(Class cls, Object obj, String str, Object... objArr) throws NoSuchMethodException, SecurityException {
        if (obj != null && !cls.isInstance(obj)) {
            throw new IllegalArgumentException("this object is not an instance of the given class");
        }
        Method declaredMethod = f.class.getDeclaredMethod("invoke", Object[].class);
        declaredMethod.setAccessible(true);
        Unsafe unsafe = f12508a;
        long j10 = unsafe.getLong(cls, f12511d);
        if (j10 == 0) {
            throw new NoSuchMethodException("Cannot find matching method");
        }
        int i10 = unsafe.getInt(j10);
        for (int i11 = 0; i11 < i10; i11++) {
            f12508a.putLong(declaredMethod, f12509b, (i11 * f12512e) + j10 + f12513f);
            if (str.equals(declaredMethod.getName()) && i.a(declaredMethod.getParameterTypes(), objArr)) {
                return declaredMethod.invoke(obj, objArr);
            }
        }
        throw new NoSuchMethodException("Cannot find matching method");
    }

    public static boolean b(String... strArr) {
        try {
            a(VMRuntime.class, a(VMRuntime.class, null, "getRuntime", new Object[0]), "setHiddenApiExemptions", strArr);
            return true;
        } catch (ReflectiveOperationException unused) {
            return false;
        }
    }
}
