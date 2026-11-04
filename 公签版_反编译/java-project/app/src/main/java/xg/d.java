package xg;

import j$.util.Objects;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;

/* loaded from: classes.dex */
public final class d extends h {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f18475g = 0;

    /* renamed from: d, reason: collision with root package name */
    public long f18476d;

    /* renamed from: e, reason: collision with root package name */
    public final long f18477e;

    /* renamed from: f, reason: collision with root package name */
    public final long f18478f;

    /* JADX WARN: Illegal instructions before constructor call */
    public d(c cVar) {
        tg.b bVar = (tg.b) cVar.f15098b;
        if (bVar == null) {
            throw new IllegalStateException("origin == null");
        }
        InputStream inputStreamN0 = bVar.N0(cVar.Q0());
        CRC32 crc32 = cVar.f18472e;
        Objects.requireNonNull(crc32, "builder.checksum");
        super(new CheckedInputStream(inputStreamN0, crc32), cVar);
        this.f18478f = cVar.f18473f;
        this.f18477e = cVar.f18474g;
    }

    public final synchronized void J(int i10) {
        if (i10 != -1) {
            try {
                this.f18476d += i10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        super.r(i10);
    }

    public final synchronized long K() {
        return this.f18476d;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001c A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:3:0x0001, B:5:0x000c, B:12:0x001c, B:15:0x002f, B:16:0x0036), top: B:21:0x0001 }] */
    @Override // xg.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void r(int i10) {
        try {
            J(i10);
            if (this.f18478f <= 0 || K() < this.f18478f) {
                if (i10 == -1) {
                    if (this.f18477e != ((CheckedInputStream) ((FilterInputStream) this).in).getChecksum().getValue()) {
                        throw new IOException("Checksum verification failed.");
                    }
                }
            }
        } finally {
        }
    }

    @Override // xg.h, java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j10) {
        long jSkip;
        jSkip = super.skip(j10);
        this.f18476d += jSkip;
        return jSkip;
    }
}
