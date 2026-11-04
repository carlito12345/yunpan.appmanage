package com.rapid7.client.dcerpc.msrrp.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class BaseRegEnumValueRequest extends RequestCall<BaseRegEnumValueResponse> {
    private final int dataLen;
    private final byte[] hKey;
    private final int index;
    private final int valueNameLen;

    public BaseRegEnumValueRequest(byte[] bArr, int i10, int i11, int i12) {
        super((short) 10);
        this.hKey = bArr;
        this.index = i10;
        this.valueNameLen = i11;
        this.dataLen = i12;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.hKey);
        packetOutput.writeInt(this.index);
        packetOutput.writeEmptyRPCUnicodeString(this.valueNameLen);
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
    public BaseRegEnumValueResponse getResponseObject() {
        return new BaseRegEnumValueResponse();
    }
}
