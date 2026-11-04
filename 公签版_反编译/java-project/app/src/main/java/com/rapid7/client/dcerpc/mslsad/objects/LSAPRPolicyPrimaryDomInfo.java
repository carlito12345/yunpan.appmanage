package com.rapid7.client.dcerpc.mslsad.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.objects.RPCSID;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import j$.util.Objects;

/* loaded from: classes.dex */
public class LSAPRPolicyPrimaryDomInfo implements Unmarshallable {
    private RPCUnicodeString.NonNullTerminated name;
    private RPCSID sid;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LSAPRPolicyPrimaryDomInfo)) {
            return false;
        }
        LSAPRPolicyPrimaryDomInfo lSAPRPolicyPrimaryDomInfo = (LSAPRPolicyPrimaryDomInfo) obj;
        return Objects.equals(getName(), lSAPRPolicyPrimaryDomInfo.getName()) && Objects.equals(getSid(), lSAPRPolicyPrimaryDomInfo.getSid());
    }

    public RPCUnicodeString.NonNullTerminated getName() {
        return this.name;
    }

    public RPCSID getSid() {
        return this.sid;
    }

    public int hashCode() {
        return Objects.hash(getName(), getSid());
    }

    public void setName(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.name = nonNullTerminated;
    }

    public void setSid(RPCSID rpcsid) {
        this.sid = rpcsid;
    }

    public String toString() {
        return String.format("LSAPR_POLICY_PRIMARY_DOM_INFO{Name:%s, Sid:%s}", getName(), getSid());
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
        packetInput.align(Alignment.FOUR);
        this.name.unmarshalEntity(packetInput);
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
