package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRUserAllInformation;
import com.rapid7.client.dcerpc.mssamr.objects.UserInformationClass;
import java.rmi.UnmarshalException;

/* loaded from: classes.dex */
public abstract class SamrQueryInformationUserResponse<T extends Unmarshallable> extends RequestResponse {
    private T userInformation;

    public static class UserAllInformation extends SamrQueryInformationUserResponse<SAMPRUserAllInformation> {
        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationUserResponse
        public UserInformationClass getUserInformationClass() {
            return UserInformationClass.USER_ALL_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationUserResponse
        public SAMPRUserAllInformation createUserInformation() {
            return new SAMPRUserAllInformation();
        }
    }

    public abstract T createUserInformation();

    public T getUserInformation() {
        return this.userInformation;
    }

    public abstract UserInformationClass getUserInformationClass();

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) throws UnmarshalException {
        if (packetInput.readReferentID() == 0) {
            this.userInformation = null;
            return;
        }
        int unsignedShort = packetInput.readUnsignedShort();
        if (unsignedShort != getUserInformationClass().getInfoLevel()) {
            throw new UnmarshalException(String.format("Incoming USER_INFORMATION_CLASS %d does not match expected: %d", Integer.valueOf(unsignedShort), Integer.valueOf(getUserInformationClass().getInfoLevel())));
        }
        T t10 = (T) createUserInformation();
        this.userInformation = t10;
        packetInput.readUnmarshallable(t10);
    }
}
