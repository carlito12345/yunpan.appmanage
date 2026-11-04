package i2;

import java.io.IOException;

/* loaded from: classes.dex */
public final class i extends IOException {
    public i(Throwable th2) {
        String str;
        StringBuilder sb2 = new StringBuilder("Unexpected ");
        sb2.append(th2.getClass().getSimpleName());
        if (th2.getMessage() != null) {
            str = ": " + th2.getMessage();
        } else {
            str = "";
        }
        sb2.append(str);
        super(sb2.toString(), th2);
    }
}
