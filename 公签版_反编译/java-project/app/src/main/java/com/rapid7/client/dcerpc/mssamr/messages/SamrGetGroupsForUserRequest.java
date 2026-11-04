package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class SamrGetGroupsForUserRequest extends RequestCall<SamrGetGroupsForUserResponse> {
    public static final short OP_NUM = 39;
    private final byte[] userHandle;

    public SamrGetGroupsForUserRequest(byte[] bArr) {
        super((short) 39);
        this.userHandle = bArr;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.userHandle);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public SamrGetGroupsForUserResponse getResponseObject() {
        return new SamrGetGroupsForUserResponse();
    }
}
