package c8;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class z implements z7.b0 {

    /* renamed from: a, reason: collision with root package name */
    public final com.bumptech.glide.manager.s f2972a;

    /* renamed from: b, reason: collision with root package name */
    public final z7.h f2973b;

    /* renamed from: c, reason: collision with root package name */
    public final b8.d f2974c;

    /* renamed from: d, reason: collision with root package name */
    public final l f2975d;

    /* renamed from: e, reason: collision with root package name */
    public final List f2976e;

    public z(com.bumptech.glide.manager.s sVar, z7.h hVar, b8.d dVar, l lVar, List list) {
        this.f2972a = sVar;
        this.f2973b = hVar;
        this.f2974c = dVar;
        this.f2975d = lVar;
        this.f2976e = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(Object obj, AccessibleObject accessibleObject) {
        if (Modifier.isStatic(((Member) accessibleObject).getModifiers())) {
            obj = null;
        }
        if (!b8.r.f2658a.a(obj, accessibleObject)) {
            throw new z7.q(g.b.j(e8.c.d(accessibleObject, true), " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."));
        }
    }

    public static void c(Class cls, String str, Field field, Field field2) {
        throw new IllegalArgumentException("Class " + cls.getName() + " declares multiple JSON fields named '" + str + "'; conflict is caused by fields " + e8.c.c(field) + " and " + e8.c.c(field2) + "\nSee " + "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("duplicate-fields"));
    }

    @Override // z7.b0
    public final z7.a0 a(z7.m mVar, g8.a aVar) {
        Class cls = aVar.f6121a;
        if (!Object.class.isAssignableFrom(cls)) {
            return null;
        }
        p000if.a aVar2 = e8.c.f4819a;
        if (!Modifier.isStatic(cls.getModifiers()) && (cls.isAnonymousClass() || cls.isLocalClass())) {
            return new t(0);
        }
        b8.h.f(this.f2976e);
        return e8.c.f4819a.g0(cls) ? new y(cls, d(mVar, aVar, cls, true)) : new w(this.f2972a.d(aVar, true), d(mVar, aVar, cls, false));
    }

    /* JADX WARN: Code restructure failed: missing block: B:91:0x01be, code lost:
    
        r11 = new g8.a(b8.h.k(r1, r12, r12.getGenericSuperclass(), new java.util.HashMap()));
        r12 = r11.f6121a;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v19, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final x d(z7.m mVar, g8.a aVar, Class cls, boolean z) throws SecurityException {
        boolean z4;
        Method method;
        List listAsList;
        String strB;
        ArrayList<String> arrayListSingletonList;
        int i10;
        g8.a aVar2;
        String str;
        Field field;
        int i11;
        z7.a0 a0VarC;
        if (cls.isInterface()) {
            return x.f2962c;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        g8.a aVar3 = aVar;
        Class cls2 = cls;
        while (cls2 != Object.class) {
            Field[] declaredFields = cls2.getDeclaredFields();
            if (cls2 != cls && declaredFields.length > 0) {
                b8.h.f(this.f2976e);
            }
            int length = declaredFields.length;
            boolean z10 = false;
            int i12 = 0;
            while (true) {
                Type type = aVar3.f6122b;
                if (i12 < length) {
                    Field field2 = declaredFields[i12];
                    boolean zE = e(field2, true);
                    boolean zE2 = e(field2, z10);
                    if (zE || zE2) {
                        if (!z) {
                            z4 = zE2;
                            method = null;
                        } else if (Modifier.isStatic(field2.getModifiers())) {
                            method = null;
                            z4 = false;
                        } else {
                            Method methodE = e8.c.f4819a.E(cls2, field2);
                            e8.c.f(methodE);
                            if (methodE.getAnnotation(a8.b.class) != null && field2.getAnnotation(a8.b.class) == null) {
                                throw new z7.q(g.b.A("@SerializedName on ", e8.c.d(methodE, z10), " is not supported"));
                            }
                            z4 = zE2;
                            method = methodE;
                        }
                        if (method == null) {
                            e8.c.f(field2);
                        }
                        Type typeK = b8.h.k(type, cls2, field2.getGenericType(), new HashMap());
                        a8.b bVar = (a8.b) field2.getAnnotation(a8.b.class);
                        if (bVar == null) {
                            strB = this.f2973b.b(field2);
                            listAsList = Collections.emptyList();
                        } else {
                            String strValue = bVar.value();
                            listAsList = Arrays.asList(bVar.alternate());
                            strB = strValue;
                        }
                        if (listAsList.isEmpty()) {
                            arrayListSingletonList = Collections.singletonList(strB);
                            i10 = 0;
                        } else {
                            ArrayList arrayList = new ArrayList(listAsList.size() + 1);
                            arrayList.add(strB);
                            arrayList.addAll(listAsList);
                            arrayListSingletonList = arrayList;
                            i10 = 0;
                        }
                        String str2 = (String) arrayListSingletonList.get(i10);
                        g8.a aVar4 = new g8.a(typeK);
                        Class cls3 = aVar4.f6121a;
                        boolean z11 = (cls3 instanceof Class) && cls3.isPrimitive();
                        int modifiers = field2.getModifiers();
                        boolean z12 = Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers);
                        a8.a aVar5 = (a8.a) field2.getAnnotation(a8.a.class);
                        if (aVar5 != null) {
                            aVar2 = aVar4;
                            str = str2;
                            field = field2;
                            i11 = i12;
                            a0VarC = this.f2975d.b(this.f2972a, mVar, aVar2, aVar5, false);
                        } else {
                            aVar2 = aVar4;
                            str = str2;
                            field = field2;
                            i11 = i12;
                            a0VarC = null;
                        }
                        boolean z13 = a0VarC != null;
                        g8.a aVar6 = aVar2;
                        if (a0VarC == null) {
                            a0VarC = mVar.c(aVar6);
                        }
                        u uVar = new u(str, field, false, method, zE ? z13 ? a0VarC : new b0(mVar, a0VarC, aVar6.f6122b) : a0VarC, a0VarC, z11, z12);
                        if (z4) {
                            for (String str3 : arrayListSingletonList) {
                                u uVar2 = (u) linkedHashMap.put(str3, uVar);
                                if (uVar2 != null) {
                                    c(cls, str3, uVar2.f2949b, field);
                                    throw null;
                                }
                            }
                        }
                        Field field3 = field;
                        if (zE) {
                            String str4 = str;
                            u uVar3 = (u) linkedHashMap2.put(str4, uVar);
                            if (uVar3 != null) {
                                c(cls, str4, uVar3.f2949b, field3);
                                throw null;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        i11 = i12;
                    }
                    i12 = i11 + 1;
                    z10 = false;
                }
            }
        }
        return new x(new ArrayList(linkedHashMap2.values()), linkedHashMap);
    }

    public final boolean e(Field field, boolean z) {
        boolean z4;
        b8.d dVar = this.f2974c;
        dVar.getClass();
        if ((field.getModifiers() & 136) != 0 || field.isSynthetic() || dVar.b(field.getType(), z)) {
            z4 = true;
        } else {
            List list = z ? dVar.f2621a : dVar.f2622b;
            if (!list.isEmpty()) {
                Iterator it = list.iterator();
                if (it.hasNext()) {
                    throw l2.z.d(it);
                }
            }
            z4 = false;
        }
        return !z4;
    }
}
