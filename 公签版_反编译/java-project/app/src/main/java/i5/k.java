package i5;

import a6.q;
import android.graphics.Bitmap;

/* loaded from: classes.dex */
public final class k implements i {

    /* renamed from: a, reason: collision with root package name */
    public final b f8625a;

    /* renamed from: b, reason: collision with root package name */
    public int f8626b;

    /* renamed from: c, reason: collision with root package name */
    public Bitmap.Config f8627c;

    public k(b bVar) {
        this.f8625a = bVar;
    }

    @Override // i5.i
    public final void a() {
        this.f8625a.o(this);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f8626b == kVar.f8626b && q.b(this.f8627c, kVar.f8627c);
    }

    public final int hashCode() {
        int i10 = this.f8626b * 31;
        Bitmap.Config config = this.f8627c;
        return i10 + (config != null ? config.hashCode() : 0);
    }

    public final String toString() {
        return l.b(this.f8626b, this.f8627c);
    }
}
