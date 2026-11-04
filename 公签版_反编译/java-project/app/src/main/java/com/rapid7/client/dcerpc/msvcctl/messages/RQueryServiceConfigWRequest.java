package com.rapid7.client.dcerpc.msvcctl.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class RQueryServiceConfigWRequest extends RequestCall<RQueryServiceConfigWResponse> {
    public static final int MAX_BUFFER_SIZE = 8192;
    public static final short OP_NUM = 17;
    private final int cbBufSize;
    private final byte[] hService;

    public RQueryServiceConfigWRequest(byte[] bArr, int i10) {
        super((short) 17);
        this.hService = bArr;
        this.cbBufSize = i10;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.hService);
        packetOutput.writeInt(this.cbBufSize);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public RQueryServiceConfigWResponse getResponseObject() {
        return new RQueryServiceConfigWResponse();
    }
}
