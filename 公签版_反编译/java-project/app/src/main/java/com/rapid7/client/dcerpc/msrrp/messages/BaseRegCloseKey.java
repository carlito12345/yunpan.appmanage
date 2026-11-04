package com.rapid7.client.dcerpc.msrrp.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.HandleResponse;
import com.rapid7.client.dcerpc.messages.RequestCall;
import java.io.IOException;

/* loaded from: classes.dex */
public class BaseRegCloseKey extends RequestCall<HandleResponse> {
    private final byte[] hKey;

    public BaseRegCloseKey(byte[] bArr) {
        super((short) 5);
        this.hKey = bArr;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.hKey);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public HandleResponse getResponseObject() {
        return new HandleResponse();
    }
}
