package a5;

import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import q4.e;
import q4.f;
import q4.g;
import q4.h;
import q4.i;
import q4.j;
import q4.k;
import w4.l;
import w4.n;
import w4.o;
import w4.p;
import w4.q;
import w4.r;
import x4.t;
import x4.u;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: h, reason: collision with root package name */
    public static final Map f406h = DesugarCollections.synchronizedMap(new HashMap());

    /* renamed from: i, reason: collision with root package name */
    public static final HashMap f407i;

    /* renamed from: j, reason: collision with root package name */
    public static final HashMap f408j;

    /* renamed from: k, reason: collision with root package name */
    public static final HashMap f409k;

    /* renamed from: a, reason: collision with root package name */
    public final Class f410a;

    /* renamed from: c, reason: collision with root package name */
    public aa.a f412c;

    /* renamed from: d, reason: collision with root package name */
    public File f413d;

    /* renamed from: b, reason: collision with root package name */
    public final ClassLoader f411b = d.class.getClassLoader();

    /* renamed from: e, reason: collision with root package name */
    public final Class[] f414e = new Class[0];

    /* renamed from: f, reason: collision with root package name */
    public final Object[] f415f = new Object[0];

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f416g = new ArrayList();

    static {
        HashMap map = new HashMap();
        f407i = map;
        map.put(Boolean.TYPE, Boolean.class);
        map.put(Integer.TYPE, Integer.class);
        map.put(Byte.TYPE, Byte.class);
        map.put(Long.TYPE, Long.class);
        map.put(Short.TYPE, Short.class);
        map.put(Float.TYPE, Float.class);
        map.put(Double.TYPE, Double.class);
        map.put(Character.TYPE, Character.class);
        f408j = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            j jVarA = j.a((Class) entry.getKey());
            j jVarA2 = j.a((Class) entry.getValue());
            f408j.put(jVarA, jVarA2.b(jVarA2, "valueOf", jVarA));
        }
        HashMap map2 = new HashMap();
        map2.put(Boolean.TYPE, j.a(Boolean.class).b(j.f13008d, "booleanValue", new j[0]));
        map2.put(Integer.TYPE, j.a(Integer.class).b(j.f13013i, "intValue", new j[0]));
        map2.put(Byte.TYPE, j.a(Byte.class).b(j.f13009e, "byteValue", new j[0]));
        map2.put(Long.TYPE, j.a(Long.class).b(j.f13014j, "longValue", new j[0]));
        map2.put(Short.TYPE, j.a(Short.class).b(j.f13015k, "shortValue", new j[0]));
        map2.put(Float.TYPE, j.a(Float.class).b(j.f13012h, "floatValue", new j[0]));
        map2.put(Double.TYPE, j.a(Double.class).b(j.f13011g, "doubleValue", new j[0]));
        map2.put(Character.TYPE, j.a(Character.class).b(j.f13010f, "charValue", new j[0]));
        f409k = map2;
    }

    public d(Class cls) {
        this.f410a = cls;
    }

    public static void b(HashSet hashSet, HashSet hashSet2, Class cls) throws SecurityException {
        for (Method method : cls.getDeclaredMethods()) {
            if ((method.getModifiers() & 16) != 0) {
                b bVar = new b(method);
                hashSet2.add(bVar);
                hashSet.remove(bVar);
            } else if ((method.getModifiers() & 8) == 0 && ((Modifier.isPublic(method.getModifiers()) || Modifier.isProtected(method.getModifiers())) && (!method.getName().equals("finalize") || method.getParameterTypes().length != 0))) {
                b bVar2 = new b(method);
                if (!hashSet2.contains(bVar2)) {
                    hashSet.add(bVar2);
                }
            }
        }
        if (cls.isInterface()) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                b(hashSet, hashSet2, cls2);
            }
        }
    }

    public static String c(Method method) {
        return "super$" + method.getName() + "$" + method.getReturnType().getName().replace('.', '_').replace('[', '_').replace(';', '_');
    }

    public static void d(q4.b bVar, Method method, h hVar, h hVar2) {
        j jVarA = j.a(AbstractMethodError.class);
        j[] jVarArr = {j.f13017n};
        jVarA.getClass();
        i iVar = new i(jVarA, j.l, "<init>", new k(jVarArr));
        bVar.i(hVar, "'" + method + "' cannot be called");
        h[] hVarArr = {hVar};
        if (hVar2 == null) {
            throw new IllegalArgumentException();
        }
        bVar.a(new q(o.C1, bVar.f12972h, l.f17468c, bVar.f12974j, jVarA.f13021c), null);
        bVar.j(hVar2, true);
        String strA = iVar.a(true);
        if (strA == null) {
            ConcurrentHashMap concurrentHashMap = y4.a.f18923e;
            throw new NullPointerException("descriptor == null");
        }
        ConcurrentHashMap concurrentHashMap2 = y4.a.f18923e;
        y4.a aVar = (y4.a) concurrentHashMap2.get(strA);
        if (aVar == null) {
            y4.a aVarB = y4.a.b(strA);
            y4.a aVar2 = (y4.a) concurrentHashMap2.putIfAbsent(aVarB.f18924a, aVarB);
            aVar = aVar2 != null ? aVar2 : aVarB;
        }
        bVar.g(new n(52, aVar.c(), y4.b.f18935j), iVar, null, hVar2, hVarArr);
        bVar.a(new r(o.f17507h1, bVar.f12972h, l.g(hVar2.a()), bVar.f12974j), null);
    }

    /* JADX WARN: Removed duplicated region for block: B:164:0x0543  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0640  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x07e5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a() {
        Object[] objArr;
        Class cls;
        String str;
        d dVar;
        Class<?>[] clsArr;
        h hVarK;
        Class<?>[] clsArr2;
        j jVar;
        j jVar2;
        h hVarK2;
        i iVarB;
        h[] hVarArr;
        h hVar;
        n nVar;
        n nVar2;
        n nVar3;
        n nVar4;
        n nVar5;
        int i10;
        int i11;
        String strA;
        i iVar;
        Method method;
        String str2;
        j[] jVarArr;
        h[] hVarArr2;
        Method method2;
        n nVar6;
        int iB;
        Map map;
        ClassLoader classLoader;
        String str3;
        j jVar3;
        ClassLoader classLoader2 = this.f411b;
        String str4 = "descriptor == null";
        if (!(this.f412c != null)) {
            throw new IllegalArgumentException("handler == null");
        }
        Class<?>[] clsArr3 = this.f414e;
        int length = clsArr3.length;
        Object[] objArr2 = this.f415f;
        if (!(length == objArr2.length)) {
            throw new IllegalArgumentException("constructorArgValues.length != constructorArgTypes.length");
        }
        ArrayList arrayList = this.f416g;
        Class cls2 = this.f410a;
        c cVar = new c(cls2, arrayList, classLoader2);
        Map map2 = f406h;
        Class<?> clsLoadClass = (Class) map2.get(cVar);
        if (clsLoadClass != null) {
            dVar = this;
            clsArr = clsArr3;
            objArr = objArr2;
            cls = cls2;
            str = "$__handler";
        } else {
            kf.d dVar2 = new kf.d(10);
            String hexString = Integer.toHexString(arrayList.hashCode());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(cls2.getName().replace(".", "/"));
            sb2.append("_");
            String strL = g.b.l(hexString, "_Proxy", sb2);
            String strA2 = g.b.A("L", strL, ";");
            try {
                j jVar4 = new j(strA2, strA2.equals("V") ? y4.c.f18955p : y4.c.e(strA2));
                j jVarA = j.a(cls2);
                j jVarA2 = j.a(InvocationHandler.class);
                objArr = objArr2;
                j jVarA3 = j.a(Method[].class);
                dVar2.s(new f(jVar4, jVarA2, "$__handler"), 2);
                dVar2.s(new f(jVar4, jVarA3, "$__methodArray"), 10);
                Constructor<?>[] declaredConstructors = cls2.getDeclaredConstructors();
                int length2 = declaredConstructors.length;
                cls = cls2;
                int i12 = 0;
                while (true) {
                    String str5 = "static methods cannot access 'this'";
                    if (i12 < length2) {
                        Constructor<?> constructor = declaredConstructors[i12];
                        Constructor<?>[] constructorArr = declaredConstructors;
                        int i13 = length2;
                        if (constructor.getModifiers() == 16) {
                            str3 = strL;
                            classLoader = classLoader2;
                            jVar3 = jVarA;
                            map = map2;
                        } else {
                            Class<?>[] parameterTypes = constructor.getParameterTypes();
                            int length3 = parameterTypes.length;
                            map = map2;
                            j[] jVarArr2 = new j[length3];
                            classLoader = classLoader2;
                            for (int i14 = 0; i14 < parameterTypes.length; i14++) {
                                jVarArr2[i14] = j.a(parameterTypes[i14]);
                            }
                            str3 = strL;
                            q4.b bVarR = dVar2.r(new i(jVar4, j.l, "<init>", new k(jVarArr2)));
                            h hVar2 = bVarR.f12969e;
                            if (hVar2 == null) {
                                throw new IllegalStateException("static methods cannot access 'this'");
                            }
                            q4.b.d(hVar2, jVar4);
                            h[] hVarArr3 = new h[length3];
                            int i15 = 0;
                            while (i15 < length3) {
                                hVarArr3[i15] = bVarR.e(i15, jVarArr2[i15]);
                                i15++;
                                length3 = length3;
                            }
                            jVarA.getClass();
                            i iVar2 = new i(jVarA, j.l, "<init>", new k(jVarArr2));
                            String strA3 = iVar2.a(true);
                            if (strA3 == null) {
                                ConcurrentHashMap concurrentHashMap = y4.a.f18923e;
                                throw new NullPointerException("descriptor == null");
                            }
                            ConcurrentHashMap concurrentHashMap2 = y4.a.f18923e;
                            y4.a aVar = (y4.a) concurrentHashMap2.get(strA3);
                            if (aVar == null) {
                                y4.a aVarB = y4.a.b(strA3);
                                y4.a aVar2 = (y4.a) concurrentHashMap2.putIfAbsent(aVarB.f18924a, aVarB);
                                aVar = aVar2 != null ? aVar2 : aVarB;
                            }
                            n nVar7 = o.f17478a;
                            jVar3 = jVarA;
                            bVarR.g(new n(52, aVar.c(), y4.b.f18935j), iVar2, null, hVar2, hVarArr3);
                            bVarR.m();
                        }
                        i12++;
                        map2 = map;
                        declaredConstructors = constructorArr;
                        length2 = i13;
                        classLoader2 = classLoader;
                        strL = str3;
                        jVarA = jVar3;
                    } else {
                        String str6 = strL;
                        ClassLoader classLoader3 = classLoader2;
                        j jVar5 = jVarA;
                        Map map3 = map2;
                        HashSet hashSet = new HashSet();
                        HashSet hashSet2 = new HashSet();
                        for (Class superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                            b(hashSet, hashSet2, superclass);
                        }
                        for (Class superclass2 = cls; superclass2 != null; superclass2 = superclass2.getSuperclass()) {
                            for (Class<?> cls3 : superclass2.getInterfaces()) {
                                b(hashSet, hashSet2, cls3);
                            }
                        }
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            b(hashSet, hashSet2, (Class) it.next());
                        }
                        int size = hashSet.size();
                        Method[] methodArr = new Method[size];
                        Iterator it2 = hashSet.iterator();
                        int i16 = 0;
                        while (it2.hasNext()) {
                            methodArr[i16] = ((b) it2.next()).f402d;
                            i16++;
                        }
                        Arrays.sort(methodArr, new a(0));
                        j jVarA4 = j.a(InvocationHandler.class);
                        j jVarA5 = j.a(Method[].class);
                        jVarA4.getClass();
                        x4.r rVar = new x4.r(new t("$__handler"), new t(jVarA4.f13019a));
                        u uVar = jVar4.f13021c;
                        x4.h hVar3 = new x4.h(uVar, rVar);
                        jVarA5.getClass();
                        str = "$__handler";
                        x4.h hVar4 = new x4.h(uVar, new x4.r(new t("$__methodArray"), new t(jVarA5.f13019a)));
                        j jVarA6 = j.a(Method.class);
                        j jVarA7 = j.a(Object[].class);
                        j jVar6 = j.f13016m;
                        i iVarB2 = jVarA4.b(jVar6, "invoke", jVar6, jVarA6, jVarA7);
                        int i17 = 0;
                        while (i17 < size) {
                            Method method3 = methodArr[i17];
                            String name = method3.getName();
                            int i18 = size;
                            Class<?>[] parameterTypes2 = method3.getParameterTypes();
                            Method[] methodArr2 = methodArr;
                            int length4 = parameterTypes2.length;
                            String str7 = str5;
                            j[] jVarArr3 = new j[length4];
                            i iVar3 = iVarB2;
                            for (int i19 = 0; i19 < length4; i19++) {
                                jVarArr3[i19] = j.a(parameterTypes2[i19]);
                            }
                            Class<?> returnType = method3.getReturnType();
                            String str8 = str4;
                            j jVarA8 = j.a(returnType);
                            x4.h hVar5 = hVar3;
                            i iVarB3 = jVar4.b(jVarA8, name, jVarArr3);
                            j jVarA9 = j.a(AbstractMethodError.class);
                            q4.b bVarR2 = dVar2.r(iVarB3);
                            kf.d dVar3 = dVar2;
                            h hVar6 = bVarR2.f12969e;
                            if (hVar6 == null) {
                                throw new IllegalStateException(str7);
                            }
                            q4.b.d(hVar6, jVar4);
                            j jVar7 = jVar4;
                            h hVarK3 = bVarR2.k(jVarA4);
                            j jVar8 = j.f13016m;
                            h hVarK4 = bVarR2.k(jVar8);
                            j jVar9 = j.f13013i;
                            x4.h hVar7 = hVar4;
                            h hVarK5 = bVarR2.k(jVar9);
                            h hVarK6 = bVarR2.k(jVarA7);
                            j jVar10 = jVarA7;
                            h hVarK7 = bVarR2.k(jVar9);
                            h hVarK8 = bVarR2.k(jVar8);
                            h hVarK9 = bVarR2.k(jVarA8);
                            h hVarK10 = bVarR2.k(jVarA5);
                            j jVar11 = jVarA5;
                            h hVarK11 = bVarR2.k(jVarA6);
                            h hVarK12 = bVarR2.k(jVar9);
                            j jVar12 = jVarA6;
                            Class cls4 = (Class) f407i.get(returnType);
                            h hVarK13 = cls4 != null ? bVarR2.k(j.a(cls4)) : null;
                            h hVarK14 = bVarR2.k(jVarA4);
                            j jVar13 = jVarA4;
                            if ((method3.getModifiers() & 1024) == 0) {
                                h[] hVarArr4 = new h[parameterTypes2.length];
                                h hVarK15 = bVarR2.k(jVarA8);
                                clsArr2 = parameterTypes2;
                                jVar = jVarA9;
                                jVar2 = jVarA8;
                                iVarB = jVar5.b(jVarA8, name, jVarArr3);
                                hVar = hVarK15;
                                hVarArr = hVarArr4;
                                hVarK = null;
                                hVarK2 = null;
                            } else {
                                hVarK = bVarR2.k(j.f13017n);
                                clsArr2 = parameterTypes2;
                                jVar = jVarA9;
                                jVar2 = jVarA8;
                                hVarK2 = bVarR2.k(jVarA9);
                                iVarB = null;
                                hVarArr = null;
                                hVar = null;
                            }
                            bVarR2.i(hVarK12, Integer.valueOf(i17));
                            int i20 = i17;
                            y4.c cVar2 = hVarK10.f13000b.f13020b;
                            n nVar8 = o.f17478a;
                            h hVar8 = hVarK;
                            switch (cVar2.f18964b) {
                                case 1:
                                    nVar = o.f17485b2;
                                    break;
                                case 2:
                                    nVar = o.f17489c2;
                                    break;
                                case 3:
                                    nVar = o.f17493d2;
                                    break;
                                case 4:
                                    nVar = o.Z1;
                                    break;
                                case 5:
                                    nVar = o.Y1;
                                    break;
                                case 6:
                                    nVar = o.W1;
                                    break;
                                case 7:
                                    nVar = o.X1;
                                    break;
                                case 8:
                                    nVar = o.f17497e2;
                                    break;
                                case 9:
                                    nVar = o.f17481a2;
                                    break;
                                default:
                                    o.a(cVar2);
                                    throw null;
                            }
                            bVarR2.a(new q(nVar, bVarR2.f12972h, l.f17468c, bVarR2.f12974j, hVar7), null);
                            bVarR2.j(hVarK10, true);
                            y4.c cVar3 = hVarK11.f13000b.f13020b;
                            switch (cVar3.f18964b) {
                                case 1:
                                    nVar2 = o.f17536p1;
                                    break;
                                case 2:
                                    nVar2 = o.f17539q1;
                                    break;
                                case 3:
                                    nVar2 = o.f17541r1;
                                    break;
                                case 4:
                                    nVar2 = o.f17530n1;
                                    break;
                                case 5:
                                    nVar2 = o.f17526m1;
                                    break;
                                case 6:
                                    nVar2 = o.f17519k1;
                                    break;
                                case 7:
                                    nVar2 = o.f17522l1;
                                    break;
                                case 8:
                                    nVar2 = o.f17543s1;
                                    break;
                                case 9:
                                    nVar2 = o.f17533o1;
                                    break;
                                default:
                                    o.a(cVar3);
                                    throw null;
                            }
                            l lVarH = l.h(hVarK10.a(), hVarK12.a());
                            p pVar = bVarR2.f12972h;
                            y4.b bVar = bVarR2.f12974j;
                            bVarR2.a(new r(nVar2, pVar, lVarH, bVar), null);
                            bVarR2.j(hVarK11, true);
                            bVarR2.i(hVarK7, Integer.valueOf(length4));
                            j jVar14 = hVarK6.f13000b;
                            y4.c cVar4 = jVar14.f13020b;
                            cVar4.getClass();
                            h hVar9 = hVar;
                            switch (cVar4.d().f18964b) {
                                case 1:
                                    nVar3 = o.H1;
                                    break;
                                case 2:
                                    nVar3 = o.I1;
                                    break;
                                case 3:
                                    nVar3 = o.J1;
                                    break;
                                case 4:
                                    nVar3 = o.G1;
                                    break;
                                case 5:
                                    nVar3 = o.F1;
                                    break;
                                case 6:
                                    nVar3 = o.D1;
                                    break;
                                case 7:
                                    nVar3 = o.E1;
                                    break;
                                case 8:
                                    nVar3 = o.K1;
                                    break;
                                case 9:
                                    nVar3 = new n(41, cVar4, y4.b.f18929d, w4.d.f17453d, 6, false, "new-array-object");
                                    break;
                                default:
                                    o.a(cVar4);
                                    throw null;
                            }
                            bVarR2.a(new q(nVar3, bVarR2.f12972h, l.g(hVarK7.a()), bVarR2.f12974j, jVar14.f13021c), null);
                            bVarR2.j(hVarK6, true);
                            j jVar15 = hVarK3.f13000b;
                            y4.c cVar5 = jVar15.f13020b;
                            switch (cVar5.f18964b) {
                                case 1:
                                    nVar4 = o.S1;
                                    break;
                                case 2:
                                    nVar4 = o.T1;
                                    break;
                                case 3:
                                    nVar4 = o.U1;
                                    break;
                                case 4:
                                    nVar4 = o.Q1;
                                    break;
                                case 5:
                                    nVar4 = o.P1;
                                    break;
                                case 6:
                                    nVar4 = o.N1;
                                    break;
                                case 7:
                                    nVar4 = o.O1;
                                    break;
                                case 8:
                                    nVar4 = o.V1;
                                    break;
                                case 9:
                                    nVar4 = o.R1;
                                    break;
                                default:
                                    o.a(cVar5);
                                    throw null;
                            }
                            bVarR2.a(new q(nVar4, bVarR2.f12972h, l.g(hVar6.a()), bVarR2.f12974j, hVar5), null);
                            bVarR2.j(hVarK3, true);
                            bVarR2.i(hVarK14, null);
                            g gVar = new g();
                            bVarR2.b(gVar);
                            y4.b bVarH = y4.b.h(hVarK14.f13000b.f13020b, jVar15.f13020b);
                            n nVar9 = o.A;
                            n nVar10 = o.G;
                            n nVar11 = o.f17542s;
                            n nVar12 = o.f17559y;
                            int length5 = bVarH.f2559b.length;
                            i iVar4 = iVarB;
                            if (length5 != 1) {
                                if (length5 == 2 && (iB = bVarH.b(0).b()) == bVarH.b(1).b()) {
                                    if (iB == 6) {
                                        nVar5 = nVar9;
                                    } else if (iB == 9 && nVar10 != null) {
                                        nVar5 = nVar10;
                                    }
                                    bVarR2.a(new w4.i(nVar5, pVar, null, l.h(hVarK14.a(), hVarK3.a())), gVar);
                                    i10 = length4;
                                    i11 = 0;
                                    while (i11 < i10) {
                                        h hVar10 = hVarK5;
                                        bVarR2.i(hVar10, Integer.valueOf(i11));
                                        h hVarE = bVarR2.e(i11, jVarArr3[i11]);
                                        int i21 = i10;
                                        i iVar5 = (i) f408j.get(hVarE.f13000b);
                                        if (iVar5 == null) {
                                            hVarArr2 = hVarArr;
                                            jVarArr = jVarArr3;
                                            method2 = method3;
                                        } else {
                                            jVarArr = jVarArr3;
                                            h[] hVarArr5 = {hVarE};
                                            String strA4 = iVar5.a(true);
                                            if (strA4 == null) {
                                                ConcurrentHashMap concurrentHashMap3 = y4.a.f18923e;
                                                throw new NullPointerException(str8);
                                            }
                                            ConcurrentHashMap concurrentHashMap4 = y4.a.f18923e;
                                            y4.a aVar3 = (y4.a) concurrentHashMap4.get(strA4);
                                            if (aVar3 != null) {
                                                hVarArr2 = hVarArr;
                                            } else {
                                                y4.a aVarB2 = y4.a.b(strA4);
                                                hVarArr2 = hVarArr;
                                                y4.a aVar4 = (y4.a) concurrentHashMap4.putIfAbsent(aVarB2.f18924a, aVarB2);
                                                aVar3 = aVar4 != null ? aVar4 : aVarB2;
                                            }
                                            n nVar13 = o.f17478a;
                                            method2 = method3;
                                            bVarR2.g(new n(49, aVar3.c(), y4.b.f18935j), iVar5, hVarK8, null, hVarArr5);
                                            hVarE = hVarK8;
                                        }
                                        y4.c cVar6 = hVarE.f13000b.f13020b;
                                        n nVar14 = o.f17478a;
                                        switch (cVar6.f18964b) {
                                            case 1:
                                                nVar6 = o.f17561y1;
                                                break;
                                            case 2:
                                                nVar6 = o.f17563z1;
                                                break;
                                            case 3:
                                                nVar6 = o.A1;
                                                break;
                                            case 4:
                                                nVar6 = o.f17555w1;
                                                break;
                                            case 5:
                                                nVar6 = o.f17552v1;
                                                break;
                                            case 6:
                                                nVar6 = o.f17546t1;
                                                break;
                                            case 7:
                                                nVar6 = o.f17549u1;
                                                break;
                                            case 8:
                                                nVar6 = o.B1;
                                                break;
                                            case 9:
                                                nVar6 = o.f17558x1;
                                                break;
                                            default:
                                                o.a(cVar6);
                                                throw null;
                                        }
                                        w4.k kVarA = hVarE.a();
                                        w4.k kVarA2 = hVarK6.a();
                                        w4.k kVarA3 = hVar10.a();
                                        l lVar = new l(3);
                                        lVar.e(0, kVarA);
                                        lVar.e(1, kVarA2);
                                        lVar.e(2, kVarA3);
                                        bVarR2.a(new r(nVar6, pVar, lVar, bVar), null);
                                        i11++;
                                        i10 = i21;
                                        jVarArr3 = jVarArr;
                                        hVarArr = hVarArr2;
                                        method3 = method2;
                                        hVarK5 = hVar10;
                                    }
                                    h[] hVarArr6 = hVarArr;
                                    j[] jVarArr4 = jVarArr3;
                                    Method method4 = method3;
                                    h[] hVarArr7 = {hVar6, hVarK11, hVarK6};
                                    strA = iVar3.a(true);
                                    if (strA != null) {
                                        ConcurrentHashMap concurrentHashMap5 = y4.a.f18923e;
                                        throw new NullPointerException(str8);
                                    }
                                    ConcurrentHashMap concurrentHashMap6 = y4.a.f18923e;
                                    y4.a aVar5 = (y4.a) concurrentHashMap6.get(strA);
                                    if (aVar5 == null) {
                                        y4.a aVarB3 = y4.a.b(strA);
                                        aVar5 = (y4.a) concurrentHashMap6.putIfAbsent(aVarB3.f18924a, aVarB3);
                                        if (aVar5 == null) {
                                            aVar5 = aVarB3;
                                        }
                                    }
                                    n nVar15 = o.f17478a;
                                    y4.b bVarC = aVar5.c();
                                    y4.b bVar2 = y4.b.f18935j;
                                    bVarR2.g(new n(53, bVarC, bVar2), iVar3, hVarK4, hVarK3, hVarArr7);
                                    HashMap map4 = f409k;
                                    if (map4.containsKey(returnType)) {
                                        h hVar11 = hVarK13;
                                        bVarR2.c(hVar11, hVarK4);
                                        i iVar6 = (i) map4.get(returnType);
                                        h[] hVarArr8 = new h[0];
                                        String strA5 = iVar6.a(true);
                                        if (strA5 == null) {
                                            throw new NullPointerException(str8);
                                        }
                                        y4.a aVarB4 = (y4.a) concurrentHashMap6.get(strA5);
                                        if (aVarB4 == null) {
                                            aVarB4 = y4.a.b(strA5);
                                            y4.a aVar6 = (y4.a) concurrentHashMap6.putIfAbsent(aVarB4.f18924a, aVarB4);
                                            if (aVar6 != null) {
                                                aVarB4 = aVar6;
                                            }
                                        }
                                        bVarR2.g(new n(50, aVarB4.c(), bVar2), iVar6, hVarK9, hVar11, hVarArr8);
                                        bVarR2.l(hVarK9);
                                    } else if (Void.TYPE.equals(returnType)) {
                                        bVarR2.m();
                                    } else {
                                        bVarR2.c(hVarK9, hVarK4);
                                        bVarR2.l(hVarK9);
                                    }
                                    bVarR2.b(gVar);
                                    if (gVar.f12994c) {
                                        throw new IllegalStateException("already marked");
                                    }
                                    gVar.f12994c = true;
                                    if (bVarR2.f12967c != null) {
                                        bVarR2.b(gVar);
                                        bVarR2.a(new w4.i(o.r, pVar, null, l.f17468c), gVar);
                                    }
                                    bVarR2.f12967c = gVar;
                                    if ((method4.getModifiers() & 1024) == 0) {
                                        for (int i22 = 0; i22 < hVarArr6.length; i22++) {
                                            hVarArr6[i22] = bVarR2.e(i22, jVarArr4[i22]);
                                        }
                                        if (Void.TYPE.equals(returnType)) {
                                            iVar = iVar4;
                                            bVarR2.h(iVar, null, hVar6, hVarArr6);
                                            bVarR2.m();
                                        } else {
                                            iVar = iVar4;
                                            bVarR2.h(iVar, hVar9, hVar6, hVarArr6);
                                            bVarR2.l(hVar9);
                                        }
                                        method = method4;
                                    } else {
                                        iVar = iVar4;
                                        method = method4;
                                        d(bVarR2, method, hVar8, hVarK2);
                                    }
                                    j jVar16 = jVar2;
                                    q4.b bVarR3 = dVar3.r(jVar7.b(jVar16, c(method), jVarArr4));
                                    if ((method.getModifiers() & 1024) == 0) {
                                        h hVar12 = bVarR3.f12969e;
                                        if (hVar12 == null) {
                                            throw new IllegalStateException(str7);
                                        }
                                        q4.b.d(hVar12, jVar7);
                                        int length6 = clsArr2.length;
                                        h[] hVarArr9 = new h[length6];
                                        for (int i23 = 0; i23 < length6; i23++) {
                                            hVarArr9[i23] = bVarR3.e(i23, jVarArr4[i23]);
                                        }
                                        if (Void.TYPE.equals(returnType)) {
                                            bVarR3.h(iVar, null, hVar12, hVarArr9);
                                            bVarR3.m();
                                        } else {
                                            h hVarK16 = bVarR3.k(jVar16);
                                            bVarR3.h(iVar, hVarK16, hVar12, hVarArr9);
                                            bVarR3.l(hVarK16);
                                        }
                                        str2 = str7;
                                    } else {
                                        str2 = str7;
                                        d(bVarR3, method, bVarR3.k(j.f13017n), bVarR3.k(jVar));
                                    }
                                    i17 = i20 + 1;
                                    jVar4 = jVar7;
                                    iVarB2 = iVar3;
                                    dVar2 = dVar3;
                                    hVar3 = hVar5;
                                    hVar4 = hVar7;
                                    jVarA7 = jVar10;
                                    jVarA5 = jVar11;
                                    jVarA6 = jVar12;
                                    jVarA4 = jVar13;
                                    str4 = str8;
                                    str5 = str2;
                                    size = i18;
                                    methodArr = methodArr2;
                                }
                                throw new IllegalArgumentException("bad types: " + bVarH);
                            }
                            int iB2 = bVarH.b(0).b();
                            if (iB2 == 6) {
                                nVar5 = nVar11;
                            } else {
                                if (iB2 != 9 || nVar12 == null) {
                                    throw new IllegalArgumentException("bad types: " + bVarH);
                                }
                                nVar5 = nVar12;
                            }
                            bVarR2.a(new w4.i(nVar5, pVar, null, l.h(hVarK14.a(), hVarK3.a())), gVar);
                            i10 = length4;
                            i11 = 0;
                            while (i11 < i10) {
                            }
                            h[] hVarArr62 = hVarArr;
                            j[] jVarArr42 = jVarArr3;
                            Method method42 = method3;
                            h[] hVarArr72 = {hVar6, hVarK11, hVarK6};
                            strA = iVar3.a(true);
                            if (strA != null) {
                            }
                        }
                        Method[] methodArr3 = methodArr;
                        j jVar17 = jVar4;
                        kf.d dVar4 = dVar2;
                        String strJ = g.b.j(str6, ".generated");
                        j[] jVarArr5 = new j[arrayList.size()];
                        Iterator it3 = arrayList.iterator();
                        int i24 = 0;
                        while (it3.hasNext()) {
                            jVarArr5[i24] = j.a((Class) it3.next());
                            i24++;
                        }
                        e eVarB = dVar4.B(jVar17);
                        if (eVarB.f12981b) {
                            throw new IllegalStateException("already declared: " + jVar17);
                        }
                        eVarB.f12981b = true;
                        eVarB.f12982c = 1;
                        eVarB.f12983d = jVar5;
                        eVarB.f12984e = strJ;
                        eVarB.f12985f = new k(jVarArr5);
                        dVar = this;
                        try {
                            clsLoadClass = dVar4.w(classLoader3, dVar.f413d).loadClass(str6);
                            try {
                                Field declaredField = clsLoadClass.getDeclaredField("$__methodArray");
                                declaredField.setAccessible(true);
                                declaredField.set(null, methodArr3);
                                map3.put(cVar, clsLoadClass);
                                clsArr = clsArr3;
                            } catch (IllegalAccessException e7) {
                                throw new AssertionError(e7);
                            } catch (NoSuchFieldException e10) {
                                throw new AssertionError(e10);
                            }
                        } catch (ClassNotFoundException e11) {
                            throw new AssertionError(e11);
                        } catch (IllegalAccessError e12) {
                            throw new UnsupportedOperationException("cannot proxy inaccessible class " + cls, e12);
                        }
                    }
                }
            } catch (NullPointerException unused) {
                throw new NullPointerException("descriptor == null");
            }
        }
        try {
            try {
                Object objNewInstance = clsLoadClass.getConstructor(clsArr).newInstance(objArr);
                aa.a aVar7 = dVar.f412c;
                try {
                    Field declaredField2 = objNewInstance.getClass().getDeclaredField(str);
                    declaredField2.setAccessible(true);
                    declaredField2.set(objNewInstance, aVar7);
                    return objNewInstance;
                } catch (IllegalAccessException e13) {
                    throw new AssertionError(e13);
                } catch (NoSuchFieldException e14) {
                    throw new IllegalArgumentException("Not a valid proxy instance", e14);
                }
            } catch (IllegalAccessException e15) {
                throw new AssertionError(e15);
            } catch (InstantiationException e16) {
                throw new AssertionError(e16);
            } catch (InvocationTargetException e17) {
                Throwable cause = e17.getCause();
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                throw new UndeclaredThrowableException(cause);
            }
        } catch (NoSuchMethodException unused2) {
            throw new IllegalArgumentException("No constructor for " + cls.getName() + " with parameter types " + Arrays.toString(clsArr));
        }
    }
}
