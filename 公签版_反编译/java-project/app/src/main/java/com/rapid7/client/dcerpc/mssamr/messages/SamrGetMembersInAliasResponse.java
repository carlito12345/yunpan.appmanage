package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.objects.RPCSID;
import java.rmi.UnmarshalException;

/* loaded from: classes.dex */
public class SamrGetMembersInAliasResponse extends RequestResponse {
    private RPCSID[] sids;

    public RPCSID[] getSids() {
        return this.sids;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) throws UnmarshalException {
        RPCSID[] rpcsidArr;
        int i10 = packetInput.readInt();
        if (packetInput.readReferentID() == 0) {
            if (i10 > 0) {
                throw new UnmarshalException(String.format("Information null but EntriesRead != 0: %d", Integer.valueOf(i10)));
            }
            this.sids = null;
            return;
        }
        this.sids = new RPCSID[i10];
        packetInput.fullySkipBytes(4);
        int i11 = 0;
        while (true) {
            rpcsidArr = this.sids;
            if (i11 >= rpcsidArr.length) {
                break;
            }
            if (packetInput.readReferentID() != 0) {
                this.sids[i11] = new RPCSID();
            }
            i11++;
        }
        for (RPCSID rpcsid : rpcsidArr) {
            if (rpcsid != null) {
                packetInput.readUnmarshallable(rpcsid);
            }
        }
    }
}
