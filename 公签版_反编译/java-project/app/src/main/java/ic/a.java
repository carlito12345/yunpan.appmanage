package ic;

import hc.d;
import java.util.concurrent.atomic.AtomicReference;
import qf.c;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class a implements gc.b {

    /* renamed from: a, reason: collision with root package name */
    public static final a f8651a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ a[] f8652b;

    static {
        a aVar = new a();
        f8651a = aVar;
        f8652b = new a[]{aVar};
    }

    public static void b(AtomicReference atomicReference) {
        gc.b bVar;
        gc.b bVar2 = (gc.b) atomicReference.get();
        a aVar = f8651a;
        if (bVar2 == aVar || (bVar = (gc.b) atomicReference.getAndSet(aVar)) == aVar || bVar == null) {
            return;
        }
        bVar.c();
    }

    public static boolean d(AtomicReference atomicReference, gc.b bVar) {
        jc.a.a(bVar, "d is null");
        while (!atomicReference.compareAndSet(null, bVar)) {
            if (atomicReference.get() != null) {
                bVar.c();
                if (atomicReference.get() == f8651a) {
                    return false;
                }
                c.P(new d(0));
                return false;
            }
        }
        return true;
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f8652b.clone();
    }

    @Override // gc.b
    public final void c() {
    }
}
