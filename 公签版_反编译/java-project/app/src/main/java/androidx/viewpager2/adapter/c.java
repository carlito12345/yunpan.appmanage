package androidx.viewpager2.adapter;

import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import m4.i;

/* loaded from: classes.dex */
public final class c extends i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2452a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f2453b;

    public c() {
        this.f2452a = 1;
        this.f2453b = new ArrayList(3);
    }

    @Override // m4.i
    public final void a(int i10) {
        switch (this.f2452a) {
            case 0:
                ((e) this.f2453b).b(false);
                return;
            default:
                try {
                    Iterator it = ((ArrayList) this.f2453b).iterator();
                    while (it.hasNext()) {
                        ((i) it.next()).a(i10);
                    }
                    return;
                } catch (ConcurrentModificationException e7) {
                    throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", e7);
                }
        }
    }

    @Override // m4.i
    public void b(int i10, float f10, int i11) {
        switch (this.f2452a) {
            case 1:
                try {
                    Iterator it = ((ArrayList) this.f2453b).iterator();
                    while (it.hasNext()) {
                        ((i) it.next()).b(i10, f10, i11);
                    }
                    return;
                } catch (ConcurrentModificationException e7) {
                    throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", e7);
                }
            default:
                return;
        }
    }

    @Override // m4.i
    public final void c(int i10) {
        switch (this.f2452a) {
            case 0:
                ((e) this.f2453b).b(false);
                return;
            default:
                try {
                    Iterator it = ((ArrayList) this.f2453b).iterator();
                    while (it.hasNext()) {
                        ((i) it.next()).c(i10);
                    }
                    return;
                } catch (ConcurrentModificationException e7) {
                    throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", e7);
                }
        }
    }

    public c(e eVar) {
        this.f2452a = 0;
        this.f2453b = eVar;
    }
}
