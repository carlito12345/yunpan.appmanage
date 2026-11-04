package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mssamr.objects.GroupInformationClass;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRGroupGeneralInformation;
import java.rmi.UnmarshalException;

/* loaded from: classes.dex */
public abstract class SamrQueryInformationGroupResponse<T extends Unmarshallable> extends RequestResponse {
    private T groupInformation;

    public static class GroupGeneralInformation extends SamrQueryInformationGroupResponse<SAMPRGroupGeneralInformation> {
        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationGroupResponse
        public GroupInformationClass getGroupInformationClass() {
            return GroupInformationClass.GROUP_GENERAL_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationGroupResponse
        public SAMPRGroupGeneralInformation createGroupInformation() {
            return new SAMPRGroupGeneralInformation();
        }
    }

    public abstract T createGroupInformation();

    public T getGroupInformation() {
        return this.groupInformation;
    }

    public abstract GroupInformationClass getGroupInformationClass();

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) throws UnmarshalException {
        if (packetInput.readReferentID() == 0) {
            this.groupInformation = null;
            return;
        }
        int unsignedShort = packetInput.readUnsignedShort();
        if (unsignedShort != getGroupInformationClass().getInfoLevel()) {
            throw new UnmarshalException(String.format("Incoming GROUP_INFORMATION_CLASS %d does not match expected: %d", Integer.valueOf(unsignedShort), Integer.valueOf(getGroupInformationClass().getInfoLevel())));
        }
        T t10 = (T) createGroupInformation();
        this.groupInformation = t10;
        packetInput.readUnmarshallable(t10);
    }
}
