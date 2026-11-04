package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class SamrQuerySecurityObjectRequest extends RequestCall<SamrQuerySecurityObjectResponse> {
    public static final short OP_NUM = 3;
    private final byte[] objectHandle;
    private final int securityInformation;

    public SamrQuerySecurityObjectRequest(byte[] bArr, int i10) {
        super((short) 3);
        this.objectHandle = bArr;
        this.securityInformation = i10;
    }

    public byte[] getObjectHandle() {
        return this.objectHandle;
    }

    public int getSecurityInformation() {
        return this.securityInformation;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(getObjectHandle());
        packetOutput.writeInt(getSecurityInformation());
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public SamrQuerySecurityObjectResponse getResponseObject() {
        return new SamrQuerySecurityObjectResponse();
    }
}
