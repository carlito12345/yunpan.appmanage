package com.rapid7.client.dcerpc.messages;

import com.rapid7.client.dcerpc.Header;
import com.rapid7.client.dcerpc.Interface;
import com.rapid7.client.dcerpc.PDUType;
import com.rapid7.client.dcerpc.PFCFlag;
import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import java.io.IOException;
import java.util.EnumSet;

/* loaded from: classes.dex */
public final class BindRequest extends Header {
    private final Interface abstractSyntax;
    private final int maxRecvFrag;
    private final int maxXmitFrag;
    private final Interface transferSyntax;

    public BindRequest(int i10, int i11, Interface r5, Interface r62) {
        setPDUType(PDUType.BIND);
        setPFCFlags(EnumSet.of(PFCFlag.FIRST_FRAGMENT, PFCFlag.LAST_FRAGMENT));
        setFragLength((short) 72);
        this.maxXmitFrag = i10;
        this.maxRecvFrag = i11;
        this.abstractSyntax = r5;
        this.transferSyntax = r62;
    }

    @Override // com.rapid7.client.dcerpc.Header, com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        super.marshal(packetOutput);
        packetOutput.writeShort(this.maxXmitFrag);
        packetOutput.writeShort(this.maxRecvFrag);
        packetOutput.writeInt(0);
        packetOutput.writeByte(1);
        packetOutput.writeByte(0);
        packetOutput.writeShort(0);
        packetOutput.writeShort(0);
        packetOutput.writeByte(1);
        packetOutput.writeByte(0);
        packetOutput.write(this.abstractSyntax.getUUID());
        packetOutput.writeShort(this.abstractSyntax.getMajorVersion());
        packetOutput.writeShort(this.abstractSyntax.getMinorVersion());
        packetOutput.write(this.transferSyntax.getUUID());
        packetOutput.writeShort(this.transferSyntax.getMajorVersion());
        packetOutput.writeShort(this.transferSyntax.getMinorVersion());
    }

    @Override // com.rapid7.client.dcerpc.Header, com.rapid7.client.dcerpc.io.Packet
    public void unmarshal(PacketInput packetInput) {
        throw new UnsupportedOperationException("Unmarshal Not Implemented.");
    }
}
