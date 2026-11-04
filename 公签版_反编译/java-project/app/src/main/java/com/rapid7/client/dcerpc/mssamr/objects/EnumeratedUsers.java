package com.rapid7.client.dcerpc.mssamr.objects;

/* loaded from: classes.dex */
public class EnumeratedUsers extends SAMPREnumerationBuffer<UserInfo> {
    @Override // com.rapid7.client.dcerpc.mssamr.objects.SAMPREnumerationBuffer
    public UserInfo initEntity() {
        return new UserInfo();
    }
}
