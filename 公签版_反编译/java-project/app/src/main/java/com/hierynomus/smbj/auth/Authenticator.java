package com.hierynomus.smbj.auth;

import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.connection.ConnectionContext;

/* loaded from: classes.dex */
public interface Authenticator {
    AuthenticateResponse authenticate(AuthenticationContext authenticationContext, byte[] bArr, ConnectionContext connectionContext);

    void init(SmbConfig smbConfig);

    boolean supports(AuthenticationContext authenticationContext);
}
