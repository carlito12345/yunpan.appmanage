package com.rapid7.client.dcerpc.messages;

import com.rapid7.client.dcerpc.Header;
import com.rapid7.client.dcerpc.PDUType;
import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import java.io.IOException;

/* loaded from: classes.dex */
public final class BindResponse extends Header {
    private short maxRecvFrag;
    private short maxXmitFrag;

    /* renamed from: com.rapid7.client.dcerpc.messages.BindResponse$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$rapid7$client$dcerpc$PDUType;

        static {
            int[] iArr = new int[PDUType.values().length];
            $SwitchMap$com$rapid7$client$dcerpc$PDUType = iArr;
            try {
                iArr[PDUType.BIND_ACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$rapid7$client$dcerpc$PDUType[PDUType.BIND_NAK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public short getMaxRecvFrag() {
        return this.maxRecvFrag;
    }

    public short getMaxXmitFrag() {
        return this.maxXmitFrag;
    }

    public boolean isACK() {
        return PDUType.BIND_ACK.equals(getPDUType());
    }

    public boolean isNAK() {
        return PDUType.BIND_NAK.equals(getPDUType());
    }

    @Override // com.rapid7.client.dcerpc.Header, com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        int i10 = AnonymousClass1.$SwitchMap$com$rapid7$client$dcerpc$PDUType[getPDUType().ordinal()];
        if (i10 == 1) {
            setFragLength((short) 20);
            super.marshal(packetOutput);
            packetOutput.writeShort(this.maxXmitFrag);
            packetOutput.writeShort(this.maxRecvFrag);
            return;
        }
        if (i10 == 2) {
            setFragLength((short) 16);
            super.marshal(packetOutput);
        } else {
            throw new IOException("Invalid PDU type: " + getPDUType());
        }
    }

    public void setMaxRecvFrag(short s8) {
        this.maxRecvFrag = s8;
    }

    public void setMaxXmitFrag(short s8) {
        this.maxXmitFrag = s8;
    }

    @Override // com.rapid7.client.dcerpc.Header, com.rapid7.client.dcerpc.io.Packet
    public void unmarshal(PacketInput packetInput) throws IOException {
        super.unmarshal(packetInput);
        int i10 = AnonymousClass1.$SwitchMap$com$rapid7$client$dcerpc$PDUType[getPDUType().ordinal()];
        if (i10 == 1) {
            this.maxXmitFrag = packetInput.readShort();
            this.maxRecvFrag = packetInput.readShort();
            packetInput.fullySkipBytes(getFragLength() - 20);
        } else if (i10 == 2) {
            packetInput.fullySkipBytes(getFragLength() - 16);
        } else {
            throw new IOException("Invalid PDU type: " + getPDUType());
        }
    }
}
