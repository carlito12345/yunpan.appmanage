package fi;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public final class f extends d {

    /* renamed from: q, reason: collision with root package name */
    public final OutputStream f5904q;

    public f(OutputStream outputStream) {
        this.f5904q = outputStream;
        this.l = 0L;
        this.f5900m = -1;
        this.f5902o = (byte) 0;
        this.f5901n = 1L;
    }

    @Override // fi.d
    public final void u0(int i10) throws IOException {
        this.f5904q.write(i10);
    }
}
