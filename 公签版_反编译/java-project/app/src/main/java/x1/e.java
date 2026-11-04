package x1;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class e extends Exception {
    public e(String str) {
        super(str);
    }

    public e(IOException iOException) {
        super(iOException);
    }

    public e(String str, Throwable th2) {
        super(str, th2);
    }
}
