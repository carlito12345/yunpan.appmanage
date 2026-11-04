package com.hierynomus.mssmb2;

import com.hierynomus.mserref.NtStatus;
import com.hierynomus.smbj.common.SMBRuntimeException;

/* loaded from: classes.dex */
public class SMBApiException extends SMBRuntimeException {
    private final SMB2MessageCommandCode failedCommand;
    private long statusCode;

    public SMBApiException(long j10, SMB2MessageCommandCode sMB2MessageCommandCode, Throwable th2) {
        super(th2);
        this.statusCode = j10;
        this.failedCommand = sMB2MessageCommandCode;
    }

    public SMB2MessageCommandCode getFailedCommand() {
        return this.failedCommand;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return String.format("%s (0x%08x): %s", getStatus().name(), Long.valueOf(this.statusCode), super.getMessage());
    }

    public NtStatus getStatus() {
        return NtStatus.valueOf(this.statusCode);
    }

    public long getStatusCode() {
        return this.statusCode;
    }

    public SMBApiException(long j10, SMB2MessageCommandCode sMB2MessageCommandCode, String str, Throwable th2) {
        super(str, th2);
        this.statusCode = j10;
        this.failedCommand = sMB2MessageCommandCode;
    }

    public SMBApiException(SMB2PacketHeader sMB2PacketHeader, String str) {
        super(str);
        this.statusCode = sMB2PacketHeader.getStatusCode();
        this.failedCommand = sMB2PacketHeader.getMessage();
    }

    public SMBApiException(SMB2PacketHeader sMB2PacketHeader, String str, Throwable th2) {
        super(str, th2);
        this.statusCode = sMB2PacketHeader.getStatusCode();
        this.failedCommand = sMB2PacketHeader.getMessage();
    }
}
