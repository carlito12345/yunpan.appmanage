package com.rapid7.client.dcerpc.mslsad.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.objects.RPCSID;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import j$.util.Objects;

/* loaded from: classes.dex */
public class LSAPRTrustInformation implements Unmarshallable {
    private RPCUnicodeString.NonNullTerminated name;
    private RPCSID sid;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LSAPRTrustInformation)) {
            return false;
        }
        LSAPRTrustInformation lSAPRTrustInformation = (LSAPRTrustInformation) obj;
        return Objects.equals(this.name, lSAPRTrustInformation.name) && Objects.equals(this.sid, lSAPRTrustInformation.sid);
    }

    public RPCUnicodeString.NonNullTerminated getName() {
        return this.name;
    }

    public RPCSID getSid() {
        return this.sid;
    }

    public int hashCode() {
        return Objects.hash(this.name, this.sid);
    }

    public String toString() {
        return String.format("LSAPR_TRUST_INFORMATION{Name:%s,Sid:%s}", this.name, this.sid);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        this.name.unmarshalDeferrals(packetInput);
        RPCSID rpcsid = this.sid;
        if (rpcsid != null) {
            packetInput.readUnmarshallable(rpcsid);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        this.name.unmarshalEntity(packetInput);
        packetInput.align(Alignment.FOUR);
        if (packetInput.readReferentID() != 0) {
            this.sid = new RPCSID();
        } else {
            this.sid = null;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
        RPCUnicodeString.NonNullTerminated nonNullTerminated = new RPCUnicodeString.NonNullTerminated();
        this.name = nonNullTerminated;
        nonNullTerminated.unmarshalPreamble(packetInput);
    }
}
