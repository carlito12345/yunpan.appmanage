package com.hierynomus.msdtyp.ace;

import com.hierynomus.msdtyp.SID;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;
import java.util.Arrays;
import java.util.UUID;

/* loaded from: classes.dex */
class AceType4 extends AceType2 {
    private byte[] applicationData;

    private AceType4(AceHeader aceHeader) {
        super(aceHeader);
    }

    public static AceType4 read(AceHeader aceHeader, SMBBuffer sMBBuffer, int i10) throws Buffer.BufferException {
        AceType4 aceType4 = new AceType4(aceHeader);
        aceType4.readBody(sMBBuffer, i10);
        return aceType4;
    }

    public byte[] getApplicationData() {
        return this.applicationData;
    }

    @Override // com.hierynomus.msdtyp.ace.AceType2
    public void readBody(SMBBuffer sMBBuffer, int i10) throws Buffer.BufferException {
        super.readBody(sMBBuffer, i10);
        this.applicationData = sMBBuffer.readRawBytes(this.aceHeader.getAceSize() - (sMBBuffer.rpos() - i10));
    }

    @Override // com.hierynomus.msdtyp.ace.AceType2
    public String toString() {
        return String.format("AceType4{type=%s, flags=%s, access=0x%x, objectType=%s, inheritedObjectType=%s, sid=%s, data=%s}", this.aceHeader.getAceType(), this.aceHeader.getAceFlags(), Long.valueOf(this.accessMask), this.objectType, this.inheritedObjectType, this.sid, Arrays.toString(this.applicationData));
    }

    @Override // com.hierynomus.msdtyp.ace.AceType2, com.hierynomus.msdtyp.ace.ACE
    public void writeBody(SMBBuffer sMBBuffer) {
        super.writeBody(sMBBuffer);
        sMBBuffer.putRawBytes(this.applicationData);
    }

    public AceType4(AceHeader aceHeader, long j10, UUID uuid, UUID uuid2, SID sid, byte[] bArr) {
        super(aceHeader, j10, uuid, uuid2, sid);
        this.applicationData = bArr;
    }
}
