package db;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Vector;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: c, reason: collision with root package name */
    public final p f4550c;

    /* renamed from: e, reason: collision with root package name */
    public final q[][] f4552e = new q[5][];

    /* renamed from: f, reason: collision with root package name */
    public boolean f4553f = true;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f4548a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final ReentrantReadWriteLock f4549b = new ReentrantReadWriteLock();

    /* renamed from: d, reason: collision with root package name */
    public final Vector f4551d = new Vector();

    public p(p pVar) {
        this.f4550c = pVar;
        if (pVar != null) {
            pVar.f4551d.add(this);
        }
    }

    public final int a(bi.a aVar) {
        int i10;
        LinkedList linkedList;
        q[] qVarArr;
        p pVar;
        if (!this.f4553f) {
            return aVar.f2818a;
        }
        o oVarB = b(aVar.getClass());
        oVarB.f4546a.readLock().lock();
        try {
            int size = oVarB.f4547b.size();
            synchronized (this) {
                int i11 = 0;
                while (true) {
                    try {
                        q[][] qVarArr2 = this.f4552e;
                        linkedList = null;
                        if (i11 >= qVarArr2.length) {
                            qVarArr = null;
                            break;
                        }
                        qVarArr = qVarArr2[i11];
                        if (qVarArr != null && qVarArr.length >= size) {
                            qVarArr2[i11] = null;
                            break;
                        }
                        i11++;
                    } finally {
                    }
                }
            }
            if (qVarArr == null) {
                qVarArr = new q[size];
            }
            oVarB.f4547b.toArray(qVarArr);
            try {
                ag.h hVar = new ag.h((byte) 0);
                LinkedList linkedList2 = null;
                for (int i12 = 0; i12 < size; i12++) {
                    try {
                        if ((aVar.f2818a & 1) != 0) {
                            break;
                        }
                        q qVar = qVarArr[i12];
                        qVar.a(aVar, hVar);
                        if (hVar.f680a) {
                            if (linkedList2 == null) {
                                linkedList2 = new LinkedList();
                            }
                            linkedList2.add(qVar);
                        }
                        hVar.f680a = false;
                    } catch (Throwable th2) {
                        th = th2;
                        linkedList = linkedList2;
                        if (linkedList != null) {
                            oVarB.f4546a.writeLock().lock();
                            try {
                                oVarB.f4547b.removeAll(linkedList);
                            } finally {
                            }
                        }
                        c(qVarArr);
                        throw th;
                    }
                }
                if (linkedList2 != null) {
                    oVarB.f4546a.writeLock().lock();
                    try {
                        oVarB.f4547b.removeAll(linkedList2);
                    } finally {
                    }
                }
                c(qVarArr);
                for (i10 = 0; i10 < this.f4551d.size() && (aVar.f2818a & 1) == 0; i10++) {
                    try {
                        pVar = (p) this.f4551d.get(i10);
                    } catch (IndexOutOfBoundsException unused) {
                        pVar = null;
                    }
                    if (pVar != null) {
                        pVar.a(aVar);
                    }
                }
                return aVar.f2818a;
            } catch (Throwable th3) {
                th = th3;
            }
        } finally {
            oVarB.f4546a.readLock().unlock();
        }
    }

    public final o b(Class cls) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f4549b;
        reentrantReadWriteLock.readLock().lock();
        HashMap map = this.f4548a;
        try {
            o oVar = (o) map.get(cls);
            if (oVar == null) {
                reentrantReadWriteLock.writeLock().lock();
                try {
                    oVar = (o) map.get(cls);
                    if (oVar == null) {
                        oVar = new o();
                        map.put(cls, oVar);
                    }
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
            return oVar;
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000b, code lost:
    
        java.util.Arrays.fill(r4, (java.lang.Object) null);
        r3.f4552e[r0] = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void c(q[] qVarArr) {
        int i10 = 0;
        while (true) {
            q[][] qVarArr2 = this.f4552e;
            if (i10 >= qVarArr2.length) {
                break;
            } else if (qVarArr2[i10] == null) {
                break;
            } else {
                i10++;
            }
        }
    }

    public final void d(boolean z) {
        if (this.f4550c == null && !z) {
            throw new IllegalStateException("The event manager is set to be root, and can not be disabled");
        }
        this.f4553f = z;
    }

    public final z e(Class cls, n nVar) {
        return f(cls, new m(0, nVar));
    }

    public final z f(Class cls, q qVar) {
        o oVarB = b(cls);
        ReentrantReadWriteLock reentrantReadWriteLock = oVarB.f4546a;
        reentrantReadWriteLock.writeLock().lock();
        try {
            ArrayList arrayList = oVarB.f4547b;
            if (arrayList.contains(qVar)) {
                return new z(this, cls, qVar);
            }
            arrayList.add(qVar);
            reentrantReadWriteLock.writeLock().unlock();
            return new z(this, cls, qVar);
        } finally {
            reentrantReadWriteLock.writeLock().unlock();
        }
    }
}
