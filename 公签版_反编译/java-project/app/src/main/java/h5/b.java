package h5;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class b extends WeakReference {

    /* renamed from: a, reason: collision with root package name */
    public final s f6524a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f6525b;

    /* renamed from: c, reason: collision with root package name */
    public z f6526c;

    public b(s sVar, t tVar, ReferenceQueue referenceQueue) {
        super(tVar, referenceQueue);
        a6.h.c(sVar, "Argument must not be null");
        this.f6524a = sVar;
        boolean z = tVar.f6656a;
        this.f6526c = null;
        this.f6525b = z;
    }
}
