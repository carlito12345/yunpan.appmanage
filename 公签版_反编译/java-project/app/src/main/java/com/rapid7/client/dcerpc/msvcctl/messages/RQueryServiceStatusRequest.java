package com.rapid7.client.dcerpc.msvcctl.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class RQueryServiceStatusRequest extends RequestCall<RQueryServiceStatusResponse> {
    public static final short OP_NUM = 6;
    private final byte[] hService;

    public RQueryServiceStatusRequest(byte[] bArr) {
        super((short) 6);
        this.hService = bArr;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.hService);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public RQueryServiceStatusResponse getResponseObject() {
        return new RQueryServiceStatusResponse();
    }
}
