package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRReturnedUStringArray;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRULongArray;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import java.util.List;

/* loaded from: classes.dex */
public class SamrLookupIdsInDomainResponse extends RequestResponse {
    private SAMPRReturnedUStringArray names;
    private SAMPRULongArray uses;

    public List<RPCUnicodeString.NonNullTerminated> getNames() {
        return this.names.getEntries();
    }

    public SAMPRULongArray getUses() {
        return this.uses;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        SAMPRReturnedUStringArray sAMPRReturnedUStringArray = new SAMPRReturnedUStringArray();
        this.names = sAMPRReturnedUStringArray;
        packetInput.readUnmarshallable(sAMPRReturnedUStringArray);
        SAMPRULongArray sAMPRULongArray = new SAMPRULongArray();
        this.uses = sAMPRULongArray;
        packetInput.readUnmarshallable(sAMPRULongArray);
    }
}
