package com.hierynomus.smbj.share;

import android.support.v4.media.session.a;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.mssmb2.messages.SMB2WriteResponse;
import com.hierynomus.protocol.commons.concurrent.AFuture;
import com.hierynomus.protocol.commons.concurrent.Futures;
import com.hierynomus.smbj.ProgressListener;
import com.hierynomus.smbj.common.SMBRuntimeException;
import com.hierynomus.smbj.io.ArrayByteChunkProvider;
import com.hierynomus.smbj.io.ByteChunkProvider;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class SMB2Writer {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) SMB2Writer.class);
    private String entryName;
    private SMB2FileId fileId;
    private Share share;

    public SMB2Writer(Share share, SMB2FileId sMB2FileId, String str) {
        this.share = share;
        this.fileId = sMB2FileId;
        this.entryName = str;
    }

    public OutputStream getOutputStream() {
        return getOutputStream(null, 0L);
    }

    public long write(byte[] bArr, long j10) {
        return write(bArr, j10, 0, bArr.length);
    }

    public Future<Long> writeAsync(byte[] bArr, long j10, int i10, int i11) {
        return writeAsync(new ArrayByteChunkProvider(bArr, i10, i11, j10));
    }

    public OutputStream getOutputStream(ProgressListener progressListener, long j10) {
        return new FileOutputStream(this, this.share.getWriteBufferSize(), j10, progressListener);
    }

    public long write(byte[] bArr, long j10, int i10, int i11) {
        return write(new ArrayByteChunkProvider(bArr, i10, i11, j10), (ProgressListener) null);
    }

    public Future<Long> writeAsync(ByteChunkProvider byteChunkProvider) {
        ArrayList arrayList = new ArrayList();
        while (byteChunkProvider.isAvailable()) {
            logger.debug("Sending async write request to {} from offset {}", this.entryName, Long.valueOf(byteChunkProvider.getOffset()));
            Future<SMB2WriteResponse> futureWriteAsync = this.share.writeAsync(this.fileId, byteChunkProvider);
            final long lastWriteSize = byteChunkProvider.getLastWriteSize();
            arrayList.add(Futures.transform(futureWriteAsync, new AFuture.Function<SMB2WriteResponse, Long>() { // from class: com.hierynomus.smbj.share.SMB2Writer.1
                @Override // com.hierynomus.protocol.commons.concurrent.AFuture.Function
                public Long apply(SMB2WriteResponse sMB2WriteResponse) {
                    long bytesWritten = sMB2WriteResponse.getBytesWritten();
                    long j10 = lastWriteSize;
                    if (bytesWritten == j10) {
                        return Long.valueOf(j10);
                    }
                    throw new SMBRuntimeException(a.t(a.w(bytesWritten, "Possible remote file corruption detected, server wrote less bytes (", ") in async mode than we sent ("), lastWriteSize, ")."));
                }
            }));
        }
        return Futures.transform(Futures.sequence(arrayList), new AFuture.Function<List<Long>, Long>() { // from class: com.hierynomus.smbj.share.SMB2Writer.2
            @Override // com.hierynomus.protocol.commons.concurrent.AFuture.Function
            public Long apply(List<Long> list) {
                Iterator<Long> it = list.iterator();
                long jLongValue = 0;
                while (it.hasNext()) {
                    jLongValue += it.next().longValue();
                }
                return Long.valueOf(jLongValue);
            }
        });
    }

    public long write(ByteChunkProvider byteChunkProvider) {
        return write(byteChunkProvider, (ProgressListener) null);
    }

    public long write(ByteChunkProvider byteChunkProvider, ProgressListener progressListener) {
        int bytesWritten = 0;
        while (byteChunkProvider.isAvailable()) {
            logger.debug("Writing to {} from offset {}", this.entryName, Long.valueOf(byteChunkProvider.getOffset()));
            bytesWritten += this.share.write(this.fileId, byteChunkProvider).getBytesWritten();
            if (progressListener != null) {
                progressListener.onProgressChanged(r1.getBytesWritten(), byteChunkProvider.getOffset());
            }
        }
        return bytesWritten;
    }
}
