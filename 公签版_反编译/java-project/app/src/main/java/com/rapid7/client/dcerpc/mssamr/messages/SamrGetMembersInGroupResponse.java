package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mssamr.objects.GroupMembership;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRGetMembersBuffer;
import java.util.List;

/* loaded from: classes.dex */
public class SamrGetMembersInGroupResponse extends RequestResponse {
    private SAMPRGetMembersBuffer buffer;

    public List<GroupMembership> getList() {
        return this.buffer.getGroupMembership();
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        if (packetInput.readReferentID() == 0) {
            this.buffer = null;
            return;
        }
        SAMPRGetMembersBuffer sAMPRGetMembersBuffer = new SAMPRGetMembersBuffer();
        this.buffer = sAMPRGetMembersBuffer;
        packetInput.readUnmarshallable(sAMPRGetMembersBuffer);
    }
}
