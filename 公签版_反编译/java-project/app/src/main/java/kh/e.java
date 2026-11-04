package kh;

import android.os.Looper;
import androidx.fragment.app.b0;
import ha.j2;
import ha.l2;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import org.greenrobot.eventbus.android.AndroidComponentsImpl;

/* loaded from: classes3.dex */
public final class e {

    /* renamed from: p, reason: collision with root package name */
    public static volatile e f10331p;

    /* renamed from: q, reason: collision with root package name */
    public static final f f10332q = new f();
    public static final HashMap r = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f10333a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f10334b;

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f10335c;

    /* renamed from: d, reason: collision with root package name */
    public final b f10336d = new b(0);

    /* renamed from: e, reason: collision with root package name */
    public final l2 f10337e;

    /* renamed from: f, reason: collision with root package name */
    public final g f10338f;

    /* renamed from: g, reason: collision with root package name */
    public final a f10339g;

    /* renamed from: h, reason: collision with root package name */
    public final y7.b f10340h;

    /* renamed from: i, reason: collision with root package name */
    public final m f10341i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f10342j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f10343k;
    public final boolean l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f10344m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f10345n;

    /* renamed from: o, reason: collision with root package name */
    public final j2 f10346o;

    public e() {
        f10332q.getClass();
        AndroidComponentsImpl androidComponentsImpl = AndroidComponentsImpl.f12500c;
        this.f10346o = androidComponentsImpl != null ? androidComponentsImpl.f12501a : new j2(16);
        this.f10333a = new HashMap();
        this.f10334b = new HashMap();
        this.f10335c = new ConcurrentHashMap();
        l2 l2Var = androidComponentsImpl != null ? androidComponentsImpl.f12502b : null;
        this.f10337e = l2Var;
        this.f10338f = l2Var != null ? new g(this, Looper.getMainLooper()) : null;
        this.f10339g = new a(this);
        this.f10340h = new y7.b(this);
        this.f10341i = new m();
        this.f10342j = true;
        this.f10343k = true;
        this.l = true;
        this.f10344m = true;
        this.f10345n = true;
        ExecutorService executorService = f.f10347a;
    }

    public static void a(ArrayList arrayList, Class[] clsArr) {
        for (Class cls : clsArr) {
            if (!arrayList.contains(cls)) {
                arrayList.add(cls);
                a(arrayList, cls.getInterfaces());
            }
        }
    }

    public static e b() {
        e eVar = f10331p;
        if (eVar == null) {
            synchronized (e.class) {
                try {
                    eVar = f10331p;
                    if (eVar == null) {
                        eVar = new e();
                        f10331p = eVar;
                    }
                } finally {
                }
            }
        }
        return eVar;
    }

