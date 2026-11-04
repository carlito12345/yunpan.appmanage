package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class SamrGetMembersInGroupRequest extends RequestCall<SamrGetMembersInGroupResponse> {
    public static final short OP_NUM = 25;
    private final byte[] groupHandle;

    public SamrGetMembersInGroupRequest(byte[] bArr) {
        super((short) 25);
        this.groupHandle = bArr;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.groupHandle);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public SamrGetMembersInGroupResponse getResponseObject() {
        return new SamrGetMembersInGroupResponse();
    }
}
