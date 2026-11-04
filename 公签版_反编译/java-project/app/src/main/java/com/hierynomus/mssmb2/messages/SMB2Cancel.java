package com.hierynomus.mssmb2.messages;

import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2MessageCommandCode;
import com.hierynomus.mssmb2.SMB2MessageFlag;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.mssmb2.SMB2PacketHeader;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;

/* loaded from: classes.dex */
public class SMB2Cancel extends SMB2Packet {
    public SMB2Cancel() {
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void readMessage(SMBBuffer sMBBuffer) throws Buffer.BufferException {
        sMBBuffer.readUInt16();
        sMBBuffer.skip(2);
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void writeTo(SMBBuffer sMBBuffer) {
        sMBBuffer.putUInt16(this.structureSize);
        sMBBuffer.putReserved2();
    }

    public SMB2Cancel(SMB2Dialect sMB2Dialect, long j10, long j11, long j12) {
        super(4, sMB2Dialect, SMB2MessageCommandCode.SMB2_CANCEL, j10);
        ((SMB2PacketHeader) this.header).setMessageId(j11);
        if (j12 != 0) {
            ((SMB2PacketHeader) this.header).setFlag(SMB2MessageFlag.SMB2_FLAGS_ASYNC_COMMAND);
            ((SMB2PacketHeader) this.header).setAsyncId(j12);
        }
    }
}
