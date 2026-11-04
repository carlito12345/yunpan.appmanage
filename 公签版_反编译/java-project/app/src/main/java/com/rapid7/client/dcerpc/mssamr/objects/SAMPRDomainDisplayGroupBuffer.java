package com.rapid7.client.dcerpc.mssamr.objects;

/* loaded from: classes.dex */
public class SAMPRDomainDisplayGroupBuffer extends SAMPREnumerationBuffer<SAMPRDomainDisplayGroup> {
    @Override // com.rapid7.client.dcerpc.mssamr.objects.SAMPREnumerationBuffer
    public SAMPRDomainDisplayGroup initEntity() {
        return new SAMPRDomainDisplayGroup();
    }
}
