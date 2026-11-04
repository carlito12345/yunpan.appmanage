package jg;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class i extends d {

    /* renamed from: b, reason: collision with root package name */
    public final yh.a f9907b;

    public i(yh.a aVar) {
        super(new Class[0]);
        this.f9907b = aVar;
    }

    @Override // jg.d
    public final InputStream a(String str, InputStream inputStream, long j10, g gVar, byte[] bArr, int i10) throws IOException {
        try {
            yh.a aVar = this.f9907b;
            aVar.getClass();
            return aVar.a(inputStream, yh.b.f19214a);
        } catch (AssertionError e7) {
            throw new IOException(g.b.A("BCJ filter used in ", str, " needs XZ for Java > 1.4 - see https://commons.apache.org/proper/commons-compress/limitations.html#7Z"), e7);
        }
    }

    @Override // jg.d
    public final OutputStream b(OutputStream outputStream, Object obj) {
        yh.a aVar = this.f9907b;
        yh.q qVar = new yh.q(outputStream);
        aVar.getClass();
        return new rg.c(aVar.b(qVar, yh.b.f19214a));
    }
}
