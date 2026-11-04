package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class SamrEnumerateUsersInDomainRequest extends RequestCall<SamrEnumerateUsersInDomainResponse> {
    public static final short OP_NUM = 13;
    private final byte[] domainHandle;
    private final int enumerationContext;
    private final int maxLength;
    private final int userAccountControl;

    public SamrEnumerateUsersInDomainRequest(byte[] bArr, int i10, int i11, int i12) {
        super((short) 13);
        this.domainHandle = bArr;
        this.enumerationContext = i10;
        this.userAccountControl = i11;
        this.maxLength = i12;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.domainHandle);
        packetOutput.writeInt(this.enumerationContext);
        packetOutput.writeInt(this.userAccountControl);
        packetOutput.writeInt(this.maxLength);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public SamrEnumerateUsersInDomainResponse getResponseObject() {
        return new SamrEnumerateUsersInDomainResponse();
    }
}
