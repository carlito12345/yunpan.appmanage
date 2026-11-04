package com.rapid7.client.dcerpc.messages;

import com.rapid7.client.dcerpc.Header;
import com.rapid7.client.dcerpc.PDUType;
import com.rapid7.client.dcerpc.PFCFlag;
import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import java.io.IOException;

/* loaded from: classes.dex */
public final class Request extends Header {
    private short opNum;
    private byte[] stub;

    public Request() {
        setPDUType(PDUType.REQUEST);
    }

    public short getOpNum() {
        return this.opNum;
    }

    public byte[] getStub() {
        return this.stub;
    }

    @Override // com.rapid7.client.dcerpc.Header, com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        if (getStub() == null) {
            throw new IllegalStateException("Invalid stub: " + getStub());
        }
        setFragLength((short) ((getPFCFlags().contains(PFCFlag.OBJECT_UUID) ? 40 : 24) + this.stub.length));
        super.marshal(packetOutput);
        byte[] stub = getStub();
        packetOutput.writeInt(stub.length);
        packetOutput.writeShort(0);
        packetOutput.writeShort(getOpNum());
        packetOutput.write(stub);
    }

    public void setOpNum(short s8) {
        this.opNum = s8;
    }

    public void setStub(byte[] bArr) {
        this.stub = bArr;
    }

    @Override // com.rapid7.client.dcerpc.Header, com.rapid7.client.dcerpc.io.Packet
    public void unmarshal(PacketInput packetInput) {
        throw new UnsupportedOperationException("Unmarshal Not Implemented.");
    }
}
