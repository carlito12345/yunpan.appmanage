package com.hierynomus.ntlm.messages;

import java.util.Collection;
import java.util.EnumSet;
import java.util.Set;

/* loaded from: classes.dex */
class NtlmMessage extends NtlmPacket {
    protected static Set<NtlmNegotiateFlag> DEFAULT_FLAGS = EnumSet.of(NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_NTLM, NtlmNegotiateFlag.NTLMSSP_NEGOTIATE_UNICODE);
    protected Set<NtlmNegotiateFlag> negotiateFlags;
    protected WindowsVersion version;

    public NtlmMessage(Set<NtlmNegotiateFlag> set, WindowsVersion windowsVersion) {
        EnumSet enumSetCopyOf = EnumSet.copyOf((Collection) set);
        this.negotiateFlags = enumSetCopyOf;
        enumSetCopyOf.addAll(DEFAULT_FLAGS);
        this.version = windowsVersion;
    }
}
