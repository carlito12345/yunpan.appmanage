package fg;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class n implements z {
    private final z delegate;

    public n(z zVar) {
        ue.d.e(zVar, "delegate");
        this.delegate = zVar;
    }

    /* renamed from: -deprecated_delegate, reason: not valid java name */
    public final z m1deprecated_delegate() {
        return this.delegate;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final z delegate() {
        return this.delegate;
    }

    @Override // fg.z
    public long read(i iVar, long j10) {
        ue.d.e(iVar, "sink");
        return this.delegate.read(iVar, j10);
    }

    @Override // fg.z
    public c0 timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }
}
