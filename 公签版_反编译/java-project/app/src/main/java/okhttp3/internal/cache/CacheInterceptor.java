package okhttp3.internal.cache;

import com.burgstaller.okhttp.digest.DigestAuthenticator;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import fg.c0;
import fg.e0;
import fg.i;
import fg.k;
import fg.s;
import fg.x;
import fg.z;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.RealResponseBody;

/* loaded from: classes.dex */
public final class CacheInterceptor implements Interceptor {
    final InternalCache cache;

    public CacheInterceptor(InternalCache internalCache) {
        this.cache = internalCache;
    }

    private Response cacheWritingResponse(final CacheRequest cacheRequest, Response response) {
        x xVarBody;
        if (cacheRequest == null || (xVarBody = cacheRequest.body()) == null) {
            return response;
        }
        final k kVarSource = response.body().source();
        final s sVarB = e0.b(xVarBody);
        return response.newBuilder().body(new RealResponseBody(response.header("Content-Type"), response.body().contentLength(), e0.c(new z() { // from class: okhttp3.internal.cache.CacheInterceptor.1
            boolean cacheRequestClosed;

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                if (!this.cacheRequestClosed && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                    this.cacheRequestClosed = true;
                    cacheRequest.abort();
                }
                kVarSource.close();
            }

            @Override // fg.z
            public long read(i iVar, long j10) throws IOException {
                try {
                    long j11 = kVarSource.read(iVar, j10);
                    if (j11 == -1) {
                        if (!this.cacheRequestClosed) {
                            this.cacheRequestClosed = true;
                            sVarB.close();
                        }
                        return -1L;
                    }
                    iVar.K(iVar.f5853b - j11, sVarB.buffer(), j11);
                    sVarB.emitCompleteSegments();
                    return j11;
                } catch (IOException e7) {
                    if (!this.cacheRequestClosed) {
                        this.cacheRequestClosed = true;
                        cacheRequest.abort();
                    }
                    throw e7;
                }
            }

            @Override // fg.z
            public c0 timeout() {
                return kVarSource.timeout();
            }
        }))).build();
    }

    private static Headers combine(Headers headers, Headers headers2) {
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            String strName = headers.name(i10);
            String strValue = headers.value(i10);
            if ((!"Warning".equalsIgnoreCase(strName) || !strValue.startsWith("1")) && (isContentSpecificHeader(strName) || !isEndToEnd(strName) || headers2.get(strName) == null)) {
                Internal.instance.addLenient(builder, strName, strValue);
            }
        }
        int size2 = headers2.size();
        for (int i11 = 0; i11 < size2; i11++) {
            String strName2 = headers2.name(i11);
            if (!isContentSpecificHeader(strName2) && isEndToEnd(strName2)) {
                Internal.instance.addLenient(builder, strName2, headers2.value(i11));
            }
        }
        return builder.build();
    }

    public static boolean isContentSpecificHeader(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || "Content-Type".equalsIgnoreCase(str);
    }

    public static boolean isEndToEnd(String str) {
        return (HTTP.CONN_DIRECTIVE.equalsIgnoreCase(str) || HTTP.CONN_KEEP_ALIVE.equalsIgnoreCase(str) || DigestAuthenticator.PROXY_AUTH.equalsIgnoreCase(str) || DigestAuthenticator.PROXY_AUTH_RESP.equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || HTTP.TRANSFER_ENCODING.equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    private static Response stripBody(Response response) {
        return (response == null || response.body() == null) ? response : response.newBuilder().body(null).build();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        InternalCache internalCache = this.cache;
        Response response = internalCache != null ? internalCache.get(chain.request()) : null;
        CacheStrategy cacheStrategy = new CacheStrategy.Factory(System.currentTimeMillis(), chain.request(), response).get();
        Request request = cacheStrategy.networkRequest;
        Response response2 = cacheStrategy.cacheResponse;
        InternalCache internalCache2 = this.cache;
        if (internalCache2 != null) {
            internalCache2.trackResponse(cacheStrategy);
        }
        if (response != null && response2 == null) {
            Util.closeQuietly(response.body());
        }
        if (request == null && response2 == null) {
            return new Response.Builder().request(chain.request()).protocol(Protocol.HTTP_1_1).code(504).message("Unsatisfiable Request (only-if-cached)").body(Util.EMPTY_RESPONSE).sentRequestAtMillis(-1L).receivedResponseAtMillis(System.currentTimeMillis()).build();
        }
        if (request == null) {
            return response2.newBuilder().cacheResponse(stripBody(response2)).build();
        }
        try {
            Response responseProceed = chain.proceed(request);
            if (responseProceed == null && response != null) {
            }
            if (response2 != null) {
                if (responseProceed.code() == 304) {
                    Response responseBuild = response2.newBuilder().headers(combine(response2.headers(), responseProceed.headers())).sentRequestAtMillis(responseProceed.sentRequestAtMillis()).receivedResponseAtMillis(responseProceed.receivedResponseAtMillis()).cacheResponse(stripBody(response2)).networkResponse(stripBody(responseProceed)).build();
                    responseProceed.body().close();
                    this.cache.trackConditionalCacheHit();
                    this.cache.update(response2, responseBuild);
                    return responseBuild;
                }
                Util.closeQuietly(response2.body());
            }
            Response responseBuild2 = responseProceed.newBuilder().cacheResponse(stripBody(response2)).networkResponse(stripBody(responseProceed)).build();
            if (this.cache != null) {
                if (HttpHeaders.hasBody(responseBuild2) && CacheStrategy.isCacheable(responseBuild2, request)) {
                    return cacheWritingResponse(this.cache.put(responseBuild2), responseBuild2);
                }
                if (HttpMethod.invalidatesCache(request.method())) {
                    try {
                        this.cache.remove(request);
                    } catch (IOException unused) {
                    }
                }
            }
            return responseBuild2;
        } finally {
            if (response != null) {
                Util.closeQuietly(response.body());
            }
        }
    }
}
