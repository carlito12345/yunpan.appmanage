package com.rapid7.helper.smbj.share;

import com.hierynomus.msdtyp.AccessMask;
import com.hierynomus.mserref.NtStatus;
import com.hierynomus.mssmb2.SMB2CreateDisposition;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.mssmb2.SMB2ImpersonationLevel;
import com.hierynomus.mssmb2.SMB2ShareAccess;
import com.hierynomus.mssmb2.messages.SMB2CreateRequest;
import com.hierynomus.mssmb2.messages.SMB2CreateResponse;
import com.hierynomus.mssmb2.messages.SMB2IoctlRequest;
import com.hierynomus.mssmb2.messages.SMB2IoctlResponse;
import com.hierynomus.mssmb2.messages.SMB2ReadRequest;
import com.hierynomus.mssmb2.messages.SMB2ReadResponse;
import com.hierynomus.mssmb2.messages.SMB2WriteRequest;
import com.hierynomus.mssmb2.messages.SMB2WriteResponse;
import com.hierynomus.smbj.common.SMBRuntimeException;
import com.hierynomus.smbj.common.SmbPath;
import com.hierynomus.smbj.io.ArrayByteChunkProvider;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.PipeShare;
import com.rapid7.helper.smbj.io.SMB2SessionMessage;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.util.EnumSet;

/* loaded from: classes.dex */
public class NamedPipe extends SMB2SessionMessage implements Closeable {
    private static final int FSCTL_PIPE_TRANSCEIVE = 1163287;
    private static final EnumSet<NtStatus> IOCTL_SUCCESS;
    private static final EnumSet<NtStatus> READ_SUCCESS;
    private static final EnumSet<NtStatus> WRITE_SUCCESS;
    private final SMB2FileId fileID;
    private final int readBufferSize;
    private final PipeShare share;
    private final int transactBufferSize;
    private final int writeBufferSize;

    static {
        NtStatus ntStatus = NtStatus.STATUS_SUCCESS;
        NtStatus ntStatus2 = NtStatus.STATUS_BUFFER_OVERFLOW;
        IOCTL_SUCCESS = EnumSet.of(ntStatus, ntStatus2);
        READ_SUCCESS = EnumSet.of(ntStatus, ntStatus2, NtStatus.STATUS_END_OF_FILE);
        WRITE_SUCCESS = EnumSet.of(ntStatus);
    }

    public NamedPipe(Session session, PipeShare pipeShare, String str) {
        super(session, pipeShare.getTreeConnect().getConfig());
        this.share = pipeShare;
        this.fileID = ((SMB2CreateResponse) sendAndRead(new SMB2CreateRequest(session.getConnection().getNegotiatedProtocol().getDialect(), session.getSessionId(), pipeShare.getTreeConnect().getTreeId(), SMB2ImpersonationLevel.Impersonation, EnumSet.of(AccessMask.MAXIMUM_ALLOWED), null, EnumSet.of(SMB2ShareAccess.FILE_SHARE_READ, SMB2ShareAccess.FILE_SHARE_WRITE), SMB2CreateDisposition.FILE_OPEN_IF, null, new SmbPath(pipeShare.getSmbPath(), str)), EnumSet.of(NtStatus.STATUS_SUCCESS))).getFileId();
        this.transactBufferSize = Math.min(pipeShare.getTreeConnect().getConfig().getTransactBufferSize(), session.getConnection().getNegotiatedProtocol().getMaxTransactSize());
        this.readBufferSize = Math.min(pipeShare.getTreeConnect().getConfig().getReadBufferSize(), session.getConnection().getNegotiatedProtocol().getMaxReadSize());
        this.writeBufferSize = Math.min(pipeShare.getTreeConnect().getConfig().getWriteBufferSize(), session.getConnection().getNegotiatedProtocol().getMaxWriteSize());
    }

    private SMB2IoctlResponse _ioctl(byte[] bArr) {
        return (SMB2IoctlResponse) sendAndRead(new SMB2IoctlRequest(getDialect(), getSessionID(), this.share.getTreeConnect().getTreeId(), 1163287L, this.fileID, new ArrayByteChunkProvider(bArr, 0, bArr.length, 0L), true, this.transactBufferSize), IOCTL_SUCCESS);
    }

    private SMB2ReadResponse _read() {
        return (SMB2ReadResponse) sendAndRead(new SMB2ReadRequest(getDialect(), this.fileID, getSessionID(), this.share.getTreeConnect().getTreeId(), 0L, this.readBufferSize), READ_SUCCESS);
    }

    private SMB2WriteResponse _write(byte[] bArr) {
        return (SMB2WriteResponse) sendAndRead(new SMB2WriteRequest(getDialect(), this.fileID, getSessionID(), this.share.getTreeConnect().getTreeId(), new ArrayByteChunkProvider(bArr, 0, bArr.length, 0L), this.writeBufferSize), WRITE_SUCCESS);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.share.closeFileId(this.fileID);
    }

    public byte[] read() throws IOException {
        SMB2ReadResponse sMB2ReadResponse_read;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4096);
        do {
            sMB2ReadResponse_read = _read();
            try {
                byteArrayOutputStream.write(sMB2ReadResponse_read.getData());
            } catch (IOException e7) {
                throw new SMBRuntimeException(e7);
            }
        } while (NtStatus.valueOf(sMB2ReadResponse_read.getHeader().getStatusCode()).equals(NtStatus.STATUS_BUFFER_OVERFLOW));
        return byteArrayOutputStream.toByteArray();
    }

    public byte[] transact(byte[] bArr) throws IOException {
        SMB2IoctlResponse sMB2IoctlResponse_ioctl = _ioctl(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4096);
        try {
            byteArrayOutputStream.write(sMB2IoctlResponse_ioctl.getOutputBuffer());
            if (NtStatus.valueOf(sMB2IoctlResponse_ioctl.getHeader().getStatusCode()).equals(NtStatus.STATUS_BUFFER_OVERFLOW)) {
                byteArrayOutputStream.write(read());
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e7) {
            throw new SMBRuntimeException(e7);
        }
    }

    public void write(byte[] bArr) {
        _write(bArr);
    }
}
