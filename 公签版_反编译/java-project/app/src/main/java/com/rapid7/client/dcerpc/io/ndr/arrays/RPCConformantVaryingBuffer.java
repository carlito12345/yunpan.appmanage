package com.rapid7.client.dcerpc.io.ndr.arrays;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import java.io.IOException;

/* loaded from: classes.dex */
public class RPCConformantVaryingBuffer extends RPCConformantBuffer {
    private int actualCount;
    private int offset;

    public RPCConformantVaryingBuffer(int i10) {
        this(i10, 0, 0);
    }

    public int getActualCount() {
        return this.actualCount;
    }

    public int getOffset() {
        return this.offset;
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantBuffer, com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalEntity(PacketOutput packetOutput) throws IOException {
        super.marshalEntity(packetOutput);
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeInt(getOffset());
        packetOutput.writeInt(getActualCount());
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantBuffer, com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        super.unmarshalEntity(packetInput);
        packetInput.align(Alignment.FOUR);
        this.offset = packetInput.readIndex("Offset");
        this.actualCount = packetInput.readIndex("ActualCount");
    }

    public RPCConformantVaryingBuffer(int i10, int i11, int i12) {
        super(i10);
        this.offset = i11;
        this.actualCount = i12;
    }
}
