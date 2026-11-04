package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mslsad.objects.DomainInformationClass;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRDomainLockoutInfo;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRDomainLogoffInfo;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRDomainPasswordInfo;

/* loaded from: classes.dex */
public abstract class SamrQueryInformationDomainResponse<T extends Unmarshallable> extends RequestResponse {
    private T domainInformation;

    public static class DomainLockoutInformation extends SamrQueryInformationDomainResponse<SAMPRDomainLockoutInfo> {
        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationDomainResponse
        public DomainInformationClass getDomainInformationClass() {
            return DomainInformationClass.DOMAIN_LOCKOUT_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationDomainResponse
        public SAMPRDomainLockoutInfo createDomainInformation() {
            return new SAMPRDomainLockoutInfo();
        }
    }

    public static class DomainLogOffInformation extends SamrQueryInformationDomainResponse<SAMPRDomainLogoffInfo> {
        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationDomainResponse
        public DomainInformationClass getDomainInformationClass() {
            return DomainInformationClass.DOMAIN_LOGOFF_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationDomainResponse
        public SAMPRDomainLogoffInfo createDomainInformation() {
            return new SAMPRDomainLogoffInfo();
        }
    }

    public static class DomainPasswordInformation extends SamrQueryInformationDomainResponse<SAMPRDomainPasswordInfo> {
        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationDomainResponse
        public DomainInformationClass getDomainInformationClass() {
            return DomainInformationClass.DOMAIN_PASSWORD_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationDomainResponse
        public SAMPRDomainPasswordInfo createDomainInformation() {
            return new SAMPRDomainPasswordInfo();
        }
    }

    public abstract T createDomainInformation();

    public T getDomainInformation() {
        return this.domainInformation;
    }

    public abstract DomainInformationClass getDomainInformationClass();

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        if (packetInput.readReferentID() == 0) {
            this.domainInformation = null;
            return;
        }
        short s8 = packetInput.readShort();
        if (s8 != getDomainInformationClass().getInfoLevel()) {
            throw new IllegalArgumentException(String.format("Incoming DOMAIN_INFORMATION_CLASS %d does not match expected: %d", Integer.valueOf(s8), Integer.valueOf(getDomainInformationClass().getInfoLevel())));
        }
        T t10 = (T) createDomainInformation();
        this.domainInformation = t10;
        packetInput.readUnmarshallable(t10);
    }
}
