package fg;

import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class s implements j {

    /* renamed from: a, reason: collision with root package name */
    public final x f5869a;

    /* renamed from: b, reason: collision with root package name */
    public final i f5870b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5871c;

    public s(x xVar) {
        ue.d.e(xVar, "sink");
        this.f5869a = xVar;
        this.f5870b = new i();
    }

    @Override // fg.j
    public final i buffer() {
        return this.f5870b;
    }

    @Override // fg.x, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() throws Throwable {
        x xVar = this.f5869a;
        if (this.f5871c) {
            return;
        }
        try {
            i iVar = this.f5870b;
            long j10 = iVar.f5853b;
            if (j10 > 0) {
                xVar.write(iVar, j10);
            }
            th = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            xVar.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f5871c = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // fg.j
    public final j emit() {
        if (this.f5871c) {
            throw new IllegalStateException("closed");
        }
        i iVar = this.f5870b;
        long j10 = iVar.f5853b;
        if (j10 > 0) {
            this.f5869a.write(iVar, j10);
        }
        return this;
    }

    @Override // fg.j
    public final j emitCompleteSegments() {
        if (this.f5871c) {
            throw new IllegalStateException("closed");
        }
        i iVar = this.f5870b;
        long J = iVar.J();
        if (J > 0) {
            this.f5869a.write(iVar, J);
        }
        return this;
    }

    @Override // fg.j, fg.x, java.io.Flushable
    public final void flush() {
        if (this.f5871c) {
            throw new IllegalStateException("closed");
        }
        i iVar = this.f5870b;
        long j10 = iVar.f5853b;
        x xVar = this.f5869a;
        if (j10 > 0) {
            xVar.write(iVar, j10);
        }
        xVar.flush();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f5871c;
    }

    @Override // fg.x
    public final c0 timeout() {
        return this.f5869a.timeout();
    }

    public final String toString() {
        return "buffer(" + this.f5869a + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        ue.d.e(byteBuffer, "source");
        if (this.f5871c) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.f5870b.write(byteBuffer);
        emitCompleteSegments();
        return iWrite;
    }

    @Override // fg.j
    public final long writeAll(z zVar) throws IOException {
        long j10 = 0;
        while (true) {
            long j11 = ((d) zVar).read(this.f5870b, 8192L);
            if (j11 == -1) {
                return j10;
            }
            j10 += j11;
            emitCompleteSegments();
        }
    }

    @Override // fg.j
    public final j writeByte(int i10) {
        if (this.f5871c) {
            throw new IllegalStateException("closed");
        }
        this.f5870b.W(i10);
        emitCompleteSegments();
        return this;
    }

    @Override // fg.j
    public final j writeDecimalLong(long j10) {
        if (this.f5871c) {
            throw new IllegalStateException("closed");
        }
        this.f5870b.X(j10);
        emitCompleteSegments();
        return this;
    }

    @Override // fg.j
    public final j writeHexadecimalUnsignedLong(long j10) {
        if (this.f5871c) {
            throw new IllegalStateException("closed");
        }
        this.f5870b.Y(j10);
        emitCompleteSegments();
        return this;
    }

    @Override // fg.j
    public final j writeInt(int i10) {
        if (this.f5871c) {
            throw new IllegalStateException("closed");
        }
        this.f5870b.Z(i10);
        emitCompleteSegments();
        return this;
    }

    @Override // fg.j
    public final j writeShort(int i10) {
        if (this.f5871c) {
            throw new IllegalStateException("closed");
        }
        this.f5870b.b0(i10);
        emitCompleteSegments();
        return this;
    }

    @Override // fg.j
    public final j writeUtf8(String str) {
        ue.d.e(str, "string");
        if (this.f5871c) {
            throw new IllegalStateException("closed");
        }
        this.f5870b.e0(str);
        emitCompleteSegments();
        return this;
    }

    @Override // fg.x
    public final void write(i iVar, long j10) {
        ue.d.e(iVar, "source");
        if (!this.f5871c) {
            this.f5870b.write(iVar, j10);
            emitCompleteSegments();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // fg.j
    public final j write(l lVar) {
        ue.d.e(lVar, "byteString");
        if (!this.f5871c) {
            this.f5870b.T(lVar);
            emitCompleteSegments();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // fg.j
    public final j write(byte[] bArr) {
        ue.d.e(bArr, "source");
        if (!this.f5871c) {
            this.f5870b.U(bArr);
            emitCompleteSegments();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // fg.j
    public final j write(byte[] bArr, int i10, int i11) {
        ue.d.e(bArr, "source");
        if (!this.f5871c) {
            this.f5870b.V(bArr, i10, i11);
            emitCompleteSegments();
            return this;
        }
        throw new IllegalStateException("closed");
    }
}
