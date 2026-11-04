package com.android.apksig.internal.util;

import com.android.apksig.util.DataSink;
import da.b;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import ta.q;

/* loaded from: classes.dex */
public class RandomAccessFileDataSink implements DataSink {
    private final RandomAccessFile mFile;
    private final FileChannel mFileChannel;
    private long mPosition;

    public RandomAccessFileDataSink(RandomAccessFile randomAccessFile) {
        this(randomAccessFile, 0L);
    }

    @Override // com.android.apksig.util.DataSink
    public void consume(byte[] bArr, int i10, int i11) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException(b.a(i10, "offset: "));
        }
        if (i10 > bArr.length) {
            StringBuilder sbN = g.b.n("offset: ", i10, ", buf.length: ");
            sbN.append(bArr.length);
            throw new IndexOutOfBoundsException(sbN.toString());
        }
        if (i11 == 0) {
            return;
        }
        synchronized (this.mFile) {
            this.mFile.seek(this.mPosition);
            this.mFile.write(bArr, i10, i11);
            this.mPosition += i11;
        }
    }

    public RandomAccessFile getFile() {
        return this.mFile;
    }

    public RandomAccessFileDataSink(RandomAccessFile randomAccessFile, long j10) {
        if (randomAccessFile == null) {
            throw new NullPointerException("file == null");
        }
        if (j10 < 0) {
            throw new IllegalArgumentException(q.j(j10, "startPosition: "));
        }
        this.mFile = randomAccessFile;
        this.mFileChannel = randomAccessFile.getChannel();
        this.mPosition = j10;
    }

    @Override // com.android.apksig.util.DataSink
    public void consume(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        if (iRemaining == 0) {
            return;
        }
        synchronized (this.mFile) {
            try {
                this.mFile.seek(this.mPosition);
                while (byteBuffer.hasRemaining()) {
                    this.mFileChannel.write(byteBuffer);
                }
                this.mPosition += iRemaining;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
