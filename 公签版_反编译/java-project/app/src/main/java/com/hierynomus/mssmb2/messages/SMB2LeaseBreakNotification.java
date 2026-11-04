package com.hierynomus.mssmb2.messages;

import com.hierynomus.mssmb2.LeaseKey;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.mssmb2.SMB2PacketData;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;
import da.b;

/* loaded from: classes.dex */
public class SMB2LeaseBreakNotification extends SMB2Packet {
    public static final long SMB2_NOTIFY_BREAK_LEASE_FLAG_ACK_REQUIRED = 1;
    private long currentLeaseState;
    private long flags;
    private LeaseKey leaseKey;
    private int newEpoch;
    private long newLeaseState;

    public long getCurrentLeaseState() {
        return this.currentLeaseState;
    }

    public LeaseKey getLeaseKey() {
        return this.leaseKey;
    }

    public int getNewEpoch() {
        return this.newEpoch;
    }

    public long getNewLeaseState() {
        return this.newLeaseState;
    }

    public boolean isAckRequired() {
        return (this.flags & 1) != 0;
    }

    public SMB2LeaseBreakNotification parse(SMB2PacketData sMB2PacketData) {
        read(sMB2PacketData);
        return this;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void readMessage(SMBBuffer sMBBuffer) throws Buffer.BufferException {
        int uInt16 = sMBBuffer.readUInt16();
        if (uInt16 != 44) {
            throw new IllegalStateException(b.a(uInt16, "Not a lease break notification, StructureSize="));
        }
        this.newEpoch = sMBBuffer.readUInt16();
        this.flags = sMBBuffer.readUInt32();
        this.leaseKey = new LeaseKey(sMBBuffer.readRawBytes(16));
        this.currentLeaseState = sMBBuffer.readUInt32();
        this.newLeaseState = sMBBuffer.readUInt32();
        sMBBuffer.skip(12);
    }
}
