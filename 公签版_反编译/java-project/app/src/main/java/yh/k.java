package yh;

import java.io.InputStream;

/* loaded from: classes3.dex */
public final class k extends o {

    /* renamed from: a, reason: collision with root package name */
    public final int f19247a;

    public k(int i10) throws c0 {
        this.f19247a = 1;
        if (i10 < 1 || i10 > 256) {
            throw new c0(da.b.a(i10, "Delta distance must be in the range [1, 256]: "));
        }
        this.f19247a = i10;
    }

    @Override // yh.o
    public final InputStream a(InputStream inputStream, b bVar) {
        return new j(inputStream, this.f19247a);
    }

    @Override // yh.o
    public final p b(q qVar, b bVar) {
        return new l(qVar, this);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new RuntimeException();
        }
    }
}
