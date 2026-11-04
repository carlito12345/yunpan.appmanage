package com.rapid7.client.dcerpc.mslsad.objects;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Marshallable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class LSAPRSIDInformationArray implements Marshallable {
    private List<LSAPRSIDInformation> lsaprsidInformations = new ArrayList();

    public void addLSAPRSIDInformation(LSAPRSIDInformation lSAPRSIDInformation) {
        this.lsaprsidInformations.add(lSAPRSIDInformation);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalDeferrals(PacketOutput packetOutput) {
        for (LSAPRSIDInformation lSAPRSIDInformation : this.lsaprsidInformations) {
            if (lSAPRSIDInformation != null) {
                packetOutput.writeMarshallable(lSAPRSIDInformation);
            }
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalEntity(PacketOutput packetOutput) {
        Iterator<LSAPRSIDInformation> it = this.lsaprsidInformations.iterator();
        while (it.hasNext()) {
            packetOutput.writeReferentID(it.next());
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalPreamble(PacketOutput packetOutput) {
        packetOutput.writeInt(this.lsaprsidInformations.size());
    }
}
