package com.burgstaller.okhttp;

import com.burgstaller.okhttp.digest.CachingAuthenticator;
import java.util.Map;
import okhttp3.Connection;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.platform.Platform;

/* loaded from: classes.dex */
public class AuthenticationCacheInterceptor implements Interceptor {
    private final Map<String, CachingAuthenticator> authCache;
    private final CacheKeyProvider cacheKeyProvider;

    public AuthenticationCacheInterceptor(Map<String, CachingAuthenticator> map, CacheKeyProvider cacheKeyProvider) {
        this.authCache = map;
        this.cacheKeyProvider = cacheKeyProvider;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Request request = chain.request();
        String cachingKey = this.cacheKeyProvider.getCachingKey(request);
        CachingAuthenticator cachingAuthenticator = this.authCache.get(cachingKey);
        Connection connection = chain.connection();
        Request requestAuthenticateWithState = cachingAuthenticator != null ? cachingAuthenticator.authenticateWithState(connection != null ? connection.route() : null, request) : null;
        if (requestAuthenticateWithState == null) {
            requestAuthenticateWithState = request;
        }
        Response responseProceed = chain.proceed(requestAuthenticateWithState);
        int iCode = responseProceed != null ? responseProceed.code() : 0;
        if (cachingAuthenticator == null) {
            return responseProceed;
        }
        if ((iCode != 401 && iCode != 407) || this.authCache.remove(cachingKey) == null) {
            return responseProceed;
        }
        responseProceed.body().close();
        Platform.get().log(4, "Cached authentication expired. Sending a new request.", null);
        return chain.proceed(request);
    }

    public AuthenticationCacheInterceptor(Map<String, CachingAuthenticator> map) {
        this(map, new DefaultCacheKeyProvider());
    }
}
