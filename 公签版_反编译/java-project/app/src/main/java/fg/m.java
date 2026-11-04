package fg;

/* loaded from: classes.dex */
public abstract class m implements x {
    private final x delegate;

    public m(x xVar) {
        ue.d.e(xVar, "delegate");
        this.delegate = xVar;
    }

    /* renamed from: -deprecated_delegate, reason: not valid java name */
    public final x m0deprecated_delegate() {
        return this.delegate;
    }

    @Override // fg.x, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() {
        this.delegate.close();
    }

    public final x delegate() {
        return this.delegate;
    }

    @Override // fg.x, java.io.Flushable
    public void flush() {
        this.delegate.flush();
    }

    @Override // fg.x
    public c0 timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }

    @Override // fg.x
    public void write(i iVar, long j10) {
        ue.d.e(iVar, "source");
        this.delegate.write(iVar, j10);
    }
}
