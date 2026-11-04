package com.rapid7.client.dcerpc.mssamr.objects;

/* loaded from: classes.dex */
public class EnumeratedAliases extends SAMPREnumerationBuffer<AliasInfo> {
    @Override // com.rapid7.client.dcerpc.mssamr.objects.SAMPREnumerationBuffer
    public AliasInfo initEntity() {
        return new AliasInfo();
    }
}
