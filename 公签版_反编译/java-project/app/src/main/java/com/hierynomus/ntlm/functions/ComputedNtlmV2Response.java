package com.hierynomus.ntlm.functions;

/* loaded from: classes.dex */
public class ComputedNtlmV2Response {
    private byte[] lmResponse;
    private byte[] ntResponse;
    private byte[] sessionBaseKey;

    public ComputedNtlmV2Response(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.ntResponse = bArr;
        this.lmResponse = bArr2;
        this.sessionBaseKey = bArr3;
    }

    public byte[] getLmResponse() {
        return this.lmResponse;
    }

    public byte[] getNtResponse() {
        return this.ntResponse;
    }

    public byte[] getSessionBaseKey() {
        return this.sessionBaseKey;
    }
}
