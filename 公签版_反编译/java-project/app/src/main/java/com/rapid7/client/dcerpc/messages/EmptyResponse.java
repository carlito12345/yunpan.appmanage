package com.rapid7.client.dcerpc.messages;

import com.rapid7.client.dcerpc.io.PacketInput;

/* loaded from: classes.dex */
public class EmptyResponse extends RequestResponse {
    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
    }
}
