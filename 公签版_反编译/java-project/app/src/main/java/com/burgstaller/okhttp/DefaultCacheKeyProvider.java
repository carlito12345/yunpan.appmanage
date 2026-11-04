package com.burgstaller.okhttp;

import okhttp3.HttpUrl;
import okhttp3.Request;

/* loaded from: classes.dex */
public final class DefaultCacheKeyProvider implements CacheKeyProvider {
    @Override // com.burgstaller.okhttp.CacheKeyProvider
    public String getCachingKey(Request request) {
        HttpUrl httpUrlUrl = request.url();
        if (httpUrlUrl == null) {
            return null;
        }
        return httpUrlUrl.scheme() + ":" + httpUrlUrl.host() + ":" + httpUrlUrl.port();
    }
}
