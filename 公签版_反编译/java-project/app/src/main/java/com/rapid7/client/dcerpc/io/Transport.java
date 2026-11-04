package com.rapid7.client.dcerpc.io;

/* loaded from: classes.dex */
public interface Transport {
    int read(byte[] bArr);

    int transact(byte[] bArr, byte[] bArr2);

    void write(byte[] bArr);
}
