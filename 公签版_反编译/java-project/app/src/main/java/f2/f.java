package f2;

import java.io.IOException;

/* loaded from: classes.dex */
public final class f extends IOException {
    public f(int i10) {
        this(i10, -9223372036854775807L, -9223372036854775807L);
    }

    public f(int i10, long j10, long j11) {
        String str;
        StringBuilder sb2 = new StringBuilder("Illegal clipping: ");
        if (i10 != 0) {
            if (i10 == 1) {
                str = "not seekable to start";
            } else if (i10 != 2) {
                str = "unknown";
            } else {
                a9.o.t((j10 == -9223372036854775807L || j11 == -9223372036854775807L) ? false : true);
                str = "start exceeds end. Start time: " + j10 + ", End time: " + j11;
            }
        } else {
            str = "invalid period count";
        }
        sb2.append(str);
        super(sb2.toString());
    }
}
