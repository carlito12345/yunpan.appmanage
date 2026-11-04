package com.hierynomus.smbj.connection.packet;

import com.hierynomus.mssmb2.SMB2PacketData;
import com.hierynomus.smbj.connection.OutstandingRequests;
import com.hierynomus.smbj.connection.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class SMB2AsyncResponsePacketHandler extends SMB2PacketHandler {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) SMB2AsyncResponsePacketHandler.class);
    private OutstandingRequests outstandingRequests;

    public SMB2AsyncResponsePacketHandler(OutstandingRequests outstandingRequests) {
        this.outstandingRequests = outstandingRequests;
    }

    @Override // com.hierynomus.smbj.connection.packet.SMB2PacketHandler
    public void doSMB2Handle(SMB2PacketData sMB2PacketData) {
        Request requestByMessageId = this.outstandingRequests.getRequestByMessageId(Long.valueOf(sMB2PacketData.getHeader().getMessageId()));
        Logger logger2 = logger;
        logger2.trace("Send/Recv of packet {} took << {} ms >>", sMB2PacketData, Long.valueOf(System.currentTimeMillis() - requestByMessageId.getTimestamp().getTime()));
        if (!sMB2PacketData.isIntermediateAsyncResponse()) {
            this.next.handle(sMB2PacketData);
        } else {
            logger2.debug("Received ASYNC packet {} with AsyncId << {} >>", sMB2PacketData, Long.valueOf(sMB2PacketData.getHeader().getAsyncId()));
            requestByMessageId.setAsyncId(sMB2PacketData.getHeader().getAsyncId());
        }
    }
}
