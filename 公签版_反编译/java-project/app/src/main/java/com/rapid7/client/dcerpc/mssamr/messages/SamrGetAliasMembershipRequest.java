package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRPSIDArray;
import java.io.IOException;

/* loaded from: classes.dex */
public class SamrGetAliasMembershipRequest extends RequestCall<SamrGetAliasMembershipResponse> {
    public static final short OP_NUM = 16;
    private final byte[] handle;
    private final SAMPRPSIDArray sids;

    public SamrGetAliasMembershipRequest(byte[] bArr, SAMPRPSIDArray sAMPRPSIDArray) {
        super((short) 16);
        this.handle = bArr;
        this.sids = sAMPRPSIDArray;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.handle);
        packetOutput.writeMarshallable(this.sids);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public SamrGetAliasMembershipResponse getResponseObject() {
        return new SamrGetAliasMembershipResponse();
    }
}
