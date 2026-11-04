package com.rapid7.client.dcerpc.msvcctl.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.HandleResponse;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.objects.WChar;
import java.io.IOException;

/* loaded from: classes.dex */
public class ROpenServiceWRequest extends RequestCall<HandleResponse> {
    public static final short OP_NUM = 16;
    private final int dwDesiredAccess;
    private final byte[] hSCManager;
    private final WChar.NullTerminated lpServiceName;

    public ROpenServiceWRequest(byte[] bArr, WChar.NullTerminated nullTerminated, int i10) {
        super((short) 16);
        this.hSCManager = bArr;
        this.lpServiceName = nullTerminated;
        this.dwDesiredAccess = i10;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.hSCManager);
        packetOutput.writeMarshallable(this.lpServiceName);
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeInt(this.dwDesiredAccess);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public HandleResponse getResponseObject() {
        return new HandleResponse();
    }
}
