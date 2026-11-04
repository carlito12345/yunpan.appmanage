package fg;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes.dex */
public final class p implements z {

    /* renamed from: a, reason: collision with root package name */
    public byte f5859a;

    /* renamed from: b, reason: collision with root package name */
    public final t f5860b;

    /* renamed from: c, reason: collision with root package name */
    public final Inflater f5861c;

    /* renamed from: d, reason: collision with root package name */
    public final q f5862d;

    /* renamed from: e, reason: collision with root package name */
    public final CRC32 f5863e;

    public p(z zVar) {
        ue.d.e(zVar, "source");
        t tVar = new t(zVar);
        this.f5860b = tVar;
        Inflater inflater = new Inflater(true);
        this.f5861c = inflater;
        this.f5862d = new q(tVar, inflater);
        this.f5863e = new CRC32();
    }

    public static void r(int i10, int i11, String str) throws IOException {
        if (i11 != i10) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i11), Integer.valueOf(i10)}, 3)));
        }
    }

    public final void A(long j10, i iVar, long j11) {
        u uVar = iVar.f5852a;
        ue.d.b(uVar);
        while (true) {
            int i10 = uVar.f5877c;
            int i11 = uVar.f5876b;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= i10 - i11;
            uVar = uVar.f5880f;
            ue.d.b(uVar);
        }
        while (j11 > 0) {
            int iMin = (int) Math.min(uVar.f5877c - r6, j11);
            this.f5863e.update(uVar.f5875a, (int) (uVar.f5876b + j10), iMin);
            j11 -= iMin;
            uVar = uVar.f5880f;
            ue.d.b(uVar);
            j10 = 0;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f5862d.close();
    }

    @Override // fg.z
    public final long read(i iVar, long j10) throws DataFormatException, IOException {
        t tVar;
        i iVar2;
        long j11;
        ue.d.e(iVar, "sink");
        if (j10 < 0) {
            throw new IllegalArgumentException(ta.q.j(j10, "byteCount < 0: ").toString());
        }
        if (j10 == 0) {
            return 0L;
        }
        byte b10 = this.f5859a;
        CRC32 crc32 = this.f5863e;
        t tVar2 = this.f5860b;
        if (b10 == 0) {
            tVar2.F(10L);
            i iVar3 = tVar2.f5873b;
            byte bL = iVar3.L(3L);
            boolean z = ((bL >> 1) & 1) == 1;
            if (z) {
                A(0L, iVar3, 10L);
            }
            r(8075, tVar2.readShort(), "ID1ID2");
            tVar2.skip(8L);
            if (((bL >> 2) & 1) == 1) {
                tVar2.F(2L);
                if (z) {
                    A(0L, iVar3, 2L);
                }
                short s8 = iVar3.readShort();
                long j12 = (short) (((s8 & 255) << 8) | ((s8 & 65280) >>> 8));
                tVar2.F(j12);
                if (z) {
                    A(0L, iVar3, j12);
                    j11 = j12;
                } else {
                    j11 = j12;
                }
                tVar2.skip(j11);
            }
            if (((bL >> 3) & 1) == 1) {
                iVar2 = iVar3;
                long jR = tVar2.r((byte) 0, 0L, Long.MAX_VALUE);
                if (jR == -1) {
                    throw new EOFException();
                }
                if (z) {
                    tVar = tVar2;
                    A(0L, iVar2, jR + 1);
                } else {
                    tVar = tVar2;
                }
                tVar.skip(jR + 1);
            } else {
                iVar2 = iVar3;
                tVar = tVar2;
            }
            if (((bL >> 4) & 1) == 1) {
                long jR2 = tVar.r((byte) 0, 0L, Long.MAX_VALUE);
                if (jR2 == -1) {
                    throw new EOFException();
                }
                if (z) {
                    A(0L, iVar2, jR2 + 1);
                }
                tVar.skip(jR2 + 1);
            }
            if (z) {
                tVar.F(2L);
                short s10 = iVar2.readShort();
                r((short) (((s10 & 255) << 8) | ((s10 & 65280) >>> 8)), (short) crc32.getValue(), "FHCRC");
                crc32.reset();
            }
            this.f5859a = (byte) 1;
        } else {
            tVar = tVar2;
        }
        if (this.f5859a == 1) {
            long j13 = iVar.f5853b;
            long j14 = this.f5862d.read(iVar, j10);
            if (j14 != -1) {
                A(j13, iVar, j14);
                return j14;
            }
            this.f5859a = (byte) 2;
        }
        if (this.f5859a != 2) {
            return -1L;
        }
        r(tVar.A(), (int) crc32.getValue(), "CRC");
        r(tVar.A(), (int) this.f5861c.getBytesWritten(), "ISIZE");
        this.f5859a = (byte) 3;
        if (tVar.j()) {
            return -1L;
        }
        throw new IOException("gzip finished without exhausting source");
    }

    @Override // fg.z
    public final c0 timeout() {
        return this.f5860b.f5872a.timeout();
    }
}
