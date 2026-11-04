package hg;

import yh.x;

/* loaded from: classes.dex */
public final class b extends a {
    public b(long j10, int i10) {
        super(String.format("%,d KiB of memory would be needed; limit was %,d KiB. If the file is not corrupt, consider increasing the memory limit.", Long.valueOf(j10), Integer.valueOf(i10)));
    }

    public b(long j10, int i10, x xVar) {
        super(String.format("%,d KiB of memory would be needed; limit was %,d KiB. If the file is not corrupt, consider increasing the memory limit.", Long.valueOf(j10), Integer.valueOf(i10)), xVar);
    }

    public b(String str) {
        super(g.b.A("Cannot read encrypted content from ", str, " without a password."));
    }
}
