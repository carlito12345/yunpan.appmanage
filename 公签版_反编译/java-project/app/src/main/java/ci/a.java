package ci;

import java.io.DataInputStream;
import java.nio.ByteBuffer;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import qf.c;
import xg.b;
import yh.f0;
import yh.h;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final h f3258a;

    /* renamed from: b, reason: collision with root package name */
    public long f3259b;

    /* renamed from: c, reason: collision with root package name */
    public long f3260c;

    /* renamed from: d, reason: collision with root package name */
    public long f3261d;

    /* renamed from: e, reason: collision with root package name */
    public long f3262e;

    /* renamed from: f, reason: collision with root package name */
    public final bi.a f3263f;

    public a() {
        h hVar = new h();
        this.f3259b = 0L;
        this.f3260c = 0L;
        this.f3261d = 0L;
        this.f3262e = 0L;
        this.f3258a = hVar;
        try {
            this.f3263f = new zh.a(1);
        } catch (NoSuchAlgorithmException unused) {
            this.f3263f = new zh.a(0);
        }
    }

    public final void a(long j10, long j11) throws h {
        this.f3259b += (3 + j10) & (-4);
        this.f3260c += j11;
        this.f3261d += c.C(j11) + c.C(j10);
        this.f3262e = this.f3262e + 1;
        if (this.f3259b >= 0 && this.f3260c >= 0 && ((c.C(r5) + 1 + this.f3261d + 7) & (-4)) <= 17179869184L) {
            if (((c.C(this.f3262e) + 1 + this.f3261d + 7) & (-4)) + this.f3259b + 12 + 12 >= 0) {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
                byteBufferAllocate.putLong(j10);
                byteBufferAllocate.putLong(j11);
                byte[] bArrArray = byteBufferAllocate.array();
                bi.a aVar = this.f3263f;
                aVar.getClass();
                aVar.b(bArrArray, 0, bArrArray.length);
                return;
            }
        }
        throw this.f3258a;
    }

    public final void b(b bVar) throws h {
        CRC32 crc32 = new CRC32();
        crc32.update(0);
        CheckedInputStream checkedInputStream = new CheckedInputStream(bVar, crc32);
        if (c.k(checkedInputStream) != this.f3262e) {
            throw new h("XZ Block Header or the start of XZ Index is corrupt");
        }
        a aVar = new a();
        for (long j10 = 0; j10 < this.f3262e; j10++) {
            try {
                aVar.a(c.k(checkedInputStream), c.k(checkedInputStream));
                if (aVar.f3259b > this.f3259b || aVar.f3260c > this.f3260c || aVar.f3261d > this.f3261d) {
                    throw new h("XZ Index is corrupt");
                }
            } catch (f0 unused) {
                throw new h("XZ Index is corrupt");
            }
        }
        if (aVar.f3259b != this.f3259b || aVar.f3260c != this.f3260c || aVar.f3261d != this.f3261d || !Arrays.equals(aVar.f3263f.a(), this.f3263f.a())) {
            throw new h("XZ Index is corrupt");
        }
        DataInputStream dataInputStream = new DataInputStream(checkedInputStream);
        for (int iC = (int) (3 & (4 - (((c.C(this.f3262e) + 1) + this.f3261d) + 4))); iC > 0; iC--) {
            if (dataInputStream.readUnsignedByte() != 0) {
                throw new h("XZ Index is corrupt");
            }
        }
        long value = crc32.getValue();
        for (int i10 = 0; i10 < 4; i10++) {
            if (((value >>> (i10 * 8)) & 255) != dataInputStream.readUnsignedByte()) {
                throw new h("XZ Index is corrupt");
            }
        }
    }
}
