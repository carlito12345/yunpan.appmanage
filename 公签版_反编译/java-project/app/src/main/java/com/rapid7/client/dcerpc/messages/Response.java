package com.rapid7.client.dcerpc.messages;

import com.rapid7.client.dcerpc.Header;
import com.rapid7.client.dcerpc.PDUType;
import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import java.io.IOException;

/* loaded from: classes.dex */
public final class Response extends Header {
    private byte[] stub;

    public Response() {
        setPDUType(PDUType.RESPONSE);
    }

    public byte[] getStub() {
        return this.stub;
    }

    @Override // com.rapid7.client.dcerpc.Header, com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        setFragLength((short) (this.stub.length + 24));
        super.marshal(packetOutput);
        packetOutput.writeInt(0);
        packetOutput.writeShort(0);
        packetOutput.writeByte(0);
        packetOutput.align(Alignment.FOUR);
        packetOutput.write(getStub());
        packetOutput.write(new byte[getAuthLength()]);
    }

    public void setStub(byte[] bArr) {
        this.stub = bArr;
    }

    @Override // com.rapid7.client.dcerpc.Header, com.rapid7.client.dcerpc.io.Packet
    public void unmarshal(PacketInput packetInput) throws IOException {
        super.unmarshal(packetInput);
        setStub(new byte[(getFragLength() - getAuthLength()) - 24]);
        packetInput.fullySkipBytes(8);
        packetInput.readFully(getStub());
        packetInput.fullySkipBytes(getAuthLength());
    }
}
