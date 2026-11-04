package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mssamr.objects.AliasInformationClass;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRAliasGeneralInformation;
import java.rmi.UnmarshalException;

/* loaded from: classes.dex */
public abstract class SamrQueryInformationAliasResponse<T extends Unmarshallable> extends RequestResponse {
    private T aliasInformation;

    public static class AliasGeneralInformation extends SamrQueryInformationAliasResponse<SAMPRAliasGeneralInformation> {
        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationAliasResponse
        public AliasInformationClass getAliasInformationClass() {
            return AliasInformationClass.ALIAS_GENERALINFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationAliasResponse
        public SAMPRAliasGeneralInformation createAliasInformation() {
            return new SAMPRAliasGeneralInformation();
        }
    }

    public abstract T createAliasInformation();

    public T getAliasInformation() {
        return this.aliasInformation;
    }

    public abstract AliasInformationClass getAliasInformationClass();

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) throws UnmarshalException {
        if (packetInput.readReferentID() == 0) {
            this.aliasInformation = null;
            return;
        }
        int unsignedShort = packetInput.readUnsignedShort();
        if (unsignedShort != getAliasInformationClass().getInfoLevel()) {
            throw new UnmarshalException(String.format("Incoming ALIAS_INFORMATION_CLASS %d does not match expected: %d", Integer.valueOf(unsignedShort), Integer.valueOf(getAliasInformationClass().getInfoLevel())));
        }
        T t10 = (T) createAliasInformation();
        this.aliasInformation = t10;
        packetInput.readUnmarshallable(t10);
    }
}
