package com.rapid7.client.dcerpc.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Marshallable;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.objects.WChar;
import g.b;
import j$.util.Objects;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class RPCUnicodeString implements Unmarshallable, Marshallable {
    private WChar wChar;

    public static class NonNullTerminated extends RPCUnicodeString {
        public static NonNullTerminated of(String str) {
            NonNullTerminated nonNullTerminated = new NonNullTerminated();
            nonNullTerminated.setValue(str);
            return nonNullTerminated;
        }

        @Override // com.rapid7.client.dcerpc.objects.RPCUnicodeString
        public WChar createWChar() {
            return new WChar.NonNullTerminated();
        }
    }

    public static class NullTerminated extends RPCUnicodeString {
        public static NullTerminated of(String str) {
            NullTerminated nullTerminated = new NullTerminated();
            nullTerminated.setValue(str);
            return nullTerminated;
        }

        @Override // com.rapid7.client.dcerpc.objects.RPCUnicodeString
        public WChar createWChar() {
            return new WChar.NullTerminated();
        }
    }

    public abstract WChar createWChar();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RPCUnicodeString) {
            return Objects.equals(this.wChar, ((RPCUnicodeString) obj).wChar);
        }
        return false;
    }

    public String getValue() {
        WChar wChar = this.wChar;
        if (wChar == null) {
            return null;
        }
        return wChar.getValue();
    }

    public int hashCode() {
        return Objects.hash(this.wChar);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalDeferrals(PacketOutput packetOutput) {
        WChar wChar = this.wChar;
        if (wChar != null) {
            packetOutput.writeMarshallable(wChar);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalEntity(PacketOutput packetOutput) throws IOException {
        packetOutput.align(Alignment.FOUR);
        WChar wChar = this.wChar;
        if (wChar == null) {
            packetOutput.writeShort(0);
            packetOutput.writeShort(0);
        } else {
            int length = (wChar.getValue().length() * 2) + (this.wChar.isNullTerminated() ? 2 : 0);
            packetOutput.writeShort(length);
            packetOutput.writeShort(length);
        }
        packetOutput.writeReferentID(this.wChar);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalPreamble(PacketOutput packetOutput) {
    }

    public void setValue(String str) {
        if (str == null) {
            this.wChar = null;
            return;
        }
        WChar wCharCreateWChar = createWChar();
        this.wChar = wCharCreateWChar;
        wCharCreateWChar.setValue(str);
    }

    public String toString() {
        return getValue() == null ? "null" : b.A("\"", getValue(), "\"");
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        WChar wChar = this.wChar;
        if (wChar != null) {
            packetInput.readUnmarshallable(wChar);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        packetInput.fullySkipBytes(2);
        packetInput.fullySkipBytes(2);
        if (packetInput.readReferentID() != 0) {
            this.wChar = createWChar();
        } else {
            this.wChar = null;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
