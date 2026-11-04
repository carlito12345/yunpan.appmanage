package com.rapid7.client.dcerpc.msrrp.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import java.io.IOException;

/* loaded from: classes.dex */
public class BaseRegQueryValueRequest extends RequestCall<BaseRegQueryValueResponse> {
    private final int dataLen;
    private final byte[] hKey;
    private final RPCUnicodeString.NullTerminated valueName;

    public BaseRegQueryValueRequest(byte[] bArr, RPCUnicodeString.NullTerminated nullTerminated, int i10) {
        super((short) 17);
        this.hKey = bArr;
        this.valueName = nullTerminated;
        this.dataLen = i10;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.hKey);
        packetOutput.writeMarshallable(this.valueName);
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeReferentID();
        packetOutput.writeInt(0);
        packetOutput.writeReferentID();
        packetOutput.writeEmptyCVArray(this.dataLen);
        packetOutput.writeReferentID();
        packetOutput.writeInt(this.dataLen);
        packetOutput.writeReferentID();
        packetOutput.writeInt(0);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public BaseRegQueryValueResponse getResponseObject() {
        return new BaseRegQueryValueResponse();
    }
}
