package u7;

import j$.util.Map;
import j$.util.Objects;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes.dex */
public final class d1 implements Map, Serializable, j$.util.Map {

    /* renamed from: g, reason: collision with root package name */
    public static final d1 f15447g = new d1(null, new Object[0], 0);

    /* renamed from: a, reason: collision with root package name */
    public transient a1 f15448a;

    /* renamed from: b, reason: collision with root package name */
    public transient b1 f15449b;

    /* renamed from: c, reason: collision with root package name */
    public transient c1 f15450c;

    /* renamed from: d, reason: collision with root package name */
    public final transient Object f15451d;

    /* renamed from: e, reason: collision with root package name */
    public final transient Object[] f15452e;

    /* renamed from: f, reason: collision with root package name */
    public final transient int f15453f;

    public d1(Object obj, Object[] objArr, int i10) {
        this.f15451d = obj;
        this.f15452e = objArr;
        this.f15453f = i10;
    }

    public static androidx.room.s a() {
        return new androidx.room.s(4, 12);
    }

    public static d1 b(Map map) {
        if ((map instanceof d1) && !(map instanceof SortedMap)) {
            d1 d1Var = (d1) map;
            d1Var.getClass();
            return d1Var;
        }
        Set setEntrySet = map.entrySet();
        androidx.room.s sVar = new androidx.room.s(setEntrySet instanceof Collection ? setEntrySet.size() : 4, 12);
        sVar.B(setEntrySet);
        return sVar.b(true);
    }

    @Override // java.util.Map
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final j0 entrySet() {
        a1 a1Var = this.f15448a;
        if (a1Var != null) {
            return a1Var;
        }
        a1 a1Var2 = new a1(this, this.f15452e, this.f15453f);
        this.f15448a = a1Var2;
        return a1Var2;
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object compute(Object obj, BiFunction biFunction) {
        return Map.CC.$default$compute(this, obj, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object computeIfAbsent(Object obj, Function function) {
        return Map.CC.$default$computeIfAbsent(this, obj, function);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        return Map.CC.$default$computeIfPresent(this, obj, biFunction);
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final j0 keySet() {
        b1 b1Var = this.f15449b;
        if (b1Var != null) {
            return b1Var;
        }
        b1 b1Var2 = new b1(this, new c1(0, this.f15453f, this.f15452e));
        this.f15449b = b1Var2;
        return b1Var2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return q.f(this, obj);
    }

    @Override // java.util.Map
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final b0 values() {
        c1 c1Var = this.f15450c;
        if (c1Var != null) {
            return c1Var;
        }
        c1 c1Var2 = new c1(1, this.f15453f, this.f15452e);
        this.f15450c = c1Var2;
        return c1Var2;
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0003  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0003 A[EDGE_INSN: B:44:0x0003->B:4:0x0003 BREAK  A[LOOP:0: B:16:0x0037->B:22:0x004d], EDGE_INSN: B:46:0x0003->B:4:0x0003 BREAK  A[LOOP:1: B:26:0x0062->B:32:0x0079], EDGE_INSN: B:48:0x0003->B:4:0x0003 BREAK  A[LOOP:2: B:34:0x0088->B:43:0x00a0]] */
    @Override // java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            obj2 = null;
        } else {
            Object[] objArr = this.f15452e;
            if (this.f15453f == 1) {
                Object obj3 = objArr[0];
                Objects.requireNonNull(obj3);
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    Objects.requireNonNull(obj2);
                }
            } else {
                Object obj4 = this.f15451d;
                if (obj4 != null) {
                    if (obj4 instanceof byte[]) {
                        byte[] bArr = (byte[]) obj4;
                        int length = bArr.length - 1;
                        int iP = q.p(obj.hashCode());
                        while (true) {
                            int i10 = iP & length;
                            int i11 = bArr[i10] & 255;
                            if (i11 == 255) {
                                break;
                            }
                            if (obj.equals(objArr[i11])) {
                                obj2 = objArr[i11 ^ 1];
                                break;
                            }
                            iP = i10 + 1;
                        }
                    } else if (obj4 instanceof short[]) {
                        short[] sArr = (short[]) obj4;
                        int length2 = sArr.length - 1;
                        int iP2 = q.p(obj.hashCode());
                        while (true) {
                            int i12 = iP2 & length2;
                            int i13 = sArr[i12] & HPKE.aead_EXPORT_ONLY;
                            if (i13 == 65535) {
                                break;
                            }
                            if (obj.equals(objArr[i13])) {
                                obj2 = objArr[i13 ^ 1];
                                break;
                            }
                            iP2 = i12 + 1;
                        }
                    } else {
                        int[] iArr = (int[]) obj4;
                        int length3 = iArr.length - 1;
                        int iP3 = q.p(obj.hashCode());
                        while (true) {
                            int i14 = iP3 & length3;
                            int i15 = iArr[i14];
                            if (i15 == -1) {
                                break;
                            }
                            if (obj.equals(objArr[i15])) {
                                obj2 = objArr[i15 ^ 1];
                                break;
                            }
                            iP3 = i14 + 1;
                        }
                    }
                }
            }
        }
        if (obj2 == null) {
            return null;
        }
        return obj2;
    }

    @Override // java.util.Map, j$.util.Map, java.util.concurrent.ConcurrentMap
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return q.j(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map, java.util.concurrent.ConcurrentMap
    public final /* synthetic */ Object putIfAbsent(Object obj, Object obj2) {
        return Map.CC.$default$putIfAbsent(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map, java.util.concurrent.ConcurrentMap
    public final /* synthetic */ boolean remove(Object obj, Object obj2) {
        return Map.CC.$default$remove(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map, java.util.concurrent.ConcurrentMap
    public final /* synthetic */ Object replace(Object obj, Object obj2) {
        return Map.CC.$default$replace(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.CC.$default$replaceAll(this, biFunction);
    }

    @Override // java.util.Map
    public final int size() {
        return this.f15453f;
    }

    public final String toString() {
        int i10 = this.f15453f;
        q.c(i10, "size");
        StringBuilder sb2 = new StringBuilder((int) Math.min(i10 * 8, 1073741824L));
        sb2.append('{');
        o1 it = ((a1) entrySet()).iterator();
        boolean z = true;
        while (true) {
            e0 e0Var = (e0) it;
            if (!e0Var.hasNext()) {
                sb2.append('}');
                return sb2.toString();
            }
            Map.Entry entry = (Map.Entry) e0Var.next();
            if (!z) {
                sb2.append(", ");
            }
            sb2.append(entry.getKey());
            sb2.append('=');
            sb2.append(entry.getValue());
            z = false;
        }
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map, java.util.concurrent.ConcurrentMap
    public final /* synthetic */ boolean replace(Object obj, Object obj2, Object obj3) {
        return Map.CC.$default$replace(this, obj, obj2, obj3);
    }
}
