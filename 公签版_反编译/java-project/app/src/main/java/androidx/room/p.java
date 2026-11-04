package androidx.room;

import a2.g1;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import l2.z;

/* loaded from: classes.dex */
public abstract class p {
    public static final n Companion = new n();
    public static final int MAX_BIND_PARAMETER_CNT = 999;
    private boolean allowMainThreadQueries;
    private a autoCloser;
    private final Map<String, Object> backingFieldMap;
    private c4.b internalOpenHelper;
    private Executor internalQueryExecutor;
    private Executor internalTransactionExecutor;
    protected List<Object> mCallbacks;
    protected volatile c4.a mDatabase;
    private final Map<Class<?>, Object> typeConverters;
    private boolean writeAheadLoggingEnabled;
    private final k invalidationTracker = createInvalidationTracker();
    private Map<Class<Object>, Object> autoMigrationSpecs = new LinkedHashMap();
    private final ReentrantReadWriteLock readWriteLock = new ReentrantReadWriteLock();
    private final ThreadLocal<Integer> suspendingTransactionId = new ThreadLocal<>();

    public p() {
        Map<String, Object> mapSynchronizedMap = DesugarCollections.synchronizedMap(new LinkedHashMap());
        ue.d.d(mapSynchronizedMap, "synchronizedMap(mutableMapOf())");
        this.backingFieldMap = mapSynchronizedMap;
        this.typeConverters = new LinkedHashMap();
    }

    public static /* synthetic */ void getMCallbacks$annotations() {
    }

    public static /* synthetic */ void getMDatabase$annotations() {
    }

    public static /* synthetic */ void isOpen$annotations() {
    }

    public static /* synthetic */ void isOpenInternal$annotations() {
    }

