package com.hierynomus.msdtyp.ace;

import com.hierynomus.msdtyp.SID;
import com.hierynomus.smb.SMBBuffer;

/* loaded from: classes.dex */
class AceType1 extends ACE {
    private long accessMask;
    private SID sid;

    public AceType1(AceHeader aceHeader, long j10, SID sid) {
        super(aceHeader);
        this.accessMask = j10;
        this.sid = sid;
    }

    public static AceType1 read(AceHeader aceHeader, SMBBuffer sMBBuffer) {
        return new AceType1(aceHeader, sMBBuffer.readUInt32(), SID.read(sMBBuffer));
    }

    @Override // com.hierynomus.msdtyp.ace.ACE
    public long getAccessMask() {
        return this.accessMask;
    }

    @Override // com.hierynomus.msdtyp.ace.ACE
    public SID getSid() {
        return this.sid;
    }

    public String toString() {
        return String.format("AceType1{type=%s, flags=%s, access=0x%x, sid=%s}", this.aceHeader.getAceType(), this.aceHeader.getAceFlags(), Long.valueOf(this.accessMask), this.sid);
    }

    @Override // com.hierynomus.msdtyp.ace.ACE
    public void writeBody(SMBBuffer sMBBuffer) {
        sMBBuffer.putUInt32(this.accessMask);
        this.sid.write(sMBBuffer);
    }
}
