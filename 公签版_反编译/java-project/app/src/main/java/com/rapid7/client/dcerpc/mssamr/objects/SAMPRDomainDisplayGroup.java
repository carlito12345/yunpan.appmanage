package com.rapid7.client.dcerpc.mssamr.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;

/* loaded from: classes.dex */
public class SAMPRDomainDisplayGroup implements Unmarshallable {
    private RPCUnicodeString.NonNullTerminated accountName;
    private int attributes;
    private RPCUnicodeString.NonNullTerminated description;
    private int index;
    private int rid;

    public RPCUnicodeString.NonNullTerminated getAccountName() {
        return this.accountName;
    }

    public int getAttributes() {
        return this.attributes;
    }

    public RPCUnicodeString.NonNullTerminated getDescription() {
        return this.description;
    }

    public int getIndex() {
        return this.index;
    }

    public int getRid() {
        return this.rid;
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        this.accountName.unmarshalDeferrals(packetInput);
        this.description.unmarshalDeferrals(packetInput);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        this.index = packetInput.readInt();
        this.rid = packetInput.readInt();
        this.attributes = packetInput.readInt();
        RPCUnicodeString.NonNullTerminated nonNullTerminated = new RPCUnicodeString.NonNullTerminated();
        this.accountName = nonNullTerminated;
        nonNullTerminated.unmarshalEntity(packetInput);
        RPCUnicodeString.NonNullTerminated nonNullTerminated2 = new RPCUnicodeString.NonNullTerminated();
        this.description = nonNullTerminated2;
        nonNullTerminated2.unmarshalEntity(packetInput);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
