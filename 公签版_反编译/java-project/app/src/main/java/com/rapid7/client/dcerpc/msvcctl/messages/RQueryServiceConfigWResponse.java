package com.rapid7.client.dcerpc.msvcctl.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.msvcctl.objects.LPQueryServiceConfigW;

/* loaded from: classes.dex */
public class RQueryServiceConfigWResponse extends RequestResponse {
    private LPQueryServiceConfigW lpServiceConfig;
    private int pcbBytesNeeded;

    public LPQueryServiceConfigW getLpServiceConfig() {
        return this.lpServiceConfig;
    }

    public int getPcbBytesNeeded() {
        return this.pcbBytesNeeded;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        LPQueryServiceConfigW lPQueryServiceConfigW = new LPQueryServiceConfigW();
        this.lpServiceConfig = lPQueryServiceConfigW;
        packetInput.readUnmarshallable(lPQueryServiceConfigW);
        packetInput.align(Alignment.FOUR);
        this.pcbBytesNeeded = packetInput.readInt();
    }
}
