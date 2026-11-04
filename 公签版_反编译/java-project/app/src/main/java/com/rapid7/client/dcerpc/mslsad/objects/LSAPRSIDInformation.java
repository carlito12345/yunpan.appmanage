package com.rapid7.client.dcerpc.mslsad.objects;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Marshallable;
import com.rapid7.client.dcerpc.objects.RPCSID;

/* loaded from: classes.dex */
public class LSAPRSIDInformation implements Marshallable {
    private RPCSID sid;

    public LSAPRSIDInformation(RPCSID rpcsid) {
        if (rpcsid == null) {
            throw new IllegalArgumentException("sid must not be null");
        }
        this.sid = rpcsid;
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalDeferrals(PacketOutput packetOutput) {
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalEntity(PacketOutput packetOutput) {
        packetOutput.writeMarshallable(this.sid);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalPreamble(PacketOutput packetOutput) {
    }
}
