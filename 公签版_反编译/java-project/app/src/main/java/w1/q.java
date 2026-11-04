package w1;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

/* loaded from: classes.dex */
public class q extends i {

    /* renamed from: b, reason: collision with root package name */
    public final int f17400b;

    public q() {
        super(2008);
        this.f17400b = 1;
    }

    public static int a(int i10, int i11) {
        if (i10 == 2000 && i11 == 1) {
            return 2001;
        }
        return i10;
    }

    public static q b(IOException iOException, int i10) {
        String message = iOException.getMessage();
        int i11 = iOException instanceof SocketTimeoutException ? 2002 : iOException instanceof InterruptedIOException ? 1004 : (message == null || !qf.c.b0(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
        return i11 == 2007 ? new p(iOException) : new q(iOException, i11, i10);
    }

    public q(IOException iOException, int i10, int i11) {
        super(iOException, a(i10, i11));
        this.f17400b = i11;
    }

    public q(int i10, IOException iOException, String str) {
        super(str, iOException, a(i10, 1));
        this.f17400b = 1;
    }
}
