package rg;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class a implements Closeable {

    /* renamed from: e, reason: collision with root package name */
    public static final long[] f13769e = new long[64];

    /* renamed from: a, reason: collision with root package name */
    public final xg.b f13770a;

    /* renamed from: b, reason: collision with root package name */
    public final ByteOrder f13771b;

    /* renamed from: c, reason: collision with root package name */
    public long f13772c;

    /* renamed from: d, reason: collision with root package name */
    public int f13773d;

    static {
        for (int i10 = 1; i10 <= 63; i10++) {
            long[] jArr = f13769e;
            jArr[i10] = (jArr[i10 - 1] << 1) + 1;
        }
    }

    public a(InputStream inputStream, ByteOrder byteOrder) {
        int i10 = xg.b.f18466i;
        xg.a aVar = new xg.a();
        aVar.P0(inputStream);
        try {
            this.f13770a = new xg.b(aVar);
            this.f13771b = byteOrder;
        } catch (IOException e7) {
            throw new UncheckedIOException(e7);
        }
    }

    public final long A(int i10) {
        long j10;
        ByteOrder byteOrder = this.f13771b;
        ByteOrder byteOrder2 = ByteOrder.LITTLE_ENDIAN;
        long[] jArr = f13769e;
        if (byteOrder == byteOrder2) {
            long j11 = this.f13772c;
            j10 = jArr[i10] & j11;
            this.f13772c = j11 >>> i10;
        } else {
            j10 = jArr[i10] & (this.f13772c >> (this.f13773d - i10));
        }
        this.f13773d -= i10;
        return j10;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f13770a.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003c, code lost:
    
        if (r0 >= r13) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003e, code lost:
    
        r0 = r13 - r0;
        r5 = 8 - r0;
        r6 = r4.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0049, code lost:
    
        if (r6 >= 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004c, code lost:
    
        r2 = java.nio.ByteOrder.LITTLE_ENDIAN;
        r3 = rg.a.f13769e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
    
        if (r1 != r2) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
    
        r12.f13772c = ((r3[r0] & r6) << r12.f13773d) | r12.f13772c;
        r0 = (r6 >>> r0) & r3[r5];
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0063, code lost:
    
        r1 = r12.f13772c << r0;
        r12.f13772c = r1;
        r12.f13772c = r1 | ((r6 >>> r5) & r3[r0]);
        r0 = r3[r5] & r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0073, code lost:
    
        r6 = r12.f13772c & r3[r13];
        r12.f13772c = r0;
        r12.f13773d = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007c, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0081, code lost:
    
        return A(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
    
        return r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long r(int i10) throws IOException {
        if (i10 < 0 || i10 > 63) {
            throw new IOException("count must not be negative or greater than 63");
        }
        while (true) {
            int i11 = this.f13773d;
            ByteOrder byteOrder = this.f13771b;
            xg.b bVar = this.f13770a;
            if (i11 >= i10 || i11 >= 57) {
                break;
            }
            long j10 = bVar.read();
            if (j10 < 0) {
                return -1L;
            }
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.f13772c |= j10 << this.f13773d;
            } else {
                this.f13772c = (this.f13772c << 8) | j10;
            }
            this.f13773d += 8;
        }
    }
}
