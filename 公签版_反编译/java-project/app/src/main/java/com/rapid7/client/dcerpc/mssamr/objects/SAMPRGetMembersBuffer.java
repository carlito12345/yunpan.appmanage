package com.rapid7.client.dcerpc.mssamr.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantIntegerArray;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SAMPRGetMembersBuffer implements Unmarshallable {
    private List<GroupMembership> array;
    private RPCConformantIntegerArray attributes;
    private int memberCount;
    private RPCConformantIntegerArray members;

    public List<GroupMembership> getGroupMembership() {
        return this.array;
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        RPCConformantIntegerArray rPCConformantIntegerArray = this.members;
        if (rPCConformantIntegerArray != null) {
            packetInput.readUnmarshallable(rPCConformantIntegerArray);
        }
        RPCConformantIntegerArray rPCConformantIntegerArray2 = this.attributes;
        if (rPCConformantIntegerArray2 != null) {
            packetInput.readUnmarshallable(rPCConformantIntegerArray2);
        }
        this.array = new ArrayList(this.memberCount);
        for (int i10 = 0; i10 < this.memberCount; i10++) {
            GroupMembership groupMembership = new GroupMembership();
            groupMembership.setRelativeID(this.members.getArray()[i10].intValue());
            groupMembership.setAttributes(this.attributes.getArray()[i10].intValue());
            this.array.add(groupMembership);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        this.memberCount = packetInput.readInt();
        if (packetInput.readReferentID() != 0) {
            this.members = new RPCConformantIntegerArray(new Integer[this.memberCount]);
        } else {
            this.members = null;
        }
        if (packetInput.readReferentID() != 0) {
            this.attributes = new RPCConformantIntegerArray(new Integer[this.memberCount]);
        } else {
            this.attributes = null;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
