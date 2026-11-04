package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import java.io.IOException;

/* loaded from: classes.dex */
public class SamrLookupDomainInSamServerRequest extends RequestCall<SamrLookupDomainInSamServerResponse> {
    public static final short OP_NUM = 5;
    private final RPCUnicodeString.NonNullTerminated name;
    private final byte[] serverHandle;

    public SamrLookupDomainInSamServerRequest(byte[] bArr, RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        super((short) 5);
        this.serverHandle = bArr;
        this.name = nonNullTerminated;
    }

    public RPCUnicodeString.NonNullTerminated getName() {
        return this.name;
    }

    public byte[] getServerHandle() {
        return this.serverHandle;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(getServerHandle());
        packetOutput.writeMarshallable(getName());
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public SamrLookupDomainInSamServerResponse getResponseObject() {
        return new SamrLookupDomainInSamServerResponse();
    }
}
