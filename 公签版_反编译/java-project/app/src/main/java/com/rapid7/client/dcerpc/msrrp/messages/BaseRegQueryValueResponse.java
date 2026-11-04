package com.rapid7.client.dcerpc.msrrp.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantVaryingByteArray;
import com.rapid7.client.dcerpc.messages.RequestResponse;

/* loaded from: classes.dex */
public class BaseRegQueryValueResponse extends RequestResponse {
    private RPCConformantVaryingByteArray data;
    private Integer type;

    public RPCConformantVaryingByteArray getData() {
        return this.data;
    }

    public Integer getType() {
        return this.type;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        if (packetInput.readReferentID() != 0) {
            this.type = Integer.valueOf(packetInput.readInt());
        } else {
            this.type = null;
        }
        if (packetInput.readReferentID() != 0) {
            RPCConformantVaryingByteArray rPCConformantVaryingByteArray = new RPCConformantVaryingByteArray();
            this.data = rPCConformantVaryingByteArray;
            packetInput.readUnmarshallable(rPCConformantVaryingByteArray);
        } else {
            this.data = null;
        }
        if (packetInput.readReferentID() != 0) {
            packetInput.fullySkipBytes(4);
        }
        if (packetInput.readReferentID() != 0) {
            packetInput.fullySkipBytes(4);
        }
    }
}
