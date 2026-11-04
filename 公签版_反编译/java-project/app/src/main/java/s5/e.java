package s5;

import a6.q;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;

/* loaded from: classes.dex */
public final class e implements x5.e {

    /* renamed from: a, reason: collision with root package name */
    public final int f14429a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14430b;

    /* renamed from: c, reason: collision with root package name */
    public w5.c f14431c;

    /* renamed from: d, reason: collision with root package name */
    public final Handler f14432d;

    /* renamed from: e, reason: collision with root package name */
    public final int f14433e;

    /* renamed from: f, reason: collision with root package name */
    public final long f14434f;

    /* renamed from: g, reason: collision with root package name */
    public Bitmap f14435g;

    public e(Handler handler, int i10, long j10) {
        if (!q.i(Integer.MIN_VALUE, Integer.MIN_VALUE)) {
            throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648");
        }
        this.f14429a = Integer.MIN_VALUE;
        this.f14430b = Integer.MIN_VALUE;
        this.f14432d = handler;
        this.f14433e = i10;
        this.f14434f = j10;
    }

    @Override // x5.e
    public final void b(Object obj) {
        this.f14435g = (Bitmap) obj;
        Handler handler = this.f14432d;
        handler.sendMessageAtTime(handler.obtainMessage(1, this), this.f14434f);
    }

    @Override // x5.e
    public final w5.c g() {
        return this.f14431c;
    }

    @Override // x5.e
    public final void h(w5.f fVar) throws Throwable {
        fVar.k(this.f14429a, this.f14430b);
    }

    @Override // x5.e
    public final void i(Drawable drawable) {
        this.f14435g = null;
    }

    @Override // x5.e
    public final void j(w5.c cVar) {
        this.f14431c = cVar;
    }

    @Override // com.bumptech.glide.manager.h
    public final void c() {
    }

    @Override // com.bumptech.glide.manager.h
    public final void e() {
    }

    @Override // com.bumptech.glide.manager.h
    public final void k() {
    }

    @Override // x5.e
    public final void a(w5.f fVar) {
    }

    @Override // x5.e
    public final void d(Drawable drawable) {
    }

    @Override // x5.e
    public final void f(Drawable drawable) {
    }
}
