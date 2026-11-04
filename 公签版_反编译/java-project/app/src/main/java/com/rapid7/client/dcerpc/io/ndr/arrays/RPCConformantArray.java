package com.rapid7.client.dcerpc.io.ndr.arrays;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class RPCConformantArray<T> extends RPCConformantBuffer {
    private T[] array;

    public RPCConformantArray(T[] tArr) {
        super(tArr.length);
        this.array = tArr;
    }

    public T[] getArray() {
        return this.array;
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantBuffer, com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalDeferrals(PacketOutput packetOutput) {
        if (this.array == null) {
            return;
        }
        for (int i10 = 0; i10 < this.array.length; i10++) {
            marshalEntryPreamble(packetOutput, i10);
        }
        for (int i11 = 0; i11 < this.array.length; i11++) {
            marshalEntryEntity(packetOutput, i11);
        }
        for (int i12 = 0; i12 < this.array.length; i12++) {
            marshalEntryDeferrals(packetOutput, i12);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantBuffer, com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalEntity(PacketOutput packetOutput) {
    }

    public abstract void marshalEntryDeferrals(PacketOutput packetOutput, int i10);

    public abstract void marshalEntryEntity(PacketOutput packetOutput, int i10);

    public abstract void marshalEntryPreamble(PacketOutput packetOutput, int i10);

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantBuffer, com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalPreamble(PacketOutput packetOutput) throws IOException {
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeInt(getMaximumCount());
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantBuffer, com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        for (int i10 = 0; i10 < this.array.length; i10++) {
            unmarshalEntryPreamble(packetInput, i10);
        }
        for (int i11 = 0; i11 < this.array.length; i11++) {
            unmarshalEntryEntity(packetInput, i11);
        }
        for (int i12 = 0; i12 < this.array.length; i12++) {
            unmarshalEntryDeferrals(packetInput, i12);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantBuffer, com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
    }

    public abstract void unmarshalEntryDeferrals(PacketInput packetInput, int i10);

    public abstract void unmarshalEntryEntity(PacketInput packetInput, int i10);

    public abstract void unmarshalEntryPreamble(PacketInput packetInput, int i10);
}
