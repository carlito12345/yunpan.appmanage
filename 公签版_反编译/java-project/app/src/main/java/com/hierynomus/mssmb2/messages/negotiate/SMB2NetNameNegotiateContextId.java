package com.hierynomus.mssmb2.messages.negotiate;

import com.hierynomus.protocol.commons.Charsets;
import com.hierynomus.smb.SMBBuffer;

/* loaded from: classes.dex */
public class SMB2NetNameNegotiateContextId extends SMB2NegotiateContext {
    private String netName;

    public SMB2NetNameNegotiateContextId() {
        super(SMB2NegotiateContextType.SMB2_NETNAME_NEGOTIATE_CONTEXT_ID);
    }

    public String getNetName() {
        return this.netName;
    }

    @Override // com.hierynomus.mssmb2.messages.negotiate.SMB2NegotiateContext
    public void readContext(SMBBuffer sMBBuffer, int i10) {
        this.netName = sMBBuffer.readNullTerminatedString(Charsets.UTF_16);
    }

    @Override // com.hierynomus.mssmb2.messages.negotiate.SMB2NegotiateContext
    public int writeContext(SMBBuffer sMBBuffer) {
        sMBBuffer.putNullTerminatedString(this.netName, Charsets.UTF_16);
        return (this.netName.length() * 2) + 2;
    }

    public SMB2NetNameNegotiateContextId(String str) {
        super(SMB2NegotiateContextType.SMB2_NETNAME_NEGOTIATE_CONTEXT_ID);
        this.netName = str;
    }
}
