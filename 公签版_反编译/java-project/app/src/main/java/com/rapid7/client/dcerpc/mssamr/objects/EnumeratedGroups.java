package com.rapid7.client.dcerpc.mssamr.objects;

/* loaded from: classes.dex */
public class EnumeratedGroups extends SAMPREnumerationBuffer<GroupInfo> {
    @Override // com.rapid7.client.dcerpc.mssamr.objects.SAMPREnumerationBuffer
    public GroupInfo initEntity() {
        return new GroupInfo();
    }
}
