package z7;

import c8.f1;
import c8.v0;
import c8.x0;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.EOFException;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: h, reason: collision with root package name */
    public static final i f19454h = i.f19446d;

    /* renamed from: i, reason: collision with root package name */
    public static final h f19455i = h.f19444a;

    /* renamed from: j, reason: collision with root package name */
    public static final y f19456j = y.f19482a;

    /* renamed from: k, reason: collision with root package name */
    public static final y f19457k = y.f19483b;

    /* renamed from: a, reason: collision with root package name */
    public final ThreadLocal f19458a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f19459b;

    /* renamed from: c, reason: collision with root package name */
    public final com.bumptech.glide.manager.s f19460c;

    /* renamed from: d, reason: collision with root package name */
    public final c8.l f19461d;

    /* renamed from: e, reason: collision with root package name */
    public final List f19462e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f19463f;

    /* renamed from: g, reason: collision with root package name */
    public final i f19464g;

    /* JADX WARN: Illegal instructions before constructor call */
    public m() {
        b8.d dVar = b8.d.f2620c;
        Map mapEmptyMap = Collections.emptyMap();
        Collections.emptyList();
        Collections.emptyList();
        List listEmptyList = Collections.emptyList();
        List listEmptyList2 = Collections.emptyList();
        this(dVar, f19455i, mapEmptyMap, true, f19454h, true, 1, listEmptyList, f19456j, f19457k, listEmptyList2);
    }

    public static void a(double d10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10)) {
            throw new IllegalArgumentException(d10 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public final Object b(p pVar) {
        boolean z = false;
        g8.a aVar = new g8.a(s.class);
        if (pVar == null) {
            return null;
        }
        c8.o oVar = new c8.o(pVar);
        int i10 = oVar.f6695p;
        if (i10 == 2) {
            oVar.f6695p = 1;
        }
        try {
            try {
                try {
                    try {
                        oVar.e0();
                    } catch (EOFException e7) {
                        e = e7;
                        z = true;
                    }
                    try {
                        a0 a0VarC = c(aVar);
                        Class cls = aVar.f6121a;
                        Object objB = a0VarC.b(oVar);
                        Class clsM = b8.h.m(cls);
                        if (objB != null && !clsM.isInstance(objB)) {
                            throw new ClassCastException("Type adapter '" + a0VarC + "' returned wrong type; requested " + cls + " but got instance of " + objB.getClass() + "\nVerify that the adapter was registered for the correct type.");
                        }
                        return objB;
                    } catch (EOFException e10) {
                        e = e10;
                        if (z) {
                            return null;
                        }
                        throw new q(e);
                    }
                } finally {
                    oVar.h0(i10);
                }
            } catch (AssertionError e11) {
                String str = "AssertionError (GSON 2.13.1): " + e11.getMessage();
                try {
                    throw ((AssertionError) AssertionError.class.getDeclaredConstructor(String.class, Throwable.class).newInstance(str, e11));
                } catch (Exception unused) {
                    throw new AssertionError(str);
                }
            }
        } catch (IOException e12) {
            throw new q(e12);
        } catch (IllegalStateException e13) {
            throw new q(e13);
        }
    }

    public final a0 c(g8.a aVar) {
        boolean z;
        ConcurrentHashMap concurrentHashMap = this.f19459b;
        a0 a0Var = (a0) concurrentHashMap.get(aVar);
        if (a0Var != null) {
            return a0Var;
        }
        ThreadLocal threadLocal = this.f19458a;
        Map map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set(map);
            z = true;
        } else {
            a0 a0Var2 = (a0) map.get(aVar);
            if (a0Var2 != null) {
                return a0Var2;
            }
            z = false;
        }
        try {
            l lVar = new l();
            map.put(aVar, lVar);
            Iterator it = this.f19462e.iterator();
            a0 a0VarA = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                a0VarA = ((b0) it.next()).a(this, aVar);
                if (a0VarA != null) {
                    if (lVar.f19453a != null) {
                        throw new AssertionError("Delegate is already set");
                    }
                    lVar.f19453a = a0VarA;
                    map.put(aVar, a0VarA);
                }
            }
            if (z) {
                threadLocal.remove();
            }
            if (a0VarA != null) {
                if (z) {
                    concurrentHashMap.putAll(map);
                }
                return a0VarA;
            }
            throw new IllegalArgumentException("GSON (2.13.1) cannot handle " + aVar);
        } catch (Throwable th2) {
            if (z) {
                threadLocal.remove();
            }
            throw th2;
        }
    }

    public final h8.b d(Writer writer) {
        h8.b bVar = new h8.b(writer);
        bVar.R(this.f19464g);
        bVar.f6706i = this.f19463f;
        bVar.S(2);
        bVar.f6708k = false;
        return bVar;
    }

    public final String e(p pVar) {
        StringWriter stringWriter = new StringWriter();
        try {
            f(d(stringWriter), pVar);
            return stringWriter.toString();
        } catch (IOException e7) {
            throw new q(e7);
        }
    }

    public final void f(h8.b bVar, p pVar) {
        int i10 = bVar.f6705h;
        boolean z = bVar.f6706i;
        boolean z4 = bVar.f6708k;
        bVar.f6706i = this.f19463f;
        bVar.f6708k = false;
        if (i10 == 2) {
            bVar.f6705h = 1;
        }
        try {
            try {
                try {
                    f1.z.getClass();
                    c8.m.e(bVar, pVar);
                    bVar.S(i10);
                    bVar.f6706i = z;
                    bVar.f6708k = z4;
                } catch (IOException e7) {
                    throw new q(e7);
                }
            } catch (AssertionError e10) {
                String str = "AssertionError (GSON 2.13.1): " + e10.getMessage();
                try {
                } catch (Exception unused) {
                    throw new AssertionError(str);
                }
            }
        } catch (Throwable th2) {
            bVar.S(i10);
            bVar.f6706i = z;
            bVar.f6708k = z4;
            throw th2;
        }
    }

    public final void g(Object obj, Class cls, h8.b bVar) {
        a0 a0VarC = c(new g8.a(cls));
        int i10 = bVar.f6705h;
        if (i10 == 2) {
            bVar.f6705h = 1;
        }
        boolean z = bVar.f6706i;
        boolean z4 = bVar.f6708k;
        bVar.f6706i = this.f19463f;
        bVar.f6708k = false;
        try {
            try {
                a0VarC.c(bVar, obj);
            } catch (IOException e7) {
                throw new q(e7);
            } catch (AssertionError e10) {
                String str = "AssertionError (GSON 2.13.1): " + e10.getMessage();
                try {
                } catch (Exception unused) {
                    throw new AssertionError(str);
                }
            }
        } finally {
            bVar.S(i10);
            bVar.f6706i = z;
            bVar.f6708k = z4;
        }
    }

    public final String toString() {
        return "{serializeNulls:false,factories:" + this.f19462e + ",instanceCreators:" + this.f19460c + "}";
    }

    public m(b8.d dVar, h hVar, Map map, boolean z, i iVar, boolean z4, int i10, List list, y yVar, y yVar2, List list2) {
        c8.q qVar;
        a0 jVar;
        c8.q qVar2;
        this.f19458a = new ThreadLocal();
        this.f19459b = new ConcurrentHashMap();
        com.bumptech.glide.manager.s sVar = new com.bumptech.glide.manager.s(map, z4, list2);
        this.f19460c = sVar;
        this.f19463f = z;
        this.f19464g = iVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(f1.A);
        if (yVar == y.f19482a) {
            qVar = c8.s.f2944c;
        } else {
            qVar = new c8.q(1, yVar);
        }
        arrayList.add(qVar);
        arrayList.add(dVar);
        arrayList.addAll(list);
        arrayList.add(f1.f2909p);
        arrayList.add(f1.f2901g);
        arrayList.add(f1.f2898d);
        arrayList.add(f1.f2899e);
        arrayList.add(f1.f2900f);
        if (i10 == 1) {
            jVar = f1.f2905k;
        } else {
            jVar = new j();
        }
        arrayList.add(new x0(Long.TYPE, Long.class, jVar));
        arrayList.add(new x0(Double.TYPE, Double.class, new c8.t(1)));
        arrayList.add(new x0(Float.TYPE, Float.class, new c8.t(2)));
        if (yVar2 == y.f19483b) {
            qVar2 = c8.r.f2942b;
        } else {
            qVar2 = new c8.q(0, new c8.r(yVar2));
        }
        arrayList.add(qVar2);
        arrayList.add(f1.f2902h);
        arrayList.add(f1.f2903i);
        arrayList.add(new v0(AtomicLong.class, new k(jVar, 0).a(), 0));
        arrayList.add(new v0(AtomicLongArray.class, new k(jVar, 1).a(), 0));
        arrayList.add(f1.f2904j);
        arrayList.add(f1.l);
        arrayList.add(f1.f2910q);
        arrayList.add(f1.r);
        arrayList.add(new v0(BigDecimal.class, f1.f2906m, 0));
        arrayList.add(new v0(BigInteger.class, f1.f2907n, 0));
        arrayList.add(new v0(b8.j.class, f1.f2908o, 0));
        arrayList.add(f1.f2911s);
        arrayList.add(f1.f2912t);
        arrayList.add(f1.f2914v);
        arrayList.add(f1.f2915w);
        arrayList.add(f1.f2917y);
        arrayList.add(f1.f2913u);
        arrayList.add(f1.f2896b);
        arrayList.add(c8.h.f2920c);
        arrayList.add(f1.f2916x);
        if (f8.h.f5640a) {
            arrayList.add(f8.h.f5644e);
            arrayList.add(f8.h.f5643d);
            arrayList.add(f8.h.f5645f);
        }
        arrayList.add(c8.b.f2884c);
        arrayList.add(f1.f2895a);
        arrayList.add(new c8.d(sVar, 0));
        arrayList.add(new c8.d(sVar, 1));
        c8.l lVar = new c8.l(sVar);
        this.f19461d = lVar;
        arrayList.add(lVar);
        arrayList.add(f1.B);
        arrayList.add(new c8.z(sVar, hVar, dVar, lVar, list2));
        this.f19462e = Collections.unmodifiableList(arrayList);
    }
}
