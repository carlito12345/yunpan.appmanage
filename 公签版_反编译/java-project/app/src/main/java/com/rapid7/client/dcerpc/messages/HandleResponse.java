package com.rapid7.client.dcerpc.messages;

import com.rapid7.client.dcerpc.io.PacketInput;

/* loaded from: classes.dex */
public class HandleResponse extends RequestResponse {
    private byte[] handle;

    public byte[] getHandle() {
        return this.handle;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        byte[] bArr = new byte[20];
        this.handle = bArr;
        packetInput.readRawBytes(bArr);
    }
}
