package com.rapid7.client.dcerpc.mssamr.objects;

/* loaded from: classes.dex */
public class EnumeratedDomains extends SAMPREnumerationBuffer<DomainInfo> {
    @Override // com.rapid7.client.dcerpc.mssamr.objects.SAMPREnumerationBuffer
    public DomainInfo initEntity() {
        return new DomainInfo();
    }
}
