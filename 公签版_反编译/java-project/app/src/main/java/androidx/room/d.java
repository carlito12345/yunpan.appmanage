package androidx.room;

import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class d extends v {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(p pVar) {
        super(pVar);
        ue.d.e(pVar, "database");
    }

    public abstract void bind(c4.e eVar, Object obj);

    public final int handle(Object obj) {
        c4.e eVarAcquire = acquire();
        try {
            bind(eVarAcquire, obj);
            return eVarAcquire.f();
        } finally {
            release(eVarAcquire);
        }
    }

    public final int handleMultiple(Iterable<Object> iterable) {
        ue.d.e(iterable, "entities");
        c4.e eVarAcquire = acquire();
        try {
            Iterator<Object> it = iterable.iterator();
            int iF = 0;
            while (it.hasNext()) {
                bind(eVarAcquire, it.next());
                iF += eVarAcquire.f();
            }
            return iF;
        } finally {
            release(eVarAcquire);
        }
    }

    public final int handleMultiple(Object[] objArr) {
        ue.d.e(objArr, "entities");
        c4.e eVarAcquire = acquire();
        try {
            int iF = 0;
            for (Object obj : objArr) {
                bind(eVarAcquire, obj);
                iF += eVarAcquire.f();
            }
            return iF;
        } finally {
            release(eVarAcquire);
        }
    }
}
