package com.hierynomus.smbj.share;

import com.hierynomus.msdtyp.AccessMask;
import com.hierynomus.mserref.NtStatus;
import com.hierynomus.msfscc.FileAttributes;
import com.hierynomus.msfscc.fsctl.FsCtlPipeWaitRequest;
import com.hierynomus.mssmb2.SMB2CreateDisposition;
import com.hierynomus.mssmb2.SMB2CreateOptions;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.mssmb2.SMB2ImpersonationLevel;
import com.hierynomus.mssmb2.SMB2ShareAccess;
import com.hierynomus.mssmb2.SMBApiException;
import com.hierynomus.mssmb2.messages.SMB2IoctlResponse;
import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smbj.common.SmbPath;
import com.hierynomus.smbj.io.ArrayByteChunkProvider;
import da.b;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class PipeShare extends Share {
    private static final int FSCTL_PIPE_WAIT = 1114136;

    public PipeShare(SmbPath smbPath, TreeConnect treeConnect) {
        super(smbPath, treeConnect);
    }

    @Override // com.hierynomus.smbj.share.Share
    public void closeFileId(SMB2FileId sMB2FileId) {
        super.closeFileId(sMB2FileId);
    }

    public NamedPipe open(String str, SMB2ImpersonationLevel sMB2ImpersonationLevel, Set<AccessMask> set, Set<FileAttributes> set2, Set<SMB2ShareAccess> set3, SMB2CreateDisposition sMB2CreateDisposition, Set<SMB2CreateOptions> set4) {
        SmbPath smbPath = new SmbPath(this.smbPath, str);
        return new NamedPipe(super.openFileId(smbPath, sMB2ImpersonationLevel, set, set2, set3, sMB2CreateDisposition, set4), this, smbPath);
    }

    public SMB2FileId openFileId(String str, SMB2ImpersonationLevel sMB2ImpersonationLevel, Set<AccessMask> set, Set<FileAttributes> set2, Set<SMB2ShareAccess> set3, SMB2CreateDisposition sMB2CreateDisposition, Set<SMB2CreateOptions> set4) {
        return super.openFileId(new SmbPath(this.smbPath, str), sMB2ImpersonationLevel, set, set2, set3, sMB2CreateDisposition, set4);
    }

    public boolean waitForPipe(String str) {
        return waitForPipe(str, 0L, TimeUnit.MILLISECONDS);
    }

    public boolean waitForPipe(String str, long j10, TimeUnit timeUnit) {
        SMBBuffer sMBBuffer = new SMBBuffer();
        new FsCtlPipeWaitRequest(str, j10, timeUnit, j10 > 0).write(sMBBuffer);
        SMB2IoctlResponse sMB2IoctlResponse = (SMB2IoctlResponse) receive(ioctlAsync(1114136L, true, new ArrayByteChunkProvider(sMBBuffer.getCompactData(), 0L)), j10 > 0 ? timeUnit.toMillis(j10) + 20 : 0L);
        long statusCode = sMB2IoctlResponse.getHeader().getStatusCode();
        if (statusCode == NtStatus.STATUS_SUCCESS.getValue()) {
            return true;
        }
        if (statusCode == NtStatus.STATUS_IO_TIMEOUT.getValue()) {
            return false;
        }
        throw new SMBApiException(sMB2IoctlResponse.getHeader(), b.c("Error while waiting for pipe ", str));
    }
}
