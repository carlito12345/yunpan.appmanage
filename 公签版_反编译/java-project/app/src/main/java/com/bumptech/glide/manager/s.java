package com.bumptech.glide.manager;

import a2.u0;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcat;
import com.yunpan.appmanage.util.a0;
import ha.y6;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* loaded from: classes.dex */
public final class s implements y6 {

    /* renamed from: e, reason: collision with root package name */
    public static volatile s f3409e;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3410a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3411b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f3412c;

    /* renamed from: d, reason: collision with root package name */
    public Object f3413d;

    public /* synthetic */ s(int i10, Object obj, Object obj2, boolean z) {
        this.f3410a = i10;
        this.f3413d = obj;
        this.f3411b = z;
        this.f3412c = obj2;
    }

    public static Bundle a(s sVar) {
        sVar.getClass();
        Bundle bundle = new Bundle();
        bundle.putParcelable("shizuku:user-service-arg-component", (ComponentName) sVar.f3412c);
        bundle.putBoolean("shizuku:user-service-arg-debuggable", false);
        bundle.putInt("shizuku:user-service-arg-version-code", 1);
        bundle.putBoolean("shizuku:user-service-arg-daemon", sVar.f3411b);
        bundle.putBoolean("shizuku:user-service-arg-use-32-bit-app-process", false);
        String str = (String) sVar.f3413d;
        Objects.requireNonNull(str, "process name suffix must not be null");
        bundle.putString("shizuku:user-service-arg-process-name", str);
        return bundle;
    }

