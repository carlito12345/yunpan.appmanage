package fg;

import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class t implements k {

    /* renamed from: a, reason: collision with root package name */
    public final z f5872a;

    /* renamed from: b, reason: collision with root package name */
    public final i f5873b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5874c;

    public t(z zVar) {
        ue.d.e(zVar, "source");
        this.f5872a = zVar;
        this.f5873b = new i();
    }

    public final int A() throws EOFException {
        F(4L);
        int i10 = this.f5873b.readInt();
        return ((i10 & 255) << 24) | (((-16777216) & i10) >>> 24) | ((16711680 & i10) >>> 8) | ((65280 & i10) << 8);
    }

    @Override // fg.k
    public final byte[] B(long j10) throws EOFException {
        F(j10);
        return this.f5873b.B(j10);
    }

    @Override // fg.k
    public final void D(i iVar, long j10) throws EOFException {
        i iVar2 = this.f5873b;
        ue.d.e(iVar, "sink");
        try {
            F(j10);
            iVar2.D(iVar, j10);
        } catch (EOFException e7) {
            iVar.writeAll(iVar2);
            throw e7;
        }
    }

    @Override // fg.k
    public final void F(long j10) throws EOFException {
        if (!w(j10)) {
            throw new EOFException();
        }
    }

    @Override // fg.k
    public final long H() throws EOFException {
        i iVar;
        byte bL;
        F(1L);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            boolean zW = w(i11);
            iVar = this.f5873b;
            if (!zW) {
                break;
            }
            bL = iVar.L(i10);
            if ((bL < 48 || bL > 57) && ((bL < 97 || bL > 102) && (bL < 65 || bL > 70))) {
                break;
            }
            i10 = i11;
        }
        if (i10 == 0) {
            a9.o.r(16);
            a9.o.r(16);
            String string = Integer.toString(bL, 16);
            ue.d.d(string, "toString(this, checkRadix(radix))");
            throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(string));
        }
        return iVar.H();
    }

    @Override // fg.k
    public final InputStream I() {
        return new h(this, 1);
    }

    @Override // fg.k, fg.j
    public final i buffer() {
        return this.f5873b;
    }

    @Override // fg.k
    public final l c(long j10) throws EOFException {
        F(j10);
        return this.f5873b.c(j10);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (this.f5874c) {
            return;
        }
        this.f5874c = true;
        this.f5872a.close();
        this.f5873b.r();
    }

    @Override // fg.k
    public final byte[] i() {
        z zVar = this.f5872a;
        i iVar = this.f5873b;
        iVar.writeAll(zVar);
        return iVar.B(iVar.f5853b);
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f5874c;
    }

    @Override // fg.k
    public final boolean j() {
        if (this.f5874c) {
            throw new IllegalStateException("closed");
        }
        i iVar = this.f5873b;
        return iVar.j() && this.f5872a.read(iVar, 8192L) == -1;
    }

    @Override // fg.k
    public final long k() throws EOFException {
        i iVar;
        byte bL;
        F(1L);
        long j10 = 0;
        while (true) {
            long j11 = j10 + 1;
            boolean zW = w(j11);
            iVar = this.f5873b;
            if (!zW) {
                break;
            }
            bL = iVar.L(j10);
            if ((bL < 48 || bL > 57) && !(j10 == 0 && bL == 45)) {
                break;
            }
            j10 = j11;
        }
        if (j10 == 0) {
            a9.o.r(16);
            a9.o.r(16);
            String string = Integer.toString(bL, 16);
            ue.d.d(string, "toString(this, checkRadix(radix))");
            throw new NumberFormatException("Expected a digit or '-' but was 0x".concat(string));
        }
        return iVar.k();
    }

    @Override // fg.k
    public final String l(long j10) throws EOFException {
        if (j10 < 0) {
            throw new IllegalArgumentException(ta.q.j(j10, "limit < 0: ").toString());
        }
        long j11 = j10 == Long.MAX_VALUE ? Long.MAX_VALUE : j10 + 1;
        long jR = r((byte) 10, 0L, j11);
        i iVar = this.f5873b;
        if (jR != -1) {
            return gg.a.a(iVar, jR);
        }
        if (j11 < Long.MAX_VALUE && w(j11) && iVar.L(j11 - 1) == 13 && w(1 + j11) && iVar.L(j11) == 10) {
            return gg.a.a(iVar, j11);
        }
        i iVar2 = new i();
        iVar.K(0L, iVar2, Math.min(32, iVar.f5853b));
        throw new EOFException("\\n not found: limit=" + Math.min(iVar.f5853b, j10) + " content=" + iVar2.c(iVar2.f5853b).h() + (char) 8230);
    }

    @Override // fg.k
    public final boolean p(l lVar) {
        ue.d.e(lVar, "bytes");
        int iG = lVar.g();
        if (this.f5874c) {
            throw new IllegalStateException("closed");
        }
        if (iG < 0 || lVar.g() < iG) {
            return false;
        }
        for (int i10 = 0; i10 < iG; i10++) {
            long j10 = i10;
            if (!w(1 + j10) || this.f5873b.L(j10) != lVar.j(i10)) {
                return false;
            }
        }
        return true;
    }

    public final long r(byte b10, long j10, long j11) {
        if (this.f5874c) {
            throw new IllegalStateException("closed");
        }
        long jMax = 0;
        if (0 > j11) {
            throw new IllegalArgumentException(ta.q.j(j11, "fromIndex=0 toIndex=").toString());
        }
        while (jMax < j11) {
            i iVar = this.f5873b;
            long jM = iVar.M(b10, jMax, j11);
            if (jM != -1) {
                return jM;
            }
            long j12 = iVar.f5853b;
            if (j12 >= j11 || this.f5872a.read(iVar, 8192L) == -1) {
                return -1L;
            }
            jMax = Math.max(jMax, j12);
        }
        return -1L;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        ue.d.e(byteBuffer, "sink");
        i iVar = this.f5873b;
        if (iVar.f5853b == 0 && this.f5872a.read(iVar, 8192L) == -1) {
            return -1;
        }
        return iVar.read(byteBuffer);
    }

    @Override // fg.k
    public final byte readByte() throws EOFException {
        F(1L);
        return this.f5873b.readByte();
    }

    @Override // fg.k
    public final void readFully(byte[] bArr) throws EOFException {
        i iVar = this.f5873b;
        ue.d.e(bArr, "sink");
        try {
            F(bArr.length);
            iVar.readFully(bArr);
        } catch (EOFException e7) {
            int i10 = 0;
            while (true) {
                long j10 = iVar.f5853b;
                if (j10 <= 0) {
                    throw e7;
                }
                int i11 = iVar.read(bArr, i10, (int) j10);
                if (i11 == -1) {
                    throw new AssertionError();
                }
                i10 += i11;
            }
        }
    }

    @Override // fg.k
    public final int readInt() throws EOFException {
        F(4L);
        return this.f5873b.readInt();
    }

    @Override // fg.k
    public final long readLong() throws EOFException {
        F(8L);
        return this.f5873b.readLong();
    }

    @Override // fg.k
    public final short readShort() throws EOFException {
        F(2L);
        return this.f5873b.readShort();
    }

    @Override // fg.k
    public final void skip(long j10) throws EOFException {
        if (this.f5874c) {
            throw new IllegalStateException("closed");
        }
        while (j10 > 0) {
            i iVar = this.f5873b;
            if (iVar.f5853b == 0 && this.f5872a.read(iVar, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j10, iVar.f5853b);
            iVar.skip(jMin);
            j10 -= jMin;
        }
    }

    @Override // fg.k
    public final String t(Charset charset) {
        ue.d.e(charset, "charset");
        z zVar = this.f5872a;
        i iVar = this.f5873b;
        iVar.writeAll(zVar);
        return iVar.t(charset);
    }

    @Override // fg.z
    public final c0 timeout() {
        return this.f5872a.timeout();
    }

    public final String toString() {
        return "buffer(" + this.f5872a + ')';
    }

    @Override // fg.k
    public final l v() {
        z zVar = this.f5872a;
        i iVar = this.f5873b;
        iVar.writeAll(zVar);
        return iVar.c(iVar.f5853b);
    }

    @Override // fg.k
    public final boolean w(long j10) {
        i iVar;
        if (j10 < 0) {
            throw new IllegalArgumentException(ta.q.j(j10, "byteCount < 0: ").toString());
        }
        if (this.f5874c) {
            throw new IllegalStateException("closed");
        }
        do {
            iVar = this.f5873b;
            if (iVar.f5853b >= j10) {
                return true;
            }
        } while (this.f5872a.read(iVar, 8192L) != -1);
        return false;
    }

    @Override // fg.k
    public final String z() {
        return l(Long.MAX_VALUE);
    }

    @Override // fg.z
    public final long read(i iVar, long j10) {
        ue.d.e(iVar, "sink");
        if (j10 >= 0) {
            if (!this.f5874c) {
                i iVar2 = this.f5873b;
                if (iVar2.f5853b == 0 && this.f5872a.read(iVar2, 8192L) == -1) {
                    return -1L;
                }
                return iVar2.read(iVar, Math.min(j10, iVar2.f5853b));
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(ta.q.j(j10, "byteCount < 0: ").toString());
    }
}
