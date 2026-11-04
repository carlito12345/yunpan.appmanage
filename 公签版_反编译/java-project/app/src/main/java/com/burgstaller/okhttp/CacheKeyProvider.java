package com.burgstaller.okhttp;

import okhttp3.Request;

/* loaded from: classes.dex */
public interface CacheKeyProvider {
    String getCachingKey(Request request);
}
