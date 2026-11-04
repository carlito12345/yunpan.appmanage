package u9;

import java.io.IOException;

/* loaded from: classes.dex */
public final class a extends RuntimeException {
    public a() {
        super("The main shell died during initialization");
    }

    public a(IOException iOException) {
        super("Unable to create a shell!", iOException);
    }
}
