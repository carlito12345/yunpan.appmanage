package com.rapid7.client.dcerpc.mslsad.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.HandleResponse;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.objects.WChar;
import java.io.IOException;

/* loaded from: classes.dex */
public class LsarOpenPolicy2Request extends RequestCall<HandleResponse> {
    private static final short OP_NUM = 44;
    private final int desiredAccess;
    private final WChar.NullTerminated systemName;

    public LsarOpenPolicy2Request(WChar.NullTerminated nullTerminated, int i10) {
        super(OP_NUM);
        this.systemName = nullTerminated;
        this.desiredAccess = i10;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        if (packetOutput.writeReferentID(this.systemName)) {
            packetOutput.writeMarshallable(this.systemName);
            packetOutput.align(Alignment.FOUR);
        }
        packetOutput.writeInt(24);
        packetOutput.writeNull();
        packetOutput.writeNull();
        packetOutput.writeInt(0);
        packetOutput.writeNull();
        packetOutput.writeInt(305419896);
        packetOutput.writeInt(12);
        packetOutput.writeShort(2);
        packetOutput.writeByte(1);
        packetOutput.writeByte(0);
        packetOutput.writeInt(this.desiredAccess);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public HandleResponse getResponseObject() {
        return new HandleResponse();
    }
}
