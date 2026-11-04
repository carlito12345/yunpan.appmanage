package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationUserResponse;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRUserAllInformation;
import com.rapid7.client.dcerpc.mssamr.objects.UserInformationClass;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class SamrQueryInformationUserRequest<T extends Unmarshallable> extends RequestCall<SamrQueryInformationUserResponse<T>> {
    public static final short OP_NUM = 36;
    private final byte[] userHandle;

    public static class UserAllInformation extends SamrQueryInformationUserRequest<SAMPRUserAllInformation> {
        public UserAllInformation(byte[] bArr) {
            super(bArr);
        }

        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationUserRequest
        public UserInformationClass getUserInformationClass() {
            return UserInformationClass.USER_ALL_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public SamrQueryInformationUserResponse.UserAllInformation getResponseObject() {
            return new SamrQueryInformationUserResponse.UserAllInformation();
        }
    }

    public SamrQueryInformationUserRequest(byte[] bArr) {
        super((short) 36);
        this.userHandle = bArr;
    }

    public byte[] getUserHandle() {
        return this.userHandle;
    }

    public abstract UserInformationClass getUserInformationClass();

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(getUserHandle());
        packetOutput.writeShort(getUserInformationClass().getInfoLevel());
    }
}
