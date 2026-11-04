package com.rapid7.client.dcerpc.mslsad.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import j$.util.Objects;

/* loaded from: classes.dex */
public class LSAPRTranslatedName implements Unmarshallable {
    private int domainIndex;
    private RPCUnicodeString.NonNullTerminated name;
    private short use;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LSAPRTranslatedName)) {
            return false;
        }
        LSAPRTranslatedName lSAPRTranslatedName = (LSAPRTranslatedName) obj;
        return this.use == lSAPRTranslatedName.use && Objects.equals(this.name, lSAPRTranslatedName.name) && this.domainIndex == lSAPRTranslatedName.domainIndex;
    }

    public int getDomainIndex() {
        return this.domainIndex;
    }

    public RPCUnicodeString getName() {
        return this.name;
    }

    public int getUse() {
        return this.use;
    }

    public int hashCode() {
        return Objects.hash(Short.valueOf(this.use), this.name, Integer.valueOf(this.domainIndex));
    }

    public String toString() {
        return String.format("LSAPR_TRANSLATED_NAME{Use:%d,Name:%s,DomainIndex:%d", Short.valueOf(this.use), this.name, Integer.valueOf(this.domainIndex));
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        this.name.unmarshalDeferrals(packetInput);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        Alignment alignment = Alignment.FOUR;
        packetInput.align(alignment);
        this.use = packetInput.readShort();
        packetInput.fullySkipBytes(2);
        this.name.unmarshalEntity(packetInput);
        packetInput.align(alignment);
        this.domainIndex = packetInput.readInt();
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
        RPCUnicodeString.NonNullTerminated nonNullTerminated = new RPCUnicodeString.NonNullTerminated();
        this.name = nonNullTerminated;
        nonNullTerminated.unmarshalPreamble(packetInput);
    }
}
