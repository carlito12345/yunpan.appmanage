package com.hierynomus.msdfsc.messages;

import com.hierynomus.msdfsc.messages.DFSReferral;
import com.hierynomus.protocol.commons.Charsets;
import com.hierynomus.smb.SMBBuffer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class DFSReferralV2 extends DFSReferral {
    private static final int SIZE = 22;

    public DFSReferralV2() {
    }

    @Override // com.hierynomus.msdfsc.messages.DFSReferral
    public int determineSize() {
        return 22;
    }

    @Override // com.hierynomus.msdfsc.messages.DFSReferral
    public void readReferral(SMBBuffer sMBBuffer, int i10) {
        this.referralEntryFlags = 0L;
        sMBBuffer.readUInt32AsInt();
        this.ttl = sMBBuffer.readUInt32AsInt();
        int uInt16 = sMBBuffer.readUInt16();
        int uInt162 = sMBBuffer.readUInt16();
        int uInt163 = sMBBuffer.readUInt16();
        this.dfsPath = readOffsettedString(sMBBuffer, i10, uInt16);
        this.dfsAlternatePath = readOffsettedString(sMBBuffer, i10, uInt162);
        this.path = readOffsettedString(sMBBuffer, i10, uInt163);
    }

    @Override // com.hierynomus.msdfsc.messages.DFSReferral
    public void writeOffsettedData(SMBBuffer sMBBuffer) {
        String str = this.dfsPath;
        Charset charset = Charsets.UTF_16;
        sMBBuffer.putNullTerminatedString(str, charset);
        sMBBuffer.putNullTerminatedString(this.dfsAlternatePath, charset);
        sMBBuffer.putNullTerminatedString(this.path, charset);
    }

    @Override // com.hierynomus.msdfsc.messages.DFSReferral
    public int writeReferral(SMBBuffer sMBBuffer, int i10, int i11) {
        sMBBuffer.putUInt32(0L);
        sMBBuffer.putUInt32(this.ttl);
        sMBBuffer.putUInt16(i11 - i10);
        int length = ((this.dfsPath.length() + 1) * 2) + i11;
        sMBBuffer.putUInt16(length - i10);
        int length2 = ((this.dfsAlternatePath.length() + 1) * 2) + length;
        sMBBuffer.putUInt16(length2 - i10);
        return ((this.path.length() + 1) * 2) + length2;
    }

    public DFSReferralV2(int i10, DFSReferral.ServerType serverType, int i11, String str, String str2, String str3) {
        super(i10, serverType, 0);
        this.ttl = i11;
        this.dfsPath = str;
        this.dfsAlternatePath = str2;
        this.path = str3;
    }
}
