package androidx.room;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public abstract class e extends v {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(p pVar) {
        super(pVar);
        ue.d.e(pVar, "database");
    }

    public abstract void bind(c4.e eVar, Object obj);

    public final void insert(Object obj) {
        c4.e eVarAcquire = acquire();
        try {
            bind(eVarAcquire, obj);
            eVarAcquire.G();
        } finally {
            release(eVarAcquire);
        }
    }

    public final long insertAndReturnId(Object obj) {
        c4.e eVarAcquire = acquire();
        try {
            bind(eVarAcquire, obj);
            return eVarAcquire.G();
        } finally {
            release(eVarAcquire);
        }
    }

    public final long[] insertAndReturnIdsArray(Collection<Object> collection) {
        ue.d.e(collection, "entities");
        c4.e eVarAcquire = acquire();
        try {
            long[] jArr = new long[collection.size()];
            int i10 = 0;
            for (Object obj : collection) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    throw new ArithmeticException("Index overflow has happened.");
                }
                bind(eVarAcquire, obj);
                jArr[i10] = eVarAcquire.G();
                i10 = i11;
            }
            release(eVarAcquire);
            return jArr;
        } catch (Throwable th2) {
            release(eVarAcquire);
            throw th2;
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(Collection<Object> collection) {
        ue.d.e(collection, "entities");
        c4.e eVarAcquire = acquire();
        Iterator<Object> it = collection.iterator();
        try {
            int size = collection.size();
            Long[] lArr = new Long[size];
            for (int i10 = 0; i10 < size; i10++) {
                bind(eVarAcquire, it.next());
                lArr[i10] = Long.valueOf(eVarAcquire.G());
            }
            return lArr;
        } finally {
            release(eVarAcquire);
        }
    }

    public final List<Long> insertAndReturnIdsList(Object[] objArr) {
        ue.d.e(objArr, "entities");
        c4.e eVarAcquire = acquire();
        try {
            ke.c cVar = new ke.c(10);
            for (Object obj : objArr) {
                bind(eVarAcquire, obj);
                cVar.add(Long.valueOf(eVarAcquire.G()));
            }
            ke.c cVarE = qf.c.e(cVar);
            release(eVarAcquire);
            return cVarE;
        } catch (Throwable th2) {
            release(eVarAcquire);
            throw th2;
        }
    }

    public final void insert(Object[] objArr) {
        ue.d.e(objArr, "entities");
        c4.e eVarAcquire = acquire();
        try {
            for (Object obj : objArr) {
                bind(eVarAcquire, obj);
                eVarAcquire.G();
            }
        } finally {
            release(eVarAcquire);
        }
    }

    public final long[] insertAndReturnIdsArray(Object[] objArr) {
        ue.d.e(objArr, "entities");
        c4.e eVarAcquire = acquire();
        try {
            long[] jArr = new long[objArr.length];
            int length = objArr.length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                int i12 = i11 + 1;
                bind(eVarAcquire, objArr[i10]);
                jArr[i11] = eVarAcquire.G();
                i10++;
                i11 = i12;
            }
            return jArr;
        } finally {
            release(eVarAcquire);
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(Object[] objArr) {
        ue.d.e(objArr, "entities");
        c4.e eVarAcquire = acquire();
        try {
            int length = objArr.length;
            Long[] lArr = new Long[length];
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                int i12 = i11 + 1;
                try {
                    bind(eVarAcquire, objArr[i11]);
                    lArr[i10] = Long.valueOf(eVarAcquire.G());
                    i10++;
                    i11 = i12;
                } catch (ArrayIndexOutOfBoundsException e7) {
                    throw new NoSuchElementException(e7.getMessage());
                }
            }
            release(eVarAcquire);
            return lArr;
        } catch (Throwable th2) {
            release(eVarAcquire);
            throw th2;
        }
    }

    public final List<Long> insertAndReturnIdsList(Collection<Object> collection) {
        ue.d.e(collection, "entities");
        c4.e eVarAcquire = acquire();
        try {
            ke.c cVar = new ke.c(10);
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                bind(eVarAcquire, it.next());
                cVar.add(Long.valueOf(eVarAcquire.G()));
            }
            ke.c cVarE = qf.c.e(cVar);
            release(eVarAcquire);
            return cVarE;
        } catch (Throwable th2) {
            release(eVarAcquire);
            throw th2;
        }
    }

    public final void insert(Iterable<Object> iterable) {
        ue.d.e(iterable, "entities");
        c4.e eVarAcquire = acquire();
        try {
            Iterator<Object> it = iterable.iterator();
            while (it.hasNext()) {
                bind(eVarAcquire, it.next());
                eVarAcquire.G();
            }
        } finally {
            release(eVarAcquire);
        }
    }
}
