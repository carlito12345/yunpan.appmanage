package com.hierynomus.mssmb2.messages;

import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2MessageCommandCode;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smbj.common.SmbPath;

/* loaded from: classes.dex */
public class SMB2TreeConnectRequest extends SMB2Packet {
    private final SMB2Dialect dialect;
    private boolean isClusterReconnect;
    private SmbPath smbPath;

    public SMB2TreeConnectRequest(SMB2Dialect sMB2Dialect, SmbPath smbPath, long j10) {
        super(9, sMB2Dialect, SMB2MessageCommandCode.SMB2_TREE_CONNECT, j10, 0L);
        this.dialect = sMB2Dialect;
        this.smbPath = smbPath;
    }

    private void putFlags(SMBBuffer sMBBuffer) {
        if (this.dialect == SMB2Dialect.SMB_3_1_1 && this.isClusterReconnect) {
            sMBBuffer.putUInt16(1);
        } else {
            sMBBuffer.putReserved2();
        }
    }

    public SmbPath getSmbPath() {
        return this.smbPath;
    }

    public void setSmbPath(SmbPath smbPath) {
        this.smbPath = smbPath;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void writeTo(SMBBuffer sMBBuffer) {
        sMBBuffer.putUInt16(this.structureSize);
        putFlags(sMBBuffer);
        sMBBuffer.putUInt16(72);
        String string = this.smbPath.toString();
        sMBBuffer.putStringLengthUInt16(string);
        sMBBuffer.putString(string);
    }
}
