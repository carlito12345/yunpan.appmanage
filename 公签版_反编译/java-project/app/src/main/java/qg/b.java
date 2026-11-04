package qg;

import java.io.IOException;
import yh.a0;
import yh.x;

/* loaded from: classes.dex */
public final class b extends mg.a {

    /* renamed from: a, reason: collision with root package name */
    public final a0 f13193a;

    public b(a aVar) {
        int i10 = xg.b.f18466i;
        xg.a aVar2 = new xg.a();
        tg.b bVar = (tg.b) aVar.f15098b;
        if (bVar == null) {
            throw new IllegalStateException("origin == null");
        }
        aVar2.P0(bVar.N0(aVar.Q0()));
        xg.b bVar2 = new xg.b(aVar2);
        int i11 = a.f13191f;
        this.f13193a = new a0(bVar2, aVar.f13192e, yh.b.f19214a);
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f13193a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f13193a.r(true);
    }

    @Override // java.io.InputStream
    public final int read() throws hg.b {
        try {
            return this.f13193a.read();
        } catch (x e7) {
            throw new hg.b(e7.f19308a, e7.f19309b, e7);
        }
    }

    @Override // java.io.InputStream
    public final long skip(long j10) throws hg.b {
        try {
            return sg.b.a(this.f13193a, j10, new ah.a(10));
        } catch (x e7) {
            throw new hg.b(e7.f19308a, e7.f19309b, e7);
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws hg.b {
        if (i11 == 0) {
            return 0;
        }
        try {
            return this.f13193a.read(bArr, i10, i11);
        } catch (x e7) {
            throw new hg.b(e7.f19308a, e7.f19309b, e7);
        }
    }
}
