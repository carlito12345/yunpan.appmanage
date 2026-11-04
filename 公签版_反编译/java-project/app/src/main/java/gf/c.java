package gf;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f6145a = new byte[0];

    public static Class a(Field field) throws e {
        String string = field.getGenericType().toString();
        int iIndexOf = string.indexOf(60);
        if (iIndexOf == -1) {
            throw new e("Not a container type: " + field.getGenericType());
        }
        int i10 = iIndexOf + 1;
        int iIndexOf2 = string.indexOf(62, i10);
        if (iIndexOf2 != -1) {
            return Class.forName(string.substring(i10, iIndexOf2));
        }
        throw new e("Not a container type: " + field.getGenericType());
    }

    public static ArrayList b(a9.a aVar, Class cls) throws e {
        ArrayList arrayList = new ArrayList();
        hf.b bVar = new hf.b(((ByteBuffer) aVar.f474e).slice(), 0);
        while (true) {
            try {
                a9.a aVarF = bVar.f();
                if (aVarF == null) {
                    return arrayList;
                }
                arrayList.add(ByteBuffer.class.equals(cls) ? ((ByteBuffer) aVarF.f474e).slice() : g.class.equals(cls) ? new g(((ByteBuffer) aVarF.f473d).slice()) : g(aVarF, cls));
            } catch (hf.a e7) {
                throw new e("Malformed data value", e7);
            }
        }
    }

    public static Object c(j jVar, a9.a aVar, Class cls) throws e {
        d dVar;
        if (ByteBuffer.class.equals(cls)) {
            return ((ByteBuffer) aVar.f474e).slice();
        }
        if (byte[].class.equals(cls)) {
            ByteBuffer byteBufferSlice = ((ByteBuffer) aVar.f474e).slice();
            if (!byteBufferSlice.hasRemaining()) {
                return f6145a;
            }
            byte[] bArr = new byte[byteBufferSlice.remaining()];
            byteBufferSlice.get(bArr);
            return bArr;
        }
        if (g.class.equals(cls)) {
            return new g(((ByteBuffer) aVar.f473d).slice());
        }
        ByteBuffer byteBufferSlice2 = ((ByteBuffer) aVar.f474e).slice();
        int iOrdinal = jVar.ordinal();
        if (iOrdinal == 1) {
            d dVar2 = (d) cls.getAnnotation(d.class);
            if (dVar2 != null && dVar2.type() == j.CHOICE) {
                return h(aVar, cls);
            }
        } else if (iOrdinal != 2) {
            if (iOrdinal != 3) {
                if (iOrdinal == 5 && (dVar = (d) cls.getAnnotation(d.class)) != null && dVar.type() == j.SEQUENCE) {
                    return i(aVar, cls);
                }
            } else if (String.class.equals(cls)) {
                if (!byteBufferSlice2.hasRemaining()) {
                    throw new e("Empty OBJECT IDENTIFIER");
                }
                long jD = d(byteBufferSlice2);
                int iMin = (int) Math.min(jD / 40, 2L);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Long.toString(iMin));
                sb2.append('.');
                sb2.append(Long.toString(jD - (iMin * 40)));
                while (byteBufferSlice2.hasRemaining()) {
                    long jD2 = d(byteBufferSlice2);
                    sb2.append('.');
                    sb2.append(Long.toString(jD2));
                }
                return sb2.toString();
            }
        } else {
            if (Integer.TYPE.equals(cls) || Integer.class.equals(cls)) {
                BigInteger bigIntegerF = f(byteBufferSlice2);
                try {
                    return Integer.valueOf(bigIntegerF.intValue());
                } catch (ArithmeticException e7) {
                    throw new e(String.format("INTEGER cannot be represented as int: %1$d (0x%1$x)", bigIntegerF), e7);
                }
            }
            if (Long.TYPE.equals(cls) || Long.class.equals(cls)) {
                BigInteger bigIntegerF2 = f(byteBufferSlice2);
                try {
                    return Long.valueOf(bigIntegerF2.intValue());
                } catch (ArithmeticException e10) {
                    throw new e(String.format("INTEGER cannot be represented as long: %1$d (0x%1$x)", bigIntegerF2), e10);
                }
            }
            if (BigInteger.class.equals(cls)) {
                return f(byteBufferSlice2);
            }
        }
        throw new e("Unsupported conversion: ASN.1 " + jVar + " to " + cls.getName());
    }

    public static long d(ByteBuffer byteBuffer) throws e {
        long j10 = 0;
        if (!byteBuffer.hasRemaining()) {
            return 0L;
        }
        while (byteBuffer.hasRemaining()) {
            if (j10 > 72057594037927935L) {
                throw new e("Base-128 number too large");
            }
            j10 = (j10 << 7) | (r0 & Byte.MAX_VALUE);
            if ((byteBuffer.get() & 128) == 0) {
                return j10;
            }
        }
        throw new e("Truncated base-128 encoded input: missing terminating byte, with highest bit not set");
    }

    public static ArrayList e(Class cls) throws e {
        Field[] declaredFields = cls.getDeclaredFields();
        ArrayList arrayList = new ArrayList(declaredFields.length);
        for (Field field : declaredFields) {
            f fVar = (f) field.getAnnotation(f.class);
            if (fVar != null) {
                if (Modifier.isStatic(field.getModifiers())) {
                    throw new e(f.class.getName() + " used on a static field: " + cls.getName() + "." + field.getName());
                }
                try {
                    arrayList.add(new a(field, fVar));
                } catch (e e7) {
                    throw new e("Invalid ASN.1 annotation on " + cls.getName() + "." + field.getName(), e7);
                }
            }
        }
        return arrayList;
    }

    public static BigInteger f(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return BigInteger.ZERO;
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return new BigInteger(bArr);
    }

    public static Object g(a9.a aVar, Class cls) throws e {
        d dVar = (d) cls.getAnnotation(d.class);
        if (dVar == null) {
            throw new e(cls.getName() + " is not annotated with " + d.class.getName());
        }
        int iOrdinal = dVar.type().ordinal();
        if (iOrdinal != 1 && iOrdinal != 5) {
            throw new e("Unsupported ASN.1 container annotation type: " + dVar.type());
        }
        j jVarType = dVar.type();
        int iOrdinal2 = jVarType.ordinal();
        if (iOrdinal2 == 1) {
            return h(aVar, cls);
        }
        if (iOrdinal2 != 5) {
            throw new e("Parsing container " + jVarType + " not supported");
        }
        int iK = nh.b.K(jVarType);
        int i10 = aVar.f472c;
        int i11 = aVar.f471b;
        if (i11 == 0 && i10 == iK) {
            return i(aVar, cls);
        }
        throw new b("Unexpected data value read as " + cls.getName() + ". Expected " + nh.b.o0(0, iK) + ", but read: " + nh.b.o0(i11, i10));
    }

    public static Object h(a9.a aVar, Class cls) throws IllegalAccessException, e, InstantiationException, IllegalArgumentException, InvocationTargetException {
        ArrayList arrayListE = e(cls);
        if (arrayListE.isEmpty()) {
            throw new e("No fields annotated with " + f.class.getName() + " in CHOICE class " + cls.getName());
        }
        int i10 = 0;
        while (i10 < arrayListE.size() - 1) {
            a aVar2 = (a) arrayListE.get(i10);
            int i11 = aVar2.f6142d;
            i10++;
            for (int i12 = i10; i12 < arrayListE.size(); i12++) {
                a aVar3 = (a) arrayListE.get(i12);
                if (i11 == aVar3.f6142d && aVar2.f6141c == aVar3.f6141c) {
                    throw new e("CHOICE fields are indistinguishable because they have the same tag class and number: " + cls.getName() + "." + aVar2.f6139a.getName() + " and ." + aVar3.f6139a.getName());
                }
            }
        }
        try {
            Object objNewInstance = cls.getConstructor(null).newInstance(null);
            Iterator it = arrayListE.iterator();
            while (it.hasNext()) {
                try {
                    ((a) it.next()).a(aVar, objNewInstance);
                    return objNewInstance;
                } catch (b unused) {
                }
            }
            throw new e("No options of CHOICE " + cls.getName() + " matched");
        } catch (IllegalArgumentException | ReflectiveOperationException e7) {
            throw new e("Failed to instantiate ".concat(cls.getName()), e7);
        }
    }

    public static Object i(a9.a aVar, Class cls) throws IllegalAccessException, e, InstantiationException, IllegalArgumentException, InvocationTargetException {
        ArrayList arrayListE = e(cls);
        Collections.sort(arrayListE, new a5.a(6));
        if (arrayListE.size() > 1) {
            Iterator it = arrayListE.iterator();
            a aVar2 = null;
            while (it.hasNext()) {
                a aVar3 = (a) it.next();
                if (aVar2 != null) {
                    throw null;
                }
                aVar2 = aVar3;
            }
        }
        try {
            Object objNewInstance = cls.getConstructor(null).newInstance(null);
            hf.b bVar = new hf.b(((ByteBuffer) aVar.f474e).slice(), 0);
            int i10 = 0;
            while (i10 < arrayListE.size()) {
                try {
                    a9.a aVarF = bVar.f();
                    if (aVarF == null) {
                        break;
                    }
                    for (int i11 = i10; i11 < arrayListE.size(); i11++) {
                        a aVar4 = (a) arrayListE.get(i11);
                        try {
                            if (aVar4.f6144f) {
                                try {
                                    aVar4.a(aVarF, objNewInstance);
                                } catch (b unused) {
                                }
                            } else {
                                aVar4.a(aVarF, objNewInstance);
                            }
                            i10 = i11 + 1;
                            break;
                        } catch (e e7) {
                            throw new e("Failed to parse " + cls.getName() + "." + aVar4.f6139a.getName(), e7);
                        }
                    }
                } catch (hf.a e10) {
                    throw new e("Malformed data value", e10);
                }
            }
            return objNewInstance;
        } catch (IllegalArgumentException | ReflectiveOperationException e11) {
            throw new e("Failed to instantiate ".concat(cls.getName()), e11);
        }
    }

    public static void j(Object obj, Field field, j jVar, a9.a aVar) {
        try {
            int iOrdinal = jVar.ordinal();
            if (iOrdinal != 6 && iOrdinal != 7) {
                field.set(obj, c(jVar, aVar, field.getType()));
            } else if (g.class.equals(field.getType())) {
                field.set(obj, c(jVar, aVar, field.getType()));
            } else {
                field.set(obj, b(aVar, a(field)));
            }
        } catch (ReflectiveOperationException e7) {
            throw new e("Failed to set value of " + obj.getClass().getName() + "." + field.getName(), e7);
        }
    }
}
