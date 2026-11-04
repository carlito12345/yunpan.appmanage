package fg;

import java.nio.channels.WritableByteChannel;

/* loaded from: classes.dex */
public interface j extends x, WritableByteChannel {
    i buffer();

    j emit();

    j emitCompleteSegments();

    @Override // fg.x, java.io.Flushable
    void flush();

    j write(l lVar);

    j write(byte[] bArr);

    j write(byte[] bArr, int i10, int i11);

    long writeAll(z zVar);

    j writeByte(int i10);

    j writeDecimalLong(long j10);

    j writeHexadecimalUnsignedLong(long j10);

    j writeInt(int i10);

    j writeShort(int i10);

    j writeUtf8(String str);
}
