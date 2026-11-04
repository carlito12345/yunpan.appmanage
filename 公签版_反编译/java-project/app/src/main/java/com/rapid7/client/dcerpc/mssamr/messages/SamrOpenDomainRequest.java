package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.HandleResponse;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.objects.RPCSID;
import java.io.IOException;

/* loaded from: classes.dex */
public class SamrOpenDomainRequest extends RequestCall<HandleResponse> {
    public static final short OP_NUM = 7;
    private final int desiredAccess;
    private final RPCSID domainId;
    private final byte[] handle;

    public SamrOpenDomainRequest(byte[] bArr, int i10, RPCSID rpcsid) {
        super((short) 7);
        this.handle = bArr;
        this.desiredAccess = i10;
        this.domainId = rpcsid;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.handle);
        packetOutput.writeInt(this.desiredAccess);
        packetOutput.writeMarshallable(this.domainId);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public HandleResponse getResponseObject() {
        return new HandleResponse();
    }
}
