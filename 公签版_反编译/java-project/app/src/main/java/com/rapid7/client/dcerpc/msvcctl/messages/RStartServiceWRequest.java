package com.rapid7.client.dcerpc.msvcctl.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.EmptyResponse;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class RStartServiceWRequest extends RequestCall<EmptyResponse> {
    public static final short OP_NUM = 19;
    private final byte[] hService;

    public RStartServiceWRequest(byte[] bArr) {
        super((short) 19);
        this.hService = bArr;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.hService);
        packetOutput.writeNull();
        packetOutput.writeNull();
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public EmptyResponse getResponseObject() {
        return new EmptyResponse();
    }
}
