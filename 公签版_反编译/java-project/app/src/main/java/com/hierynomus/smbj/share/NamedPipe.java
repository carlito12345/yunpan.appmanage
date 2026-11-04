package com.hierynomus.smbj.share;

import com.hierynomus.msfscc.fsctl.FsCtlPipePeekResponse;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smbj.common.SMBRuntimeException;
import com.hierynomus.smbj.common.SmbPath;
import com.hierynomus.smbj.io.ArrayByteChunkProvider;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class NamedPipe extends Open<PipeShare> {
    private static final long FSCTL_PIPE_PEEK = 1130508;
    private static final long FSCTL_PIPE_TRANSCEIVE = 1163287;
    protected final Logger logger;

    public NamedPipe(SMB2FileId sMB2FileId, PipeShare pipeShare, SmbPath smbPath) {
        super(sMB2FileId, smbPath, pipeShare);
        this.logger = LoggerFactory.getLogger(getClass());
    }

    public String getName() {
        return this.name.getPath();
    }

    public byte[] ioctl(long j10, boolean z, byte[] bArr, int i10, int i11) {
        return ((PipeShare) this.share).ioctl(this.fileId, j10, z, bArr, i10, i11);
    }

    public FsCtlPipePeekResponse peek() {
        return peek(0);
    }

    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public byte[] transact(byte[] bArr) {
        return ioctl(FSCTL_PIPE_TRANSCEIVE, true, bArr, 0, bArr.length);
    }

    public int write(byte[] bArr) {
        return write(bArr, 0, bArr.length);
    }

    public int ioctl(long j10, boolean z, byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        return ((PipeShare) this.share).ioctl(this.fileId, j10, z, bArr, i10, i11, bArr2, i12, i13);
    }

    public FsCtlPipePeekResponse peek(int i10) {
        try {
            SMBBuffer sMBBuffer = new SMBBuffer(((PipeShare) this.share).ioctl(this.fileId, FSCTL_PIPE_PEEK, true, null, 0, 0, i10 + 24));
            FsCtlPipePeekResponse fsCtlPipePeekResponse = new FsCtlPipePeekResponse();
            fsCtlPipePeekResponse.read(sMBBuffer);
            return fsCtlPipePeekResponse;
        } catch (Buffer.BufferException e7) {
            throw new SMBRuntimeException(e7);
        }
    }

    public int read(byte[] bArr, int i10, int i11) {
        byte[] data = ((PipeShare) this.share).read(this.fileId, 0L, i11).getData();
        int iMin = Math.min(i11, data.length);
        System.arraycopy(data, 0, bArr, i10, iMin);
        return iMin;
    }

    public int transact(byte[] bArr, byte[] bArr2) {
        return transact(bArr, 0, bArr.length, bArr2, 0, bArr2.length);
    }

    public int write(byte[] bArr, int i10, int i11) {
        ArrayByteChunkProvider arrayByteChunkProvider = new ArrayByteChunkProvider(bArr, i10, i11, 0L);
        this.logger.debug("Writing to {} from offset {}", this.name, Long.valueOf(arrayByteChunkProvider.getOffset()));
        return ((PipeShare) this.share).write(this.fileId, arrayByteChunkProvider).getBytesWritten();
    }

    public int transact(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        return ioctl(FSCTL_PIPE_TRANSCEIVE, true, bArr, i10, i11, bArr2, i12, i13);
    }
}
