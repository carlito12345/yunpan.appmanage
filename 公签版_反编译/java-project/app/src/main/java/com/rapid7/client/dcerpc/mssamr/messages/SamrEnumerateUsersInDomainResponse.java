package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.mssamr.objects.EnumeratedUsers;
import com.rapid7.client.dcerpc.mssamr.objects.UserInfo;
import java.util.List;

/* loaded from: classes.dex */
public class SamrEnumerateUsersInDomainResponse extends SamrEnumerateResponse<UserInfo> {
    private EnumeratedUsers users;

    @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrEnumerateResponse
    public List<UserInfo> getList() {
        EnumeratedUsers enumeratedUsers = this.users;
        if (enumeratedUsers == null) {
            return null;
        }
        return enumeratedUsers.getEntries();
    }

    @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrEnumerateResponse
    public void unmarshallBuffer(PacketInput packetInput) {
        EnumeratedUsers enumeratedUsers = new EnumeratedUsers();
        this.users = enumeratedUsers;
        packetInput.readUnmarshallable(enumeratedUsers);
    }
}
