package com.rapid7.client.dcerpc.mssamr.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;

/* loaded from: classes.dex */
public class GroupMembership implements Unmarshallable {
    private int attributes;
    private int rid;

    public int getAttributes() {
        return this.attributes;
    }

    public int getRelativeID() {
        return this.rid;
    }

    public void setAttributes(int i10) {
        this.attributes = i10;
    }

    public void setRelativeID(int i10) {
        this.rid = i10;
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        this.rid = packetInput.readInt();
        this.attributes = packetInput.readInt();
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
