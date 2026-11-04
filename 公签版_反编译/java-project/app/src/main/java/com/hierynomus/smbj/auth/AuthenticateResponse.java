package com.hierynomus.smbj.auth;

import com.hierynomus.ntlm.messages.NtlmNegotiateFlag;
import com.hierynomus.ntlm.messages.WindowsVersion;
import com.hierynomus.spnego.SpnegoToken;
import java.util.Set;

/* loaded from: classes.dex */
public class AuthenticateResponse {
    private SpnegoToken negToken;
    private Set<NtlmNegotiateFlag> negotiateFlags;
    private String netBiosName;
    private byte[] sessionKey;
    private WindowsVersion windowsVersion;

    public AuthenticateResponse() {
    }

    public SpnegoToken getNegToken() {
        return this.negToken;
    }

    public Set<NtlmNegotiateFlag> getNegotiateFlags() {
        return this.negotiateFlags;
    }

    public String getNetBiosName() {
        return this.netBiosName;
    }

    public byte[] getSessionKey() {
        return this.sessionKey;
    }

    public WindowsVersion getWindowsVersion() {
        return this.windowsVersion;
    }

    public void setNegToken(SpnegoToken spnegoToken) {
        this.negToken = spnegoToken;
    }

    public void setNegotiateFlags(Set<NtlmNegotiateFlag> set) {
        this.negotiateFlags = set;
    }

    public void setNetBiosName(String str) {
        this.netBiosName = str;
    }

    public void setSessionKey(byte[] bArr) {
        this.sessionKey = bArr;
    }

    public void setWindowsVersion(WindowsVersion windowsVersion) {
        this.windowsVersion = windowsVersion;
    }

    public AuthenticateResponse(SpnegoToken spnegoToken) {
        this.negToken = spnegoToken;
    }
}