    public static /* synthetic */ Cursor query$default(p pVar, c4.d dVar, CancellationSignal cancellationSignal, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: query");
        }
        if ((i10 & 2) != 0) {
            cancellationSignal = null;
        }
        return pVar.query(dVar, cancellationSignal);
    }

    public final void a() {
        assertNotMainThread();
        c4.a aVarR = ((d4.g) getOpenHelper()).r();
        getInvalidationTracker().c(aVarR);
        if (aVarR.E()) {
            aVarR.o();
        } else {
            aVarR.a();
        }
    }

    public void assertNotMainThread() {
        if (!this.allowMainThreadQueries && isMainThread$room_runtime_release()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void assertNotSuspendingTransaction() {
        if (!inTransaction() && this.suspendingTransactionId.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    public final void b() {
        ((d4.g) getOpenHelper()).r().u();
        if (inTransaction()) {
            return;
        }
        k invalidationTracker = getInvalidationTracker();
        if (invalidationTracker.f2413e.compareAndSet(false, true)) {
            invalidationTracker.f2409a.getQueryExecutor().execute(invalidationTracker.l);
        }
    }

    public void beginTransaction() {
        assertNotMainThread();
        a();
    }

    public abstract void clearAllTables();

    public void close() {
        if (isOpen()) {
            ReentrantReadWriteLock.WriteLock writeLock = this.readWriteLock.writeLock();
            ue.d.d(writeLock, "readWriteLock.writeLock()");
            writeLock.lock();
            try {
                getInvalidationTracker().getClass();
                ((d4.g) getOpenHelper()).close();
            } finally {
                writeLock.unlock();
            }
        }
    }

    public c4.e compileStatement(String str) {
        ue.d.e(str, "sql");
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return ((d4.g) getOpenHelper()).r().g(str);
    }

    public abstract k createInvalidationTracker();

    public abstract c4.b createOpenHelper(c cVar);

    public void endTransaction() {
        b();
    }

    public final Map<Class<Object>, Object> getAutoMigrationSpecs() {
        return this.autoMigrationSpecs;
    }

    public List<Object> getAutoMigrations(Map<Class<Object>, Object> map) {
        ue.d.e(map, "autoMigrationSpecs");
        return je.r.f9870a;
    }

    public final Map<String, Object> getBackingFieldMap() {
        return this.backingFieldMap;
    }

    public final Lock getCloseLock$room_runtime_release() {
        ReentrantReadWriteLock.ReadLock lock = this.readWriteLock.readLock();
        ue.d.d(lock, "readWriteLock.readLock()");
        return lock;
    }

    public k getInvalidationTracker() {
        return this.invalidationTracker;
    }

    public c4.b getOpenHelper() {
        c4.b bVar = this.internalOpenHelper;
        if (bVar != null) {
            return bVar;
        }
        ue.d.g("internalOpenHelper");
        throw null;
    }

    public Executor getQueryExecutor() {
        Executor executor = this.internalQueryExecutor;
        if (executor != null) {
            return executor;
        }
        ue.d.g("internalQueryExecutor");
        throw null;
    }

    public Set<Class<Object>> getRequiredAutoMigrationSpecs() {
        return je.t.f9872a;
    }

    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        return je.s.f9871a;
    }

    public final ThreadLocal<Integer> getSuspendingTransactionId() {
        return this.suspendingTransactionId;
    }

    public Executor getTransactionExecutor() {
        Executor executor = this.internalTransactionExecutor;
        if (executor != null) {
            return executor;
        }
        ue.d.g("internalTransactionExecutor");
        throw null;
    }

    public <T> T getTypeConverter(Class<T> cls) {
        ue.d.e(cls, "klass");
        return (T) this.typeConverters.get(cls);
    }

    public boolean inTransaction() {
        return ((d4.g) getOpenHelper()).r().C();
    }

    public void init(c cVar) {
        ue.d.e(cVar, "configuration");
        this.internalOpenHelper = createOpenHelper(cVar);
        Set<Class<Object>> requiredAutoMigrationSpecs = getRequiredAutoMigrationSpecs();
        BitSet bitSet = new BitSet();
        Iterator<Class<Object>> it = requiredAutoMigrationSpecs.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            ArrayList arrayList = cVar.f2400g;
            int i10 = -1;
            if (zHasNext) {
                Class<Object> next = it.next();
                int size = arrayList.size() - 1;
                if (size >= 0) {
                    while (true) {
                        int i11 = size - 1;
                        if (next.isAssignableFrom(arrayList.get(size).getClass())) {
                            bitSet.set(size);
                            i10 = size;
                            break;
                        } else if (i11 < 0) {
                            break;
                        } else {
                            size = i11;
                        }
                    }
                }
                if (i10 < 0) {
                    throw new IllegalArgumentException(("A required auto migration spec (" + next.getCanonicalName() + ") is missing in the database configuration.").toString());
                }
                this.autoMigrationSpecs.put(next, arrayList.get(i10));
            } else {
                int size2 = arrayList.size() - 1;
                if (size2 >= 0) {
                    while (true) {
                        int i12 = size2 - 1;
                        if (!bitSet.get(size2)) {
                            throw new IllegalArgumentException("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                        }
                        if (i12 < 0) {
                            break;
                        } else {
                            size2 = i12;
                        }
                    }
                }
                Iterator<Object> it2 = getAutoMigrations(this.autoMigrationSpecs).iterator();
                if (it2.hasNext()) {
                    throw z.d(it2);
                }
                c4.b openHelper = getOpenHelper();
                if (!u.class.isInstance(openHelper)) {
                    openHelper = null;
                }
                if (openHelper != null) {
                    throw new ClassCastException();
                }
                c4.b openHelper2 = getOpenHelper();
                if ((b.class.isInstance(openHelper2) ? openHelper2 : null) != null) {
                    throw new ClassCastException();
                }
                boolean z = cVar.f2397d == 3;
                d4.g gVar = (d4.g) getOpenHelper();
                if (gVar.f4461d.f8687b != ie.e.f8689b) {
                    d4.f fVar = (d4.f) gVar.f4461d.a();
                    ue.d.e(fVar, "sQLiteOpenHelper");
                    fVar.setWriteAheadLoggingEnabled(z);
                }
                gVar.f4462e = z;
                this.mCallbacks = cVar.f2396c;
                this.internalQueryExecutor = x.a.f17938d;
                this.internalTransactionExecutor = new w();
                this.allowMainThreadQueries = true;
                this.writeAheadLoggingEnabled = z;
                Map<Class<?>, List<Class<?>>> requiredTypeConverters = getRequiredTypeConverters();
                BitSet bitSet2 = new BitSet();
                Iterator<Map.Entry<Class<?>, List<Class<?>>>> it3 = requiredTypeConverters.entrySet().iterator();
                while (true) {
                    boolean zHasNext2 = it3.hasNext();
                    ArrayList arrayList2 = cVar.f2399f;
                    if (zHasNext2) {
                        Map.Entry<Class<?>, List<Class<?>>> next2 = it3.next();
                        Class<?> key = next2.getKey();
                        for (Class<?> cls : next2.getValue()) {
                            int size3 = arrayList2.size() - 1;
                            if (size3 >= 0) {
                                while (true) {
                                    int i13 = size3 - 1;
                                    if (cls.isAssignableFrom(arrayList2.get(size3).getClass())) {
                                        bitSet2.set(size3);
                                        break;
                                    } else if (i13 < 0) {
                                        break;
                                    } else {
                                        size3 = i13;
                                    }
                                }
                                size3 = -1;
                            } else {
                                size3 = -1;
                            }
                            if (size3 < 0) {
                                throw new IllegalArgumentException(("A required type converter (" + cls + ") for " + key.getCanonicalName() + " is missing in the database configuration.").toString());
                            }
                            this.typeConverters.put(cls, arrayList2.get(size3));
                        }
                    } else {
                        int size4 = arrayList2.size() - 1;
                        if (size4 < 0) {
                            return;
                        }
                        while (true) {
                            int i14 = size4 - 1;
                            if (!bitSet2.get(size4)) {
                                throw new IllegalArgumentException("Unexpected type converter " + arrayList2.get(size4) + ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
                            }
                            if (i14 < 0) {
                                return;
                            } else {
                                size4 = i14;
                            }
                        }
                    }
                }
            }
        }
    }

    public void internalInitInvalidationTracker(c4.a aVar) {
        ue.d.e(aVar, "db");
        k invalidationTracker = getInvalidationTracker();
        invalidationTracker.getClass();
        synchronized (invalidationTracker.f2419k) {
            if (invalidationTracker.f2414f) {
                return;
            }
            aVar.d("PRAGMA temp_store = MEMORY;");
            aVar.d("PRAGMA recursive_triggers='ON';");
            aVar.d("CREATE TEMP TABLE room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            invalidationTracker.c(aVar);
            invalidationTracker.f2415g = aVar.g("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1");
            invalidationTracker.f2414f = true;
        }
    }

    public final boolean isMainThread$room_runtime_release() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public boolean isOpen() {
        c4.a aVar = this.mDatabase;
        return ue.d.a(aVar != null ? Boolean.valueOf(aVar.isOpen()) : null, Boolean.TRUE);
    }

    public final boolean isOpenInternal() {
        c4.a aVar = this.mDatabase;
        return aVar != null && aVar.isOpen();
    }

    public final Cursor query(c4.d dVar) {
        ue.d.e(dVar, "query");
        return query$default(this, dVar, null, 2, null);
    }

    public void runInTransaction(Runnable runnable) {
        ue.d.e(runnable, "body");
        beginTransaction();
        try {
            runnable.run();
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    public final void setAutoMigrationSpecs(Map<Class<Object>, Object> map) {
        ue.d.e(map, "<set-?>");
        this.autoMigrationSpecs = map;
    }

    public void setTransactionSuccessful() {
        ((d4.g) getOpenHelper()).r().n();
    }

    public Cursor query(String str, Object[] objArr) {
        ue.d.e(str, "query");
        return ((d4.g) getOpenHelper()).r().x(new g1(str, objArr));
    }

    public Cursor query(c4.d dVar, CancellationSignal cancellationSignal) {
        ue.d.e(dVar, "query");
        assertNotMainThread();
        assertNotSuspendingTransaction();
        if (cancellationSignal != null) {
            return ((d4.g) getOpenHelper()).r().b(dVar, cancellationSignal);
        }
        return ((d4.g) getOpenHelper()).r().x(dVar);
    }

    public <V> V runInTransaction(Callable<V> callable) {
        ue.d.e(callable, "body");
        beginTransaction();
        try {
            V vCall = callable.call();
            setTransactionSuccessful();
            return vCall;
        } finally {
            endTransaction();
        }
    }
}
