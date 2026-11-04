package com.rapid7.client.dcerpc.mslsad.objects;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Marshallable;
import com.rapid7.client.dcerpc.objects.RPCSID;

/* loaded from: classes.dex */
public class LSAPRSIDEnumBuffer implements Marshallable {
    private final int entries;
    private final LSAPRSIDInformationArray lsaprSIDInformationArray = new LSAPRSIDInformationArray();

    public LSAPRSIDEnumBuffer(RPCSID... rpcsidArr) {
        int length = rpcsidArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            RPCSID rpcsid = rpcsidArr[i10];
            this.lsaprSIDInformationArray.addLSAPRSIDInformation(rpcsid != null ? new LSAPRSIDInformation(rpcsid) : null);
        }
        this.entries = rpcsidArr.length;
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalDeferrals(PacketOutput packetOutput) {
        packetOutput.writeMarshallable(this.lsaprSIDInformationArray);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalEntity(PacketOutput packetOutput) {
        packetOutput.writeInt(this.entries);
        packetOutput.writeReferentID(this.lsaprSIDInformationArray);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalPreamble(PacketOutput packetOutput) {
    }
}
