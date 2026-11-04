package com.rapid7.client.dcerpc.mslsad.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import java.io.IOException;

/* loaded from: classes.dex */
public class LsarEnumerateAccountsWithUserRightRequest extends RequestCall<LsarEnumerateAccountsWithUserRightResponse> {
    private static final short OP_NUM = 35;
    private final byte[] policyHandle;
    private final RPCUnicodeString.NonNullTerminated userRight;

    public LsarEnumerateAccountsWithUserRightRequest(byte[] bArr, RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        super(OP_NUM);
        this.policyHandle = bArr;
        this.userRight = nonNullTerminated;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.policyHandle);
        if (packetOutput.writeReferentID(this.userRight)) {
            packetOutput.writeMarshallable(this.userRight);
        }
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public LsarEnumerateAccountsWithUserRightResponse getResponseObject() {
        return new LsarEnumerateAccountsWithUserRightResponse();
    }
}
