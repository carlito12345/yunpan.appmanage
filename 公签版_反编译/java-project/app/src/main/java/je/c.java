package je;

import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class c extends d implements RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    public final d f9860a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9861b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9862c;

    public c(d dVar, int i10, int i11) {
        ue.d.e(dVar, "list");
        this.f9860a = dVar;
        this.f9861b = i10;
        nh.b.i(i10, i11, dVar.a());
        this.f9862c = i11 - i10;
    }

    @Override // je.d
    public final int a() {
        return this.f9862c;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        int i11 = this.f9862c;
        if (i10 < 0 || i10 >= i11) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
        }
        return this.f9860a.get(this.f9861b + i10);
    }

    @Override // je.d, java.util.List
    public final List subList(int i10, int i11) {
        nh.b.i(i10, i11, this.f9862c);
        int i12 = this.f9861b;
        return new c(this.f9860a, i10 + i12, i12 + i11);
    }
}
