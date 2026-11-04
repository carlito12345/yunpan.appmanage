package com.rapid7.client.dcerpc.msrrp.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class BaseRegQueryInfoKeyRequest extends RequestCall<BaseRegQueryInfoKeyResponse> {
    private final byte[] hKey;

    public BaseRegQueryInfoKeyRequest(byte[] bArr) {
        super((short) 16);
        this.hKey = bArr;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.hKey);
        packetOutput.writeEmptyRPCUnicodeString(0);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public BaseRegQueryInfoKeyResponse getResponseObject() {
        return new BaseRegQueryInfoKeyResponse();
    }
}