    public static String b(Class cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName());
        }
        if (!Modifier.isAbstract(modifiers)) {
            return null;
        }
        return "Abstract classes can't be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: " + cls.getName() + "\nSee " + "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("r8-abstract-class");
    }

    public static s e(Context context) {
        if (f3409e == null) {
            synchronized (s.class) {
                try {
                    if (f3409e == null) {
                        f3409e = new s(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return f3409e;
    }

    public boolean c(w5.c cVar) {
        boolean z = true;
        if (cVar == null) {
            return true;
        }
        boolean zRemove = ((Set) this.f3412c).remove(cVar);
        if (!((HashSet) this.f3413d).remove(cVar) && !zRemove) {
            z = false;
        }
        if (z) {
            cVar.clear();
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0109  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public b8.o d(g8.a aVar, boolean z) throws NoSuchMethodException, SecurityException {
        String str;
        b8.o aVar2;
        int i10 = 3;
        int i11 = 2;
        final int i12 = 1;
        final int i13 = 0;
        Map map = (Map) this.f3412c;
        final Type type = aVar.f6122b;
        if (map.get(type) != null) {
            throw new ClassCastException();
        }
        Class cls = aVar.f6121a;
        if (map.get(cls) != null) {
            throw new ClassCastException();
        }
        u0 u0Var = null;
        b8.o oVar = EnumSet.class.isAssignableFrom(cls) ? new b8.o() { // from class: b8.b
            @Override // b8.o
            public final Object c() {
                switch (i13) {
                    case 0:
                        Type type2 = type;
                        if (!(type2 instanceof ParameterizedType)) {
                            throw new z7.q("Invalid EnumSet type: " + type2.toString());
                        }
                        Type type3 = ((ParameterizedType) type2).getActualTypeArguments()[0];
                        if (type3 instanceof Class) {
                            return EnumSet.noneOf((Class) type3);
                        }
                        throw new z7.q("Invalid EnumSet type: " + type2.toString());
                    default:
                        Type type4 = type;
                        if (!(type4 instanceof ParameterizedType)) {
                            throw new z7.q("Invalid EnumMap type: " + type4.toString());
                        }
                        Type type5 = ((ParameterizedType) type4).getActualTypeArguments()[0];
                        if (type5 instanceof Class) {
                            return new EnumMap((Class) type5);
                        }
                        throw new z7.q("Invalid EnumMap type: " + type4.toString());
                }
            }
        } : cls == EnumMap.class ? new b8.o() { // from class: b8.b
            @Override // b8.o
            public final Object c() {
                switch (i12) {
                    case 0:
                        Type type2 = type;
                        if (!(type2 instanceof ParameterizedType)) {
                            throw new z7.q("Invalid EnumSet type: " + type2.toString());
                        }
                        Type type3 = ((ParameterizedType) type2).getActualTypeArguments()[0];
                        if (type3 instanceof Class) {
                            return EnumSet.noneOf((Class) type3);
                        }
                        throw new z7.q("Invalid EnumSet type: " + type2.toString());
                    default:
                        Type type4 = type;
                        if (!(type4 instanceof ParameterizedType)) {
                            throw new z7.q("Invalid EnumMap type: " + type4.toString());
                        }
                        Type type5 = ((ParameterizedType) type4).getActualTypeArguments()[0];
                        if (type5 instanceof Class) {
                            return new EnumMap((Class) type5);
                        }
                        throw new z7.q("Invalid EnumMap type: " + type4.toString());
                }
            }
        } : null;
        if (oVar != null) {
            return oVar;
        }
        b8.h.f((List) this.f3413d);
        if (Modifier.isAbstract(cls.getModifiers())) {
            aVar2 = null;
        } else {
            try {
                Constructor declaredConstructor = cls.getDeclaredConstructor(null);
                p000if.a aVar3 = e8.c.f4819a;
                try {
                    declaredConstructor.setAccessible(true);
                    str = null;
                } catch (Exception e7) {
                    str = "Failed making constructor '" + e8.c.b(declaredConstructor) + "' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: " + e7.getMessage() + e8.c.e(e7);
                }
                aVar2 = str != null ? new b8.a(str, i12) : new a1.d(i11, declaredConstructor);
            } catch (NoSuchMethodException unused) {
            }
        }
        if (aVar2 != null) {
            return aVar2;
        }
        if (Collection.class.isAssignableFrom(cls)) {
            if (cls.isAssignableFrom(ArrayList.class)) {
                u0Var = new u0(10);
            } else if (cls.isAssignableFrom(LinkedHashSet.class)) {
                u0Var = new u0(11);
            } else if (cls.isAssignableFrom(TreeSet.class)) {
                u0Var = new u0(12);
            } else if (cls.isAssignableFrom(ArrayDeque.class)) {
                u0Var = new u0(13);
            }
        } else if (Map.class.isAssignableFrom(cls)) {
            if (cls.isAssignableFrom(b8.n.class)) {
                if (type instanceof ParameterizedType) {
                    Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
                    if (actualTypeArguments.length != 0 && b8.h.h(actualTypeArguments[0]) == String.class) {
                    }
                }
                u0Var = new u0(5);
            } else if (cls.isAssignableFrom(LinkedHashMap.class)) {
                u0Var = new u0(6);
            } else if (cls.isAssignableFrom(TreeMap.class)) {
                u0Var = new u0(7);
            } else if (cls.isAssignableFrom(ConcurrentHashMap.class)) {
                u0Var = new u0(8);
            } else if (cls.isAssignableFrom(ConcurrentSkipListMap.class)) {
                u0Var = new u0(9);
            }
        }
        if (u0Var != null) {
            return u0Var;
        }
        String strB = b(cls);
        if (strB != null) {
            return new b8.a(strB, i13);
        }
        if (!z) {
            return new b8.a(android.support.v4.media.session.a.r("Unable to create instance of ", cls, "; Register an InstanceCreator or a TypeAdapter for this type."), i11);
        }
        if (this.f3411b) {
            return new a1.d(i10, cls);
        }
        String strR = android.support.v4.media.session.a.r("Unable to create instance of ", cls, "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.");
        if (cls.getDeclaredConstructors().length == 0) {
            strR = g.b.j(strR, " Or adjust your R8 configuration to keep the no-args constructor of the class.");
        }
        return new b8.a(strR, i10);
    }

    public void f() {
        Iterator it = a6.q.e((Set) this.f3412c).iterator();
        while (it.hasNext()) {
            w5.c cVar = (w5.c) it.next();
            if (!cVar.j() && !cVar.f()) {
                cVar.clear();
                if (this.f3411b) {
                    ((HashSet) this.f3413d).add(cVar);
                } else {
                    cVar.h();
                }
            }
        }
    }

    @Override // ha.y6
    public void n(String str, boolean z) {
        if (z) {
            File file = (File) this.f3412c;
            boolean z4 = this.f3411b;
            ActivityKeyMapLogcat activityKeyMapLogcat = (ActivityKeyMapLogcat) this.f3413d;
            if (z4) {
                if (!q4.a.N(new File(file, str.concat(".json")), activityKeyMapLogcat.G)) {
                    a0.t("保存失败");
                    return;
                }
                MyDb.get().addFile_thread(file + "/" + str + ".json");
                a0.v("成功：保存在【Download】目录下", false);
                return;
            }
            z7.s sVarN = activityKeyMapLogcat.G.a();
            z7.o oVarP = sVarN.p("keys");
            for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                oVarP.l(i10).g().j("click", new z7.o());
                oVarP.l(i10).g().j("doubleClick", new z7.o());
                oVarP.l(i10).g().j("longClick", new z7.o());
                oVarP.l(i10).g().j("zhClick", new z7.o());
            }
            if (!q4.a.M(new File(file, str.concat(".json")), sVarN.toString())) {
                a0.t("保存失败");
                return;
            }
            MyDb.get().addFile_thread(file + "/" + str + ".json");
            a0.v("成功：保存在【Download】目录下", false);
        }
    }

    public String toString() {
        switch (this.f3410a) {
            case 2:
                return ((Map) this.f3412c).toString();
            case 3:
                return super.toString() + "{numRequests=" + ((Set) this.f3412c).size() + ", isPaused=" + this.f3411b + "}";
            default:
                return super.toString();
        }
    }

    public s() {
        this.f3410a = 3;
        this.f3412c = Collections.newSetFromMap(new WeakHashMap());
        this.f3413d = new HashSet();
    }

    public s(androidx.activity.l lVar, vb.l lVar2) {
        this.f3410a = 1;
        this.f3412c = new Object();
        this.f3413d = new ArrayList();
    }

    public s(Map map, boolean z, List list) {
        this.f3410a = 2;
        this.f3412c = map;
        this.f3411b = z;
        this.f3413d = list;
    }

    public s(Context context) {
        Object rVar;
        this.f3410a = 0;
        this.f3413d = new HashSet();
        a6.i iVar = new a6.i(new androidx.emoji2.text.n(context, 1));
        m mVar = new m(this);
        if (Build.VERSION.SDK_INT >= 24) {
            rVar = new androidx.room.i(iVar, mVar);
        } else {
            rVar = new r(context, iVar, mVar);
        }
        this.f3412c = rVar;
    }

    public s(ComponentName componentName) {
        this.f3410a = 5;
        this.f3411b = true;
        this.f3412c = componentName;
    }
}
