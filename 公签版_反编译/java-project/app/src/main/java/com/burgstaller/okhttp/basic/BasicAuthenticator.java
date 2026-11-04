package com.burgstaller.okhttp.basic;

import com.burgstaller.okhttp.digest.CachingAuthenticator;
import com.burgstaller.okhttp.digest.Credentials;
import com.burgstaller.okhttp.digest.DigestAuthenticator;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.platform.Platform;

/* loaded from: classes.dex */
public class BasicAuthenticator implements CachingAuthenticator {
    private final Credentials credentials;
    private boolean proxy;

    public BasicAuthenticator(Credentials credentials) {
        this.credentials = credentials;
    }

    private Request authFromRequest(Request request) {
        String str = this.proxy ? DigestAuthenticator.PROXY_AUTH_RESP : "Authorization";
        String strHeader = request.header(str);
        if (strHeader == null || !strHeader.startsWith("Basic")) {
            return request.newBuilder().header(str, okhttp3.Credentials.basic(this.credentials.getUserName(), this.credentials.getPassword())).build();
        }
        Platform.get().log(5, "previous basic authentication failed, returning null", null);
        return null;
    }

    @Override // okhttp3.Authenticator
    public Request authenticate(Route route, Response response) {
        Request request = response.request();
        this.proxy = response.code() == 407;
        return authFromRequest(request);
    }

    @Override // com.burgstaller.okhttp.digest.CachingAuthenticator
    public Request authenticateWithState(Route route, Request request) {
        return authFromRequest(request);
    }
}
