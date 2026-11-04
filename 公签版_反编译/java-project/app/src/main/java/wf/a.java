package wf;

import java.io.IOException;

/* loaded from: classes.dex */
public final class a extends IOException {
    public a(String str) {
        super(str);
    }

    public a(Exception exc) {
        super(exc);
    }

    public a(IOException iOException) {
        super("Zip headers not found. Probably not a zip file or a corrupted zip file", iOException);
    }

    public a(String str, int i10) {
        super(str);
    }

    public a(String str, Throwable th2) {
        super(str, th2);
    }
}
