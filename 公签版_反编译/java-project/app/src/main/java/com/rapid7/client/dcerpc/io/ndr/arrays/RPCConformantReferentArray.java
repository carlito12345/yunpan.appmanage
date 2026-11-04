package com.rapid7.client.dcerpc.io.ndr.arrays;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Marshallable;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;

/* loaded from: classes.dex */
public abstract class RPCConformantReferentArray<T extends Unmarshallable & Marshallable> extends RPCConformantArray<T> {
    public RPCConformantReferentArray(T[] tArr) {
        super(tArr);
    }

    public abstract T createEntry();

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantArray
    public void marshalEntryDeferrals(PacketOutput packetOutput, int i10) {
        T t10 = getArray()[i10];
        if (t10 != null) {
            packetOutput.writeMarshallable(t10);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantArray
    public void marshalEntryEntity(PacketOutput packetOutput, int i10) {
        packetOutput.writeReferentID(getArray()[i10]);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantArray
    public void marshalEntryPreamble(PacketOutput packetOutput, int i10) {
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantArray
    public void unmarshalEntryDeferrals(PacketInput packetInput, int i10) {
        T t10 = getArray()[i10];
        if (t10 != null) {
            packetInput.readUnmarshallable(t10);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantArray
    public void unmarshalEntryEntity(PacketInput packetInput, int i10) {
        if (packetInput.readReferentID() == 0) {
            getArray()[i10] = null;
        } else {
            ((T[]) getArray())[i10] = createEntry();
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantArray
    public void unmarshalEntryPreamble(PacketInput packetInput, int i10) {
    }
}
