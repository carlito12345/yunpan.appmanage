package com.hierynomus.msdtyp.ace;

import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.smb.SMBBuffer;
import java.util.EnumSet;
import java.util.Set;

/* loaded from: classes.dex */
public class AceHeader {
    private Set<AceFlags> aceFlags;
    private int aceSize;
    private AceType aceType;

    public AceHeader() {
    }

    public static AceHeader readFrom(SMBBuffer sMBBuffer) {
        AceType aceType = (AceType) EnumWithValue.EnumUtils.valueOf(sMBBuffer.readByte(), AceType.class, null);
        EnumSet enumSet = EnumWithValue.EnumUtils.toEnumSet(sMBBuffer.readByte(), AceFlags.class);
        int uInt16 = sMBBuffer.readUInt16();
        AceHeader aceHeader = new AceHeader(aceType, enumSet);
        aceHeader.aceSize = uInt16;
        return aceHeader;
    }

    public Set<AceFlags> getAceFlags() {
        return this.aceFlags;
    }

    public int getAceSize() {
        return this.aceSize;
    }

    public AceType getAceType() {
        return this.aceType;
    }

    public String toString() {
        return "AceHeader{aceType=" + this.aceType + ", aceFlags=" + this.aceFlags + ", aceSize=" + this.aceSize + '}';
    }

    public void writeTo(SMBBuffer sMBBuffer) {
        writeTo(sMBBuffer, this.aceSize);
    }

    public AceHeader(AceType aceType, Set<AceFlags> set) {
        this.aceType = aceType;
        this.aceFlags = set;
    }

    public void writeTo(SMBBuffer sMBBuffer, int i10) {
        sMBBuffer.putByte((byte) this.aceType.getValue());
        sMBBuffer.putByte((byte) EnumWithValue.EnumUtils.toLong(this.aceFlags));
        sMBBuffer.putUInt16(i10);
    }
}
