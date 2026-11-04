package com.rapid7.client.dcerpc.io.ndr.arrays;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Marshallable;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import java.io.IOException;

/* loaded from: classes.dex */
public class RPCConformantBuffer implements Unmarshallable, Marshallable {
    private int maximumCount;

    public RPCConformantBuffer(int i10) {
        this.maximumCount = i10;
    }

    public int getMaximumCount() {
        return this.maximumCount;
    }

    public void marshalDeferrals(PacketOutput packetOutput) {
    }

    public void marshalEntity(PacketOutput packetOutput) {
    }

    public void marshalPreamble(PacketOutput packetOutput) throws IOException {
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeInt(getMaximumCount());
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
        this.maximumCount = packetInput.readIndex("MaximumCount");
    }
}
