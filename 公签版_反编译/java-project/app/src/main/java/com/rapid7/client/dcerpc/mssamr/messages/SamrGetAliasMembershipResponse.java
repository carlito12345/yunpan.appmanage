package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRULongArray;

/* loaded from: classes.dex */
public class SamrGetAliasMembershipResponse extends RequestResponse {
    private SAMPRULongArray membership;

    public SAMPRULongArray getMembership() {
        return this.membership;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        SAMPRULongArray sAMPRULongArray = new SAMPRULongArray();
        this.membership = sAMPRULongArray;
        packetInput.readUnmarshallable(sAMPRULongArray);
    }
}
