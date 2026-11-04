package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationGroupResponse;
import com.rapid7.client.dcerpc.mssamr.objects.GroupInformationClass;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRGroupGeneralInformation;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class SamrQueryInformationGroupRequest<T extends Unmarshallable> extends RequestCall<SamrQueryInformationGroupResponse<T>> {
    public static final short OP_NUM = 20;
    private final byte[] groupHandle;

    public static class GroupGeneralInformation extends SamrQueryInformationGroupRequest<SAMPRGroupGeneralInformation> {
        public GroupGeneralInformation(byte[] bArr) {
            super(bArr);
        }

        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationGroupRequest
        public GroupInformationClass getGroupInformationClass() {
            return GroupInformationClass.GROUP_GENERAL_INFORMATION;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public SamrQueryInformationGroupResponse.GroupGeneralInformation getResponseObject() {
            return new SamrQueryInformationGroupResponse.GroupGeneralInformation();
        }
    }

    public SamrQueryInformationGroupRequest(byte[] bArr) {
        super((short) 20);
        this.groupHandle = bArr;
    }

    public byte[] getGroupHandle() {
        return this.groupHandle;
    }

    public abstract GroupInformationClass getGroupInformationClass();

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(getGroupHandle());
        packetOutput.writeShort(getGroupInformationClass().getInfoLevel());
    }
}
