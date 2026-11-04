package com.hierynomus.mssmb2;

import com.hierynomus.smb.SMBPacketData;

/* loaded from: classes.dex */
public class SMB3CompressedPacketData extends SMBPacketData<SMB2CompressionTransformHeader> {
    private boolean decrypted;

    public SMB3CompressedPacketData(byte[] bArr) {
        this(bArr, false);
    }

    public boolean isDecrypted() {
        return this.decrypted;
    }

    public SMB3CompressedPacketData(byte[] bArr, boolean z) {
        super(new SMB2CompressionTransformHeader(), bArr);
        this.decrypted = z;
    }
}
