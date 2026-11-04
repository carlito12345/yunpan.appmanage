package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.HandleResponse;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class SamrOpenAliasRequest extends RequestCall<HandleResponse> {
    public static final short OP_NUM = 27;
    private final long aliasId;
    private final int desiredAccess;
    private final byte[] domainHandle;

    public SamrOpenAliasRequest(byte[] bArr, int i10, long j10) {
        super((short) 27);
        this.domainHandle = bArr;
        this.desiredAccess = i10;
        this.aliasId = j10;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.domainHandle);
        packetOutput.writeInt(this.desiredAccess);
        packetOutput.writeInt(this.aliasId);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public HandleResponse getResponseObject() {
        return new HandleResponse();
    }
}
