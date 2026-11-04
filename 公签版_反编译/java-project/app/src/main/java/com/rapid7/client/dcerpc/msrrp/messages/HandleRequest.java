package com.rapid7.client.dcerpc.msrrp.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.HandleResponse;
import com.rapid7.client.dcerpc.messages.RequestCall;

/* loaded from: classes.dex */
public class HandleRequest extends RequestCall<HandleResponse> {
    private final int accessMask;

    public HandleRequest(short s8, int i10) {
        super(s8);
        this.accessMask = i10;
    }

    public int getAccessMask() {
        return this.accessMask;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) {
        packetOutput.writeNull();
        packetOutput.writeInt(this.accessMask);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public HandleResponse getResponseObject() {
        return new HandleResponse();
    }
}
