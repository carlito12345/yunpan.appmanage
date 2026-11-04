package com.hierynomus.smbj.connection.packet;

import com.hierynomus.mssmb2.SMB2PacketData;
import com.hierynomus.mssmb2.messages.SMB2LeaseBreakNotification;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smbj.connection.LeaseManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class SMB2LeaseBreakPacketHandler extends SMB2PacketHandler {
    private static final int LEASE_BREAK_NOTIFICATION_SIZE = 44;
    private static final int OPLOCK_BREAK_NOTIFICATION_SIZE = 24;
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) SMB2LeaseBreakPacketHandler.class);
    private final LeaseManager leaseManager;

    public SMB2LeaseBreakPacketHandler(LeaseManager leaseManager) {
        this.leaseManager = leaseManager;
    }

    private static int peekStructureSize(SMB2PacketData sMB2PacketData) {
        SMBBuffer dataBuffer = sMB2PacketData.getDataBuffer();
        int iRpos = dataBuffer.rpos();
        try {
            int uInt16 = dataBuffer.readUInt16();
            dataBuffer.rpos(iRpos);
            return uInt16;
        } catch (Buffer.BufferException unused) {
            dataBuffer.rpos(iRpos);
            return -1;
        } catch (Throwable th2) {
            dataBuffer.rpos(iRpos);
            throw th2;
        }
    }

    @Override // com.hierynomus.smbj.connection.packet.SMB2PacketHandler
    public void doSMB2Handle(SMB2PacketData sMB2PacketData) {
        if (!sMB2PacketData.isOplockBreakNotification()) {
            this.next.handle(sMB2PacketData);
            return;
        }
        int iPeekStructureSize = peekStructureSize(sMB2PacketData);
        if (iPeekStructureSize != 44) {
            if (iPeekStructureSize == 24) {
                logger.debug("Received oplock break (file oplocks out of scope), ignoring");
                return;
            } else {
                logger.warn("Unexpected unsolicited OPLOCK_BREAK StructureSize {}, dropping", Integer.valueOf(iPeekStructureSize));
                return;
            }
        }
        try {
            SMB2LeaseBreakNotification sMB2LeaseBreakNotification = new SMB2LeaseBreakNotification().parse(sMB2PacketData);
            logger.debug("Lease break for {} {}->{} ackRequired={}", sMB2LeaseBreakNotification.getLeaseKey(), Long.valueOf(sMB2LeaseBreakNotification.getCurrentLeaseState()), Long.valueOf(sMB2LeaseBreakNotification.getNewLeaseState()), Boolean.valueOf(sMB2LeaseBreakNotification.isAckRequired()));
            this.leaseManager.dispatchBreak(sMB2LeaseBreakNotification);
        } catch (Buffer.BufferException e7) {
            logger.warn("Malformed lease break notification, dropping", (Throwable) e7);
        }
    }
}
