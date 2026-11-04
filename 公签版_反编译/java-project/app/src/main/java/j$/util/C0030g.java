package j$.util;

import j$.util.Map;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* renamed from: j$.util.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0030g implements java.util.Map, Serializable, Map {
    private static final long serialVersionUID = 1978198479659022715L;

    /* renamed from: a, reason: collision with root package name */
    private final java.util.Map f9159a;

    /* renamed from: b, reason: collision with root package name */
    final Object f9160b = this;

    /* renamed from: c, reason: collision with root package name */
    private transient java.util.Set f9161c;

    /* renamed from: d, reason: collision with root package name */
    private transient java.util.Set f9162d;

    /* renamed from: e, reason: collision with root package name */
    private transient java.util.Collection f9163e;

    C0030g(java.util.Map map) {
        this.f9159a = (java.util.Map) Objects.requireNonNull(map);
    }

    @Override // java.util.Map
    public final int size() {
        int size;
        synchronized (this.f9160b) {
            size = this.f9159a.size();
        }
        return size;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        boolean zIsEmpty;
        synchronized (this.f9160b) {
            zIsEmpty = this.f9159a.isEmpty();
        }
        return zIsEmpty;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        boolean zContainsKey;
        synchronized (this.f9160b) {
            zContainsKey = this.f9159a.containsKey(obj);
        }
        return zContainsKey;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        boolean zContainsValue;
        synchronized (this.f9160b) {
            zContainsValue = this.f9159a.containsValue(obj);
        }
        return zContainsValue;
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        synchronized (this.f9160b) {
            obj2 = this.f9159a.get(obj);
        }
        return obj2;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        Object objPut;
        synchronized (this.f9160b) {
            objPut = this.f9159a.put(obj, obj2);
        }
        return objPut;
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        Object objRemove;
        synchronized (this.f9160b) {
            objRemove = this.f9159a.remove(obj);
        }
        return objRemove;
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        synchronized (this.f9160b) {
            this.f9159a.putAll(map);
        }
    }

    @Override // java.util.Map
    public final void clear() {
        synchronized (this.f9160b) {
            this.f9159a.clear();
        }
    }

    private static java.util.Set a(java.util.Set set, Object obj) {
        if (DesugarCollections.f9009e == null) {
            return Collections.synchronizedSet(set);
        }
        try {
            return (java.util.Set) DesugarCollections.f9009e.newInstance(set, obj);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e7) {
            throw new Error("Unable to instantiate a synchronized list.", e7);
        }
    }

    @Override // java.util.Map
    public final java.util.Set keySet() {
        java.util.Set set;
        synchronized (this.f9160b) {
            try {
                if (this.f9161c == null) {
                    this.f9161c = a(this.f9159a.keySet(), this.f9160b);
                }
                set = this.f9161c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return set;
    }

    @Override // java.util.Map
    public final java.util.Set entrySet() {
        java.util.Set set;
        synchronized (this.f9160b) {
            try {
                if (this.f9162d == null) {
                    this.f9162d = a(this.f9159a.entrySet(), this.f9160b);
                }
                set = this.f9162d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return set;
    }

    @Override // java.util.Map
    public final java.util.Collection values() {
        java.util.Collection collection;
        java.util.Collection collectionSynchronizedCollection;
        synchronized (this.f9160b) {
            try {
                if (this.f9163e == null) {
                    java.util.Collection collectionValues = this.f9159a.values();
                    Object obj = this.f9160b;
                    if (DesugarCollections.f9008d == null) {
                        collectionSynchronizedCollection = Collections.synchronizedCollection(collectionValues);
                    } else {
                        try {
                            collectionSynchronizedCollection = (java.util.Collection) DesugarCollections.f9008d.newInstance(collectionValues, obj);
                        } catch (IllegalAccessException e7) {
                            e = e7;
                            throw new Error("Unable to instantiate a synchronized list.", e);
                        } catch (InstantiationException e10) {
                            e = e10;
                            throw new Error("Unable to instantiate a synchronized list.", e);
                        } catch (InvocationTargetException e11) {
                            e = e11;
                            throw new Error("Unable to instantiate a synchronized list.", e);
                        }
                    }
                    this.f9163e = collectionSynchronizedCollection;
                }
                collection = this.f9163e;
            } finally {
            }
        }
        return collection;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this == obj) {
            return true;
        }
        synchronized (this.f9160b) {
            zEquals = this.f9159a.equals(obj);
        }
        return zEquals;
    }

    @Override // java.util.Map
    public final int hashCode() {
        int iHashCode;
        synchronized (this.f9160b) {
            iHashCode = this.f9159a.hashCode();
        }
        return iHashCode;
    }

    public final String toString() {
        String string;
        synchronized (this.f9160b) {
            string = this.f9159a.toString();
        }
        return string;
    }

    @Override // java.util.Map, j$.util.Map, java.util.concurrent.ConcurrentMap
    public final Object getOrDefault(Object obj, Object obj2) {
        Object orDefault;
        synchronized (this.f9160b) {
            orDefault = Map.EL.getOrDefault(this.f9159a, obj, obj2);
        }
        return orDefault;
    }

    @Override // java.util.Map, j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        synchronized (this.f9160b) {
            Map.EL.forEach(this.f9159a, biConsumer);
        }
    }

    @Override // java.util.Map, j$.util.Map
    public final void replaceAll(BiFunction biFunction) {
        synchronized (this.f9160b) {
            java.util.Map map = this.f9159a;
            if (map instanceof Map) {
                ((Map) map).replaceAll(biFunction);
            } else if (map instanceof ConcurrentMap) {
                ConcurrentMap concurrentMap = (ConcurrentMap) map;
                Objects.requireNonNull(biFunction);
                j$.util.concurrent.t tVar = new j$.util.concurrent.t(0, concurrentMap, biFunction);
                if (concurrentMap instanceof j$.util.concurrent.v) {
                    ((j$.util.concurrent.v) concurrentMap).forEach(tVar);
                } else {
                    j$.util.concurrent.u.a(concurrentMap, tVar);
                }
            } else {
                Map.CC.$default$replaceAll(map, biFunction);
            }
        }
    }

    @Override // java.util.Map, j$.util.Map, java.util.concurrent.ConcurrentMap
    public final Object putIfAbsent(Object obj, Object obj2) {
        Object objA;
        synchronized (this.f9160b) {
            objA = Map.EL.a(this.f9159a, obj, obj2);
        }
        return objA;
    }

    @Override // java.util.Map, j$.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean remove(Object obj, Object obj2) {
        boolean zRemove;
        synchronized (this.f9160b) {
            java.util.Map map = this.f9159a;
            zRemove = map instanceof Map ? ((Map) map).remove(obj, obj2) : Map.CC.$default$remove(map, obj, obj2);
        }
        return zRemove;
    }

    @Override // java.util.Map, j$.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        boolean zReplace;
        synchronized (this.f9160b) {
            java.util.Map map = this.f9159a;
            zReplace = map instanceof Map ? ((Map) map).replace(obj, obj2, obj3) : Map.CC.$default$replace(map, obj, obj2, obj3);
        }
        return zReplace;
    }

    @Override // java.util.Map, j$.util.Map, java.util.concurrent.ConcurrentMap
    public final Object replace(Object obj, Object obj2) {
        Object objReplace;
        synchronized (this.f9160b) {
            java.util.Map map = this.f9159a;
            objReplace = map instanceof Map ? ((Map) map).replace(obj, obj2) : Map.CC.$default$replace(map, obj, obj2);
        }
        return objReplace;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object computeIfAbsent(Object obj, Function function) {
        Object objComputeIfAbsent;
        synchronized (this.f9160b) {
            objComputeIfAbsent = Map.EL.computeIfAbsent(this.f9159a, obj, function);
        }
        return objComputeIfAbsent;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        Object obj$default$computeIfPresent;
        Object objApply;
        synchronized (this.f9160b) {
            java.util.Map map = this.f9159a;
            if (map instanceof Map) {
                obj$default$computeIfPresent = ((Map) map).computeIfPresent(obj, biFunction);
            } else if (map instanceof ConcurrentMap) {
                ConcurrentMap concurrentMap = (ConcurrentMap) map;
                Objects.requireNonNull(biFunction);
                while (true) {
                    Object obj2 = concurrentMap.get(obj);
                    if (obj2 == null) {
                        obj$default$computeIfPresent = null;
                        break;
                    }
                    objApply = biFunction.apply(obj, obj2);
                    if (objApply == null) {
                        if (concurrentMap.remove(obj, obj2)) {
                            break;
                        }
                    } else if (concurrentMap.replace(obj, obj2, objApply)) {
                        break;
                    }
                }
                obj$default$computeIfPresent = objApply;
            } else {
                obj$default$computeIfPresent = Map.CC.$default$computeIfPresent(map, obj, biFunction);
            }
        }
        return obj$default$computeIfPresent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0028, code lost:
    
        r5 = r3;
     */
    @Override // java.util.Map, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object compute(Object obj, BiFunction biFunction) {
        Object obj$default$compute;
        synchronized (this.f9160b) {
            java.util.Map map = this.f9159a;
            if (map instanceof Map) {
                obj$default$compute = ((Map) map).compute(obj, biFunction);
            } else if (map instanceof ConcurrentMap) {
                ConcurrentMap concurrentMap = (ConcurrentMap) map;
                loop0: while (true) {
                    Object objPutIfAbsent = concurrentMap.get(obj);
                    while (true) {
                        Object objApply = biFunction.apply(obj, objPutIfAbsent);
                        if (objApply != null) {
                            if (objPutIfAbsent == null) {
                                objPutIfAbsent = concurrentMap.putIfAbsent(obj, objApply);
                                if (objPutIfAbsent == null) {
                                    break loop0;
                                }
                            } else if (concurrentMap.replace(obj, objPutIfAbsent, objApply)) {
                                break;
                            }
                        } else if (objPutIfAbsent == null || concurrentMap.remove(obj, objPutIfAbsent)) {
                            break;
                        }
                    }
                }
                obj$default$compute = null;
            } else {
                obj$default$compute = Map.CC.$default$compute(map, obj, biFunction);
            }
        }
        return obj$default$compute;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
    
        r3 = r7.apply(r2, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0026, code lost:
    
        if (r3 == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
    
        if (r1.replace(r5, r2, r3) == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
    
        r6 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
    
        if (r1.remove(r5, r2) == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0036, code lost:
    
        r6 = null;
     */
    @Override // java.util.Map, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        Object obj$default$merge;
        synchronized (this.f9160b) {
            java.util.Map map = this.f9159a;
            if (map instanceof Map) {
                obj$default$merge = ((Map) map).merge(obj, obj2, biFunction);
            } else if (map instanceof ConcurrentMap) {
                ConcurrentMap concurrentMap = (ConcurrentMap) map;
                Objects.requireNonNull(biFunction);
                Objects.requireNonNull(obj2);
                loop0: while (true) {
                    Object objPutIfAbsent = concurrentMap.get(obj);
                    while (true) {
                        if (objPutIfAbsent != null) {
                            break;
                        }
                        objPutIfAbsent = concurrentMap.putIfAbsent(obj, obj2);
                        if (objPutIfAbsent == null) {
                            break loop0;
                        }
                    }
                }
                obj$default$merge = obj2;
            } else {
                obj$default$merge = Map.CC.$default$merge(map, obj, obj2, biFunction);
            }
        }
        return obj$default$merge;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        synchronized (this.f9160b) {
            objectOutputStream.defaultWriteObject();
        }
    }
}
