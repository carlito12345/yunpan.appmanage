package sg;

import java.io.File;
import java.io.InputStream;
import java.util.function.Supplier;
import ta.q;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f14563a;

    /* renamed from: b, reason: collision with root package name */
    public static final oh.b f14564b;

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f14565c;

    static {
        char c7 = File.separatorChar;
        f14563a = new byte[0];
        System.lineSeparator();
        c.LF.getClass();
        c.CRLF.getClass();
        f14564b = new oh.b(new ah.a(11), 3);
        f14565c = new byte[8192];
        new oh.b(new ah.a(12), 4);
    }

    public static long a(InputStream inputStream, long j10, Supplier supplier) {
        if (j10 < 0) {
            throw new IllegalArgumentException(q.j(j10, "Skip count must be non-negative, actual: "));
        }
        long j11 = j10;
        while (j11 > 0) {
            long j12 = inputStream.read((byte[]) supplier.get(), 0, (int) Math.min(j11, r4.length));
            if (j12 < 0) {
                break;
            }
            j11 -= j12;
        }
        return j10 - j11;
    }
}
