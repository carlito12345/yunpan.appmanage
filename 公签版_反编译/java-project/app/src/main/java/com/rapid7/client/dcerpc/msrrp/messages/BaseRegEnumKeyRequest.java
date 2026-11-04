package com.rapid7.client.dcerpc.msrrp.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class BaseRegEnumKeyRequest extends RequestCall<BaseRegEnumKeyResponse> {
    private final int classLen;
    private final byte[] hKey;
    private final int index;
    private final int nameLen;

    public BaseRegEnumKeyRequest(byte[] bArr, int i10, int i11, int i12) {
        super((short) 9);
        this.hKey = bArr;
        this.index = i10;
        this.nameLen = i11;
        this.classLen = i12;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.hKey);
        packetOutput.writeInt(this.index);
        packetOutput.writeEmptyRPCUnicodeString(this.nameLen);
        packetOutput.writeReferentID();
        packetOutput.writeEmptyRPCUnicodeString(this.classLen);
        packetOutput.writeReferentID();
        packetOutput.writeLong(0L);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public BaseRegEnumKeyResponse getResponseObject() {
        return new BaseRegEnumKeyResponse();
    }
}
