package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRULongArray;

/* loaded from: classes.dex */
public class SamrLookupNamesInDomainResponse extends RequestResponse {
    private SAMPRULongArray relativeIds;
    private SAMPRULongArray use;

    public SAMPRULongArray getRelativeIds() {
        return this.relativeIds;
    }

    public SAMPRULongArray getUse() {
        return this.use;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        SAMPRULongArray sAMPRULongArray = new SAMPRULongArray();
        this.relativeIds = sAMPRULongArray;
        packetInput.readUnmarshallable(sAMPRULongArray);
        SAMPRULongArray sAMPRULongArray2 = new SAMPRULongArray();
        this.use = sAMPRULongArray2;
        packetInput.readUnmarshallable(sAMPRULongArray2);
    }
}
