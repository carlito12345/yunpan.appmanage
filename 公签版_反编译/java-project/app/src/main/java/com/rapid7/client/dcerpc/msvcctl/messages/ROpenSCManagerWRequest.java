package com.rapid7.client.dcerpc.msvcctl.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.HandleResponse;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.msvcctl.ServiceControlManagerService;
import com.rapid7.client.dcerpc.objects.WChar;
import java.io.IOException;

/* loaded from: classes.dex */
public class ROpenSCManagerWRequest extends RequestCall<HandleResponse> {
    private static final WChar.NullTerminated EMPTY = WChar.NullTerminated.of("");
    public static final short OP_NUM = 15;
    private final int dwDesiredAccess;
    private final WChar.NullTerminated lpDatabaseName;
    private final WChar.NullTerminated lpMachineName;

    public ROpenSCManagerWRequest() {
        this(EMPTY, null, ServiceControlManagerService.FULL_ACCESS);
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        if (packetOutput.writeReferentID(this.lpMachineName)) {
            packetOutput.writeMarshallable(this.lpMachineName);
            packetOutput.align(Alignment.FOUR);
        }
        if (packetOutput.writeReferentID(this.lpDatabaseName)) {
            packetOutput.writeMarshallable(this.lpDatabaseName);
            packetOutput.align(Alignment.FOUR);
        }
        packetOutput.writeInt(this.dwDesiredAccess);
    }

    public ROpenSCManagerWRequest(WChar.NullTerminated nullTerminated, WChar.NullTerminated nullTerminated2, int i10) {
        super((short) 15);
        this.lpMachineName = nullTerminated;
        this.lpDatabaseName = nullTerminated2;
        this.dwDesiredAccess = i10;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public HandleResponse getResponseObject() {
        return new HandleResponse();
    }
}
