package com.rapid7.client.dcerpc.mslsad.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRPolicyAccountDomInfo;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRPolicyAuditEventsInfo;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRPolicyPrimaryDomInfo;
import com.rapid7.client.dcerpc.mslsad.objects.PolicyInformationClass;
import java.rmi.UnmarshalException;

/* loaded from: classes.dex */
public abstract class LsarQueryInformationPolicyResponse<T extends Unmarshallable> extends RequestResponse {
    private T policyInformation;

    public static class PolicyAccountDomainInformation extends LsarQueryInformationPolicyResponse<LSAPRPolicyAccountDomInfo> {
        @Override // com.rapid7.client.dcerpc.mslsad.messages.LsarQueryInformationPolicyResponse
        public PolicyInformationClass getPolicyInformationClass() {
            return PolicyInformationClass.POLICY_ACCOUNT_DOMAIN_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.mslsad.messages.LsarQueryInformationPolicyResponse
        public LSAPRPolicyAccountDomInfo createPolicyInformation() {
            return new LSAPRPolicyAccountDomInfo();
        }
    }

    public static class PolicyAuditEventsInformation extends LsarQueryInformationPolicyResponse<LSAPRPolicyAuditEventsInfo> {
        @Override // com.rapid7.client.dcerpc.mslsad.messages.LsarQueryInformationPolicyResponse
        public PolicyInformationClass getPolicyInformationClass() {
            return PolicyInformationClass.POLICY_AUDIT_EVENTS_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.mslsad.messages.LsarQueryInformationPolicyResponse
        public LSAPRPolicyAuditEventsInfo createPolicyInformation() {
            return new LSAPRPolicyAuditEventsInfo();
        }
    }

    public static class PolicyPrimaryDomainInformation extends LsarQueryInformationPolicyResponse<LSAPRPolicyPrimaryDomInfo> {
        @Override // com.rapid7.client.dcerpc.mslsad.messages.LsarQueryInformationPolicyResponse
        public PolicyInformationClass getPolicyInformationClass() {
            return PolicyInformationClass.POLICY_PRIMARY_DOMAIN_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.mslsad.messages.LsarQueryInformationPolicyResponse
        public LSAPRPolicyPrimaryDomInfo createPolicyInformation() {
            return new LSAPRPolicyPrimaryDomInfo();
        }
    }

    public abstract T createPolicyInformation();

    public T getPolicyInformation() {
        return this.policyInformation;
    }

    public abstract PolicyInformationClass getPolicyInformationClass();

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) throws UnmarshalException {
        if (packetInput.readReferentID() == 0) {
            this.policyInformation = null;
            return;
        }
        int unsignedShort = packetInput.readUnsignedShort();
        if (unsignedShort != getPolicyInformationClass().getInfoLevel()) {
            throw new UnmarshalException(String.format("Incoming POLICY_INFORMATION_CLASS %d does not match expected: %d", Integer.valueOf(unsignedShort), Integer.valueOf(getPolicyInformationClass().getInfoLevel())));
        }
        T t10 = (T) createPolicyInformation();
        this.policyInformation = t10;
        packetInput.readUnmarshallable(t10);
    }
}
