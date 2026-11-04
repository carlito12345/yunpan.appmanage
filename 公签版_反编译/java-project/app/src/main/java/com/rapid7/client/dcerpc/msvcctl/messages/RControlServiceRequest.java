package com.rapid7.client.dcerpc.msvcctl.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class RControlServiceRequest extends RequestCall<RQueryServiceStatusResponse> {
    public static final short OP_NUM = 1;
    private final int operation;
    private final byte[] serviceHandle;

    public RControlServiceRequest(byte[] bArr, int i10) {
        super((short) 1);
        this.serviceHandle = bArr;
        this.operation = i10;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.serviceHandle);
        packetOutput.writeInt(this.operation);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public RQueryServiceStatusResponse getResponseObject() {
        return new RQueryServiceStatusResponse();
    }
}
