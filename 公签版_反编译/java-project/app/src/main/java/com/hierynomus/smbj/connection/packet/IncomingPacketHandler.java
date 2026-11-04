package com.hierynomus.smbj.connection.packet;

import com.hierynomus.smb.SMBPacketData;

/* loaded from: classes.dex */
public interface IncomingPacketHandler {
    void handle(SMBPacketData<?> sMBPacketData);

    IncomingPacketHandler setNext(IncomingPacketHandler incomingPacketHandler);
}
