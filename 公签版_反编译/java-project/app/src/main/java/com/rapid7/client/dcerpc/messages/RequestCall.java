package com.rapid7.client.dcerpc.messages;

import com.rapid7.client.dcerpc.io.Hexify;
import com.rapid7.client.dcerpc.io.HexifyImpl;
import com.rapid7.client.dcerpc.io.Packet;
import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import yg.a;

/* loaded from: classes.dex */
public abstract class RequestCall<T extends RequestResponse> extends HexifyImpl implements Packet, Hexify {
    private final short opNum;

    public RequestCall(short s8) {
        this.opNum = s8;
    }

    public short getOpNum() {
        return this.opNum;
    }

    public abstract T getResponseObject();

    public byte[] getStub() {
        a aVar = new a();
        marshal(new PacketOutput(aVar));
        return aVar.A();
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void unmarshal(PacketInput packetInput) {
        throw new UnsupportedOperationException("Unmarshal Not Implemented.");
    }
}
