package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryDisplayInformation2Response;
import com.rapid7.client.dcerpc.mssamr.objects.DisplayInformationClass;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRDomainDisplayGroupBuffer;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class SamrQueryDisplayInformation2Request<T extends Unmarshallable> extends RequestCall<SamrQueryDisplayInformation2Response<T>> {
    public static final short OP_NUM = 48;
    private final byte[] domainHandle;
    private final int entryCount;
    private final int index;
    private final int preferredMaximumLength;

    public static class DomainDisplayGroup extends SamrQueryDisplayInformation2Request<SAMPRDomainDisplayGroupBuffer> {
        public DomainDisplayGroup(byte[] bArr, int i10, int i11, int i12) {
            super(bArr, i10, i11, i12);
        }

        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryDisplayInformation2Request
        public DisplayInformationClass getDisplayInformationClass() {
            return DisplayInformationClass.DomainDisplayGroup;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public SamrQueryDisplayInformation2Response.DomainDisplayGroup getResponseObject() {
            return new SamrQueryDisplayInformation2Response.DomainDisplayGroup();
        }
    }

    public SamrQueryDisplayInformation2Request(byte[] bArr, int i10, int i11, int i12) {
        super((short) 48);
        this.domainHandle = bArr;
        this.index = i10;
        this.entryCount = i11;
        this.preferredMaximumLength = i12;
    }

    public abstract DisplayInformationClass getDisplayInformationClass();

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.domainHandle);
        packetOutput.writeShort(getDisplayInformationClass().getInfoLevel());
        packetOutput.pad(2L);
        packetOutput.writeInt(this.index);
        packetOutput.writeInt(this.entryCount);
        packetOutput.writeInt(this.preferredMaximumLength);
    }
}
