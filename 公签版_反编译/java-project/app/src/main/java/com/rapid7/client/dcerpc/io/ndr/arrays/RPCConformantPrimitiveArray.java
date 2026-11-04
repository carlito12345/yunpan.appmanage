package com.rapid7.client.dcerpc.io.ndr.arrays;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;

/* loaded from: classes.dex */
public abstract class RPCConformantPrimitiveArray<T> extends RPCConformantArray<T> {
    public RPCConformantPrimitiveArray(T[] tArr) {
        super(tArr);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantArray
    public void marshalEntryDeferrals(PacketOutput packetOutput, int i10) {
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantArray
    public void marshalEntryEntity(PacketOutput packetOutput, int i10) {
        marshalPrimitive(packetOutput, getArray()[i10]);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantArray
    public void marshalEntryPreamble(PacketOutput packetOutput, int i10) {
    }

    public abstract void marshalPrimitive(PacketOutput packetOutput, T t10);

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantArray
    public void unmarshalEntryDeferrals(PacketInput packetInput, int i10) {
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantArray
    public void unmarshalEntryEntity(PacketInput packetInput, int i10) {
        getArray()[i10] = unmarshalPrimitive(packetInput);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantArray
    public void unmarshalEntryPreamble(PacketInput packetInput, int i10) {
    }

    public abstract T unmarshalPrimitive(PacketInput packetInput);
}
