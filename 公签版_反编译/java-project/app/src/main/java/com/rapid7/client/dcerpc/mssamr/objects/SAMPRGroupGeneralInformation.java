package com.rapid7.client.dcerpc.mssamr.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import j$.util.Objects;

/* loaded from: classes.dex */
public class SAMPRGroupGeneralInformation implements Unmarshallable {
    private RPCUnicodeString.NonNullTerminated adminComment;
    private int attributes;
    private long memberCount;
    private RPCUnicodeString.NonNullTerminated name;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SAMPRGroupGeneralInformation)) {
            return false;
        }
        SAMPRGroupGeneralInformation sAMPRGroupGeneralInformation = (SAMPRGroupGeneralInformation) obj;
        return Objects.equals(getName(), sAMPRGroupGeneralInformation.getName()) && Integer.valueOf(getAttributes()).equals(Integer.valueOf(sAMPRGroupGeneralInformation.getAttributes())) && Long.valueOf(getMemberCount()).equals(Long.valueOf(sAMPRGroupGeneralInformation.getMemberCount())) && Objects.equals(getAdminComment(), sAMPRGroupGeneralInformation.getAdminComment());
    }

    public RPCUnicodeString.NonNullTerminated getAdminComment() {
        return this.adminComment;
    }

    public int getAttributes() {
        return this.attributes;
    }

    public long getMemberCount() {
        return this.memberCount;
    }

    public RPCUnicodeString.NonNullTerminated getName() {
        return this.name;
    }

    public int hashCode() {
        return Objects.hash(getName(), Integer.valueOf(getAttributes()), Long.valueOf(getMemberCount()), getAdminComment());
    }

    public void setAdminComment(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.adminComment = nonNullTerminated;
    }

    public void setAttributes(int i10) {
        this.attributes = i10;
    }

    public void setMemberCount(long j10) {
        this.memberCount = j10;
    }

    public void setName(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.name = nonNullTerminated;
    }

    public String toString() {
        return String.format("SAMPR_GROUP_GENERAL_INFORMATION{Name:%s,Attributes:%d,MemberCount:%d,AdminComment:%s}", getName(), Integer.valueOf(getAttributes()), Long.valueOf(getMemberCount()), getAdminComment());
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        this.name.unmarshalDeferrals(packetInput);
        this.adminComment.unmarshalDeferrals(packetInput);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        Alignment alignment = Alignment.FOUR;
        packetInput.align(alignment);
        this.name.unmarshalEntity(packetInput);
        packetInput.align(alignment);
        this.attributes = packetInput.readInt();
        this.memberCount = packetInput.readUnsignedInt();
        this.adminComment.unmarshalEntity(packetInput);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
        RPCUnicodeString.NonNullTerminated nonNullTerminated = new RPCUnicodeString.NonNullTerminated();
        this.name = nonNullTerminated;
        nonNullTerminated.unmarshalPreamble(packetInput);
        RPCUnicodeString.NonNullTerminated nonNullTerminated2 = new RPCUnicodeString.NonNullTerminated();
        this.adminComment = nonNullTerminated2;
        nonNullTerminated2.unmarshalPreamble(packetInput);
    }
}
