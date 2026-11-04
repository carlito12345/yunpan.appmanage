package com.rapid7.client.dcerpc.mssamr.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import java.rmi.UnmarshalException;
import java.util.Arrays;

/* loaded from: classes.dex */
public class SAMPRULongArray implements Unmarshallable {
    private long[] array;

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
        if (obj instanceof SAMPRULongArray) {
            return Arrays.equals(getArray(), ((SAMPRULongArray) obj).getArray());
        }
        return false;
    }

    public long[] getArray() {
        return this.array;
    }

    public int hashCode() {
        return Arrays.hashCode(getArray());
    }

    public void setArray(long[] jArr) {
        this.array = jArr;
    }

    public String toString() {
        long[] jArr = this.array;
        return String.format("SAMPR_ULONG_ARRAY{size(Element):%s", jArr == null ? "null" : Integer.valueOf(jArr.length));
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        if (this.array == null) {
            return;
        }
        packetInput.align(Alignment.FOUR);
        packetInput.fullySkipBytes(4);
        int i10 = 0;
        while (true) {
            long[] jArr = this.array;
            if (i10 >= jArr.length) {
                return;
            }
            jArr[i10] = packetInput.readUnsignedInt();
            i10++;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) throws UnmarshalException {
        packetInput.align(Alignment.FOUR);
        int index = readIndex("Count", packetInput);
        if (packetInput.readReferentID() != 0) {
            this.array = new long[index];
        } else {
            this.array = null;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
