package jg;

import java.io.IOException;
import java.util.BitSet;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public int f9944a;

    /* renamed from: b, reason: collision with root package name */
    public long f9945b;

    /* renamed from: c, reason: collision with root package name */
    public long f9946c;

    /* renamed from: d, reason: collision with root package name */
    public long f9947d;

    /* renamed from: e, reason: collision with root package name */
    public long f9948e;

    /* renamed from: f, reason: collision with root package name */
    public int f9949f;

    /* renamed from: g, reason: collision with root package name */
    public BitSet f9950g;

    /* renamed from: h, reason: collision with root package name */
    public int f9951h;

    /* renamed from: i, reason: collision with root package name */
    public int f9952i;

    public final void a(int i10) throws IOException {
        int i11 = this.f9952i;
        if (i11 > 0 && this.f9949f == 0) {
            throw new IOException("archive with entries but no folders");
        }
        if (i11 > this.f9948e) {
            throw new IOException("archive doesn't contain enough substreams for entries");
        }
        long jB = b() / 1024;
        if (i10 < jB) {
            throw new hg.b(jB, i10);
        }
    }

    public final long b() {
        int i10 = this.f9944a;
        int i11 = this.f9949f;
        long j10 = (this.f9945b * 22) + (i11 * 30) + (i10 * 16) + (i10 / 8);
        long j11 = this.f9946c;
        return ((this.f9951h * 100) + (j11 * 8) + (((this.f9947d - j11) + i11) * 8) + ((j11 - i11) * 16) + j10 + (r1 * 4) + (i10 * 8) + (i11 * 8)) * 2;
    }

    public final String toString() {
        return String.format("Archive with %,d entries in %,d folders, estimated size %,d KiB.", Integer.valueOf(this.f9951h), Integer.valueOf(this.f9949f), Long.valueOf(b() / 1024));
    }
}
