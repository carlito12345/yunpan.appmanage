package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.mslsad.objects.DomainInformationClass;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationDomainResponse;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRDomainLockoutInfo;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class SamrQueryInformationDomain2Request<T extends Unmarshallable> extends RequestCall<SamrQueryInformationDomainResponse<T>> {
    public static final short OP_NUM = 46;
    private final byte[] domainHandle;

    public static class DomainLockoutInformation extends SamrQueryInformationDomain2Request<SAMPRDomainLockoutInfo> {
        public DomainLockoutInformation(byte[] bArr) {
            super(bArr);
        }

        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationDomain2Request
        public DomainInformationClass getDomainInformationClass() {
            return DomainInformationClass.DOMAIN_LOCKOUT_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public SamrQueryInformationDomainResponse.DomainLockoutInformation getResponseObject() {
            return new SamrQueryInformationDomainResponse.DomainLockoutInformation();
        }
    }

    public SamrQueryInformationDomain2Request(byte[] bArr) {
        super((short) 46);
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
