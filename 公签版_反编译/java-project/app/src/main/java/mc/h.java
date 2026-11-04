package mc;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class h implements kc.a {

    /* renamed from: a, reason: collision with root package name */
    public final ec.e f11162a;

    /* renamed from: b, reason: collision with root package name */
    public final Iterator f11163b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f11164c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f11165d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f11166e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f11167f;

    public h(ec.e eVar, Iterator it) {
        this.f11162a = eVar;
        this.f11163b = it;
    }

    @Override // kc.a
    public final int a() {
        this.f11165d = true;
        return 1;
    }

    @Override // gc.b
    public final void c() {
        this.f11164c = true;
    }

    @Override // kc.d
    public final void clear() {
        this.f11166e = true;
    }

    @Override // kc.d
    public final boolean isEmpty() {
        return this.f11166e;
    }

    @Override // kc.d
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called");
    }

    @Override // kc.d
    public final Object poll() {
        if (this.f11166e) {
            return null;
        }
        boolean z = this.f11167f;
        Iterator it = this.f11163b;
        if (!z) {
            this.f11167f = true;
        } else if (!it.hasNext()) {
            this.f11166e = true;
            return null;
        }
        Object next = it.next();
        jc.a.a(next, "The iterator returned a null value");
        return next;
    }
}
