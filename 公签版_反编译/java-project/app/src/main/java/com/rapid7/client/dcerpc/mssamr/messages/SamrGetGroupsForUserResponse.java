package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mssamr.objects.GroupMembership;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRGetGroupsBuffer;
import java.util.List;

/* loaded from: classes.dex */
public class SamrGetGroupsForUserResponse extends RequestResponse {
    private SAMPRGetGroupsBuffer buffer;

    public List<GroupMembership> getGroups() {
        SAMPRGetGroupsBuffer sAMPRGetGroupsBuffer = this.buffer;
        if (sAMPRGetGroupsBuffer == null) {
            return null;
        }
        return sAMPRGetGroupsBuffer.getEntries();
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        if (packetInput.readReferentID() == 0) {
            this.buffer = null;
            return;
        }
        SAMPRGetGroupsBuffer sAMPRGetGroupsBuffer = new SAMPRGetGroupsBuffer();
        this.buffer = sAMPRGetGroupsBuffer;
        packetInput.readUnmarshallable(sAMPRGetGroupsBuffer);
    }
}
