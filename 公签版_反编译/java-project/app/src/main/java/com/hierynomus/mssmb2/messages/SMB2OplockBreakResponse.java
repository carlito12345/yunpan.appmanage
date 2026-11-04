package com.hierynomus.mssmb2.messages;

import com.hierynomus.mssmb2.LeaseKey;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.mssmb2.SMB2OplockLevel;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smbj.common.SMBRuntimeException;
import g.b;

/* loaded from: classes.dex */
public class SMB2OplockBreakResponse extends SMB2Packet {
    private static final int STRUCTURE_SIZE_FILE_OPLOCK = 24;
    private static final int STRUCTURE_SIZE_LEASE = 36;
    private SMB2FileId fileId;
    private boolean lease;
    private LeaseKey leaseKey;
    private long leaseState;
    private SMB2OplockLevel oplockLevel;

    public SMB2FileId getFileId() {
        return this.fileId;
    }

    public LeaseKey getLeaseKey() {
        return this.leaseKey;
    }

    public long getLeaseState() {
        return this.leaseState;
    }

    public SMB2OplockLevel getOplockLevel() {
        return this.oplockLevel;
    }

    public boolean isLease() {
        return this.lease;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void readMessage(SMBBuffer sMBBuffer) throws Buffer.BufferException {
        int uInt16 = sMBBuffer.readUInt16();
        if (uInt16 == 24) {
            this.lease = false;
            this.oplockLevel = (SMB2OplockLevel) EnumWithValue.EnumUtils.valueOf(sMBBuffer.readByte() & 255, SMB2OplockLevel.class, SMB2OplockLevel.SMB2_OPLOCK_LEVEL_NONE);
            sMBBuffer.skip(1);
            sMBBuffer.skip(4);
            this.fileId = SMB2FileId.read(sMBBuffer);
            return;
        }
        if (uInt16 != 36) {
            throw new SMBRuntimeException(b.i("Unexpected SMB2_OPLOCK_BREAK response StructureSize: ", uInt16, " (expected 24 for file oplock or 36 for lease break)"));
        }
        this.lease = true;
        sMBBuffer.skip(2);
        sMBBuffer.skip(4);
        this.leaseKey = new LeaseKey(sMBBuffer.readRawBytes(16));
        this.leaseState = sMBBuffer.readUInt32();
        sMBBuffer.skip(8);
    }
}
