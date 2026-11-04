package com.rapid7.client.dcerpc.mssamr.objects;

/* loaded from: classes.dex */
public class SAMPRGetGroupsBuffer extends SAMPREnumerationBuffer<GroupMembership> {
    @Override // com.rapid7.client.dcerpc.mssamr.objects.SAMPREnumerationBuffer
    public GroupMembership initEntity() {
        return new GroupMembership();
    }
}
