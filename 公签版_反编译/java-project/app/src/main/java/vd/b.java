package vd;

import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public final long f16799a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f16800b = new ConcurrentHashMap();

    public b(long j10) {
        this.f16799a = (j10 * 1000) + System.currentTimeMillis();
    }
}
