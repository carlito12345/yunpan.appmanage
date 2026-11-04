package com.rapid7.helper.smbj.io;

import com.hierynomus.mserref.NtStatus;
import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.mssmb2.SMB2PacketHeader;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.session.Session;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.nio.channels.InterruptedByTimeoutException;
import java.util.EnumSet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public abstract class SMB2SessionMessage {
    private final SMB2Dialect dialect;
    private final Session session;
    private final long sessionID;
    private final long timeout;

    public SMB2SessionMessage(Session session, SmbConfig smbConfig) {
        this.dialect = session.getConnection().getNegotiatedProtocol().getDialect();
        this.session = session;
        this.sessionID = session.getSessionId();
        this.timeout = smbConfig.getTransactTimeout();
    }

    public SMB2Dialect getDialect() {
        return this.dialect;
    }

    public Session getSession() {
        return this.session;
    }

    public long getSessionID() {
        return this.sessionID;
    }

    public <T extends SMB2Packet> T read(Future<T> future) throws IOException {
        try {
            return future.get(this.timeout, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e7) {
            InterruptedIOException interruptedIOException = new InterruptedIOException();
            interruptedIOException.initCause(e7);
            throw interruptedIOException;
        } catch (ExecutionException e10) {
            throw new IOException(e10);
        } catch (TimeoutException e11) {
            InterruptedByTimeoutException interruptedByTimeoutException = new InterruptedByTimeoutException();
            interruptedByTimeoutException.initCause(e11);
            throw interruptedByTimeoutException;
        }
    }

    public <T extends SMB2Packet> Future<T> send(SMB2Packet sMB2Packet) throws IOException {
        try {
            return getSession().send(sMB2Packet);
        } catch (IOException e7) {
            throw e7;
        } catch (Exception e10) {
            throw new IOException(e10);
        }
    }

    public <T extends SMB2Packet> T sendAndRead(SMB2Packet sMB2Packet) {
        return (T) read(send(sMB2Packet));
    }

    public <T extends SMB2Packet> T sendAndRead(SMB2Packet sMB2Packet, EnumSet<NtStatus> enumSet) throws SMB2Exception {
        T t10 = (T) read(send(sMB2Packet));
        SMB2PacketHeader sMB2PacketHeader = (SMB2PacketHeader) t10.getHeader();
        if (enumSet.contains(NtStatus.valueOf(sMB2PacketHeader.getStatusCode()))) {
            return t10;
        }
        throw new SMB2Exception(sMB2PacketHeader, "expected=" + enumSet);
    }
}
