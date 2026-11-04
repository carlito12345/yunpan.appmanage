package com.hierynomus.smbj.connection.packet;

import com.hierynomus.smb.SMBPacketData;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class DeadLetterPacketHandler extends AbstractIncomingPacketHandler {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) DeadLetterPacketHandler.class);

    @Override // com.hierynomus.smbj.connection.packet.AbstractIncomingPacketHandler
    public boolean canHandle(SMBPacketData<?> sMBPacketData) {
        return true;
    }

    @Override // com.hierynomus.smbj.connection.packet.AbstractIncomingPacketHandler
    public void doHandle(SMBPacketData<?> sMBPacketData) {
        logger.warn("Packet << {} >> ended up in dead letters", sMBPacketData);
    }
}
