package i5;

import a2.g1;
import android.graphics.Bitmap;

/* loaded from: classes.dex */
public final class a implements i {

    /* renamed from: a, reason: collision with root package name */
    public final b f8604a;

    /* renamed from: b, reason: collision with root package name */
    public int f8605b;

    /* renamed from: c, reason: collision with root package name */
    public int f8606c;

    /* renamed from: d, reason: collision with root package name */
    public Bitmap.Config f8607d;

    public a(b bVar) {
        this.f8604a = bVar;
    }

    @Override // i5.i
    public final void a() {
        this.f8604a.o(this);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f8605b == aVar.f8605b && this.f8606c == aVar.f8606c && this.f8607d == aVar.f8607d;
    }

    public final int hashCode() {
        int i10 = ((this.f8605b * 31) + this.f8606c) * 31;
        Bitmap.Config config = this.f8607d;
        return i10 + (config != null ? config.hashCode() : 0);
    }

    public final String toString() {
        return g1.R(this.f8605b, this.f8606c, this.f8607d);
    }
}
