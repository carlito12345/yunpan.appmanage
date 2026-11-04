package com.rapid7.client.dcerpc.mslsad.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.objects.RPCSID;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import j$.util.Objects;

/* loaded from: classes.dex */
public class LSAPRPolicyAccountDomInfo implements Unmarshallable {
    private RPCUnicodeString.NonNullTerminated domainName;
    private RPCSID domainSid;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LSAPRPolicyAccountDomInfo)) {
            return false;
        }
        LSAPRPolicyAccountDomInfo lSAPRPolicyAccountDomInfo = (LSAPRPolicyAccountDomInfo) obj;
        return Objects.equals(getDomainName(), lSAPRPolicyAccountDomInfo.getDomainName()) && Objects.equals(getDomainSid(), lSAPRPolicyAccountDomInfo.getDomainSid());
    }

    public RPCUnicodeString.NonNullTerminated getDomainName() {
        return this.domainName;
    }

    public RPCSID getDomainSid() {
        return this.domainSid;
    }

    public int hashCode() {
        return Objects.hash(getDomainName(), getDomainSid());
    }

    public void setDomainName(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.domainName = nonNullTerminated;
    }

    public void setDomainSid(RPCSID rpcsid) {
        this.domainSid = rpcsid;
    }

    public String toString() {
        return String.format("LSAPR_POLICY_ACCOUNT_DOM_INFO{DomainName:%s, DomainSid:%s}", getDomainName(), getDomainSid());
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        this.domainName.unmarshalDeferrals(packetInput);
        RPCSID rpcsid = this.domainSid;
        if (rpcsid != null) {
            packetInput.readUnmarshallable(rpcsid);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        this.domainName.unmarshalEntity(packetInput);
        if (packetInput.readReferentID() != 0) {
            this.domainSid = new RPCSID();
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
        RPCUnicodeString.NonNullTerminated nonNullTerminated = new RPCUnicodeString.NonNullTerminated();
        this.domainName = nonNullTerminated;
        nonNullTerminated.unmarshalPreamble(packetInput);
    }
}
