package com.hierynomus.smbj.connection.packet;

import com.hierynomus.mssmb2.SMB2MessageConverter;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.mssmb2.SMB2PacketData;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.protocol.transport.TransportException;
import com.hierynomus.smbj.connection.OutstandingRequests;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class SMB2ProcessResponsePacketHandler extends SMB2PacketHandler {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) SMB2ProcessResponsePacketHandler.class);
    private final OutstandingRequests outstandingRequests;
    private final SMB2MessageConverter smb2Converter;

    public SMB2ProcessResponsePacketHandler(SMB2MessageConverter sMB2MessageConverter, OutstandingRequests outstandingRequests) {
        this.smb2Converter = sMB2MessageConverter;
        this.outstandingRequests = outstandingRequests;
    }

    @Override // com.hierynomus.smbj.connection.packet.SMB2PacketHandler
    public void doSMB2Handle(SMB2PacketData sMB2PacketData) throws TransportException {
        try {
            SMB2Packet packet = this.smb2Converter.readPacket(this.outstandingRequests.getRequestByMessageId(Long.valueOf(sMB2PacketData.getHeader().getMessageId())).getPacket(), sMB2PacketData);
            this.outstandingRequests.receivedResponseFor(Long.valueOf(packet.getHeader().getMessageId())).getPromise().deliver(packet);
        } catch (Buffer.BufferException e7) {
            logger.error("Failed to deserialize SMB2 Packet Data of {}", sMB2PacketData);
            throw new TransportException("Unable to deserialize SMB2 Packet Data.", e7);
        }
    }
}
