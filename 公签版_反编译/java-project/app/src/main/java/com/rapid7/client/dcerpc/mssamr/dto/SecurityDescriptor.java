package com.rapid7.client.dcerpc.mssamr.dto;

/* loaded from: classes.dex */
public class SecurityDescriptor {
    private final byte[] securityDescriptor;

    public SecurityDescriptor(byte[] bArr) {
        this.securityDescriptor = bArr;
    }

    public byte[] getSecurityDescriptor() {
        return this.securityDescriptor;
    }
}
