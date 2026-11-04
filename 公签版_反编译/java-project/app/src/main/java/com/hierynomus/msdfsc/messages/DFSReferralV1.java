package com.hierynomus.msdfsc.messages;

import com.hierynomus.msdfsc.messages.DFSReferral;
import com.hierynomus.protocol.commons.Charsets;
import com.hierynomus.smb.SMBBuffer;

/* loaded from: classes.dex */
public class DFSReferralV1 extends DFSReferral {
    public DFSReferralV1() {
    }

    @Override // com.hierynomus.msdfsc.messages.DFSReferral
    public int determineSize() {
        return ((this.path.length() + 1) * 2) + 8;
    }

    @Override // com.hierynomus.msdfsc.messages.DFSReferral
    public void readReferral(SMBBuffer sMBBuffer, int i10) {
        this.referralEntryFlags = 0L;
        this.path = sMBBuffer.readNullTerminatedString(Charsets.UTF_16);
    }

    @Override // com.hierynomus.msdfsc.messages.DFSReferral
    public void writeOffsettedData(SMBBuffer sMBBuffer) {
    }

    @Override // com.hierynomus.msdfsc.messages.DFSReferral
    public int writeReferral(SMBBuffer sMBBuffer, int i10, int i11) {
        sMBBuffer.putNullTerminatedString(this.path, Charsets.UTF_16);
        return i11;
    }

    public DFSReferralV1(int i10, DFSReferral.ServerType serverType, String str) {
        super(i10, serverType, 0);
        this.path = str;
    }
}
