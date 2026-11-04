package e8;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class b extends p000if.a {

    /* renamed from: a, reason: collision with root package name */
    public final Method f4815a = Class.class.getMethod("isRecord", null);

    /* renamed from: b, reason: collision with root package name */
    public final Method f4816b = Class.class.getMethod("getRecordComponents", null);

    /* renamed from: c, reason: collision with root package name */
    public final Method f4817c;

    /* renamed from: d, reason: collision with root package name */
    public final Method f4818d;

    public b() throws ClassNotFoundException {
        Class<?> cls = Class.forName("java.lang.reflect.RecordComponent");
        this.f4817c = cls.getMethod("getName", null);
        this.f4818d = cls.getMethod("getType", null);
    }

    @Override // p000if.a
    public final Method E(Class cls, Field field) {
        try {
            return cls.getMethod(field.getName(), null);
        } catch (ReflectiveOperationException e7) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.13.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e7);
        }
    }

    @Override // p000if.a
    public final Constructor F(Class cls) {
        try {
            Object[] objArr = (Object[]) this.f4816b.invoke(cls, null);
            Class<?>[] clsArr = new Class[objArr.length];
            for (int i10 = 0; i10 < objArr.length; i10++) {
                clsArr[i10] = (Class) this.f4818d.invoke(objArr[i10], null);
            }
            return cls.getDeclaredConstructor(clsArr);
        } catch (ReflectiveOperationException e7) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.13.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e7);
        }
    }

    @Override // p000if.a
    public final String[] Q(Class cls) {
        try {
            Object[] objArr = (Object[]) this.f4816b.invoke(cls, null);
            String[] strArr = new String[objArr.length];
            for (int i10 = 0; i10 < objArr.length; i10++) {
                strArr[i10] = (String) this.f4817c.invoke(objArr[i10], null);
            }
            return strArr;
        } catch (ReflectiveOperationException e7) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.13.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e7);
        }
    }

    @Override // p000if.a
    public final boolean g0(Class cls) {
        try {
            return ((Boolean) this.f4815a.invoke(cls, null)).booleanValue();
        } catch (ReflectiveOperationException e7) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.13.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e7);
        }
    }
}
