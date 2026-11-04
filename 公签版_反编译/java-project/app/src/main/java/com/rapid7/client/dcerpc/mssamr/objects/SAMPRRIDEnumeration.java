package com.rapid7.client.dcerpc.mssamr.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;

/* loaded from: classes.dex */
public class SAMPRRIDEnumeration implements Unmarshallable {
    private RPCUnicodeString.NonNullTerminated name;
    private int relativeId;

    public RPCUnicodeString.NonNullTerminated getName() {
        return this.name;
    }

    public int getRelativeId() {
        return this.relativeId;
    }

    public void setName(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.name = nonNullTerminated;
    }

    public void setRelativeId(int i10) {
        this.relativeId = i10;
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        this.name.unmarshalDeferrals(packetInput);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        this.relativeId = packetInput.readInt();
        RPCUnicodeString.NonNullTerminated nonNullTerminated = new RPCUnicodeString.NonNullTerminated();
        this.name = nonNullTerminated;
        nonNullTerminated.unmarshalEntity(packetInput);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
