package a0;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    public final int f39a;

    /* renamed from: b, reason: collision with root package name */
    public final androidx.room.o f40b;

    /* renamed from: c, reason: collision with root package name */
    public final m7.e f41c;

    /* renamed from: d, reason: collision with root package name */
    public int f42d;

    /* renamed from: e, reason: collision with root package name */
    public int f43e;

    /* renamed from: f, reason: collision with root package name */
    public int f44f;

    public m(int i10) {
        this.f39a = i10;
        if (i10 <= 0) {
            b0.a.c("maxSize <= 0");
            throw null;
        }
        this.f40b = new androidx.room.o(1);
        this.f41c = new m7.e(6);
    }

    public final Object a(Object obj) {
        ue.d.e(obj, "key");
        synchronized (this.f41c) {
            androidx.room.o oVar = this.f40b;
            oVar.getClass();
            Object obj2 = oVar.f2422a.get(obj);
            if (obj2 != null) {
                this.f43e++;
                return obj2;
            }
            this.f44f++;
            return null;
        }
    }

    public final int b() {
        int i10;
        synchronized (this.f41c) {
            i10 = this.f39a;
        }
        return i10;
    }

    public final Object c(Object obj, Object obj2) {
        Object objPut;
        ue.d.e(obj, "key");
        ue.d.e(obj2, "value");
        synchronized (this.f41c) {
            this.f42d++;
            androidx.room.o oVar = this.f40b;
            oVar.getClass();
            objPut = oVar.f2422a.put(obj, obj2);
            if (objPut != null) {
                this.f42d--;
            }
        }
        f(this.f39a);
        return objPut;
    }

    public final Object d(String str) {
        Object objRemove;
        ue.d.e(str, "key");
        synchronized (this.f41c) {
            androidx.room.o oVar = this.f40b;
            oVar.getClass();
            objRemove = oVar.f2422a.remove(str);
            if (objRemove != null) {
                this.f42d--;
            }
        }
        return objRemove;
    }

    public final int e() {
        int i10;
        synchronized (this.f41c) {
            i10 = this.f42d;
        }
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0089, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f(int i10) {
        while (true) {
            synchronized (this.f41c) {
                try {
                    if (!(this.f42d >= 0 && (!this.f40b.f2422a.isEmpty() || this.f42d == 0))) {
                        throw new IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
                    }
                    if (this.f42d <= i10 || this.f40b.f2422a.isEmpty()) {
                        break;
                    }
                    Set setEntrySet = this.f40b.f2422a.entrySet();
                    ue.d.d(setEntrySet, "<get-entries>(...)");
                    Object next = null;
                    if (setEntrySet instanceof List) {
                        List list = (List) setEntrySet;
                        if (!list.isEmpty()) {
                            next = list.get(0);
                        }
                    } else {
                        Iterator it = setEntrySet.iterator();
                        if (it.hasNext()) {
                            next = it.next();
                        }
                    }
                    Map.Entry entry = (Map.Entry) next;
                    if (entry == null) {
                        return;
                    }
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    androidx.room.o oVar = this.f40b;
                    oVar.getClass();
                    ue.d.e(key, "key");
                    oVar.f2422a.remove(key);
                    int i11 = this.f42d;
                    ue.d.e(value, "value");
                    this.f42d = i11 - 1;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final String toString() {
        String str;
        synchronized (this.f41c) {
            try {
                int i10 = this.f43e;
                int i11 = this.f44f + i10;
                str = "LruCache[maxSize=" + this.f39a + ",hits=" + this.f43e + ",misses=" + this.f44f + ",hitRate=" + (i11 != 0 ? (i10 * 100) / i11 : 0) + "%]";
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }
}
