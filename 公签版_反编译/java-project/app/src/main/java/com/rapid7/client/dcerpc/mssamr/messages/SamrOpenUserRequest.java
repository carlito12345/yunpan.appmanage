package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.HandleResponse;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class SamrOpenUserRequest extends RequestCall<HandleResponse> {
    public static final short OP_NUM = 34;
    private final int desiredAccess;
    private final byte[] domainHandle;
    private final long userId;

    public SamrOpenUserRequest(byte[] bArr, int i10, long j10) {
        super((short) 34);
        this.domainHandle = bArr;
        this.desiredAccess = i10;
        this.userId = j10;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.domainHandle);
        packetOutput.writeInt(this.desiredAccess);
        packetOutput.writeInt(this.userId);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public HandleResponse getResponseObject() {
        return new HandleResponse();
    }
}
