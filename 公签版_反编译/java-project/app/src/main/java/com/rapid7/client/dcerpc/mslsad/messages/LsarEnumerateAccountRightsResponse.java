package com.rapid7.client.dcerpc.mslsad.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;

/* loaded from: classes.dex */
public class LsarEnumerateAccountRightsResponse extends RequestResponse {
    private RPCUnicodeString.NonNullTerminated[] privNames;

    public RPCUnicodeString.NonNullTerminated[] getPrivNames() {
        return this.privNames;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        RPCUnicodeString.NonNullTerminated[] nonNullTerminatedArr;
        int i10 = packetInput.readInt();
        if (packetInput.readReferentID() == 0) {
            this.privNames = null;
            return;
        }
        this.privNames = new RPCUnicodeString.NonNullTerminated[i10];
        packetInput.fullySkipBytes(4);
        int i11 = 0;
        while (true) {
            nonNullTerminatedArr = this.privNames;
            if (i11 >= nonNullTerminatedArr.length) {
                break;
            }
            nonNullTerminatedArr[i11] = new RPCUnicodeString.NonNullTerminated();
            this.privNames[i11].unmarshalPreamble(packetInput);
            i11++;
        }
        for (RPCUnicodeString.NonNullTerminated nonNullTerminated : nonNullTerminatedArr) {
            nonNullTerminated.unmarshalEntity(packetInput);
        }
        for (RPCUnicodeString.NonNullTerminated nonNullTerminated2 : this.privNames) {
            nonNullTerminated2.unmarshalDeferrals(packetInput);
        }
    }
}
