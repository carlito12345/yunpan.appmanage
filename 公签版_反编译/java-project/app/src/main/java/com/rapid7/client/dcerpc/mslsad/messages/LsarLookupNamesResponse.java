package com.rapid7.client.dcerpc.mslsad.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRReferencedDomainList;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRTranslatedSIDs;

/* loaded from: classes.dex */
public class LsarLookupNamesResponse extends RequestResponse {
    private LSAPRReferencedDomainList referencedDomains;
    private LSAPRTranslatedSIDs translatedSIDs;

    public LSAPRReferencedDomainList getReferencedDomains() {
        return this.referencedDomains;
    }

    public LSAPRTranslatedSIDs getTranslatedSIDs() {
        return this.translatedSIDs;
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
        LSAPRTranslatedSIDs lSAPRTranslatedSIDs = new LSAPRTranslatedSIDs();
        this.translatedSIDs = lSAPRTranslatedSIDs;
        packetInput.readUnmarshallable(lSAPRTranslatedSIDs);
        packetInput.align(Alignment.FOUR);
        packetInput.fullySkipBytes(4);
    }
}
