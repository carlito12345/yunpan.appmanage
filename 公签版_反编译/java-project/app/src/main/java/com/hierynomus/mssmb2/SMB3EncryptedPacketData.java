package com.hierynomus.mssmb2;

import com.hierynomus.smb.SMBPacketData;

/* loaded from: classes.dex */
public class SMB3EncryptedPacketData extends SMBPacketData<SMB2TransformHeader> {
    public SMB3EncryptedPacketData(byte[] bArr) {
        super(new SMB2TransformHeader(), bArr);
    }

    public byte[] getCipherText() {
        return getDataBuffer().readRawBytes(getHeader().getOriginalMessageSize());
    }

    public String toString() {
        return "Encrypted for session id << " + getHeader().getSessionId() + " >>";
    }
}
