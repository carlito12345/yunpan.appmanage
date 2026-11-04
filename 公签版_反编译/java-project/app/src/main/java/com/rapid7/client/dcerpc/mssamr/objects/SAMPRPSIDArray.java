package com.rapid7.client.dcerpc.mssamr.objects;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Marshallable;
import com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantReferentArray;
import com.rapid7.client.dcerpc.objects.RPCSID;
import java.io.IOException;

/* loaded from: classes.dex */
public class SAMPRPSIDArray implements Marshallable {
    private RPCSIDReferentConformantArray sids;

    public static class RPCSIDReferentConformantArray extends RPCConformantReferentArray<RPCSID> {
        private RPCSIDReferentConformantArray(RPCSID[] rpcsidArr) {
            super(rpcsidArr);
        }

        @Override // com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantReferentArray
        public RPCSID createEntry() {
            return new RPCSID();
        }
    }

    public SAMPRPSIDArray(RPCSID... rpcsidArr) {
        this.sids = new RPCSIDReferentConformantArray(rpcsidArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RPCSID[] getSids() {
        RPCSIDReferentConformantArray rPCSIDReferentConformantArray = this.sids;
        if (rPCSIDReferentConformantArray == null) {
            return null;
        }
        return (RPCSID[]) rPCSIDReferentConformantArray.getArray();
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalDeferrals(PacketOutput packetOutput) {
        RPCSIDReferentConformantArray rPCSIDReferentConformantArray = this.sids;
        if (rPCSIDReferentConformantArray != null) {
            packetOutput.writeMarshallable(rPCSIDReferentConformantArray);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalEntity(PacketOutput packetOutput) throws IOException {
        packetOutput.align(Alignment.FOUR);
        RPCSIDReferentConformantArray rPCSIDReferentConformantArray = this.sids;
        if (rPCSIDReferentConformantArray == null) {
            packetOutput.writeInt(0);
            packetOutput.writeNull();
        } else {
            packetOutput.writeInt(((RPCSID[]) rPCSIDReferentConformantArray.getArray()).length);
            packetOutput.writeReferentID();
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalPreamble(PacketOutput packetOutput) {
    }
}
