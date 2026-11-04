package com.rapid7.client.dcerpc.mssamr.messages;

/* loaded from: classes.dex */
public class SamrEnumerateDomainsInSamServerRequest extends SamrEnumerateRequest<SamrEnumerateDomainsInSamServerResponse> {
    public static final short OP_NUM = 6;

    public SamrEnumerateDomainsInSamServerRequest(byte[] bArr, int i10, int i11) {
        super((short) 6, bArr, i10, i11);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public SamrEnumerateDomainsInSamServerResponse getResponseObject() {
        return new SamrEnumerateDomainsInSamServerResponse();
    }
}
