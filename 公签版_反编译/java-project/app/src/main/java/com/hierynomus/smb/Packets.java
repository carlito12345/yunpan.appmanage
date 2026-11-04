package com.hierynomus.smb;

import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smbj.common.SMBRuntimeException;

/* loaded from: classes.dex */
public class Packets {
    public static byte[] getPacketBytes(SMBPacket<?, ?> sMBPacket) {
        SMBBuffer buffer = sMBPacket.getBuffer();
        int iRpos = buffer.rpos();
        buffer.rpos(sMBPacket.getHeader().getHeaderStartPosition());
        byte[] bArr = new byte[sMBPacket.getHeader().getMessageEndPosition() - sMBPacket.getHeader().getHeaderStartPosition()];
        try {
            buffer.readRawBytes(bArr);
            buffer.rpos(iRpos);
            return bArr;
        } catch (Buffer.BufferException e7) {
            throw new SMBRuntimeException("Cannot read packet bytes from buffer", e7);
        }
    }
}
