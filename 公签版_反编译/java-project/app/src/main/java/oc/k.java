package oc;

/* loaded from: classes.dex */
public final class k extends ec.j {

    /* renamed from: d, reason: collision with root package name */
    public static final m f11734d = new m("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.newthread-priority", 5).intValue())), false);

    /* renamed from: c, reason: collision with root package name */
    public final m f11735c = f11734d;

    @Override // ec.j
    public final ec.i a() {
        return new l(this.f11735c);
    }
}
