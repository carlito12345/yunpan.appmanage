package com.rapid7.client.dcerpc.mslsad.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRReferencedDomainList;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRTranslatedNames;

/* loaded from: classes.dex */
public class LsarLookupSIDsResponse extends RequestResponse {
    private int mappedCount;
    private LSAPRReferencedDomainList referencedDomains;
    private LSAPRTranslatedNames translatedNames;

    public int getMappedCount() {
        return this.mappedCount;
    }

    public LSAPRReferencedDomainList getReferencedDomains() {
        return this.referencedDomains;
    }

    public LSAPRTranslatedNames getTranslatedNames() {
        return this.translatedNames;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        if (packetInput.readReferentID() != 0) {
            LSAPRReferencedDomainList lSAPRReferencedDomainList = new LSAPRReferencedDomainList();
            this.referencedDomains = lSAPRReferencedDomainList;
            packetInput.readUnmarshallable(lSAPRReferencedDomainList);
        } else {
            this.referencedDomains = null;
        }
        LSAPRTranslatedNames lSAPRTranslatedNames = new LSAPRTranslatedNames();
        this.translatedNames = lSAPRTranslatedNames;
        packetInput.readUnmarshallable(lSAPRTranslatedNames);
        packetInput.align(Alignment.FOUR);
        this.mappedCount = packetInput.readInt();
    }
}
