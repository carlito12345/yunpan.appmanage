package j$.util.concurrent;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes2.dex */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, v {

    /* renamed from: g, reason: collision with root package name */
    static final int f9066g = Runtime.getRuntime().availableProcessors();

    /* renamed from: h, reason: collision with root package name */
    private static final j$.sun.misc.a f9067h;

    /* renamed from: i, reason: collision with root package name */
    private static final long f9068i;

    /* renamed from: j, reason: collision with root package name */
    private static final long f9069j;

    /* renamed from: k, reason: collision with root package name */
    private static final long f9070k;
    private static final long l;

    /* renamed from: m, reason: collision with root package name */
    private static final long f9071m;

    /* renamed from: n, reason: collision with root package name */
    private static final int f9072n;

    /* renamed from: o, reason: collision with root package name */
    private static final int f9073o;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 7249069246763182397L;

    /* renamed from: a, reason: collision with root package name */
    volatile transient l[] f9074a;

    /* renamed from: b, reason: collision with root package name */
    private volatile transient l[] f9075b;
    private volatile transient long baseCount;

    /* renamed from: c, reason: collision with root package name */
    private volatile transient c[] f9076c;
    private volatile transient int cellsBusy;

    /* renamed from: d, reason: collision with root package name */
    private transient i f9077d;

    /* renamed from: e, reason: collision with root package name */
    private transient s f9078e;

    /* renamed from: f, reason: collision with root package name */
    private transient e f9079f;
    private volatile transient int sizeCtl;
    private volatile transient int transferIndex;

    static final int i(int i10) {
        return (i10 ^ (i10 >>> 16)) & Integer.MAX_VALUE;
    }

    static {
        ObjectStreamField objectStreamField = new ObjectStreamField("segments", n[].class);
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{objectStreamField, new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        j$.sun.misc.a aVarH = j$.sun.misc.a.h();
        f9067h = aVarH;
        f9068i = aVarH.j(ConcurrentHashMap.class, "sizeCtl");
        f9069j = aVarH.j(ConcurrentHashMap.class, "transferIndex");
        f9070k = aVarH.j(ConcurrentHashMap.class, "baseCount");
        l = aVarH.j(ConcurrentHashMap.class, "cellsBusy");
        f9071m = aVarH.j(c.class, "value");
        f9072n = aVarH.a(l[].class);
        int iB = aVarH.b(l[].class);
        if (((iB - 1) & iB) != 0) {
            throw new ExceptionInInitializerError("array index scale not a power of two");
        }
        f9073o = 31 - Integer.numberOfLeadingZeros(iB);
    }

    private static final int l(int i10) {
        int iNumberOfLeadingZeros = (-1) >>> Integer.numberOfLeadingZeros(i10 - 1);
        if (iNumberOfLeadingZeros < 0) {
            return 1;
        }
        if (iNumberOfLeadingZeros >= 1073741824) {
            return 1073741824;
        }
        return 1 + iNumberOfLeadingZeros;
    }

    static Class c(Object obj) {
        Type[] actualTypeArguments;
        if (!(obj instanceof Comparable)) {
            return null;
        }
        Class<?> cls = obj.getClass();
        if (cls == String.class) {
            return cls;
        }
        Type[] genericInterfaces = cls.getGenericInterfaces();
        if (genericInterfaces == null) {
            return null;
        }
        for (Type type : genericInterfaces) {
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                if (parameterizedType.getRawType() == Comparable.class && (actualTypeArguments = parameterizedType.getActualTypeArguments()) != null && actualTypeArguments.length == 1 && actualTypeArguments[0] == cls) {
                    return cls;
                }
            }
        }
        return null;
    }

    static final l k(l[] lVarArr, int i10) {
        return (l) f9067h.g(lVarArr, (i10 << f9073o) + f9072n);
    }

    static final boolean b(l[] lVarArr, int i10, l lVar) {
        return f9067h.e(lVarArr, (i10 << f9073o) + f9072n, lVar);
    }

    static final void h(l[] lVarArr, int i10, l lVar) {
        f9067h.l(lVarArr, (i10 << f9073o) + f9072n, lVar);
    }

    public ConcurrentHashMap() {
    }

    public ConcurrentHashMap(int i10) {
        this(i10, 0.75f, 1);
    }

    public ConcurrentHashMap(Map<? extends K, ? extends V> map) {
        this.sizeCtl = 16;
        putAll(map);
    }

    public ConcurrentHashMap(int i10, float f10) {
        this(i10, f10, 1);
    }

    public ConcurrentHashMap(int i10, float f10, int i11) {
        if (f10 <= 0.0f || i10 < 0 || i11 <= 0) {
            throw new IllegalArgumentException();
        }
        double d10 = (i10 < i11 ? i11 : i10) / f10;
        Double.isNaN(d10);
        long j10 = (long) (d10 + 1.0d);
        this.sizeCtl = j10 >= 1073741824 ? 1073741824 : l((int) j10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long j10 = j();
        if (j10 < 0) {
            return 0;
        }
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return j() <= 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        int length;
        l lVarK;
        Object obj2;
        int i10 = i(obj.hashCode());
        l[] lVarArr = this.f9074a;
        if (lVarArr != null && (length = lVarArr.length) > 0 && (lVarK = k(lVarArr, (length - 1) & i10)) != null) {
            int i11 = lVarK.f9099a;
            if (i11 == i10) {
                Object obj3 = lVarK.f9100b;
                if (obj3 == obj || (obj3 != null && obj.equals(obj3))) {
                    return (V) lVarK.f9101c;
                }
            } else if (i11 < 0) {
                l lVarA = lVarK.a(obj, i10);
                if (lVarA != null) {
                    return (V) lVarA.f9101c;
                }
                return null;
            }
            while (true) {
                lVarK = lVarK.f9102d;
                if (lVarK == null) {
                    break;
                }
                if (lVarK.f9099a == i10 && ((obj2 = lVarK.f9100b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    break;
                }
            }
            return (V) lVarK.f9101c;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        obj.getClass();
        l[] lVarArr = this.f9074a;
        if (lVarArr != null) {
            p pVar = new p(lVarArr, lVarArr.length, 0, lVarArr.length);
            while (true) {
                l lVarA = pVar.a();
                if (lVarA == null) {
                    break;
                }
                Object obj2 = lVarA.f9101c;
                if (obj2 == obj) {
                    return true;
                }
                if (obj2 != null && obj.equals(obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k10, V v10) {
        return (V) f(k10, v10, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x006a, code lost:
    
        r7 = r6.f9101c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x006c, code lost:
    
        if (r11 != false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x006e, code lost:
    
        r6.f9101c = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00a5, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final Object f(Object obj, Object obj2, boolean z) {
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        if (obj == null || obj2 == null) {
            throw null;
        }
        int i10 = i(obj.hashCode());
        l[] lVarArrE = this.f9074a;
        int i11 = 0;
        while (true) {
            if (lVarArrE != null) {
                int length = lVarArrE.length;
                if (length != 0) {
                    int i12 = (length - 1) & i10;
                    l lVarK = k(lVarArrE, i12);
                    if (lVarK == null) {
                        if (b(lVarArrE, i12, new l(i10, obj, obj2))) {
                            break;
                        }
                    } else {
                        int i13 = lVarK.f9099a;
                        if (i13 == -1) {
                            lVarArrE = d(lVarArrE, lVarK);
                        } else {
                            if (z && i13 == i10 && (((obj5 = lVarK.f9100b) == obj || (obj5 != null && obj.equals(obj5))) && (obj6 = lVarK.f9101c) != null)) {
                                return obj6;
                            }
                            synchronized (lVarK) {
                                try {
                                    if (k(lVarArrE, i12) == lVarK) {
                                        if (i13 < 0) {
                                            if (lVarK instanceof q) {
                                                r rVarE = ((q) lVarK).e(i10, obj, obj2);
                                                if (rVarE != null) {
                                                    Object obj7 = rVarE.f9101c;
                                                    if (!z) {
                                                        rVarE.f9101c = obj2;
                                                    }
                                                    obj3 = obj7;
                                                } else {
                                                    obj3 = null;
                                                }
                                                i11 = 2;
                                            } else if (lVarK instanceof m) {
                                                break;
                                            }
                                        } else {
                                            i11 = 1;
                                            l lVar = lVarK;
                                            while (true) {
                                                if (lVar.f9099a == i10 && ((obj4 = lVar.f9100b) == obj || (obj4 != null && obj.equals(obj4)))) {
                                                    break;
                                                }
                                                l lVar2 = lVar.f9102d;
                                                if (lVar2 == null) {
                                                    lVar.f9102d = new l(i10, obj, obj2);
                                                    break;
                                                }
                                                i11++;
                                                lVar = lVar2;
                                            }
                                        }
                                    }
                                    obj3 = null;
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                            if (i11 != 0) {
                                if (i11 >= 8) {
                                    n(lVarArrE, i12);
                                }
                                if (obj3 != null) {
                                    return obj3;
                                }
                            }
                        }
                    }
                }
            }
            lVarArrE = e();
        }
        a(1L, i11);
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        o(map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            f(entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        return (V) g(obj, null, null);
    }

    final Object g(Object obj, Object obj2, Object obj3) {
        int length;
        int i10;
        l lVarK;
        boolean z;
        Object obj4;
        r rVarB;
        Object obj5;
        int i11 = i(obj.hashCode());
        l[] lVarArrD = this.f9074a;
        while (true) {
            if (lVarArrD == null || (length = lVarArrD.length) == 0 || (lVarK = k(lVarArrD, (i10 = (length - 1) & i11))) == null) {
                break;
            }
            int i12 = lVarK.f9099a;
            if (i12 == -1) {
                lVarArrD = d(lVarArrD, lVarK);
            } else {
                synchronized (lVarK) {
                    try {
                        if (k(lVarArrD, i10) == lVarK) {
                            z = true;
                            if (i12 >= 0) {
                                l lVar = null;
                                l lVar2 = lVarK;
                                while (true) {
                                    if (lVar2.f9099a != i11 || ((obj5 = lVar2.f9100b) != obj && (obj5 == null || !obj.equals(obj5)))) {
                                        l lVar3 = lVar2.f9102d;
                                        if (lVar3 == null) {
                                            break;
                                        }
                                        lVar = lVar2;
                                        lVar2 = lVar3;
                                    }
                                }
                                obj4 = lVar2.f9101c;
                                if (obj3 != null && obj3 != obj4 && (obj4 == null || !obj3.equals(obj4))) {
                                    obj4 = null;
                                } else if (obj2 != null) {
                                    lVar2.f9101c = obj2;
                                } else if (lVar != null) {
                                    lVar.f9102d = lVar2.f9102d;
                                } else {
                                    h(lVarArrD, i10, lVar2.f9102d);
                                }
                            } else if (lVarK instanceof q) {
                                q qVar = (q) lVarK;
                                r rVar = qVar.f9117e;
                                if (rVar != null && (rVarB = rVar.b(i11, obj, null)) != null) {
                                    obj4 = rVarB.f9101c;
                                    if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                        if (obj2 != null) {
                                            rVarB.f9101c = obj2;
                                        } else if (qVar.f(rVarB)) {
                                            h(lVarArrD, i10, p(qVar.f9118f));
                                        }
                                    }
                                }
                                obj4 = null;
                            } else if (lVarK instanceof m) {
                                throw new IllegalStateException("Recursive update");
                            }
                        }
                        z = false;
                        obj4 = null;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (z) {
                    if (obj4 != null) {
                        if (obj2 == null) {
                            a(-1L, -1);
                        }
                        return obj4;
                    }
                }
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        l lVarK;
        l lVar;
        l[] lVarArrD = this.f9074a;
        long j10 = 0;
        loop0: while (true) {
            int i10 = 0;
            while (lVarArrD != null && i10 < lVarArrD.length) {
                lVarK = k(lVarArrD, i10);
                if (lVarK == null) {
                    i10++;
                } else {
                    int i11 = lVarK.f9099a;
                    if (i11 == -1) {
                        break;
                    }
                    synchronized (lVarK) {
                        try {
                            if (k(lVarArrD, i10) == lVarK) {
                                if (i11 >= 0) {
                                    lVar = lVarK;
                                } else {
                                    lVar = lVarK instanceof q ? ((q) lVarK).f9118f : null;
                                }
                                while (lVar != null) {
                                    j10--;
                                    lVar = lVar.f9102d;
                                }
                                h(lVarArrD, i10, null);
                                i10++;
                            }
                        } finally {
                        }
                    }
                }
            }
            lVarArrD = d(lVarArrD, lVarK);
        }
        if (j10 != 0) {
            a(j10, -1);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        i iVar = this.f9077d;
        if (iVar != null) {
            return iVar;
        }
        i iVar2 = new i(this);
        this.f9077d = iVar2;
        return iVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        s sVar = this.f9078e;
        if (sVar != null) {
            return sVar;
        }
        s sVar2 = new s(this);
        this.f9078e = sVar2;
        return sVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        e eVar = this.f9079f;
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e(this);
        this.f9079f = eVar2;
        return eVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        l[] lVarArr = this.f9074a;
        int iHashCode = 0;
        if (lVarArr != null) {
            p pVar = new p(lVarArr, lVarArr.length, 0, lVarArr.length);
            while (true) {
                l lVarA = pVar.a();
                if (lVarA == null) {
                    break;
                }
                iHashCode += lVarA.f9101c.hashCode() ^ lVarA.f9100b.hashCode();
            }
        }
        return iHashCode;
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        l[] lVarArr = this.f9074a;
        int length = lVarArr == null ? 0 : lVarArr.length;
        p pVar = new p(lVarArr, length, 0, length);
        StringBuilder sb2 = new StringBuilder("{");
        l lVarA = pVar.a();
        if (lVarA != null) {
            while (true) {
                Object obj = lVarA.f9100b;
                Object obj2 = lVarA.f9101c;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb2.append(obj);
                sb2.append('=');
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb2.append(obj2);
                lVarA = pVar.a();
                if (lVarA == null) {
                    break;
                }
                sb2.append(", ");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        V value;
        V v10;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        l[] lVarArr = this.f9074a;
        int length = lVarArr == null ? 0 : lVarArr.length;
        p pVar = new p(lVarArr, length, 0, length);
        while (true) {
            l lVarA = pVar.a();
            if (lVarA != null) {
                Object obj2 = lVarA.f9101c;
                Object obj3 = map.get(lVarA.f9100b);
                if (obj3 == null || (obj3 != obj2 && !obj3.equals(obj2))) {
                    break;
                }
            } else {
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    K key = entry.getKey();
                    if (key == null || (value = entry.getValue()) == null || (v10 = get(key)) == null || (value != v10 && !value.equals(v10))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        int i10 = 1;
        int i11 = 0;
        while (i10 < 16) {
            i11++;
            i10 <<= 1;
        }
        int i12 = 32 - i11;
        int i13 = i10 - 1;
        n[] nVarArr = new n[16];
        for (int i14 = 0; i14 < 16; i14++) {
            nVarArr[i14] = new n();
        }
        ObjectOutputStream.PutField putFieldPutFields = objectOutputStream.putFields();
        putFieldPutFields.put("segments", nVarArr);
        putFieldPutFields.put("segmentShift", i12);
        putFieldPutFields.put("segmentMask", i13);
        objectOutputStream.writeFields();
        l[] lVarArr = this.f9074a;
        if (lVarArr != null) {
            p pVar = new p(lVarArr, lVarArr.length, 0, lVarArr.length);
            while (true) {
                l lVarA = pVar.a();
                if (lVarA == null) {
                    break;
                }
                objectOutputStream.writeObject(lVarA.f9100b);
                objectOutputStream.writeObject(lVarA.f9101c);
            }
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(null);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        long j10;
        boolean z;
        boolean z4;
        Object obj;
        this.sizeCtl = -1;
        objectInputStream.defaultReadObject();
        long j11 = 0;
        long j12 = 0;
        l lVar = null;
        while (true) {
            Object object = objectInputStream.readObject();
            Object object2 = objectInputStream.readObject();
            j10 = 1;
            if (object == null || object2 == null) {
                break;
            }
            j12++;
            lVar = new l(i(object.hashCode()), object, object2, lVar);
        }
        if (j12 == 0) {
            this.sizeCtl = 0;
            return;
        }
        double d10 = j12 / 0.75f;
        Double.isNaN(d10);
        long j13 = (long) (d10 + 1.0d);
        int iL = j13 >= 1073741824 ? 1073741824 : l((int) j13);
        l[] lVarArr = new l[iL];
        int i10 = iL - 1;
        while (lVar != null) {
            l lVar2 = lVar.f9102d;
            int i11 = lVar.f9099a;
            int i12 = i11 & i10;
            l lVarK = k(lVarArr, i12);
            if (lVarK == null) {
                z4 = true;
            } else {
                Object obj2 = lVar.f9100b;
                if (lVarK.f9099a >= 0) {
                    int i13 = 0;
                    for (l lVar3 = lVarK; lVar3 != null; lVar3 = lVar3.f9102d) {
                        if (lVar3.f9099a == i11 && ((obj = lVar3.f9100b) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        }
                        i13++;
                    }
                    z = true;
                    if (!z || i13 < 8) {
                        z4 = z;
                    } else {
                        long j14 = j11 + 1;
                        lVar.f9102d = lVarK;
                        l lVar4 = lVar;
                        r rVar = null;
                        r rVar2 = null;
                        while (lVar4 != null) {
                            long j15 = j14;
                            r rVar3 = new r(lVar4.f9099a, lVar4.f9100b, lVar4.f9101c, null, null);
                            rVar3.f9123h = rVar2;
                            if (rVar2 == null) {
                                rVar = rVar3;
                            } else {
                                rVar2.f9102d = rVar3;
                            }
                            lVar4 = lVar4.f9102d;
                            rVar2 = rVar3;
                            j14 = j15;
                        }
                        h(lVarArr, i12, new q(rVar));
                        j11 = j14;
                    }
                } else if (((q) lVarK).e(i11, obj2, lVar.f9101c) == null) {
                    j11 += j10;
                }
                z4 = false;
            }
            j10 = 1;
            if (z4) {
                j11++;
                lVar.f9102d = lVarK;
                h(lVarArr, i12, lVar);
            }
            lVar = lVar2;
        }
        this.f9074a = lVarArr;
        this.sizeCtl = iL - (iL >>> 2);
        this.baseCount = j11;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public V putIfAbsent(K k10, V v10) {
        return (V) f(k10, v10, true);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final boolean remove(Object obj, Object obj2) {
        obj.getClass();
        return (obj2 == null || g(obj, null, obj2) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        if (obj == null || obj2 == null || obj3 == null) {
            throw null;
        }
        return g(obj, obj3, obj2) != null;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw null;
        }
        return g(obj, obj2, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        V v10 = get(obj);
        return v10 == null ? obj2 : v10;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        biConsumer.getClass();
        l[] lVarArr = this.f9074a;
        if (lVarArr == null) {
            return;
        }
        p pVar = new p(lVarArr, lVarArr.length, 0, lVarArr.length);
        while (true) {
            l lVarA = pVar.a();
            if (lVarA == null) {
                return;
            } else {
                biConsumer.accept(lVarA.f9100b, lVarA.f9101c);
            }
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final void replaceAll(BiFunction biFunction) {
        biFunction.getClass();
        l[] lVarArr = this.f9074a;
        if (lVarArr == null) {
            return;
        }
        p pVar = new p(lVarArr, lVarArr.length, 0, lVarArr.length);
        while (true) {
            l lVarA = pVar.a();
            if (lVarA == null) {
                return;
            }
            Object obj = lVarA.f9101c;
            Object obj2 = lVarA.f9100b;
            do {
                Object objApply = biFunction.apply(obj2, obj);
                objApply.getClass();
                if (g(obj2, objApply, obj) == null) {
                    obj = get(obj2);
                }
            } while (obj != null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x008c, code lost:
    
        r5 = r5.f9101c;
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object computeIfAbsent(Object obj, Function function) {
        r rVarB;
        Object obj2;
        Object obj3;
        Object obj4;
        if (obj == null || function == null) {
            throw null;
        }
        int i10 = i(obj.hashCode());
        l[] lVarArrE = this.f9074a;
        Object objApply = null;
        int i11 = 0;
        while (true) {
            if (lVarArrE != null) {
                int length = lVarArrE.length;
                if (length != 0) {
                    int i12 = (length - 1) & i10;
                    l lVarK = k(lVarArrE, i12);
                    boolean z = true;
                    if (lVarK == null) {
                        m mVar = new m();
                        synchronized (mVar) {
                            try {
                                if (b(lVarArrE, i12, mVar)) {
                                    try {
                                        objApply = function.apply(obj);
                                        h(lVarArrE, i12, objApply != null ? new l(i10, obj, objApply) : null);
                                        i11 = 1;
                                    } catch (Throwable th2) {
                                        h(lVarArrE, i12, null);
                                        throw th2;
                                    }
                                }
                            } finally {
                            }
                        }
                        if (i11 != 0) {
                        }
                    } else {
                        int i13 = lVarK.f9099a;
                        if (i13 == -1) {
                            lVarArrE = d(lVarArrE, lVarK);
                        } else {
                            if (i13 == i10 && (((obj3 = lVarK.f9100b) == obj || (obj3 != null && obj.equals(obj3))) && (obj4 = lVarK.f9101c) != null)) {
                                return obj4;
                            }
                            synchronized (lVarK) {
                                try {
                                    if (k(lVarArrE, i12) == lVarK) {
                                        if (i13 >= 0) {
                                            l lVar = lVarK;
                                            i11 = 1;
                                            while (true) {
                                                if (lVar.f9099a != i10 || ((obj2 = lVar.f9100b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                                    l lVar2 = lVar.f9102d;
                                                    if (lVar2 == null) {
                                                        Object objApply2 = function.apply(obj);
                                                        if (objApply2 == null) {
                                                            objApply = objApply2;
                                                        } else {
                                                            if (lVar.f9102d != null) {
                                                                throw new IllegalStateException("Recursive update");
                                                            }
                                                            lVar.f9102d = new l(i10, obj, objApply2);
                                                            objApply = objApply2;
                                                        }
                                                    } else {
                                                        i11++;
                                                        lVar = lVar2;
                                                    }
                                                }
                                            }
                                        } else if (lVarK instanceof q) {
                                            q qVar = (q) lVarK;
                                            r rVar = qVar.f9117e;
                                            if (rVar != null && (rVarB = rVar.b(i10, obj, null)) != null) {
                                                objApply = rVarB.f9101c;
                                            } else {
                                                objApply = function.apply(obj);
                                                if (objApply != null) {
                                                    qVar.e(i10, obj, objApply);
                                                }
                                                i11 = 2;
                                            }
                                            z = false;
                                            i11 = 2;
                                        } else if (lVarK instanceof m) {
                                            throw new IllegalStateException("Recursive update");
                                        }
                                    }
                                    z = false;
                                } finally {
                                }
                            }
                            if (i11 != 0) {
                                if (i11 >= 8) {
                                    n(lVarArrE, i12);
                                }
                                if (!z) {
                                    return objApply;
                                }
                            }
                        }
                    }
                }
            }
            lVarArrE = e();
        }
        if (objApply != null) {
            a(1L, i11);
        }
        return objApply;
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x00aa, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        r rVarB;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int i10 = i(obj.hashCode());
        l[] lVarArrE = this.f9074a;
        int i11 = 0;
        Object objApply = null;
        int i12 = 0;
        while (true) {
            if (lVarArrE != null) {
                int length = lVarArrE.length;
                if (length != 0) {
                    int i13 = (length - 1) & i10;
                    l lVarK = k(lVarArrE, i13);
                    if (lVarK == null) {
                        break;
                    }
                    int i14 = lVarK.f9099a;
                    if (i14 == -1) {
                        lVarArrE = d(lVarArrE, lVarK);
                    } else {
                        synchronized (lVarK) {
                            try {
                                if (k(lVarArrE, i13) == lVarK) {
                                    if (i14 >= 0) {
                                        i12 = 1;
                                        l lVar = null;
                                        l lVar2 = lVarK;
                                        while (true) {
                                            if (lVar2.f9099a != i10 || ((obj2 = lVar2.f9100b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                                l lVar3 = lVar2.f9102d;
                                                if (lVar3 == null) {
                                                    break;
                                                }
                                                i12++;
                                                lVar = lVar2;
                                                lVar2 = lVar3;
                                            }
                                        }
                                        objApply = biFunction.apply(obj, lVar2.f9101c);
                                        if (objApply != null) {
                                            lVar2.f9101c = objApply;
                                        } else {
                                            l lVar4 = lVar2.f9102d;
                                            if (lVar != null) {
                                                lVar.f9102d = lVar4;
                                            } else {
                                                h(lVarArrE, i13, lVar4);
                                            }
                                            i11 = -1;
                                        }
                                    } else if (lVarK instanceof q) {
                                        q qVar = (q) lVarK;
                                        r rVar = qVar.f9117e;
                                        if (rVar != null && (rVarB = rVar.b(i10, obj, null)) != null) {
                                            objApply = biFunction.apply(obj, rVarB.f9101c);
                                            if (objApply != null) {
                                                rVarB.f9101c = objApply;
                                            } else {
                                                if (qVar.f(rVarB)) {
                                                    h(lVarArrE, i13, p(qVar.f9118f));
                                                }
                                                i11 = -1;
                                            }
                                        }
                                        i12 = 2;
                                    } else if (lVarK instanceof m) {
                                        break;
                                    }
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        if (i12 != 0) {
                            break;
                        }
                    }
                }
            }
            lVarArrE = e();
        }
        if (i11 != 0) {
            a(i11, i12);
        }
        return objApply;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object compute(Object obj, BiFunction biFunction) {
        l lVar;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int i10 = i(obj.hashCode());
        l[] lVarArrE = this.f9074a;
        int i11 = 0;
        Object objApply = null;
        int i12 = 0;
        while (true) {
            if (lVarArrE != null) {
                int length = lVarArrE.length;
                if (length != 0) {
                    int i13 = (length - 1) & i10;
                    l lVarK = k(lVarArrE, i13);
                    if (lVarK == null) {
                        m mVar = new m();
                        synchronized (mVar) {
                            try {
                                if (b(lVarArrE, i13, mVar)) {
                                    try {
                                        objApply = biFunction.apply(obj, null);
                                        if (objApply != null) {
                                            lVar = new l(i10, obj, objApply);
                                            i12 = 1;
                                        } else {
                                            lVar = null;
                                        }
                                        h(lVarArrE, i13, lVar);
                                        i11 = 1;
                                    } catch (Throwable th2) {
                                        h(lVarArrE, i13, null);
                                        throw th2;
                                    }
                                }
                            } finally {
                            }
                        }
                        if (i11 != 0) {
                        }
                    } else {
                        int i14 = lVarK.f9099a;
                        if (i14 == -1) {
                            lVarArrE = d(lVarArrE, lVarK);
                        } else {
                            synchronized (lVarK) {
                                try {
                                    if (k(lVarArrE, i13) == lVarK) {
                                        if (i14 >= 0) {
                                            l lVar2 = null;
                                            l lVar3 = lVarK;
                                            i11 = 1;
                                            while (true) {
                                                if (lVar3.f9099a != i10 || ((obj2 = lVar3.f9100b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                                    l lVar4 = lVar3.f9102d;
                                                    if (lVar4 == null) {
                                                        Object objApply2 = biFunction.apply(obj, null);
                                                        if (objApply2 == null) {
                                                            objApply = objApply2;
                                                        } else {
                                                            if (lVar3.f9102d != null) {
                                                                throw new IllegalStateException("Recursive update");
                                                            }
                                                            lVar3.f9102d = new l(i10, obj, objApply2);
                                                            objApply = objApply2;
                                                            i12 = 1;
                                                        }
                                                    } else {
                                                        i11++;
                                                        lVar2 = lVar3;
                                                        lVar3 = lVar4;
                                                    }
                                                }
                                            }
                                            Object objApply3 = biFunction.apply(obj, lVar3.f9101c);
                                            if (objApply3 != null) {
                                                lVar3.f9101c = objApply3;
                                                objApply = objApply3;
                                            } else {
                                                l lVar5 = lVar3.f9102d;
                                                if (lVar2 != null) {
                                                    lVar2.f9102d = lVar5;
                                                } else {
                                                    h(lVarArrE, i13, lVar5);
                                                }
                                                objApply = objApply3;
                                                i12 = -1;
                                            }
                                        } else if (lVarK instanceof q) {
                                            q qVar = (q) lVarK;
                                            r rVar = qVar.f9117e;
                                            r rVarB = rVar != null ? rVar.b(i10, obj, null) : null;
                                            Object objApply4 = biFunction.apply(obj, rVarB == null ? null : rVarB.f9101c);
                                            if (objApply4 != null) {
                                                if (rVarB != null) {
                                                    rVarB.f9101c = objApply4;
                                                } else {
                                                    qVar.e(i10, obj, objApply4);
                                                    i12 = 1;
                                                }
                                            } else if (rVarB != null) {
                                                if (qVar.f(rVarB)) {
                                                    h(lVarArrE, i13, p(qVar.f9118f));
                                                }
                                                i12 = -1;
                                            }
                                            objApply = objApply4;
                                            i11 = 1;
                                        } else if (lVarK instanceof m) {
                                            throw new IllegalStateException("Recursive update");
                                        }
                                    }
                                } finally {
                                }
                            }
                            if (i11 != 0) {
                                if (i11 >= 8) {
                                    n(lVarArrE, i13);
                                }
                            }
                        }
                    }
                }
            }
            lVarArrE = e();
        }
        if (i12 != 0) {
            a(i12, i11);
        }
        return objApply;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x00dd, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        int i10;
        Object obj3;
        Object obj4 = obj2;
        if (obj == null || obj4 == null || biFunction == null) {
            throw null;
        }
        int i11 = i(obj.hashCode());
        l[] lVarArrE = this.f9074a;
        int i12 = 0;
        Object obj5 = null;
        int i13 = 0;
        while (true) {
            if (lVarArrE != null) {
                int length = lVarArrE.length;
                if (length != 0) {
                    int i14 = (length - 1) & i11;
                    l lVarK = k(lVarArrE, i14);
                    i10 = 1;
                    if (lVarK == null) {
                        if (b(lVarArrE, i14, new l(i11, obj, obj4))) {
                            break;
                        }
                    } else {
                        int i15 = lVarK.f9099a;
                        if (i15 == -1) {
                            lVarArrE = d(lVarArrE, lVarK);
                        } else {
                            synchronized (lVarK) {
                                try {
                                    if (k(lVarArrE, i14) == lVarK) {
                                        if (i15 >= 0) {
                                            l lVar = null;
                                            l lVar2 = lVarK;
                                            i12 = 1;
                                            while (true) {
                                                if (lVar2.f9099a != i11 || ((obj3 = lVar2.f9100b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                    l lVar3 = lVar2.f9102d;
                                                    if (lVar3 == null) {
                                                        lVar2.f9102d = new l(i11, obj, obj4);
                                                        obj5 = obj4;
                                                        i13 = 1;
                                                        break;
                                                    }
                                                    i12++;
                                                    lVar = lVar2;
                                                    lVar2 = lVar3;
                                                }
                                            }
                                            Object objApply = biFunction.apply(lVar2.f9101c, obj4);
                                            if (objApply != null) {
                                                lVar2.f9101c = objApply;
                                                obj5 = objApply;
                                            } else {
                                                l lVar4 = lVar2.f9102d;
                                                if (lVar != null) {
                                                    lVar.f9102d = lVar4;
                                                } else {
                                                    h(lVarArrE, i14, lVar4);
                                                }
                                                obj5 = objApply;
                                                i13 = -1;
                                            }
                                        } else if (lVarK instanceof q) {
                                            q qVar = (q) lVarK;
                                            r rVar = qVar.f9117e;
                                            r rVarB = rVar == null ? null : rVar.b(i11, obj, null);
                                            Object objApply2 = rVarB == null ? obj4 : biFunction.apply(rVarB.f9101c, obj4);
                                            if (objApply2 != null) {
                                                if (rVarB != null) {
                                                    rVarB.f9101c = objApply2;
                                                } else {
                                                    qVar.e(i11, obj, objApply2);
                                                    i13 = 1;
                                                }
                                            } else if (rVarB != null) {
                                                if (qVar.f(rVarB)) {
                                                    h(lVarArrE, i14, p(qVar.f9118f));
                                                }
                                                i13 = -1;
                                            }
                                            i12 = 2;
                                            obj5 = objApply2;
                                        } else if (lVarK instanceof m) {
                                            break;
                                        }
                                    }
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                            if (i12 != 0) {
                                if (i12 >= 8) {
                                    n(lVarArrE, i14);
                                }
                                i10 = i13;
                                obj4 = obj5;
                            }
                        }
                    }
                }
            }
            lVarArrE = e();
        }
        if (i10 != 0) {
            a(i10, i12);
        }
        return obj4;
    }

    public boolean contains(Object obj) {
        return containsValue(obj);
    }

    private final l[] e() {
        while (true) {
            l[] lVarArr = this.f9074a;
            if (lVarArr != null && lVarArr.length != 0) {
                return lVarArr;
            }
            int i10 = this.sizeCtl;
            if (i10 < 0) {
                Thread.yield();
            } else if (f9067h.c(this, f9068i, i10, -1)) {
                try {
                    l[] lVarArr2 = this.f9074a;
                    if (lVarArr2 == null || lVarArr2.length == 0) {
                        int i11 = i10 > 0 ? i10 : 16;
                        l[] lVarArr3 = new l[i11];
                        this.f9074a = lVarArr3;
                        i10 = i11 - (i11 >>> 2);
                        lVarArr2 = lVarArr3;
                    }
                    this.sizeCtl = i10;
                    return lVarArr2;
                } catch (Throwable th2) {
                    this.sizeCtl = i10;
                    throw th2;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:98:0x013f, code lost:
    
        if (r25.f9076c != r7) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0141, code lost:
    
        r25.f9076c = (j$.util.concurrent.c[]) java.util.Arrays.copyOf(r7, r8 << 1);
     */
    /* JADX WARN: Removed duplicated region for block: B:146:0x019f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void a(long j10, int i10) {
        boolean zD;
        boolean z;
        int length;
        boolean z4;
        int length2;
        int length3;
        c cVar;
        long j11;
        l[] lVarArr;
        int length4;
        l[] lVarArr2;
        c[] cVarArr = this.f9076c;
        if (cVarArr == null) {
            j$.sun.misc.a aVar = f9067h;
            long j12 = f9070k;
            long j13 = this.baseCount;
            j11 = j13 + j10;
            if (!aVar.d(this, j12, j13, j11)) {
                if (cVarArr == null || (length3 = cVarArr.length - 1) < 0 || (cVar = cVarArr[length3 & ThreadLocalRandom.b()]) == null) {
                    zD = true;
                } else {
                    j$.sun.misc.a aVar2 = f9067h;
                    long j14 = f9071m;
                    long j15 = cVar.value;
                    zD = aVar2.d(cVar, j14, j15, j15 + j10);
                    if (zD) {
                        if (i10 <= 1) {
                            return;
                        } else {
                            j11 = j();
                        }
                    }
                }
                int iB = ThreadLocalRandom.b();
                if (iB == 0) {
                    ThreadLocalRandom.f();
                    iB = ThreadLocalRandom.b();
                    zD = true;
                }
                boolean z10 = zD;
                while (true) {
                    boolean z11 = false;
                    while (true) {
                        c[] cVarArr2 = this.f9076c;
                        if (cVarArr2 != null && (length = cVarArr2.length) > 0) {
                            c cVar2 = cVarArr2[(length - 1) & iB];
                            if (cVar2 == null) {
                                if (this.cellsBusy == 0) {
                                    c cVar3 = new c(j10);
                                    if (this.cellsBusy == 0 && f9067h.c(this, l, 0, 1)) {
                                        try {
                                            c[] cVarArr3 = this.f9076c;
                                            if (cVarArr3 == null || (length2 = cVarArr3.length) <= 0) {
                                                z4 = false;
                                                if (!z4) {
                                                    return;
                                                }
                                            } else {
                                                int i11 = (length2 - 1) & iB;
                                                if (cVarArr3[i11] == null) {
                                                    cVarArr3[i11] = cVar3;
                                                    z4 = true;
                                                }
                                                if (!z4) {
                                                }
                                            }
                                        } finally {
                                        }
                                    }
                                }
                            } else {
                                if (z10) {
                                    j$.sun.misc.a aVar3 = f9067h;
                                    long j16 = f9071m;
                                    long j17 = cVar2.value;
                                    if (aVar3.d(cVar2, j16, j17, j17 + j10)) {
                                        return;
                                    }
                                    if (this.f9076c == cVarArr2 && length < f9066g) {
                                        if (!z11) {
                                            z11 = true;
                                        } else if (this.cellsBusy == 0 && aVar3.c(this, l, 0, 1)) {
                                            try {
                                                break;
                                            } finally {
                                            }
                                        }
                                    }
                                } else {
                                    z10 = true;
                                }
                                iB = ThreadLocalRandom.a(iB);
                            }
                            z11 = false;
                            iB = ThreadLocalRandom.a(iB);
                        } else if (this.cellsBusy == 0 && this.f9076c == cVarArr2 && f9067h.c(this, l, 0, 1)) {
                            try {
                                if (this.f9076c == cVarArr2) {
                                    c[] cVarArr4 = new c[2];
                                    cVarArr4[iB & 1] = new c(j10);
                                    this.f9076c = cVarArr4;
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (z) {
                                    return;
                                }
                            } finally {
                            }
                        } else {
                            j$.sun.misc.a aVar4 = f9067h;
                            long j18 = f9070k;
                            long j19 = this.baseCount;
                            if (aVar4.d(this, j18, j19, j19 + j10)) {
                                return;
                            }
                        }
                    }
                }
            }
        }
        if (i10 < 0) {
            return;
        }
        while (true) {
            int i12 = this.sizeCtl;
            if (j11 < i12 || (lVarArr = this.f9074a) == null || (length4 = lVarArr.length) >= 1073741824) {
                return;
            }
            int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(length4) | 32768;
            if (i12 < 0) {
                if ((i12 >>> 16) != iNumberOfLeadingZeros || i12 == iNumberOfLeadingZeros + 1 || i12 == iNumberOfLeadingZeros + 65535 || (lVarArr2 = this.f9075b) == null || this.transferIndex <= 0) {
                    return;
                }
                if (f9067h.c(this, f9068i, i12, i12 + 1)) {
                    m(lVarArr, lVarArr2);
                }
            } else if (f9067h.c(this, f9068i, i12, (iNumberOfLeadingZeros << 16) + 2)) {
                m(lVarArr, null);
            }
            j11 = j();
        }
    }

    final l[] d(l[] lVarArr, l lVar) {
        int i10;
        if (lVar instanceof g) {
            l[] lVarArr2 = ((g) lVar).f9092e;
            int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(lVarArr.length) | 32768;
            while (true) {
                if (lVarArr2 != this.f9075b || this.f9074a != lVarArr || (i10 = this.sizeCtl) >= 0 || (i10 >>> 16) != iNumberOfLeadingZeros || i10 == iNumberOfLeadingZeros + 1 || i10 == 65535 + iNumberOfLeadingZeros || this.transferIndex <= 0) {
                    break;
                }
                if (f9067h.c(this, f9068i, i10, i10 + 1)) {
                    m(lVarArr, lVarArr2);
                    break;
                }
            }
            return lVarArr2;
        }
        return this.f9074a;
    }

    private final void o(int i10) {
        int length;
        int iL = i10 >= 536870912 ? 1073741824 : l(i10 + (i10 >>> 1) + 1);
        while (true) {
            int i11 = this.sizeCtl;
            if (i11 < 0) {
                return;
            }
            l[] lVarArr = this.f9074a;
            if (lVarArr == null || (length = lVarArr.length) == 0) {
                int i12 = i11 > iL ? i11 : iL;
                if (f9067h.c(this, f9068i, i11, -1)) {
                    try {
                        if (this.f9074a == lVarArr) {
                            this.f9074a = new l[i12];
                            i11 = i12 - (i12 >>> 2);
                        }
                    } finally {
                        this.sizeCtl = i11;
                    }
                } else {
                    continue;
                }
            } else {
                if (iL <= i11 || length >= 1073741824) {
                    return;
                }
                if (lVarArr == this.f9074a) {
                    if (f9067h.c(this, f9068i, i11, ((Integer.numberOfLeadingZeros(length) | 32768) << 16) + 2)) {
                        m(lVarArr, null);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v10, types: [j$.util.concurrent.l] */
    /* JADX WARN: Type inference failed for: r13v12, types: [j$.util.concurrent.l] */
    /* JADX WARN: Type inference failed for: r4v0, types: [j$.util.concurrent.l] */
    /* JADX WARN: Type inference failed for: r5v17, types: [j$.util.concurrent.l] */
    /* JADX WARN: Type inference failed for: r5v22, types: [j$.util.concurrent.l] */
    private final void m(l[] lVarArr, l[] lVarArr2) {
        l[] lVarArr3;
        int i10;
        int i11;
        g gVar;
        ConcurrentHashMap<K, V> concurrentHashMap;
        int i12;
        l qVar;
        l qVar2;
        r lVar;
        int i13;
        ConcurrentHashMap<K, V> concurrentHashMap2 = this;
        l[] lVarArr4 = lVarArr;
        int length = lVarArr4.length;
        int i14 = f9066g;
        int i15 = i14 > 1 ? (length >>> 3) / i14 : length;
        int i16 = i15 < 16 ? 16 : i15;
        if (lVarArr2 == null) {
            try {
                l[] lVarArr5 = new l[length << 1];
                concurrentHashMap2.f9075b = lVarArr5;
                concurrentHashMap2.transferIndex = length;
                lVarArr3 = lVarArr5;
            } catch (Throwable unused) {
                concurrentHashMap2.sizeCtl = Integer.MAX_VALUE;
                return;
            }
        } else {
            lVarArr3 = lVarArr2;
        }
        int length2 = lVarArr3.length;
        g gVar2 = new g(lVarArr3);
        int i17 = 0;
        int i18 = 0;
        boolean zB = true;
        boolean z = false;
        while (true) {
            if (zB) {
                int i19 = i18 - 1;
                if (i19 >= i17 || z) {
                    i17 = i17;
                    i18 = i19;
                    zB = false;
                } else {
                    int i20 = concurrentHashMap2.transferIndex;
                    if (i20 <= 0) {
                        i18 = -1;
                    } else {
                        j$.sun.misc.a aVar = f9067h;
                        long j10 = f9069j;
                        int i21 = i20 > i16 ? i20 - i16 : 0;
                        int i22 = i17;
                        if (aVar.c(this, j10, i20, i21)) {
                            i18 = i20 - 1;
                            i17 = i21;
                        } else {
                            i17 = i22;
                            i18 = i19;
                        }
                    }
                    zB = false;
                }
            } else {
                int i23 = i17;
                r lVar2 = null;
                if (i18 < 0 || i18 >= length || (i12 = i18 + length) >= length2) {
                    i10 = i16;
                    i11 = length2;
                    gVar = gVar2;
                    if (z) {
                        this.f9075b = null;
                        this.f9074a = lVarArr3;
                        this.sizeCtl = (length << 1) - (length >>> 1);
                        return;
                    }
                    concurrentHashMap = this;
                    j$.sun.misc.a aVar2 = f9067h;
                    long j11 = f9068i;
                    int i24 = concurrentHashMap.sizeCtl;
                    int i25 = i18;
                    if (!aVar2.c(this, j11, i24, i24 - 1)) {
                        i18 = i25;
                    } else {
                        if (i24 - 2 != ((Integer.numberOfLeadingZeros(length) | 32768) << 16)) {
                            return;
                        }
                        i18 = length;
                        zB = true;
                        z = true;
                    }
                } else {
                    ?? K = k(lVarArr4, i18);
                    if (K == 0) {
                        zB = b(lVarArr4, i18, gVar2);
                        concurrentHashMap = concurrentHashMap2;
                        i10 = i16;
                        i11 = length2;
                        gVar = gVar2;
                    } else {
                        int i26 = K.f9099a;
                        if (i26 == -1) {
                            concurrentHashMap = concurrentHashMap2;
                            i10 = i16;
                            i11 = length2;
                            gVar = gVar2;
                            zB = true;
                        } else {
                            synchronized (K) {
                                try {
                                    if (k(lVarArr4, i18) == K) {
                                        if (i26 >= 0) {
                                            int i27 = i26 & length;
                                            r rVar = K;
                                            for (r rVar2 = K.f9102d; rVar2 != null; rVar2 = rVar2.f9102d) {
                                                int i28 = rVar2.f9099a & length;
                                                if (i28 != i27) {
                                                    rVar = rVar2;
                                                    i27 = i28;
                                                }
                                            }
                                            if (i27 == 0) {
                                                lVar = null;
                                                lVar2 = rVar;
                                            } else {
                                                lVar = rVar;
                                            }
                                            l lVar3 = K;
                                            while (lVar3 != rVar) {
                                                int i29 = lVar3.f9099a;
                                                Object obj = lVar3.f9100b;
                                                int i30 = i16;
                                                Object obj2 = lVar3.f9101c;
                                                if ((i29 & length) == 0) {
                                                    i13 = length2;
                                                    lVar2 = new l(i29, obj, obj2, lVar2);
                                                } else {
                                                    i13 = length2;
                                                    lVar = new l(i29, obj, obj2, lVar);
                                                }
                                                lVar3 = lVar3.f9102d;
                                                i16 = i30;
                                                length2 = i13;
                                            }
                                            i10 = i16;
                                            i11 = length2;
                                            h(lVarArr3, i18, lVar2);
                                            h(lVarArr3, i12, lVar);
                                            h(lVarArr4, i18, gVar2);
                                            gVar = gVar2;
                                        } else {
                                            i10 = i16;
                                            i11 = length2;
                                            if (K instanceof q) {
                                                q qVar3 = (q) K;
                                                r rVar3 = null;
                                                r rVar4 = null;
                                                l lVar4 = qVar3.f9118f;
                                                int i31 = 0;
                                                int i32 = 0;
                                                r rVar5 = null;
                                                while (lVar4 != null) {
                                                    q qVar4 = qVar3;
                                                    int i33 = lVar4.f9099a;
                                                    g gVar3 = gVar2;
                                                    r rVar6 = new r(i33, lVar4.f9100b, lVar4.f9101c, null, null);
                                                    if ((i33 & length) == 0) {
                                                        rVar6.f9123h = rVar4;
                                                        if (rVar4 == null) {
                                                            lVar2 = rVar6;
                                                        } else {
                                                            rVar4.f9102d = rVar6;
                                                        }
                                                        i31++;
                                                        rVar4 = rVar6;
                                                    } else {
                                                        rVar6.f9123h = rVar3;
                                                        if (rVar3 == null) {
                                                            rVar5 = rVar6;
                                                        } else {
                                                            rVar3.f9102d = rVar6;
                                                        }
                                                        i32++;
                                                        rVar3 = rVar6;
                                                    }
                                                    lVar4 = lVar4.f9102d;
                                                    qVar3 = qVar4;
                                                    gVar2 = gVar3;
                                                }
                                                q qVar5 = qVar3;
                                                g gVar4 = gVar2;
                                                if (i31 <= 6) {
                                                    qVar = p(lVar2);
                                                } else {
                                                    qVar = i32 != 0 ? new q(lVar2) : qVar5;
                                                }
                                                if (i32 <= 6) {
                                                    qVar2 = p(rVar5);
                                                } else {
                                                    qVar2 = i31 != 0 ? new q(rVar5) : qVar5;
                                                }
                                                h(lVarArr3, i18, qVar);
                                                h(lVarArr3, i12, qVar2);
                                                lVarArr4 = lVarArr;
                                                gVar = gVar4;
                                                h(lVarArr4, i18, gVar);
                                            }
                                        }
                                        zB = true;
                                    } else {
                                        i10 = i16;
                                        i11 = length2;
                                    }
                                    gVar = gVar2;
                                } finally {
                                }
                            }
                            concurrentHashMap = this;
                        }
                    }
                }
                gVar2 = gVar;
                concurrentHashMap2 = concurrentHashMap;
                i17 = i23;
                i16 = i10;
                length2 = i11;
            }
        }
    }

    final long j() {
        c[] cVarArr = this.f9076c;
        long j10 = this.baseCount;
        if (cVarArr != null) {
            for (c cVar : cVarArr) {
                if (cVar != null) {
                    j10 += cVar.value;
                }
            }
        }
        return j10;
    }

    private final void n(l[] lVarArr, int i10) {
        int length = lVarArr.length;
        if (length < 64) {
            o(length << 1);
            return;
        }
        l lVarK = k(lVarArr, i10);
        if (lVarK == null || lVarK.f9099a < 0) {
            return;
        }
        synchronized (lVarK) {
            try {
                if (k(lVarArr, i10) == lVarK) {
                    r rVar = null;
                    l lVar = lVarK;
                    r rVar2 = null;
                    while (lVar != null) {
                        r rVar3 = new r(lVar.f9099a, lVar.f9100b, lVar.f9101c, null, null);
                        rVar3.f9123h = rVar2;
                        if (rVar2 == null) {
                            rVar = rVar3;
                        } else {
                            rVar2.f9102d = rVar3;
                        }
                        lVar = lVar.f9102d;
                        rVar2 = rVar3;
                    }
                    h(lVarArr, i10, new q(rVar));
                }
            } finally {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [j$.util.concurrent.l] */
    static l p(r rVar) {
        l lVar = null;
        l lVar2 = null;
        for (r rVar2 = rVar; rVar2 != null; rVar2 = rVar2.f9102d) {
            l lVar3 = new l(rVar2.f9099a, rVar2.f9100b, rVar2.f9101c);
            if (lVar2 == null) {
                lVar = lVar3;
            } else {
                lVar2.f9102d = lVar3;
            }
            lVar2 = lVar3;
        }
        return lVar;
    }
}
