package com.rapid7.client.dcerpc.transport;

import com.rapid7.helper.smbj.share.NamedPipe;
import java.io.IOException;

/* loaded from: classes.dex */
public class SMBTransport extends RPCTransport {
    private final NamedPipe namedPipe;

    public SMBTransport(NamedPipe namedPipe) {
        this.namedPipe = namedPipe;
    }

    @Override // com.rapid7.client.dcerpc.io.Transport
    public int read(byte[] bArr) throws IOException {
        byte[] bArr2 = this.namedPipe.read();
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        return bArr2.length;
    }

    @Override // com.rapid7.client.dcerpc.io.Transport
    public int transact(byte[] bArr, byte[] bArr2) throws IOException {
        byte[] bArrTransact = this.namedPipe.transact(bArr);
        System.arraycopy(bArrTransact, 0, bArr2, 0, bArrTransact.length);
        return bArrTransact.length;
    }

    @Override // com.rapid7.client.dcerpc.io.Transport
    public void write(byte[] bArr) {
        this.namedPipe.write(bArr);
    }
}
