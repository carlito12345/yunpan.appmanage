package com.rapid7.client.dcerpc.msvcctl.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.HandleResponse;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class RCloseServiceHandleRequest extends RequestCall<HandleResponse> {
    public static final short OP_NUM = 0;
    private final byte[] hSCObject;

    public RCloseServiceHandleRequest(byte[] bArr) {
        super((short) 0);
        this.hSCObject = bArr;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.hSCObject);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public HandleResponse getResponseObject() {
        return new HandleResponse();
    }
}
