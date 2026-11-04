package com.hierynomus.msdfsc.messages;

import com.hierynomus.protocol.commons.Charsets;
import com.hierynomus.smb.SMBBuffer;

/* loaded from: classes.dex */
public class SMB2GetDFSReferralRequest {
    private String requestFileName;

    public SMB2GetDFSReferralRequest(String str) {
        this.requestFileName = str;
    }

    public void writeTo(SMBBuffer sMBBuffer) {
        sMBBuffer.putUInt16(4);
        sMBBuffer.putNullTerminatedString(this.requestFileName, Charsets.UTF_16);
    }
}
