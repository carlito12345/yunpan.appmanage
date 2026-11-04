package com.rapid7.helper.smbj.io;

import com.hierynomus.mserref.NtStatus;
import com.hierynomus.mssmb2.SMB2MessageCommandCode;
import com.hierynomus.mssmb2.SMB2PacketHeader;
import java.io.IOException;

/* loaded from: classes.dex */
public class SMB2Exception extends IOException {
    private final SMB2MessageCommandCode failedCommand;
    private final NtStatus status;
    private final long statusCode;

    public SMB2Exception(SMB2PacketHeader sMB2PacketHeader, String str) {
        super(String.format("%s returned %s (%d/%d): %s", sMB2PacketHeader.getMessage(), Long.valueOf(sMB2PacketHeader.getStatusCode()), Long.valueOf(sMB2PacketHeader.getStatusCode()), Long.valueOf(sMB2PacketHeader.getStatusCode()), str));
        this.status = NtStatus.valueOf(sMB2PacketHeader.getStatusCode());
        this.statusCode = sMB2PacketHeader.getStatusCode();
        this.failedCommand = sMB2PacketHeader.getMessage();
    }

    public SMB2MessageCommandCode getFailedCommand() {
        return this.failedCommand;
    }

    public NtStatus getStatus() {
        return this.status;
    }

    public long getStatusCode() {
        return this.statusCode;
    }
}
