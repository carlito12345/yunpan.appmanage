package com.hierynomus.mssmb2;

import com.hierynomus.smb.SMBBuffer;

/* loaded from: classes.dex */
public class SMB2DecryptedPacketData extends SMB2PacketData {
    public SMB2DecryptedPacketData(byte[] bArr) {
        super(bArr);
    }

    @Override // com.hierynomus.mssmb2.SMB2PacketData
    public boolean isDecrypted() {
        return true;
    }

    @Override // com.hierynomus.mssmb2.SMB2PacketData
    public SMB2PacketData next() {
        if (isCompounded()) {
            return new SMB2DecryptedPacketData(this.dataBuffer);
        }
        return null;
    }

    public SMB2DecryptedPacketData(SMBBuffer sMBBuffer) {
        super(sMBBuffer);
    }
}
