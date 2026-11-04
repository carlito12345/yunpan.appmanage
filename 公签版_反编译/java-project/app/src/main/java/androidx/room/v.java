package androidx.room;

import androidx.lifecycle.m0;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class v {
    private final p database;
    private final AtomicBoolean lock;
    private final ie.a stmt$delegate;

    public v(p pVar) {
        ue.d.e(pVar, "database");
        this.database = pVar;
        this.lock = new AtomicBoolean(false);
        this.stmt$delegate = new ie.d(new m0(1, this));
    }

    public c4.e acquire() {
        assertNotMainThread();
        if (this.lock.compareAndSet(false, true)) {
            return (c4.e) ((ie.d) this.stmt$delegate).a();
        }
        return this.database.compileStatement(createQuery());
    }

    public void assertNotMainThread() {
        this.database.assertNotMainThread();
    }

    public abstract String createQuery();

    public void release(c4.e eVar) {
        ue.d.e(eVar, "statement");
        if (eVar == ((c4.e) ((ie.d) this.stmt$delegate).a())) {
            this.lock.set(false);
        }
    }
}
