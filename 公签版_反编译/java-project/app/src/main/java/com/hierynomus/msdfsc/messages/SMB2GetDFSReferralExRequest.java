package com.hierynomus.msdfsc.messages;

import com.hierynomus.smb.SMBBuffer;

/* loaded from: classes.dex */
public class SMB2GetDFSReferralExRequest {
    private int maxReferralLevel;
    private String requestFileName;
    private int requestFlags;
    private String siteName;

    public enum RequestFlags {
        FLAGS_SITENAMEPRESENT(1);

        private int value;

        RequestFlags(int i10) {
            this.value = i10;
        }

        public int getValue() {
            return this.value;
        }
    }

    public SMB2GetDFSReferralExRequest(String str) {
        this.maxReferralLevel = 0;
        this.requestFlags = 0;
        this.requestFileName = str;
        this.siteName = null;
    }

    public void writeTo(SMBBuffer sMBBuffer) {
        sMBBuffer.putUInt16(this.maxReferralLevel);
        sMBBuffer.putUInt16(this.requestFlags);
        int i10 = this.requestFlags;
        RequestFlags requestFlags = RequestFlags.FLAGS_SITENAMEPRESENT;
        if ((i10 & requestFlags.getValue()) != 0) {
            sMBBuffer.putUInt32(this.siteName.length() + this.requestFileName.length() + 2 + 2);
        } else {
            sMBBuffer.putUInt32(this.requestFileName.length() + 2);
        }
        sMBBuffer.putStringLengthUInt16(this.requestFileName);
        sMBBuffer.putString(this.requestFileName);
        if ((this.requestFlags & requestFlags.getValue()) != 0) {
            sMBBuffer.putStringLengthUInt16(this.requestFileName);
            sMBBuffer.putString(this.requestFileName);
        }
    }

    public SMB2GetDFSReferralExRequest(String str, String str2) {
        this.maxReferralLevel = 0;
        this.requestFlags = RequestFlags.FLAGS_SITENAMEPRESENT.getValue();
        this.requestFileName = str;
        this.siteName = str2;
    }
}
