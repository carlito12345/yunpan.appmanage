package com.rapid7.client.dcerpc.mssamr.messages;

/* loaded from: classes.dex */
public class SamrEnumerateAliasesInDomainRequest extends SamrEnumerateRequest<SamrEnumerateAliasesInDomainResponse> {
    public static final short OP_NUM = 15;

    public SamrEnumerateAliasesInDomainRequest(byte[] bArr, int i10, int i11) {
        super((short) 15, bArr, i10, i11);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public SamrEnumerateAliasesInDomainResponse getResponseObject() {
        return new SamrEnumerateAliasesInDomainResponse();
    }
}
