package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.mslsad.objects.DomainInformationClass;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationDomainResponse;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRDomainLogoffInfo;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRDomainPasswordInfo;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class SamrQueryInformationDomainRequest<T extends Unmarshallable> extends RequestCall<SamrQueryInformationDomainResponse<T>> {
    public static final short OP_NUM = 8;
    private final byte[] domainHandle;

    public static class DomainLogOffInformation extends SamrQueryInformationDomainRequest<SAMPRDomainLogoffInfo> {
        public DomainLogOffInformation(byte[] bArr) {
            super(bArr);
        }

        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationDomainRequest
        public DomainInformationClass getDomainInformationClass() {
            return DomainInformationClass.DOMAIN_LOGOFF_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public SamrQueryInformationDomainResponse.DomainLogOffInformation getResponseObject() {
            return new SamrQueryInformationDomainResponse.DomainLogOffInformation();
        }
    }

    public static class DomainPasswordInformation extends SamrQueryInformationDomainRequest<SAMPRDomainPasswordInfo> {
        public DomainPasswordInformation(byte[] bArr) {
            super(bArr);
        }

        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationDomainRequest
        public DomainInformationClass getDomainInformationClass() {
            return DomainInformationClass.DOMAIN_PASSWORD_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public SamrQueryInformationDomainResponse.DomainPasswordInformation getResponseObject() {
            return new SamrQueryInformationDomainResponse.DomainPasswordInformation();
        }
    }

    public SamrQueryInformationDomainRequest(byte[] bArr) {
        super((short) 8);
        this.domainHandle = bArr;
    }

    public byte[] getDomainHandle() {
        return this.domainHandle;
    }

    public abstract DomainInformationClass getDomainInformationClass();

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.domainHandle);
        packetOutput.writeShort(getDomainInformationClass().getInfoLevel());
    }
}
