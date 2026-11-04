package com.hierynomus.smbj.connection.packet;

import com.hierynomus.mssmb2.DeadLetterPacketData;
import com.hierynomus.mssmb2.SMB2PacketData;
import com.hierynomus.smbj.connection.OutstandingRequests;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class SMB2IsOutstandingPacketHandler extends SMB2PacketHandler {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) SMB2IsOutstandingPacketHandler.class);
    private OutstandingRequests outstandingRequests;

    public SMB2IsOutstandingPacketHandler(OutstandingRequests outstandingRequests) {
        this.outstandingRequests = outstandingRequests;
    }

    @Override // com.hierynomus.smbj.connection.packet.SMB2PacketHandler
    public void doSMB2Handle(SMB2PacketData sMB2PacketData) {
        long sequenceNumber = sMB2PacketData.getSequenceNumber();
        if (this.outstandingRequests.isOutstanding(Long.valueOf(sequenceNumber)) || sMB2PacketData.isOplockBreakNotification()) {
            this.next.handle(sMB2PacketData);
        } else {
            logger.error("Received response with unknown sequence number << {} >>", Long.valueOf(sequenceNumber));
            this.next.handle(new DeadLetterPacketData(sMB2PacketData.getHeader()));
        }
    }
}
