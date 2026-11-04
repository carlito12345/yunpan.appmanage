package c8;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class y extends v {

    /* renamed from: e, reason: collision with root package name */
    public static final HashMap f2968e;

    /* renamed from: b, reason: collision with root package name */
    public final Constructor f2969b;

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f2970c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f2971d;

    static {
        HashMap map = new HashMap();
        map.put(Byte.TYPE, (byte) 0);
        map.put(Short.TYPE, (short) 0);
        map.put(Integer.TYPE, 0);
        map.put(Long.TYPE, 0L);
        map.put(Float.TYPE, Float.valueOf(0.0f));
        map.put(Double.TYPE, Double.valueOf(0.0d));
        map.put(Character.TYPE, (char) 0);
        map.put(Boolean.TYPE, Boolean.FALSE);
        f2968e = map;
    }

    public y(Class cls, x xVar) throws SecurityException {
        super(xVar);
        this.f2971d = new HashMap();
        p000if.a aVar = e8.c.f4819a;
        Constructor constructorF = aVar.F(cls);
        this.f2969b = constructorF;
        e8.c.f(constructorF);
        String[] strArrQ = aVar.Q(cls);
        for (int i10 = 0; i10 < strArrQ.length; i10++) {
            this.f2971d.put(strArrQ[i10], Integer.valueOf(i10));
        }
        Class<?>[] parameterTypes = this.f2969b.getParameterTypes();
        this.f2970c = new Object[parameterTypes.length];
        for (int i11 = 0; i11 < parameterTypes.length; i11++) {
            this.f2970c[i11] = f2968e.get(parameterTypes[i11]);
        }
    }

    @Override // c8.v
    public final Object d() {
        return (Object[]) this.f2970c.clone();
    }

    @Override // c8.v
    public final Object e(Object obj) {
        Object[] objArr = (Object[]) obj;
        Constructor constructor = this.f2969b;
        try {
            return constructor.newInstance(objArr);
        } catch (IllegalAccessException e7) {
            p000if.a aVar = e8.c.f4819a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.13.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e7);
        } catch (IllegalArgumentException e10) {
            e = e10;
            throw new RuntimeException("Failed to invoke constructor '" + e8.c.b(constructor) + "' with args " + Arrays.toString(objArr), e);
        } catch (InstantiationException e11) {
            e = e11;
            throw new RuntimeException("Failed to invoke constructor '" + e8.c.b(constructor) + "' with args " + Arrays.toString(objArr), e);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException("Failed to invoke constructor '" + e8.c.b(constructor) + "' with args " + Arrays.toString(objArr), e12.getCause());
        }
    }

    @Override // c8.v
    public final void f(Object obj, h8.a aVar, u uVar) {
        Object[] objArr = (Object[]) obj;
        HashMap map = this.f2971d;
        String str = uVar.f2950c;
        Integer num = (Integer) map.get(str);
        if (num == null) {
            throw new IllegalStateException("Could not find the index in the constructor '" + e8.c.b(this.f2969b) + "' for field with name '" + str + "', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.");
        }
        int iIntValue = num.intValue();
        Object objB = uVar.f2954g.b(aVar);
        if (objB != null || !uVar.f2955h) {
            objArr[iIntValue] = objB;
        } else {
            StringBuilder sbD = da.b.d("null is not allowed as value for record component '", str, "' of primitive type; at path ");
            sbD.append(aVar.O());
            throw new androidx.fragment.app.b0(sbD.toString(), 12);
        }
    }
}
