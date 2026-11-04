package com.hierynomus.smbj.share;

import com.hierynomus.mserref.NtStatus;
import com.hierynomus.mssmb2.SMBApiException;
import com.hierynomus.mssmb2.messages.SMB2ReadResponse;
import com.hierynomus.protocol.commons.concurrent.Futures;
import com.hierynomus.protocol.transport.TransportException;
import com.hierynomus.smbj.ProgressListener;
import java.io.InputStream;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
class FileInputStream extends InputStream {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) FileInputStream.class);
    private byte[] buf;
    private int bufferSize;
    private File file;
    private boolean isClosed;
    private Future<SMB2ReadResponse> nextResponse;
    private ProgressListener progressListener;
    private final long readTimeout;
    private long offset = 0;
    private int curr = 0;

    public FileInputStream(File file, int i10, long j10, ProgressListener progressListener) {
        this.file = file;
        this.bufferSize = i10;
        this.progressListener = progressListener;
        this.readTimeout = j10;
    }

    private void loadBuffer() {
        if (this.isClosed) {
            return;
        }
        if (this.nextResponse == null) {
            this.nextResponse = sendRequest();
        }
        SMB2ReadResponse sMB2ReadResponse = (SMB2ReadResponse) Futures.get(this.nextResponse, this.readTimeout, TimeUnit.MILLISECONDS, TransportException.Wrapper);
        long statusCode = sMB2ReadResponse.getHeader().getStatusCode();
        NtStatus ntStatus = NtStatus.STATUS_SUCCESS;
        if (statusCode == ntStatus.getValue()) {
            this.buf = sMB2ReadResponse.getData();
            this.curr = 0;
            this.offset += sMB2ReadResponse.getDataLength();
            ProgressListener progressListener = this.progressListener;
            if (progressListener != null) {
                progressListener.onProgressChanged(sMB2ReadResponse.getDataLength(), this.offset);
            }
        }
        if (sMB2ReadResponse.getHeader().getStatusCode() == NtStatus.STATUS_END_OF_FILE.getValue() || sMB2ReadResponse.getDataLength() == 0) {
            logger.debug("EOF, {} bytes read", Long.valueOf(this.offset));
            this.isClosed = true;
        } else {
            if (sMB2ReadResponse.getHeader().getStatusCode() == ntStatus.getValue()) {
                this.nextResponse = sendRequest();
                return;
            }
            throw new SMBApiException(sMB2ReadResponse.getHeader(), "Read failed for " + this);
        }
    }

    private Future<SMB2ReadResponse> sendRequest() {
        return this.file.readAsync(this.offset, this.bufferSize);
    }

    @Override // java.io.InputStream
    public int available() {
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.isClosed = true;
        this.file = null;
        this.buf = null;
    }

    @Override // java.io.InputStream
    public int read() {
        byte[] bArr = this.buf;
        if (bArr == null || this.curr >= bArr.length) {
            loadBuffer();
        }
        if (this.isClosed) {
            return -1;
        }
        byte[] bArr2 = this.buf;
        int i10 = this.curr;
        this.curr = i10 + 1;
        return bArr2[i10] & 255;
    }

    @Override // java.io.InputStream
    public long skip(long j10) {
        if (this.buf == null) {
            this.offset += j10;
        } else {
            int i10 = this.curr;
            if (i10 + j10 < r0.length) {
                this.curr = (int) (i10 + j10);
            } else {
                this.offset = ((i10 + j10) - r0.length) + this.offset;
                this.buf = null;
                this.nextResponse = null;
            }
        }
        return j10;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = this.buf;
        if (bArr2 == null || this.curr >= bArr2.length) {
            loadBuffer();
        }
        if (this.isClosed) {
            return -1;
        }
        byte[] bArr3 = this.buf;
        int length = bArr3.length;
        int i12 = this.curr;
        if (length - i12 <= i11) {
            i11 = bArr3.length - i12;
        }
        System.arraycopy(bArr3, i12, bArr, i10, i11);
        this.curr += i11;
        return i11;
    }
}