    public final void c(Object obj, n nVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            nVar.f10370b.f10361a.invoke(nVar.f10369a, obj);
        } catch (IllegalAccessException e7) {
            throw new IllegalStateException("Unexpected exception", e7);
        } catch (InvocationTargetException e10) {
            Throwable cause = e10.getCause();
            boolean z = obj instanceof k;
            boolean z4 = this.f10342j;
            j2 j2Var = this.f10346o;
            if (!z) {
                if (z4) {
                    j2Var.g(Level.SEVERE, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + nVar.f10369a.getClass(), cause);
                }
                if (this.l) {
                    f(new k(cause, obj, nVar.f10369a));
                    return;
                }
                return;
            }
            if (z4) {
                Level level = Level.SEVERE;
                j2Var.g(level, "SubscriberExceptionEvent subscriber " + nVar.f10369a.getClass() + " threw an exception", cause);
                k kVar = (k) obj;
                j2Var.g(level, "Initial event " + kVar.f10359b + " caused exception in " + kVar.f10360c, kVar.f10358a);
            }
        }
    }

    public final void d(i iVar) {
        Object obj = iVar.f10355a;
        n nVar = iVar.f10356b;
        iVar.f10355a = null;
        iVar.f10356b = null;
        iVar.f10357c = null;
        ArrayList arrayList = i.f10354d;
        synchronized (arrayList) {
            if (arrayList.size() < 10000) {
                arrayList.add(iVar);
            }
        }
        if (nVar.f10371c) {
            c(obj, nVar);
        }
    }

    public final synchronized boolean e(Object obj) {
        return this.f10334b.containsKey(obj);
    }

    public final void f(Object obj) {
        d dVar = (d) this.f10336d.get();
        ArrayList arrayList = dVar.f10327a;
        arrayList.add(obj);
        if (dVar.f10328b) {
            return;
        }
        dVar.f10329c = this.f10337e == null || Looper.getMainLooper() == Looper.myLooper();
        dVar.f10328b = true;
        while (!arrayList.isEmpty()) {
            try {
                g(arrayList.remove(0), dVar);
            } finally {
                dVar.f10328b = false;
                dVar.f10329c = false;
            }
        }
    }

    public final void g(Object obj, d dVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean zH;
        List list;
        Class<?> cls = obj.getClass();
        if (this.f10345n) {
            HashMap map = r;
            synchronized (map) {
                try {
                    List list2 = (List) map.get(cls);
                    list = list2;
                    if (list2 == null) {
                        ArrayList arrayList = new ArrayList();
                        for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                            arrayList.add(superclass);
                            a(arrayList, superclass.getInterfaces());
                        }
                        r.put(cls, arrayList);
                        list = arrayList;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            int size = list.size();
            zH = false;
            for (int i10 = 0; i10 < size; i10++) {
                zH |= h(obj, dVar, (Class) list.get(i10));
            }
        } else {
            zH = h(obj, dVar, cls);
        }
        if (zH) {
            return;
        }
        if (this.f10343k) {
            this.f10346o.f(Level.FINE, "No subscribers registered for event " + cls);
        }
        if (!this.f10344m || cls == h.class || cls == k.class) {
            return;
        }
        f(new h(obj));
    }

    public final boolean h(Object obj, d dVar, Class cls) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        CopyOnWriteArrayList copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = (CopyOnWriteArrayList) this.f10333a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            n nVar = (n) it.next();
            dVar.f10330d = obj;
            i(nVar, obj, dVar.f10329c);
        }
        return true;
    }

    public final void i(n nVar, Object obj, boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i10 = c.f10326a[nVar.f10370b.f10362b.ordinal()];
        if (i10 == 1) {
            c(obj, nVar);
            return;
        }
        g gVar = this.f10338f;
        if (i10 == 2) {
            if (z) {
                c(obj, nVar);
                return;
            } else {
                gVar.a(obj, nVar);
                return;
            }
        }
        if (i10 == 3) {
            if (gVar != null) {
                gVar.a(obj, nVar);
                return;
            } else {
                c(obj, nVar);
                return;
            }
        }
        if (i10 != 4) {
            if (i10 != 5) {
                throw new IllegalStateException("Unknown thread mode: " + nVar.f10370b.f10362b);
            }
            y7.b bVar = this.f10340h;
            bVar.getClass();
            ((kf.d) bVar.f18972b).v(i.a(obj, nVar));
            ((e) bVar.f18973c).getClass();
            f.f10347a.execute(bVar);
            return;
        }
        if (!z) {
            c(obj, nVar);
            return;
        }
        a aVar = this.f10339g;
        aVar.getClass();
        i iVarA = i.a(obj, nVar);
        synchronized (aVar) {
            try {
                aVar.f10322a.v(iVarA);
                if (!aVar.f10324c) {
                    aVar.f10324c = true;
                    aVar.f10323b.getClass();
                    f.f10347a.execute(aVar);
                }
            } finally {
            }
        }
    }

    public final void j(Object obj) {
        Method[] methods;
        j jVar;
        boolean zA;
        if (q4.a.C()) {
            try {
                AndroidComponentsImpl androidComponentsImpl = AndroidComponentsImpl.f12500c;
            } catch (ClassNotFoundException unused) {
                throw new RuntimeException("It looks like you are using EventBus on Android, make sure to add the \"eventbus\" Android library to your dependencies.");
            }
        }
        Class<?> cls = obj.getClass();
        this.f10341i.getClass();
        ConcurrentHashMap concurrentHashMap = m.f10367a;
        List list = (List) concurrentHashMap.get(cls);
        List list2 = list;
        if (list == null) {
            dg.a aVarB = m.b();
            aVarB.f4642f = cls;
            char c7 = 0;
            aVarB.f4637a = false;
            while (true) {
                Class cls2 = (Class) aVarB.f4642f;
                if (cls2 != null) {
                    try {
                        try {
                            methods = cls2.getDeclaredMethods();
                        } catch (LinkageError e7) {
                            throw new b0(7, g.b.j("Could not inspect methods of ".concat(((Class) aVarB.f4642f).getName()), ". Please make this class visible to EventBus annotation processor to avoid reflection."), e7);
                        }
                    } catch (Throwable unused2) {
                        methods = ((Class) aVarB.f4642f).getMethods();
                        aVarB.f4637a = true;
                    }
                    int length = methods.length;
                    int i10 = 0;
                    while (i10 < length) {
                        Method method = methods[i10];
                        int modifiers = method.getModifiers();
                        if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                            Class<?>[] parameterTypes = method.getParameterTypes();
                            if (parameterTypes.length == 1 && (jVar = (j) method.getAnnotation(j.class)) != null) {
                                Class<?> cls3 = parameterTypes[c7];
                                HashMap map = (HashMap) aVarB.f4639c;
                                Object objPut = map.put(cls3, method);
                                if (objPut == null) {
                                    zA = true;
                                } else {
                                    if (objPut instanceof Method) {
                                        if (!aVarB.a((Method) objPut, cls3)) {
                                            throw new IllegalStateException();
                                        }
                                        map.put(cls3, aVarB);
                                    }
                                    zA = aVarB.a(method, cls3);
                                }
                                if (zA) {
                                    ((ArrayList) aVarB.f4638b).add(new l(method, cls3, jVar.threadMode(), jVar.priority(), jVar.sticky()));
                                }
                            }
                        }
                        i10++;
                        c7 = 0;
                    }
                    if (aVarB.f4637a) {
                        aVarB.f4642f = null;
                    } else {
                        Class superclass = ((Class) aVarB.f4642f).getSuperclass();
                        aVarB.f4642f = superclass;
                        String name = superclass.getName();
                        if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.") || name.startsWith("androidx.")) {
                            aVarB.f4642f = null;
                        }
                    }
                    c7 = 0;
                } else {
                    ArrayList arrayListA = m.a(aVarB);
                    if (arrayListA.isEmpty()) {
                        throw new b0(android.support.v4.media.session.a.r("Subscriber ", cls, " and its super classes have no public methods with the @Subscribe annotation"), 7);
                    }
                    concurrentHashMap.put(cls, arrayListA);
                    list2 = arrayListA;
                }
            }
        }
        synchronized (this) {
            try {
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    k(obj, (l) it.next());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void k(Object obj, l lVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object value;
        Class cls = lVar.f10363c;
        n nVar = new n(obj, lVar);
        HashMap map = this.f10333a;
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) map.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList();
            map.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(nVar)) {
            throw new b0("Subscriber " + obj.getClass() + " already registered to event " + cls, 7);
        }
        int size = copyOnWriteArrayList.size();
        for (int i10 = 0; i10 <= size; i10++) {
            if (i10 != size) {
                if (lVar.f10364d <= ((n) copyOnWriteArrayList.get(i10)).f10370b.f10364d) {
                }
            }
            copyOnWriteArrayList.add(i10, nVar);
            break;
        }
        HashMap map2 = this.f10334b;
        List arrayList = (List) map2.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList();
            map2.put(obj, arrayList);
        }
        arrayList.add(cls);
        if (lVar.f10365e) {
            ConcurrentHashMap concurrentHashMap = this.f10335c;
            l2 l2Var = this.f10337e;
            if (!this.f10345n) {
                Object obj2 = concurrentHashMap.get(cls);
                if (obj2 != null) {
                    i(nVar, obj2, l2Var == null || Looper.getMainLooper() == Looper.myLooper());
                    return;
                }
                return;
            }
            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                if (cls.isAssignableFrom((Class) entry.getKey()) && (value = entry.getValue()) != null) {
                    i(nVar, value, l2Var == null || Looper.getMainLooper() == Looper.myLooper());
                }
            }
        }
    }

    public final synchronized void l(Object obj) {
        try {
            List list = (List) this.f10334b.get(obj);
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    List list2 = (List) this.f10333a.get((Class) it.next());
                    if (list2 != null) {
                        int size = list2.size();
                        int i10 = 0;
                        while (i10 < size) {
                            n nVar = (n) list2.get(i10);
                            if (nVar.f10369a == obj) {
                                nVar.f10371c = false;
                                list2.remove(i10);
                                i10--;
                                size--;
                            }
                            i10++;
                        }
                    }
                }
                this.f10334b.remove(obj);
            } else {
                this.f10346o.f(Level.WARNING, "Subscriber to unregister was not registered before: " + obj.getClass());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final String toString() {
        return "EventBus[indexCount=0, eventInheritance=" + this.f10345n + "]";
    }
}
