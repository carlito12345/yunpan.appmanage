package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.mssamr.objects.EnumeratedGroups;
import com.rapid7.client.dcerpc.mssamr.objects.GroupInfo;
import java.util.List;

/* loaded from: classes.dex */
public class SamrEnumerateGroupsInDomainResponse extends SamrEnumerateResponse<GroupInfo> {
    private EnumeratedGroups groups;

    @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrEnumerateResponse
    public List<GroupInfo> getList() {
        EnumeratedGroups enumeratedGroups = this.groups;
        if (enumeratedGroups == null) {
            return null;
        }
        return enumeratedGroups.getEntries();
    }

    @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrEnumerateResponse
    public void unmarshallBuffer(PacketInput packetInput) {
        EnumeratedGroups enumeratedGroups = new EnumeratedGroups();
        this.groups = enumeratedGroups;
        packetInput.readUnmarshallable(enumeratedGroups);
    }
}
