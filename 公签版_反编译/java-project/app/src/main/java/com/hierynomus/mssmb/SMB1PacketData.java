package com.hierynomus.mssmb;

import com.hierynomus.smb.SMBPacketData;

/* loaded from: classes.dex */
public class SMB1PacketData extends SMBPacketData<SMB1Header> {
    public SMB1PacketData(byte[] bArr) {
        super(new SMB1Header(), bArr);
    }
}
