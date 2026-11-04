package com.rapid7.client.dcerpc.mslsad.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRSIDEnumBuffer;
import com.rapid7.client.dcerpc.objects.RPCSID;
import java.io.IOException;

/* loaded from: classes.dex */
public class LsarLookupSIDsRequest extends RequestCall<LsarLookupSIDsResponse> {
    private static final short OP_NUM = 15;
    private final short lookupLevel;
    private final LSAPRSIDEnumBuffer lsaprsidEnumBuffer;
    private final byte[] policyHandle;

    public LsarLookupSIDsRequest(byte[] bArr, RPCSID[] rpcsidArr, short s8) {
        super((short) 15);
        this.policyHandle = bArr;
        this.lsaprsidEnumBuffer = new LSAPRSIDEnumBuffer(rpcsidArr);
        this.lookupLevel = s8;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.policyHandle);
        packetOutput.writeMarshallable(this.lsaprsidEnumBuffer);
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeInt(0);
        packetOutput.writeNull();
        packetOutput.writeShort(this.lookupLevel);
        packetOutput.pad(2L);
        packetOutput.writeNull();
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public LsarLookupSIDsResponse getResponseObject() {
        return new LsarLookupSIDsResponse();
    }
}
