package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.mssamr.objects.DomainInfo;
import com.rapid7.client.dcerpc.mssamr.objects.EnumeratedDomains;
import java.util.List;

/* loaded from: classes.dex */
public class SamrEnumerateDomainsInSamServerResponse extends SamrEnumerateResponse<DomainInfo> {
    private EnumeratedDomains domains;

    @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrEnumerateResponse
    public List<DomainInfo> getList() {
        EnumeratedDomains enumeratedDomains = this.domains;
        if (enumeratedDomains == null) {
            return null;
        }
        return enumeratedDomains.getEntries();
    }

    @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrEnumerateResponse
    public void unmarshallBuffer(PacketInput packetInput) {
        EnumeratedDomains enumeratedDomains = new EnumeratedDomains();
        this.domains = enumeratedDomains;
        packetInput.readUnmarshallable(enumeratedDomains);
    }
}
