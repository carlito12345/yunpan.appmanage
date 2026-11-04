package com.hierynomus.msdtyp.ace;

import com.hierynomus.msdtyp.SID;
import com.hierynomus.smb.SMBBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
class AceType3 extends ACE {
    private long accessMask;
    private byte[] applicationData;
    private SID sid;

    public AceType3(AceHeader aceHeader, long j10, SID sid, byte[] bArr) {
        super(aceHeader);
        this.accessMask = j10;
        this.sid = sid;
        this.applicationData = bArr;
    }

    public static AceType3 read(AceHeader aceHeader, SMBBuffer sMBBuffer, int i10) {
        return new AceType3(aceHeader, sMBBuffer.readUInt32(), SID.read(sMBBuffer), sMBBuffer.readRawBytes(aceHeader.getAceSize() - (sMBBuffer.rpos() - i10)));
    }

    @Override // com.hierynomus.msdtyp.ace.ACE
    public long getAccessMask() {
        return this.accessMask;
    }

    public byte[] getApplicationData() {
        return this.applicationData;
    }

    @Override // com.hierynomus.msdtyp.ace.ACE
    public SID getSid() {
        return this.sid;
    }

    public String toString() {
        return String.format("AceType3{type=%s, flags=%s, access=0x%x, sid=%s, data=%s}", this.aceHeader.getAceType(), this.aceHeader.getAceFlags(), Long.valueOf(this.accessMask), this.sid, Arrays.toString(this.applicationData));
    }

    @Override // com.hierynomus.msdtyp.ace.ACE
    public void writeBody(SMBBuffer sMBBuffer) {
        sMBBuffer.putUInt32(this.accessMask);
        this.sid.write(sMBBuffer);
        sMBBuffer.putRawBytes(this.applicationData);
    }
}
