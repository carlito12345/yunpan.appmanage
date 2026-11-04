package com.rapid7.client.dcerpc.mslsad.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import j$.util.Objects;

/* loaded from: classes.dex */
public class LSAPRTranslatedSID implements Unmarshallable {
    private int domainIndex;
    private long relativeId;
    private short use;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LSAPRTranslatedSID)) {
            return false;
        }
        LSAPRTranslatedSID lSAPRTranslatedSID = (LSAPRTranslatedSID) obj;
        return Short.valueOf(this.use).equals(Short.valueOf(lSAPRTranslatedSID.use)) && Long.valueOf(this.relativeId).equals(Long.valueOf(lSAPRTranslatedSID.relativeId)) && Integer.valueOf(this.domainIndex).equals(Integer.valueOf(lSAPRTranslatedSID.domainIndex));
    }

    public long getDomainIndex() {
        return this.domainIndex;
    }

    public long getRelativeId() {
        return this.relativeId;
    }

    public int getUse() {
        return this.use;
    }

    public int hashCode() {
        return Objects.hash(Short.valueOf(this.use), Long.valueOf(this.relativeId), Integer.valueOf(this.domainIndex));
    }

    public String toString() {
        return String.format("LSA_TRANSLATED_SID{Use:%d,RelativeId:%d,DomainIndex;%d}", Short.valueOf(this.use), Long.valueOf(this.relativeId), Integer.valueOf(this.domainIndex));
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        this.use = packetInput.readShort();
        packetInput.fullySkipBytes(2);
        this.relativeId = packetInput.readUnsignedInt();
        this.domainIndex = packetInput.readInt();
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
