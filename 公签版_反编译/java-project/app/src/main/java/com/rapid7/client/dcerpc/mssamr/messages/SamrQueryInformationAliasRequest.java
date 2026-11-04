package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationAliasResponse;
import com.rapid7.client.dcerpc.mssamr.objects.AliasInformationClass;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRAliasGeneralInformation;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class SamrQueryInformationAliasRequest<T extends Unmarshallable> extends RequestCall<SamrQueryInformationAliasResponse<T>> {
    public static final short OP_NUM = 28;
    private final byte[] aliasHandle;

    public static class AliasGeneralInformation extends SamrQueryInformationAliasRequest<SAMPRAliasGeneralInformation> {
        public AliasGeneralInformation(byte[] bArr) {
            super(bArr);
        }

        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationAliasRequest
        public AliasInformationClass getAliasInformationClass() {
            return AliasInformationClass.ALIAS_GENERALINFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public SamrQueryInformationAliasResponse.AliasGeneralInformation getResponseObject() {
            return new SamrQueryInformationAliasResponse.AliasGeneralInformation();
        }
    }

    public SamrQueryInformationAliasRequest(byte[] bArr) {
        super((short) 28);
        this.aliasHandle = bArr;
    }

    public byte[] getAliasHandle() {
        return this.aliasHandle;
    }

    public abstract AliasInformationClass getAliasInformationClass();

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(getAliasHandle());
        packetOutput.writeShort(getAliasInformationClass().getInfoLevel());
    }
}
