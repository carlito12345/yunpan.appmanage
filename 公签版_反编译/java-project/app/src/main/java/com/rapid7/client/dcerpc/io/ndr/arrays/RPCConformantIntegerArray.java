package com.rapid7.client.dcerpc.io.ndr.arrays;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;

/* loaded from: classes.dex */
public class RPCConformantIntegerArray extends RPCConformantPrimitiveArray<Integer> {
    public RPCConformantIntegerArray(Integer[] numArr) {
        super(numArr);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantPrimitiveArray
    public void marshalPrimitive(PacketOutput packetOutput, Integer num) {
        packetOutput.writeInt(num.intValue());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantPrimitiveArray
    public Integer unmarshalPrimitive(PacketInput packetInput) {
        return Integer.valueOf(packetInput.readInt());
    }
}
