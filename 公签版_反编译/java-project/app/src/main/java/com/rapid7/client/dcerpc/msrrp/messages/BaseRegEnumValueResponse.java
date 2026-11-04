package com.rapid7.client.dcerpc.msrrp.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantVaryingByteArray;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;

/* loaded from: classes.dex */
public class BaseRegEnumValueResponse extends RequestResponse {
    private RPCConformantVaryingByteArray data;
    private RPCUnicodeString.NullTerminated name;
    private Integer type;

    public RPCConformantVaryingByteArray getData() {
        return this.data;
    }

    public RPCUnicodeString.NullTerminated getName() {
        return this.name;
    }

    public Integer getType() {
        return this.type;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        RPCUnicodeString.NullTerminated nullTerminated = new RPCUnicodeString.NullTerminated();
        this.name = nullTerminated;
        packetInput.readUnmarshallable(nullTerminated);
        Alignment alignment = Alignment.FOUR;
        packetInput.align(alignment);
        if (packetInput.readReferentID() != 0) {
            this.type = Integer.valueOf(packetInput.readInt());
        } else {
            this.type = null;
        }
        packetInput.readReferentID();
        RPCConformantVaryingByteArray rPCConformantVaryingByteArray = new RPCConformantVaryingByteArray();
        this.data = rPCConformantVaryingByteArray;
        packetInput.readUnmarshallable(rPCConformantVaryingByteArray);
        packetInput.align(alignment);
        packetInput.fullySkipBytes(8);
        packetInput.fullySkipBytes(8);
    }
}
