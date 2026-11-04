package com.rapid7.client.dcerpc.msvcctl.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.msvcctl.objects.LPServiceStatus;

/* loaded from: classes.dex */
public class RQueryServiceStatusResponse extends RequestResponse {
    private LPServiceStatus lpServiceStatus;

    public LPServiceStatus getLpServiceStatus() {
        return this.lpServiceStatus;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        LPServiceStatus lPServiceStatus = new LPServiceStatus();
        this.lpServiceStatus = lPServiceStatus;
        packetInput.readUnmarshallable(lPServiceStatus);
    }
}
