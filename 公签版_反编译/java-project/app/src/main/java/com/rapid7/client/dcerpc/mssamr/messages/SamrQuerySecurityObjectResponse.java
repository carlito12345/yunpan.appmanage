package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRSRSecurityDescriptor;

/* loaded from: classes.dex */
public class SamrQuerySecurityObjectResponse extends RequestResponse {
    private SAMPRSRSecurityDescriptor securityDescriptor;

    public SAMPRSRSecurityDescriptor getSecurityDescriptor() {
        return this.securityDescriptor;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        if (packetInput.readReferentID() == 0) {
            this.securityDescriptor = null;
            return;
        }
        SAMPRSRSecurityDescriptor sAMPRSRSecurityDescriptor = new SAMPRSRSecurityDescriptor();
        this.securityDescriptor = sAMPRSRSecurityDescriptor;
        packetInput.readUnmarshallable(sAMPRSRSecurityDescriptor);
    }
}
