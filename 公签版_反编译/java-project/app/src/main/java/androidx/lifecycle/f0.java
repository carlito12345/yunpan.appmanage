package androidx.lifecycle;

import android.os.Handler;

/* loaded from: classes.dex */
public final class f0 implements t {

    /* renamed from: i, reason: collision with root package name */
    public static final f0 f1763i = new f0();

    /* renamed from: a, reason: collision with root package name */
    public int f1764a;

    /* renamed from: b, reason: collision with root package name */
    public int f1765b;

    /* renamed from: e, reason: collision with root package name */
    public Handler f1768e;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1766c = true;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1767d = true;

    /* renamed from: f, reason: collision with root package name */
    public final v f1769f = new v(this);

    /* renamed from: g, reason: collision with root package name */
    public final a2.h f1770g = new a2.h(8, this);

    /* renamed from: h, reason: collision with root package name */
    public final a1.i f1771h = new a1.i(6, this);

    public final void b() {
        int i10 = this.f1765b + 1;
        this.f1765b = i10;
        if (i10 == 1) {
            if (this.f1766c) {
                this.f1769f.e(m.ON_RESUME);
                this.f1766c = false;
            } else {
                Handler handler = this.f1768e;
                ue.d.b(handler);
                handler.removeCallbacks(this.f1770g);
            }
        }
    }

    @Override // androidx.lifecycle.t
    public final o getLifecycle() {
        return this.f1769f;
    }
}
