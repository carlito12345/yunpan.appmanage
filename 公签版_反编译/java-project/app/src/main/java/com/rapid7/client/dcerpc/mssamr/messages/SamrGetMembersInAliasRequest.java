package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class SamrGetMembersInAliasRequest extends RequestCall<SamrGetMembersInAliasResponse> {
    public static final short OP_NUM = 33;
    private final byte[] aliasHandle;

    public SamrGetMembersInAliasRequest(byte[] bArr) {
        super((short) 33);
        this.aliasHandle = bArr;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.aliasHandle);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public SamrGetMembersInAliasResponse getResponseObject() {
        return new SamrGetMembersInAliasResponse();
    }
}
