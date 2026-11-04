package he;

import java.net.SocketTimeoutException;

/* loaded from: classes.dex */
public final class a extends f {
    public a() {
        super("Connection timeout");
    }

    public a(SocketTimeoutException socketTimeoutException) {
        super(socketTimeoutException);
    }
}
