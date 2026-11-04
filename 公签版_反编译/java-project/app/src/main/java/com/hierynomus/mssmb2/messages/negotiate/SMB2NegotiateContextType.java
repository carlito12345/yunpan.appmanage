package com.hierynomus.mssmb2.messages.negotiate;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB2NegotiateContextType implements EnumWithValue<SMB2NegotiateContextType> {
    SMB2_PREAUTH_INTEGRITY_CAPABILITIES(1),
    SMB2_ENCRYPTION_CAPABILITIES(2),
    SMB2_COMPRESSION_CAPABILITIES(4),
    SMB2_NETNAME_NEGOTIATE_CONTEXT_ID(5);

    private long value;

    SMB2NegotiateContextType(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
