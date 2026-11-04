package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.HandleResponse;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.objects.WChar;
import java.io.IOException;

/* loaded from: classes.dex */
public class SamrConnect2Request extends RequestCall<HandleResponse> {
    public static final short OP_NUM = 57;
    private final int desiredAccess;
    private final WChar.NullTerminated serverName;

    public SamrConnect2Request(WChar.NullTerminated nullTerminated, int i10) {
        super((short) 57);
        this.serverName = nullTerminated;
        this.desiredAccess = i10;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        if (packetOutput.writeReferentID(this.serverName)) {
            packetOutput.writeMarshallable(this.serverName);
            packetOutput.align(Alignment.FOUR);
        }
        packetOutput.writeInt(this.desiredAccess);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public HandleResponse getResponseObject() {
        return new HandleResponse();
    }
}
