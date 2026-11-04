package com.rapid7.client.dcerpc.io.ndr.arrays;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Marshallable;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import java.io.IOException;

/* loaded from: classes.dex */
public class RPCConformantVaryingByteArray implements Unmarshallable, Marshallable {
    private static final byte[] EMPTY = new byte[0];
    private byte[] array = EMPTY;
    private int offset;

    public byte[] getArray() {
        return this.array;
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalDeferrals(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.array);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalEntity(PacketOutput packetOutput) throws IOException {
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeInt(0);
        packetOutput.writeInt(this.array.length);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalPreamble(PacketOutput packetOutput) throws IOException {
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeInt(this.array.length);
    }

    public void setArray(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("Array must not be null");
        }
        this.array = bArr;
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        packetInput.fullySkipBytes(this.offset);
        packetInput.readRawBytes(this.array);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        this.offset = packetInput.readIndex("Offset");
        this.array = new byte[packetInput.readIndex("ActualCount")];
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        packetInput.fullySkipBytes(4);
    }
}
