package com.rapid7.client.dcerpc.mssamr.messages;

/* loaded from: classes.dex */
public class SamrEnumerateGroupsInDomainRequest extends SamrEnumerateRequest<SamrEnumerateGroupsInDomainResponse> {
    public static final short OP_NUM = 11;

    public SamrEnumerateGroupsInDomainRequest(byte[] bArr, int i10, int i11) {
        super((short) 11, bArr, i10, i11);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public SamrEnumerateGroupsInDomainResponse getResponseObject() {
        return new SamrEnumerateGroupsInDomainResponse();
    }
}
