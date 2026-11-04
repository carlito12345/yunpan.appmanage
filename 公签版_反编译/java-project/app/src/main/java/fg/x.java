package fg;

import java.io.Closeable;
import java.io.Flushable;

/* loaded from: classes.dex */
public interface x extends Closeable, Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    void close();

    void flush();

    c0 timeout();

    void write(i iVar, long j10);
}
