package com.hierynomus.smbj.connection;

import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.mssmb2.SMB2PacketData;
import javax.crypto.SecretKey;

/* loaded from: classes.dex */
public class NoSignatory implements Signatory {
    @Override // com.hierynomus.smbj.connection.Signatory
    public SMB2Packet sign(SMB2Packet sMB2Packet, SecretKey secretKey) {
        return sMB2Packet;
    }

    @Override // com.hierynomus.smbj.connection.Signatory
    public boolean verify(SMB2PacketData sMB2PacketData, SecretKey secretKey) {
        return true;
    }
}
