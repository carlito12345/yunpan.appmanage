package com.rapid7.client.dcerpc.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Marshallable;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import java.io.IOException;
import java.rmi.UnmarshalException;
import java.util.Arrays;

/* loaded from: classes.dex */
public class RPCShortBlob implements Marshallable, Unmarshallable {
    private int[] buffer;

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    private int readIndex(String str, PacketInput packetInput) throws UnmarshalException {
        long unsignedInt = packetInput.readUnsignedInt();
        if (unsignedInt <= 2147483647L) {
            return (int) unsignedInt;
        }
        throw new UnmarshalException(String.format("%s %d > %d", str, Long.valueOf(unsignedInt), Integer.MAX_VALUE));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RPCShortBlob) {
            return Arrays.equals(getBuffer(), ((RPCShortBlob) obj).getBuffer());
        }
        return false;
    }

    public int[] getBuffer() {
        return this.buffer;
    }

    public int hashCode() {
        return Arrays.hashCode(getBuffer());
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalDeferrals(PacketOutput packetOutput) throws IOException {
        if (this.buffer != null) {
            packetOutput.align(Alignment.FOUR);
            packetOutput.writeInt(this.buffer.length);
            packetOutput.writeInt(0);
            packetOutput.writeInt(this.buffer.length);
            for (int i10 : this.buffer) {
                packetOutput.writeShort(i10);
            }
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalEntity(PacketOutput packetOutput) throws IOException {
        packetOutput.align(Alignment.FOUR);
        int[] iArr = this.buffer;
        if (iArr == null) {
            packetOutput.writeShort(0);
            packetOutput.writeShort(0);
            packetOutput.writeNull();
        } else {
            packetOutput.writeShort(iArr.length);
            packetOutput.writeShort(this.buffer.length);
            packetOutput.writeReferentID();
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalPreamble(PacketOutput packetOutput) {
    }

    public void setBuffer(int[] iArr) {
        this.buffer = iArr;
    }

    public String toString() {
        int[] iArr = this.buffer;
        return String.format("RPC_SHORT_BLOB{size(Buffer):%s}", iArr == null ? "null" : Integer.valueOf(iArr.length));
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) throws UnmarshalException {
        if (this.buffer != null) {
            packetInput.align(Alignment.FOUR);
            packetInput.fullySkipBytes(4);
            int index = readIndex("Offset", packetInput);
            int index2 = readIndex("ActualCount", packetInput);
            if (index2 != this.buffer.length) {
                throw new UnmarshalException(String.format("Expected Length == Buffer.ActualCount: %d != %d", Integer.valueOf(index2), Integer.valueOf(this.buffer.length)));
            }
            packetInput.fullySkipBytes(index * 2);
            for (int i10 = 0; i10 < index2; i10++) {
                this.buffer[i10] = packetInput.readUnsignedShort();
            }
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        int unsignedShort = packetInput.readUnsignedShort();
        packetInput.fullySkipBytes(2);
        if (packetInput.readReferentID() != 0) {
            this.buffer = new int[unsignedShort];
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
