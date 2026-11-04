package com.hierynomus.smbj.connection;

import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.mssmb2.SMB2PacketData;
import javax.crypto.SecretKey;

/* loaded from: classes.dex */
public interface Signatory {
    SMB2Packet sign(SMB2Packet sMB2Packet, SecretKey secretKey);

    boolean verify(SMB2PacketData sMB2PacketData, SecretKey secretKey);
}
