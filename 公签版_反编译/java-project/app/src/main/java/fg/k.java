package fg;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public interface k extends z, ReadableByteChannel {
    byte[] B(long j10);

    void D(i iVar, long j10);

    void F(long j10);

    long H();

    InputStream I();

    i buffer();

    l c(long j10);

    byte[] i();

    boolean j();

    long k();

    String l(long j10);

    boolean p(l lVar);

    byte readByte();

    void readFully(byte[] bArr);

    int readInt();

    long readLong();

    short readShort();

    void skip(long j10);

    String t(Charset charset);

    l v();

    boolean w(long j10);

    String z();
}
