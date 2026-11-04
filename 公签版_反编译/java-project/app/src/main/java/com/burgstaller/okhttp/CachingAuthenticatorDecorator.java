package com.burgstaller.okhttp;

import com.burgstaller.okhttp.digest.CachingAuthenticator;
import java.util.Map;
import okhttp3.Authenticator;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;

/* loaded from: classes.dex */
public class CachingAuthenticatorDecorator implements Authenticator {
    private final Map<String, CachingAuthenticator> authCache;
    private final CacheKeyProvider cacheKeyProvider;
    private final Authenticator innerAuthenticator;

    public CachingAuthenticatorDecorator(Authenticator authenticator, Map<String, CachingAuthenticator> map, CacheKeyProvider cacheKeyProvider) {
        this.innerAuthenticator = authenticator;
        this.authCache = map;
        this.cacheKeyProvider = cacheKeyProvider;
    }

    @Override // okhttp3.Authenticator
    public Request authenticate(Route route, Response response) {
        Request requestAuthenticate = this.innerAuthenticator.authenticate(route, response);
        if (requestAuthenticate != null && requestAuthenticate.header("Authorization") != null && (this.innerAuthenticator instanceof CachingAuthenticator)) {
            this.authCache.put(this.cacheKeyProvider.getCachingKey(requestAuthenticate), (CachingAuthenticator) this.innerAuthenticator);
        }
        return requestAuthenticate;
    }

    public CachingAuthenticatorDecorator(Authenticator authenticator, Map<String, CachingAuthenticator> map) {
        this(authenticator, map, new DefaultCacheKeyProvider());
    }
}
