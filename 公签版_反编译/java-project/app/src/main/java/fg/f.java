package fg;

import java.io.EOFException;

/* loaded from: classes.dex */
public final class f implements x {
    @Override // fg.x
    public final c0 timeout() {
        return c0.NONE;
    }

    @Override // fg.x
    public final void write(i iVar, long j10) throws EOFException {
        ue.d.e(iVar, "source");
        iVar.skip(j10);
    }

    @Override // fg.x, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
    }

    @Override // fg.x, java.io.Flushable
    public final void flush() {
    }
}
