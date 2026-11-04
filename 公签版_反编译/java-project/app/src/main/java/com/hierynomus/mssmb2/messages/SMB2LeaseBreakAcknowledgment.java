package com.hierynomus.mssmb2.messages;

import com.hierynomus.mssmb2.LeaseKey;
import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2MessageCommandCode;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.smb.SMBBuffer;

/* loaded from: classes.dex */
public class SMB2LeaseBreakAcknowledgment extends SMB2Packet {
    private final LeaseKey leaseKey;
    private final long leaseState;

    public SMB2LeaseBreakAcknowledgment(SMB2Dialect sMB2Dialect, long j10, long j11, LeaseKey leaseKey, long j12) {
        super(36, sMB2Dialect, SMB2MessageCommandCode.SMB2_OPLOCK_BREAK, j10, j11);
        this.leaseKey = leaseKey;
        this.leaseState = j12;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void writeTo(SMBBuffer sMBBuffer) {
        sMBBuffer.putUInt16(this.structureSize);
        sMBBuffer.putReserved2();
        sMBBuffer.putReserved4();
        sMBBuffer.putRawBytes(this.leaseKey.getBytes());
        sMBBuffer.putUInt32(this.leaseState);
        sMBBuffer.putReserved(8);
    }
}
