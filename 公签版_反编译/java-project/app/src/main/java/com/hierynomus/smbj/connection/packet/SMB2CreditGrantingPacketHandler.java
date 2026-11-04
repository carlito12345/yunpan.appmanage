package com.hierynomus.smbj.connection.packet;

import com.hierynomus.mssmb2.SMB2PacketData;
import com.hierynomus.smbj.connection.SequenceWindow;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class SMB2CreditGrantingPacketHandler extends SMB2PacketHandler {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) SMB2CreditGrantingPacketHandler.class);
    private SequenceWindow sequenceWindow;

    public SMB2CreditGrantingPacketHandler(SequenceWindow sequenceWindow) {
        this.sequenceWindow = sequenceWindow;
    }

    @Override // com.hierynomus.smbj.connection.packet.SMB2PacketHandler
    public void doSMB2Handle(SMB2PacketData sMB2PacketData) {
        this.sequenceWindow.creditsGranted(sMB2PacketData.getHeader().getCreditResponse());
        logger.debug("Server granted us {} credits for {}, now available: {} credits", Integer.valueOf(sMB2PacketData.getHeader().getCreditResponse()), sMB2PacketData, Integer.valueOf(this.sequenceWindow.available()));
        this.next.handle(sMB2PacketData);
    }
}
