package okhttp3.internal.cache;

import fg.i;
import fg.m;
import fg.x;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes.dex */
class FaultHidingSink extends m {
    private boolean hasErrors;

    public FaultHidingSink(x xVar) {
        super(xVar);
    }

    @Override // fg.m, fg.x, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.close();
        } catch (IOException e7) {
            this.hasErrors = true;
            onException(e7);
        }
    }

    @Override // fg.m, fg.x, java.io.Flushable
    public void flush() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e7) {
            this.hasErrors = true;
            onException(e7);
        }
    }

    public void onException(IOException iOException) {
    }

    @Override // fg.m, fg.x
    public void write(i iVar, long j10) throws EOFException {
        if (this.hasErrors) {
            iVar.skip(j10);
            return;
        }
        try {
            super.write(iVar, j10);
        } catch (IOException e7) {
            this.hasErrors = true;
            onException(e7);
        }
    }
}
