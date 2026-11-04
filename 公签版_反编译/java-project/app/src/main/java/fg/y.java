package fg;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;

/* loaded from: classes.dex */
public final class y extends e {

    /* renamed from: a, reason: collision with root package name */
    public final Socket f5887a;

    public y(Socket socket) {
        ue.d.e(socket, "socket");
        this.f5887a = socket;
    }

    @Override // fg.e
    public final IOException newTimeoutException(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // fg.e
    public final void timedOut() throws IOException {
        Socket socket = this.f5887a;
        try {
            socket.close();
        } catch (AssertionError e7) {
            if (!e0.f(e7)) {
                throw e7;
            }
            r.f5868a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e7);
        } catch (Exception e10) {
            r.f5868a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e10);
        }
    }
}
