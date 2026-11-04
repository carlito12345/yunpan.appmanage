package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.ByteArrayUtils;
import com.hierynomus.smb.SMBBuffer;

/* loaded from: classes.dex */
public class SMB2FileId {
    private byte[] persistentHandle;
    private byte[] volatileHandle;

    public SMB2FileId() {
        this.persistentHandle = new byte[]{-1, -1, -1, -1, -1, -1, -1, -1};
        this.volatileHandle = new byte[]{-1, -1, -1, -1, -1, -1, -1, -1};
    }

    public static SMB2FileId read(SMBBuffer sMBBuffer) {
        return new SMB2FileId(sMBBuffer.readRawBytes(8), sMBBuffer.readRawBytes(8));
    }

    public String toString() {
        return "SMB2FileId{persistentHandle=" + ByteArrayUtils.printHex(this.persistentHandle) + '}';
    }

    public void write(SMBBuffer sMBBuffer) {
        sMBBuffer.putRawBytes(this.persistentHandle);
        sMBBuffer.putRawBytes(this.volatileHandle);
    }

    public SMB2FileId(byte[] bArr, byte[] bArr2) {
        this.persistentHandle = bArr;
        this.volatileHandle = bArr2;
    }
}
