package com.rapid7.client.dcerpc.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Marshallable;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import g.b;
import j$.util.Objects;
import java.io.IOException;
import java.rmi.UnmarshalException;

/* loaded from: classes.dex */
public abstract class WChar implements Unmarshallable, Marshallable {
    private int actualCount;
    private int offset;
    private String value = "";

    public static class NonNullTerminated extends WChar {
        public static NonNullTerminated of(String str) {
            NonNullTerminated nonNullTerminated = new NonNullTerminated();
            nonNullTerminated.setValue(str);
            return nonNullTerminated;
        }

        @Override // com.rapid7.client.dcerpc.objects.WChar
        public boolean isNullTerminated() {
            return false;
        }
    }

    public static class NullTerminated extends WChar {
        public static NullTerminated of(String str) {
            NullTerminated nullTerminated = new NullTerminated();
            nullTerminated.setValue(str);
            return nullTerminated;
        }

        @Override // com.rapid7.client.dcerpc.objects.WChar
        public boolean isNullTerminated() {
            return true;
        }
    }

    private int getCodePoints() {
        return (isNullTerminated() ? 1 : 0) + getValue().length();
    }

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
        if (!(obj instanceof WChar)) {
            return false;
        }
        WChar wChar = (WChar) obj;
        return isNullTerminated() == wChar.isNullTerminated() && Objects.equals(getValue(), wChar.getValue());
    }

    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(isNullTerminated()), getValue());
    }

    public abstract boolean isNullTerminated();

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalDeferrals(PacketOutput packetOutput) throws IOException {
        packetOutput.writeChars(this.value);
        if (isNullTerminated()) {
            packetOutput.writeShort(0);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalEntity(PacketOutput packetOutput) throws IOException {
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeInt(0);
        packetOutput.writeInt(getCodePoints());
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalPreamble(PacketOutput packetOutput) throws IOException {
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeInt(getCodePoints());
    }

    public void setValue(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Expected non-null value");
        }
        this.value = str;
    }

    public String toString() {
        return getValue() == null ? "null" : b.A("\"", getValue(), "\"");
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        int i10;
        boolean z;
        int i11;
        packetInput.align(Alignment.TWO);
        packetInput.fullySkipBytes(this.offset * 2);
        if (!isNullTerminated() || (i11 = this.actualCount) <= 0) {
            i10 = this.actualCount;
            z = false;
        } else {
            z = true;
            i10 = i11 - 1;
        }
        StringBuilder sb2 = new StringBuilder(i10);
        for (int i12 = 0; i12 < i10; i12++) {
            sb2.append(packetInput.readChar());
        }
        this.value = sb2.toString();
        if (z) {
            packetInput.fullySkipBytes(2);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        this.offset = readIndex("Offset", packetInput);
        this.actualCount = readIndex("ActualCount", packetInput);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        packetInput.fullySkipBytes(4);
    }
}
