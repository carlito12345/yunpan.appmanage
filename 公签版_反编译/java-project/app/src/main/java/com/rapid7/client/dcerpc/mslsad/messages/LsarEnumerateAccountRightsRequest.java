package com.rapid7.client.dcerpc.mslsad.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.objects.RPCSID;
import java.io.IOException;

/* loaded from: classes.dex */
public class LsarEnumerateAccountRightsRequest extends RequestCall<LsarEnumerateAccountRightsResponse> {
    private static final short OP_NUM = 36;
    private final RPCSID accountSid;
    private final byte[] policyHandle;

    public LsarEnumerateAccountRightsRequest(byte[] bArr, RPCSID rpcsid) {
        super((short) 36);
        this.policyHandle = bArr;
        this.accountSid = rpcsid;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.policyHandle);
        packetOutput.writeMarshallable(this.accountSid);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public LsarEnumerateAccountRightsResponse getResponseObject() {
        return new LsarEnumerateAccountRightsResponse();
    }
}
