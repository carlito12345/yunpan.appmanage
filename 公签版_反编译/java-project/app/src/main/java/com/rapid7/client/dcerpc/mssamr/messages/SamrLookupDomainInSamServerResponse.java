package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.objects.RPCSID;

/* loaded from: classes.dex */
public class SamrLookupDomainInSamServerResponse extends RequestResponse {
    private RPCSID domainId;

    public RPCSID getDomainId() {
        return this.domainId;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        if (packetInput.readReferentID() == 0) {
            this.domainId = null;
            return;
        }
        RPCSID rpcsid = new RPCSID();
        this.domainId = rpcsid;
        packetInput.readUnmarshallable(rpcsid);
    }
}
