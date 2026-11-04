package okhttp3.internal.cache2;

import fg.c0;
import fg.e0;
import fg.i;
import fg.l;
import fg.z;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import okhttp3.internal.Util;

/* loaded from: classes.dex */
final class Relay {
    private static final long FILE_HEADER_SIZE = 32;
    static final l PREFIX_CLEAN;
    static final l PREFIX_DIRTY;
    private static final int SOURCE_FILE = 2;
    private static final int SOURCE_UPSTREAM = 1;
    final long bufferMaxSize;
    boolean complete;
    RandomAccessFile file;
    private final l metadata;
    int sourceCount;
    z upstream;
    long upstreamPos;
    Thread upstreamReader;
    final i upstreamBuffer = new i();
    final i buffer = new i();

    public class RelaySource implements z {
        private FileOperator fileOperator;
        private long sourcePos;
        private final c0 timeout = new c0();

        public RelaySource() {
            this.fileOperator = new FileOperator(Relay.this.file.getChannel());
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.fileOperator == null) {
                return;
            }
            RandomAccessFile randomAccessFile = null;
            this.fileOperator = null;
            synchronized (Relay.this) {
                try {
                    Relay relay = Relay.this;
                    int i10 = relay.sourceCount - 1;
                    relay.sourceCount = i10;
                    if (i10 == 0) {
                        RandomAccessFile randomAccessFile2 = relay.file;
                        relay.file = null;
                        randomAccessFile = randomAccessFile2;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (randomAccessFile != null) {
                Util.closeQuietly(randomAccessFile);
            }
        }

        @Override // fg.z
        public long read(i iVar, long j10) throws IOException {
            Relay relay;
            if (this.fileOperator == null) {
                throw new IllegalStateException("closed");
            }
            synchronized (Relay.this) {
                while (true) {
                    try {
                        long j11 = this.sourcePos;
                        Relay relay2 = Relay.this;
                        long j12 = relay2.upstreamPos;
                        if (j11 != j12) {
                            long j13 = j12 - relay2.buffer.f5853b;
                            if (j11 < j13) {
                                long jMin = Math.min(j10, j12 - j11);
                                this.fileOperator.read(this.sourcePos + Relay.FILE_HEADER_SIZE, iVar, jMin);
                                this.sourcePos += jMin;
                                return jMin;
                            }
                            long jMin2 = Math.min(j10, j12 - j11);
                            Relay.this.buffer.K(this.sourcePos - j13, iVar, jMin2);
                            this.sourcePos += jMin2;
                            return jMin2;
                        }
                        if (relay2.complete) {
                            return -1L;
                        }
                        if (relay2.upstreamReader == null) {
                            relay2.upstreamReader = Thread.currentThread();
                            try {
                                Relay relay3 = Relay.this;
                                long j14 = relay3.upstream.read(relay3.upstreamBuffer, relay3.bufferMaxSize);
                                if (j14 == -1) {
                                    Relay.this.commit(j12);
                                    synchronized (Relay.this) {
                                        Relay relay4 = Relay.this;
                                        relay4.upstreamReader = null;
                                        relay4.notifyAll();
                                    }
                                    return -1L;
                                }
                                long jMin3 = Math.min(j14, j10);
                                Relay.this.upstreamBuffer.K(0L, iVar, jMin3);
                                this.sourcePos += jMin3;
                                this.fileOperator.write(j12 + Relay.FILE_HEADER_SIZE, Relay.this.upstreamBuffer.clone(), j14);
                                synchronized (Relay.this) {
                                    try {
                                        Relay relay5 = Relay.this;
                                        relay5.buffer.write(relay5.upstreamBuffer, j14);
                                        Relay relay6 = Relay.this;
                                        i iVar2 = relay6.buffer;
                                        long j15 = iVar2.f5853b;
                                        long j16 = relay6.bufferMaxSize;
                                        if (j15 > j16) {
                                            iVar2.skip(j15 - j16);
                                        }
                                        relay = Relay.this;
                                        relay.upstreamPos += j14;
                                    } finally {
                                    }
                                }
                                synchronized (relay) {
                                    Relay relay7 = Relay.this;
                                    relay7.upstreamReader = null;
                                    relay7.notifyAll();
                                }
                                return jMin3;
                            } catch (Throwable th2) {
                                synchronized (Relay.this) {
                                    Relay relay8 = Relay.this;
                                    relay8.upstreamReader = null;
                                    relay8.notifyAll();
                                    throw th2;
                                }
                            }
                        }
                        this.timeout.waitUntilNotified(relay2);
                    } finally {
                    }
                }
            }
        }

        @Override // fg.z
        public c0 timeout() {
            return this.timeout;
        }
    }

    static {
        l lVar = l.f5854d;
        PREFIX_CLEAN = e0.e("OkHttp cache v1\n");
        PREFIX_DIRTY = e0.e("OkHttp DIRTY :(\n");
    }

    private Relay(RandomAccessFile randomAccessFile, z zVar, long j10, l lVar, long j11) {
        this.file = randomAccessFile;
        this.upstream = zVar;
        this.complete = zVar == null;
        this.upstreamPos = j10;
        this.metadata = lVar;
        this.bufferMaxSize = j11;
    }

    public static Relay edit(File file, z zVar, l lVar, long j10) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        Relay relay = new Relay(randomAccessFile, zVar, 0L, lVar, j10);
        randomAccessFile.setLength(0L);
        relay.writeHeader(PREFIX_DIRTY, -1L, -1L);
        return relay;
    }

    public static Relay read(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        FileOperator fileOperator = new FileOperator(randomAccessFile.getChannel());
        i iVar = new i();
        fileOperator.read(0L, iVar, FILE_HEADER_SIZE);
        if (!iVar.c(r2.g()).equals(PREFIX_CLEAN)) {
            throw new IOException("unreadable cache file");
        }
        long j10 = iVar.readLong();
        long j11 = iVar.readLong();
        i iVar2 = new i();
        fileOperator.read(j10 + FILE_HEADER_SIZE, iVar2, j11);
        return new Relay(randomAccessFile, null, j10, iVar2.c(iVar2.f5853b), 0L);
    }

    private void writeHeader(l lVar, long j10, long j11) throws IOException {
        i iVar = new i();
        iVar.T(lVar);
        iVar.a0(j10);
        iVar.a0(j11);
        if (iVar.f5853b != FILE_HEADER_SIZE) {
            throw new IllegalArgumentException();
        }
        new FileOperator(this.file.getChannel()).write(0L, iVar, FILE_HEADER_SIZE);
    }

    private void writeMetadata(long j10) throws IOException {
        i iVar = new i();
        iVar.T(this.metadata);
        new FileOperator(this.file.getChannel()).write(FILE_HEADER_SIZE + j10, iVar, this.metadata.g());
    }

    public void commit(long j10) throws IOException {
        writeMetadata(j10);
        this.file.getChannel().force(false);
        writeHeader(PREFIX_CLEAN, j10, this.metadata.g());
        this.file.getChannel().force(false);
        synchronized (this) {
            this.complete = true;
        }
        Util.closeQuietly(this.upstream);
        this.upstream = null;
    }

    public boolean isClosed() {
        return this.file == null;
    }

    public l metadata() {
        return this.metadata;
    }

    public z newSource() {
        synchronized (this) {
            try {
                if (this.file == null) {
                    return null;
                }
                this.sourceCount++;
                return new RelaySource();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
