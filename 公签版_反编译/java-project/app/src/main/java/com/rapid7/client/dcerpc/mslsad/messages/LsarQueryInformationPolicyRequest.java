package com.rapid7.client.dcerpc.mslsad.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.mslsad.messages.LsarQueryInformationPolicyResponse;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRPolicyAccountDomInfo;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRPolicyAuditEventsInfo;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRPolicyPrimaryDomInfo;
import com.rapid7.client.dcerpc.mslsad.objects.PolicyInformationClass;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class LsarQueryInformationPolicyRequest<T extends Unmarshallable> extends RequestCall<LsarQueryInformationPolicyResponse<T>> {
    public static final short OP_NUM = 7;
    private final byte[] policyHandle;

    public static class PolicyAccountDomainInformation extends LsarQueryInformationPolicyRequest<LSAPRPolicyAccountDomInfo> {
        public PolicyAccountDomainInformation(byte[] bArr) {
            super(bArr);
        }

        @Override // com.rapid7.client.dcerpc.mslsad.messages.LsarQueryInformationPolicyRequest
        public PolicyInformationClass getPolicyInformationClass() {
            return PolicyInformationClass.POLICY_ACCOUNT_DOMAIN_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public LsarQueryInformationPolicyResponse.PolicyAccountDomainInformation getResponseObject() {
            return new LsarQueryInformationPolicyResponse.PolicyAccountDomainInformation();
        }
    }

    public static class PolicyAuditEventsInformation extends LsarQueryInformationPolicyRequest<LSAPRPolicyAuditEventsInfo> {
        public PolicyAuditEventsInformation(byte[] bArr) {
            super(bArr);
        }

        @Override // com.rapid7.client.dcerpc.mslsad.messages.LsarQueryInformationPolicyRequest
        public PolicyInformationClass getPolicyInformationClass() {
            return PolicyInformationClass.POLICY_AUDIT_EVENTS_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public LsarQueryInformationPolicyResponse.PolicyAuditEventsInformation getResponseObject() {
            return new LsarQueryInformationPolicyResponse.PolicyAuditEventsInformation();
        }
    }

    public static class PolicyPrimaryDomainInformation extends LsarQueryInformationPolicyRequest<LSAPRPolicyPrimaryDomInfo> {
        public PolicyPrimaryDomainInformation(byte[] bArr) {
            super(bArr);
        }

        @Override // com.rapid7.client.dcerpc.mslsad.messages.LsarQueryInformationPolicyRequest
        public PolicyInformationClass getPolicyInformationClass() {
            return PolicyInformationClass.POLICY_PRIMARY_DOMAIN_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public LsarQueryInformationPolicyResponse.PolicyPrimaryDomainInformation getResponseObject() {
            return new LsarQueryInformationPolicyResponse.PolicyPrimaryDomainInformation();
        }
    }

    public LsarQueryInformationPolicyRequest(byte[] bArr) {
        super((short) 7);
        this.policyHandle = bArr;
    }

    public byte[] getPolicyHandle() {
        return this.policyHandle;
    }

    public abstract PolicyInformationClass getPolicyInformationClass();

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.policyHandle);
        packetOutput.writeShort(getPolicyInformationClass().getInfoLevel());
    }
}
