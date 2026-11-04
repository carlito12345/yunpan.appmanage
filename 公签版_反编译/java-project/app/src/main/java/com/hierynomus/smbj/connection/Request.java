package com.hierynomus.smbj.connection;

import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.protocol.commons.concurrent.AFuture;
import com.hierynomus.protocol.commons.concurrent.CancellableFuture;
import com.hierynomus.protocol.commons.concurrent.Promise;
import com.hierynomus.smb.SMBPacket;
import com.hierynomus.smbj.common.SMBRuntimeException;
import java.util.Date;
import java.util.UUID;

/* loaded from: classes.dex */
public class Request {
    private long asyncId;
    private final UUID cancelId;
    private final long messageId;
    private SMBPacket<?, ?> packet;
    private final Promise<SMB2Packet, SMBRuntimeException> promise;
    private final Date timestamp = new Date();

    public Request(SMBPacket<?, ?> sMBPacket, long j10, UUID uuid) {
        this.packet = sMBPacket;
        this.messageId = j10;
        this.cancelId = uuid;
        this.promise = new Promise<>(String.valueOf(j10), SMBRuntimeException.Wrapper);
    }

    public long getAsyncId() {
        return this.asyncId;
    }

    public UUID getCancelId() {
        return this.cancelId;
    }

    public <T extends SMB2Packet> AFuture<T> getFuture(CancellableFuture.CancelCallback cancelCallback) {
        return new CancellableFuture(this.promise.future(), cancelCallback);
    }

    public long getMessageId() {
        return this.messageId;
    }

    public SMBPacket<?, ?> getPacket() {
        return this.packet;
    }

    public Promise<SMB2Packet, SMBRuntimeException> getPromise() {
        return this.promise;
    }

    public Date getTimestamp() {
        return this.timestamp;
    }

    public void setAsyncId(long j10) {
        this.asyncId = j10;
    }
}
